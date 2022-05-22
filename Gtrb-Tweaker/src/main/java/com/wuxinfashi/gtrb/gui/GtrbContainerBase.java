package com.wuxinfashi.gtrb.gui;

import com.wuxinfashi.gtrb.block.CompressorTileEntityBase;
import net.minecraft.entity.player.EntityPlayer;
import net.minecraft.entity.player.InventoryPlayer;
import net.minecraft.inventory.Container;
import net.minecraft.inventory.IContainerListener;
import net.minecraft.inventory.Slot;
import net.minecraft.item.ItemStack;
import net.minecraft.tileentity.TileEntity;
import net.minecraft.util.EnumFacing;
import net.minecraft.util.math.BlockPos;
import net.minecraft.world.World;
import net.minecraftforge.common.capabilities.Capability;
import net.minecraftforge.fml.relauncher.Side;
import net.minecraftforge.fml.relauncher.SideOnly;
import net.minecraftforge.items.CapabilityItemHandler;
import net.minecraftforge.items.IItemHandler;
import net.minecraftforge.items.SlotItemHandler;

public class GtrbContainerBase extends Container {
    private final World world;
    private final BlockPos pos;
    private final IItemHandler up;
    private final IItemHandler down;
    private final IItemHandler side;
    private InventoryPlayer player;
    private int process = 0;
    private int recipe_max = 0;

    public GtrbContainerBase(
            EntityPlayer player, World world,
            int x, int y, int z
    )
    {
        this.world = world;
        this.pos = new BlockPos(x, y, z);

        TileEntity tileEntity = world.getTileEntity(this.pos);
        Capability<IItemHandler> iItemHandlerCapability = CapabilityItemHandler.ITEM_HANDLER_CAPABILITY;
        this.up = tileEntity.getCapability(iItemHandlerCapability, EnumFacing.UP);
        this.down = tileEntity.getCapability(iItemHandlerCapability, EnumFacing.DOWN);
        this.side = tileEntity.getCapability(iItemHandlerCapability, EnumFacing.NORTH);

        this.player = player.inventory;
        this.addSlot();
    }

    @Override
    public boolean canInteractWith(EntityPlayer playerIn) {
        return playerIn.world.equals(this.world)
                && playerIn.getDistanceSq(this.pos) <= 64.0;
    }

    @Override
    public ItemStack transferStackInSlot(EntityPlayer playerIn, int index)
    {
        return ItemStack.EMPTY;
    }

    private void addSlot()
    {
        this.addSlotToContainer(new SlotItemHandler(this.up, 0, 80, 32));
        this.addSlotToContainer(new SlotItemHandler(this.down, 0, 134, 59));
        this.addSlotToContainer(new SlotItemHandler(this.side, 0, 26, 59));

        for (int i = 0;i <= 8;i++)
        {
            this.addSlotToContainer(new Slot(this.player, i, i*18+8, 152));
            this.addSlotToContainer(new Slot(this.player, i+9, 8+18*i, 94));
            this.addSlotToContainer(new Slot(this.player, i+18, 8+18*i, 112));
            this.addSlotToContainer(new Slot(this.player, i+27, 8+18*i, 130));
        }
    }

    @Override
    public void detectAndSendChanges()
    {
        super.detectAndSendChanges();
        TileEntity tileEntity = this.world.getTileEntity(this.pos);
        if (tileEntity instanceof CompressorTileEntityBase)
        {
            CompressorTileEntityBase compressor = (CompressorTileEntityBase) tileEntity;
            int processing = compressor.getProcess();
            int recipe_max = compressor.getRecipeCompressor().getAmount();
            if (recipe_max != this.recipe_max && this.process == 0)
            {
                this.recipe_max = recipe_max;
                for (IContainerListener listener : this.listeners)
                {
                    listener.sendWindowProperty(this, 1, recipe_max);
                    listener.sendWindowProperty(this, 0, 0);
                }
            }
            else {
                if (processing != this.process)
                {
                    this.process = processing;
                    for (IContainerListener listener : this.listeners)
                    {
                        listener.sendWindowProperty(this, 0, processing);
                    }
                }
            }
        }
    }

    @Override
    @SideOnly(Side.CLIENT)
    public void updateProgressBar(int id, int data)
    {
        if (id == 0)
        {
            this.process = data;
        }
        else if (id == 1)
        {
            this.recipe_max = data;
        }
    }

    public int getProcess()
    {
        return this.process;
    }

    public int getRecipe_max()
    {
        return this.recipe_max;
    }
}
