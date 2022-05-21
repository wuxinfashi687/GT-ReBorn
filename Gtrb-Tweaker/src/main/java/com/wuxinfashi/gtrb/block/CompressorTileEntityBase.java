package com.wuxinfashi.gtrb.block;

import com.wuxinfashi.gtrb.Gtrb;
import net.minecraft.init.Blocks;
import net.minecraft.init.Items;
import net.minecraft.item.Item;
import net.minecraft.item.ItemStack;
import net.minecraft.nbt.NBTTagCompound;
import net.minecraft.tileentity.TileEntity;
import net.minecraft.util.EnumFacing;
import net.minecraft.util.ITickable;
import net.minecraftforge.common.capabilities.Capability;
import net.minecraftforge.items.CapabilityItemHandler;
import net.minecraftforge.items.IItemHandler;
import net.minecraftforge.items.ItemStackHandler;
import org.jetbrains.annotations.NotNull;

import javax.annotation.Nullable;

public class CompressorTileEntityBase extends TileEntity implements ITickable
{
    public String ID;
    public String name;
    private int process = 0;
    private final ItemStackHandler up = new ItemStackHandler(1)
    {
        @Override
        protected void onContentsChanged(int slot)
        {
            CompressorTileEntityBase.this.markDirty();
        }
    };
    private final ItemStackHandler side = new ItemStackHandler(1)
    {
        @Override
        protected void onContentsChanged(int slot)
        {
            CompressorTileEntityBase.this.markDirty();
        }
    };
    private final ItemStackHandler down = new ItemStackHandler(1)
    {
        @Override
        protected void onContentsChanged(int slot)
        {
            CompressorTileEntityBase.this.markDirty();
        }
    };

    public CompressorTileEntityBase()
    {
        this.ID = Gtrb.MODID + ":" + "test_machine";
    }

    @Override
    public void readFromNBT(NBTTagCompound compound)
    {
        this.down.deserializeNBT(compound.getCompoundTag(("Down")));
        this.up.deserializeNBT(compound.getCompoundTag("Side"));
        this.up.deserializeNBT(compound.getCompoundTag("UP"));
        super.readFromNBT(compound);
    }

    @Override
    public @NotNull NBTTagCompound writeToNBT(NBTTagCompound compound)
    {
        compound.setTag("Down", this.down.serializeNBT());
        compound.setTag("Side", this.side.serializeNBT());
        compound.setTag("UP", this.up.serializeNBT());
        return super.writeToNBT(compound);
    }

    @Override
    public boolean hasCapability(@NotNull Capability<?> capability, @Nullable EnumFacing facing)
    {
        Capability<IItemHandler> itemHandlerCapability = CapabilityItemHandler.ITEM_HANDLER_CAPABILITY;
        return itemHandlerCapability.equals(capability) || super.hasCapability(capability, facing);
    }

    @Override
    public <T> T getCapability(@NotNull Capability<T> capability, @Nullable EnumFacing facing) {
        Capability<IItemHandler> itemHandlerCapability = CapabilityItemHandler.ITEM_HANDLER_CAPABILITY;
        if (itemHandlerCapability.equals(capability))
        {
            if (EnumFacing.UP.equals(facing))
            {
                return itemHandlerCapability.cast(this.up);
            }
            if (EnumFacing.DOWN.equals(facing))
            {
                return itemHandlerCapability.cast(this.down);
            }
            return itemHandlerCapability.cast(this.side);
        }
        return super.getCapability(capability, facing);
    }

    @Override
    public void update() {
        Item dirt = Item.getItemFromBlock(Blocks.DIRT);
        boolean canExtractInput = dirt.equals(this.side.extractItem(0, 1, true).getItem());
        if (canExtractInput)
        {
            Item item = Items.DIAMOND;
            boolean isNotConsume = item.equals(this.up.extractItem(0, 1, true).getItem());
            if (isNotConsume)
            {
                boolean canInsertOutput = this.down
                        .insertItem(0, new ItemStack(
                                Item.getItemFromBlock(Blocks.DIAMOND_BLOCK), 1, 0
                        ), true)
                        .isEmpty();
                if (canInsertOutput)
                {
                    int num = this.side.getStackInSlot(0).getCount();
                    this.side.extractItem(0, num, false);
                    this.process += num;
                    if (this.getProcess() >= 64)
                    {
                        this.down.insertItem(
                                0, new ItemStack(
                                        Item.getItemFromBlock(Blocks.DIAMOND_BLOCK), 1, 0
                                ), false
                        );
                        this.process = 0;
                    }
                    this.markDirty();
                }
            }
            else {
                this.markDirty();
            }
        }
        else {
            this.markDirty();
        }
    }

    public int getProcess()
    {
        return this.process;
    }
}
