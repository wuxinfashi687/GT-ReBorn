package com.wuxinfashi.gtrb.creativetab;

import com.wuxinfashi.gtrb.item.ItemBottle;
import net.minecraft.creativetab.CreativeTabs;
import net.minecraft.item.ItemStack;

/*
创造物品栏
 */

public class GtrbCreativeTab extends CreativeTabs
{
    public GtrbCreativeTab()
    {
        super("gtrb_tab");
    }

    @Override
    public ItemStack createIcon() {
        return new ItemStack(
                ItemBottle.bottleItemArrayList.get(0)
        );
    }
}
