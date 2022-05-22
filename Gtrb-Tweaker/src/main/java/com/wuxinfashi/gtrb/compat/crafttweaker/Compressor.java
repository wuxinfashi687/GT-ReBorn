package com.wuxinfashi.gtrb.compat.crafttweaker;

import com.wuxinfashi.gtrb.block.CompressorTileEntityBase;
import com.wuxinfashi.gtrb.recipe.RecipeCompressor;
import crafttweaker.annotations.ModOnly;
import crafttweaker.annotations.ZenRegister;
import crafttweaker.api.item.IItemStack;
import stanhebben.zenscript.annotations.ZenClass;
import stanhebben.zenscript.annotations.ZenMethod;

@ZenClass("mods.gtrb.Compressor")
@ModOnly("gtrb")
@ZenRegister
public class Compressor
{
    @ZenMethod
    public static void addRecipe(IItemStack output, IItemStack input, int amount, IItemStack notConsume)
    {
        CompressorTileEntityBase.addRecipe(
                new RecipeCompressor(CrtUtil.toItem(input), amount,
                        CrtUtil.toItem(output), CrtUtil.toItem(notConsume))
        );
    }

}
