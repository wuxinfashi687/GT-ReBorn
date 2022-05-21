package com.wuxinfashi.gtrb.gui;

import net.minecraft.entity.player.EntityPlayer;
import net.minecraft.world.World;
import net.minecraftforge.fml.common.network.IGuiHandler;
import org.jetbrains.annotations.Nullable;

public class GtrbGuiHandler implements IGuiHandler
{
    public static final int TEST_MACHINE = 1;

    @Nullable
    @Override
    public Object getServerGuiElement(int ID, EntityPlayer player, World world, int x, int y, int z) {
        if (ID == TEST_MACHINE)
        {
            return new GtrbContainerBase(player, world, x, y, z);
        }
        return null;
    }

    @Nullable
    @Override
    public Object getClientGuiElement(int ID, EntityPlayer player, World world, int x, int y, int z) {
        if (ID == TEST_MACHINE)
        {
            return new GtrbGUIContainerBase(player, world, x, y, z);
        }
        return null;
    }
}
