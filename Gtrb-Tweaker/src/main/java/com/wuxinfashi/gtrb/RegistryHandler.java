package com.wuxinfashi.gtrb;

import com.wuxinfashi.gtrb.block.BlockMachine;
import com.wuxinfashi.gtrb.block.GtrbBaseBlock;
import com.wuxinfashi.gtrb.block.GtrbItemBlockBase;
import com.wuxinfashi.gtrb.block.CompressorTileEntityBase;
import com.wuxinfashi.gtrb.gui.GtrbGuiHandler;
import com.wuxinfashi.gtrb.item.GtrbBaseItem;
import net.minecraft.block.Block;
import net.minecraft.client.renderer.block.model.ModelResourceLocation;
import net.minecraft.item.Item;
import net.minecraft.tileentity.TileEntity;
import net.minecraftforge.client.event.ModelRegistryEvent;
import net.minecraftforge.client.model.ModelLoader;
import net.minecraftforge.event.RegistryEvent.Register;
import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.fml.common.eventhandler.SubscribeEvent;
import net.minecraftforge.fml.common.network.NetworkRegistry;
import net.minecraftforge.fml.relauncher.Side;
import net.minecraftforge.fml.relauncher.SideOnly;
import net.minecraftforge.registries.IForgeRegistry;

import java.util.Objects;

/*
模组注册部分
 */

@Mod.EventBusSubscriber
public class RegistryHandler
{
    public static ModConstants modConstants = new ModConstants();

    @SubscribeEvent
    public static void registerItem(Register<Item> event)
    {
        IForgeRegistry<Item> registry = event.getRegistry();
        //循环注册物品
        for (GtrbBaseItem item : modConstants.ITEM_ARRAY_LIST) {
            registry.register(item);
        }
        //注册方块物品
        for (GtrbItemBlockBase itemBlock : modConstants.BLOCK_ITEM_ARRAY_LIST) {
            registry.register(itemBlock);
        }
    }

    @SubscribeEvent
    public static void registerBlock(Register<Block> event)
    {
        IForgeRegistry<Block> registry = event.getRegistry();
        for (GtrbBaseBlock block : modConstants.BLOCK_ARRAY_LIST) {
            registry.register(block);
        }

        for (BlockMachine machine : modConstants.BLOCK_MACHINE_ARRAY_LIST) {
            registry.register(machine);
        }

        CompressorTileEntityBase tile_entity = new CompressorTileEntityBase();
        TileEntity.register(
                tile_entity.ID, CompressorTileEntityBase.class
        );
    }

    @SubscribeEvent
    @SideOnly(Side.CLIENT)
    public static void registerModel(ModelRegistryEvent event)
    {
        for (GtrbBaseItem item : modConstants.ITEM_ARRAY_LIST) {
            ModelLoader.setCustomModelResourceLocation(
                    item, 0,
                    new ModelResourceLocation(
                            Objects.requireNonNull(item.getRegistryName()), "inventory"
                    )
            );
        }

        for (GtrbBaseBlock block : modConstants.BLOCK_ARRAY_LIST) {
            ModelLoader.setCustomModelResourceLocation(
                    Item.getItemFromBlock(block), 0,
                    new ModelResourceLocation(
                            Objects.requireNonNull(block.getRegistryName()), "inventory"
                    )
            );
        }

        for (GtrbItemBlockBase itemBlock : modConstants.BLOCK_ITEM_ARRAY_LIST) {
            ModelLoader.setCustomModelResourceLocation(
                    itemBlock, 0,
                    new ModelResourceLocation(
                            Objects.requireNonNull(itemBlock.getRegistryName()), "inventory"
                    )
            );
        }
    }

    public static void registerGui()
    {
        NetworkRegistry.INSTANCE.registerGuiHandler(
                Gtrb.MODID, new GtrbGuiHandler()
        );
    }
}
