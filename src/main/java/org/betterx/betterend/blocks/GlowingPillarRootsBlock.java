package org.betterx.betterend.blocks;

import net.minecraft.world.level.block.state.properties.BlockStateProperties;

import net.minecraft.world.level.block.DoublePlantBlock;
import org.betterx.betterend.registry.EndBlocks;

import net.minecraft.core.BlockPos;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.level.BlockGetter;
import net.minecraft.world.level.block.Block;
import net.minecraft.world.level.block.state.BlockState;
import net.minecraft.world.level.block.state.StateDefinition;
import net.minecraft.world.level.block.state.properties.EnumProperty;

import net.minecraftforge.api.distmarker.Dist;
import net.minecraftforge.api.distmarker.OnlyIn;

public class GlowingPillarRootsBlock extends DoublePlantBlock {
    public static final EnumProperty<org.betterx.betterend.blocks.properties.TripleShape> SHAPE = BlockProperties.TRIPLE_SHAPE;

    @Override
    protected void createBlockStateDefinition(StateDefinition.Builder<Block, BlockState> stateManager) {
        stateManager.add(SHAPE);
    }

    @Override
    protected boolean isTerrain(BlockState state) {
        return state.is(EndBlocks.AMBER_MOSS);
    }

    @Override
    @OnlyIn(Dist.CLIENT)
    public ItemStack getCloneItemStack(BlockGetter world, BlockPos pos, BlockState state) {
        return new ItemStack(EndBlocks.GLOWING_PILLAR_SEED);
    }
}
