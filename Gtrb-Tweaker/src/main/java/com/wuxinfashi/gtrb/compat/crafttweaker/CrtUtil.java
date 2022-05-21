package com.wuxinfashi.gtrb.compat.crafttweaker;

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.minecraft.CraftTweakerMC;
import net.minecraft.item.Item;

public class CrtUtil {
    public static Item toItem(IItemStack itemStack)
    {
        if (itemStack == null)
        {
            return null;
        }
        else {
            return CraftTweakerMC.getItem(itemStack.getDefinition());
        }
    }
}
