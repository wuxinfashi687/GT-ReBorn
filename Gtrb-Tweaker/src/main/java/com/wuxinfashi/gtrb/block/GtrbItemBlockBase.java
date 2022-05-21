package com.wuxinfashi.gtrb.block;

import com.wuxinfashi.gtrb.Gtrb;
import net.minecraft.block.Block;
import net.minecraft.item.ItemBlock;

import static com.wuxinfashi.gtrb.ModConstants.CREATIVES_TAB;

public class GtrbItemBlockBase extends ItemBlock
{
    public String name = "";

    public GtrbItemBlockBase(Block block, String registryName)
    {
        super(block);
        this.name = registryName;
        setRegistryName(Gtrb.MODID, registryName);
        setCreativeTab(CREATIVES_TAB);
    }
}
