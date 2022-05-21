package com.wuxinfashi.gtrb.item;

import com.wuxinfashi.gtrb.Gtrb;
import net.minecraft.item.Item;

import static com.wuxinfashi.gtrb.ModConstants.CREATIVES_TAB;

public class GtrbBaseItem extends Item
{
    public String name = "";

    public GtrbBaseItem(String registry_name)
    {
        this.name = registry_name;
        this.setRegistryName(registry_name);
        this.setCreativeTab(CREATIVES_TAB);
        this.setTranslationKey(Gtrb.MODID + "." + this.name);
    }
}
