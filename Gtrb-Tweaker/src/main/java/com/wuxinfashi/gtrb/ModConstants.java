package com.wuxinfashi.gtrb;

import com.wuxinfashi.gtrb.block.BlockMachine;
import com.wuxinfashi.gtrb.block.GtrbBaseBlock;
import com.wuxinfashi.gtrb.block.GtrbItemBlockBase;
import com.wuxinfashi.gtrb.creativetab.GtrbCreativeTab;
import com.wuxinfashi.gtrb.item.GtrbBaseItem;
import com.wuxinfashi.gtrb.item.ItemBottle;
import net.minecraft.creativetab.CreativeTabs;

import java.util.ArrayList;

public class ModConstants
{
    public static final ArrayList<GtrbBaseItem> ITEM_ARRAY_LIST = new ArrayList<>();
    public static final ArrayList<GtrbBaseBlock> BLOCK_ARRAY_LIST = new ArrayList<>();
    public static final ArrayList<GtrbItemBlockBase> BLOCK_ITEM_ARRAY_LIST = new ArrayList<>();
    public static final ArrayList<BlockMachine> BLOCK_MACHINE_ARRAY_LIST = new ArrayList<>();
    public static final CreativeTabs CREATIVES_TAB = new GtrbCreativeTab();
    public static final ItemBottle ITEM_BOTTLE = new ItemBottle();

    public ModConstants()
    {
        onItemConstants();
        onBlockConstants();
        onMachineBlockConstants();
        onBlockItemConstants();
    }

    public void onItemConstants()
    {
        ///注册物品
        //注册瓶子
        ITEM_ARRAY_LIST.addAll(ITEM_BOTTLE.bottleItemArrayList);
    }

    public void onBlockConstants()
    {

    }

    public void onMachineBlockConstants()
    {
        BLOCK_MACHINE_ARRAY_LIST.add(
                new BlockMachine("test_machine")
        );
    }

    public void onBlockItemConstants()
    {
        ///注册方块物品
        for (GtrbBaseBlock block : BLOCK_ARRAY_LIST) {
            BLOCK_ITEM_ARRAY_LIST.add(
                    new GtrbItemBlockBase(block, block.name)
            );
        }

        for (BlockMachine machine : BLOCK_MACHINE_ARRAY_LIST) {
            BLOCK_ITEM_ARRAY_LIST.add(
                    new GtrbItemBlockBase(machine, machine.name)
            );
        }
    }
}
