package com.wuxinfashi.gtrb.block;

import com.wuxinfashi.gtrb.Gtrb;
import net.minecraft.block.Block;
import net.minecraft.block.BlockContainer;
import net.minecraft.block.material.Material;
import net.minecraft.block.properties.IProperty;
import net.minecraft.block.properties.PropertyDirection;
import net.minecraft.block.state.BlockStateContainer;
import net.minecraft.block.state.IBlockState;
import net.minecraft.entity.EntityLivingBase;
import net.minecraft.entity.player.EntityPlayer;
import net.minecraft.tileentity.TileEntity;
import net.minecraft.util.*;
import net.minecraft.util.math.BlockPos;
import net.minecraft.world.World;
import net.minecraftforge.common.capabilities.Capability;
import net.minecraftforge.items.CapabilityItemHandler;
import net.minecraftforge.items.IItemHandler;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import static com.wuxinfashi.gtrb.ModConstants.CREATIVES_TAB;
import static com.wuxinfashi.gtrb.gui.GtrbGuiHandler.TEST_MACHINE;

public class BlockMachine extends BlockContainer
{
    public String name;
    private static final IProperty<EnumFacing> FACING = PropertyDirection
            .create("facing", EnumFacing.Plane.HORIZONTAL);

    public BlockMachine(String name)
    {
        super(Material.IRON);
        this.name = name;
        this.setTranslationKey(Gtrb.MODID + "." + name);
        this.setCreativeTab(CREATIVES_TAB);
        this.setRegistryName(Gtrb.MODID, name);
        this.setHardness(5.0F);
    }

    @Override
    public int getMetaFromState(IBlockState state)
    {
        return state.getValue(FACING).getHorizontalIndex();
    }

    /*
    Note!
     */
    @Override
    public @NotNull IBlockState getStateFromMeta(int meta)
    {
        return this.getDefaultState()
                .withProperty(FACING, EnumFacing.byHorizontalIndex(meta));
    }

    @Override
    public @NotNull IBlockState withRotation(IBlockState state, Rotation rotation)
    {
        return state.withProperty(FACING, rotation.rotate(state.getValue(FACING)));
    }

    @Override
    public @NotNull IBlockState withMirror(IBlockState state, Mirror mirror)
    {
        return state.withProperty(FACING, mirror.mirror(state.getValue(FACING)));
    }

    @Override
    public @NotNull IBlockState getStateForPlacement(@NotNull World world, @NotNull BlockPos pos, @NotNull EnumFacing facing,
                                                     float hitX, float hitY, float hitZ, int meta,
                                                     EntityLivingBase placer, @NotNull EnumHand hand)
    {
        return this.getDefaultState()
                .withProperty(FACING, placer.getHorizontalFacing()
                        .getOpposite()
                );
    }

    @Override
    public boolean onBlockActivated(World worldIn, @NotNull BlockPos pos,
                                    @NotNull IBlockState state, @NotNull EntityPlayer playerIn, @NotNull EnumHand hand,
                                    @NotNull EnumFacing facing, float hitX, float hitY, float hitZ)
    {
        if (!worldIn.isRemote)
        {
            int x = pos.getX(), y = pos.getY(), z = pos.getZ();
            playerIn.openGui(Gtrb.MODID, TEST_MACHINE, worldIn, x, y, z);
        }
        return true;
    }

    @Override
    public void breakBlock(@NotNull World worldIn, @NotNull BlockPos pos, @NotNull IBlockState state)
    {
        TileEntity tileEntity = worldIn.getTileEntity(pos);
        Capability<IItemHandler> iItemHandlerCapability = CapabilityItemHandler.ITEM_HANDLER_CAPABILITY;
        IItemHandler up = tileEntity.getCapability(iItemHandlerCapability, EnumFacing.UP);
        IItemHandler down = tileEntity.getCapability(iItemHandlerCapability, EnumFacing.DOWN);
        IItemHandler side = tileEntity.getCapability(iItemHandlerCapability, EnumFacing.NORTH);

        assert up != null;
        Block.spawnAsEntity(worldIn, pos, up.getStackInSlot(0));
        assert down != null;
        Block.spawnAsEntity(worldIn, pos, down.getStackInSlot(0));
        assert side != null;
        Block.spawnAsEntity(worldIn, pos, side.getStackInSlot(0));

        super.breakBlock(worldIn, pos, state);
    }

    @Override
    public @NotNull EnumBlockRenderType getRenderType(@NotNull IBlockState state)
    {
        return EnumBlockRenderType.MODEL;
    }

    @Override
    protected @NotNull BlockStateContainer createBlockState()
    {
        return new BlockStateContainer(this, FACING);
    }

    @Nullable
    @Override
    public TileEntity createNewTileEntity(@NotNull World worldIn, int meta) {
        return new CompressorTileEntityBase();
    }
}
