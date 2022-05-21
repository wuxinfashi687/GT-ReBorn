package com.wuxinfashi.gtrb.gui;

import net.minecraft.entity.player.EntityPlayer;
import net.minecraft.entity.player.InventoryPlayer;
import net.minecraft.inventory.Container;
import net.minecraft.inventory.Slot;
import net.minecraft.item.ItemStack;
import net.minecraft.tileentity.TileEntity;
import net.minecraft.util.EnumFacing;
import net.minecraft.util.math.BlockPos;
import net.minecraft.world.World;
import net.minecraftforge.common.capabilities.Capability;
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
}
