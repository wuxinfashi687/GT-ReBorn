package com.wuxinfashi.gtrb;

import net.minecraft.init.Blocks;
import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.fml.common.Mod.EventHandler;
import net.minecraftforge.fml.common.event.FMLInitializationEvent;
import net.minecraftforge.fml.common.event.FMLPreInitializationEvent;
import org.apache.logging.log4j.Logger;

/*
模组主入口
 */

@Mod(modid = Gtrb.MODID, name = Gtrb.NAME, version = Gtrb.VERSION)
public class Gtrb
{
    public static final String MODID = "gtrb";
    public static final String NAME = "Gtrb";
    public static final String VERSION = "0.0.1";

    private static Logger logger;

    @EventHandler
    public void preInit(FMLPreInitializationEvent event)
    {
        logger = event.getModLog();
        RegistryHandler.registerGui();
    }

    @EventHandler
    public void init(FMLInitializationEvent event)
    {
        // some example code
        logger.info("DIRT BLOCK >> {}", Blocks.DIRT.getRegistryName());
    }
}
