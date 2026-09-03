package org.betterx.betterend.blocks;

import org.betterx.bclib.behaviours.interfaces.BehaviourWaterPlantSeed;

import net.minecraft.world.level.block.KelpBlock;
import org.betterx.bclib.util.BlocksHelper;
import org.betterx.betterend.registry.EndBlocks;
import org.betterx.worlds.together.tag.v3.CommonBlockTags;

import net.minecraft.core.BlockPos;
import net.minecraft.util.RandomSource;
import net.minecraft.world.level.WorldGenLevel;
import net.minecraft.world.level.block.state.BlockState;
import net.minecraft.world.level.material.Fluids;

public class EndLilySeedBlock extends KelpBlock implements BehaviourWaterPlantSeed {
    @Override
    public void grow(WorldGenLevel world, RandomSource random, BlockPos pos) {
        if (canGrow(world, pos)) {
            BlocksHelper.setWithoutUpdate(
                    world,
                    pos,
                    EndBlocks.END_LILY.defaultBlockState().setValue(EndLilyBlock.SHAPE, org.betterx.betterend.blocks.properties.TripleShape.BOTTOM)
            );
            BlockPos up = pos.above();
            while (world.getFluidState(up).isSource()) {
                BlocksHelper.setWithoutUpdate(
                        world,
                        up,
                        EndBlocks.END_LILY.defaultBlockState().setValue(EndLilyBlock.SHAPE, org.betterx.betterend.blocks.properties.TripleShape.MIDDLE)
                );
                up = up.above();
            }
            BlocksHelper.setWithoutUpdate(
                    world,
                    up,
                    EndBlocks.END_LILY.defaultBlockState().setValue(EndLilyBlock.SHAPE, org.betterx.betterend.blocks.properties.TripleShape.TOP)
            );
        }
    }

    private boolean canGrow(WorldGenLevel world, BlockPos pos) {
        BlockPos up = pos.above();
        while (world.getBlockState(up).getFluidState().getType().equals(Fluids.WATER.getSource())) {
            up = up.above();
        }
        return world.isEmptyBlock(up);
    }

    @Override
    protected boolean isTerrain(BlockState state) {
        return state.is(CommonBlockTags.END_STONES);
    }
}
