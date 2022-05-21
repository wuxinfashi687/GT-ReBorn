package com.wuxinfashi.gtrb.block;

import com.wuxinfashi.gtrb.Gtrb;
import net.minecraft.block.Block;
import net.minecraft.block.material.Material;

import static com.wuxinfashi.gtrb.ModConstants.CREATIVES_TAB;

public class GtrbBaseBlock extends Block
{
    public String name = "";
    public String blockCategory = "base";

    public GtrbBaseBlock(Material materialIn, String registryName, String blockCategory)
    {
        super(materialIn);
        this.name = registryName;
        this.blockCategory = blockCategory;
        setRegistryName(Gtrb.MODID, registryName);
        setTranslationKey(Gtrb.MODID + "." + registryName);
        setCreativeTab(CREATIVES_TAB);
        setHardness(25F);
    }
}
