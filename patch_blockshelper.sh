#!/bin/bash
cat << 'INNER_EOF' > src/main/java/org/betterx/betterend/util/BlocksHelper.java
package org.betterx.betterend.util;

import net.minecraft.core.BlockPos;
import net.minecraft.core.Direction;
import net.minecraft.world.level.LevelAccessor;
import net.minecraft.world.level.block.Block;
import net.minecraft.world.level.block.Blocks;
import net.minecraft.world.level.block.state.BlockState;
import net.minecraft.world.level.block.state.properties.Property;
import net.minecraft.util.RandomSource;
import net.minecraft.world.level.block.state.properties.BlockStateProperties;

import java.util.function.Predicate;

public class BlocksHelper {
    public static final int FLAG_UPDATE_BLOCK = 1;
    public static final int FLAG_SEND_CLIENT_CHANGES = 2;
    public static final int FLAG_NO_RERENDER = 4;
    public static final int FORCED_UPDATE = FLAG_UPDATE_BLOCK | FLAG_SEND_CLIENT_CHANGES;
    public static final int SET_SILENT = FLAG_UPDATE_BLOCK | FLAG_SEND_CLIENT_CHANGES | FLAG_NO_RERENDER;
    public static final int SET_OBSERV = FLAG_UPDATE_BLOCK | FLAG_SEND_CLIENT_CHANGES;

    public static final Direction[] HORIZONTAL = makeHorizontal();
    public static final Direction[] DIRECTIONS = Direction.values();

    public static void setWithoutUpdate(LevelAccessor world, BlockPos pos, BlockState state) {
        world.setBlock(pos, state, SET_SILENT);
    }

    public static void setWithoutUpdate(LevelAccessor world, BlockPos pos, Block block) {
        world.setBlock(pos, block.defaultBlockState(), SET_SILENT);
    }

    public static void setWithUpdate(LevelAccessor world, BlockPos pos, BlockState state) {
        world.setBlock(pos, state, SET_OBSERV);
    }

    public static void setWithUpdate(LevelAccessor world, BlockPos pos, Block block) {
        world.setBlock(pos, block.defaultBlockState(), SET_OBSERV);
    }

    public static boolean findSurroundingSurface(LevelAccessor world, BlockPos.MutableBlockPos pos, Direction dir, int dist, Predicate<BlockState> predicate) {
        for (int i = 0; i < dist; i++) {
            if (predicate.test(world.getBlockState(pos))) {
                return true;
            }
            pos.move(dir);
        }
        return false;
    }

    public static boolean isTerrain(BlockState state) {
        return state.canOcclude();
    }

    public static Direction[] makeHorizontal() {
        return new Direction[] { Direction.NORTH, Direction.EAST, Direction.SOUTH, Direction.WEST };
    }

    public static Direction randomHorizontal(RandomSource random) {
        return HORIZONTAL[random.nextInt(4)];
    }

    public static Direction randomDirection(RandomSource random) {
        return DIRECTIONS[random.nextInt(6)];
    }

    public static Direction mirrorHorizontal(Direction dir) {
        return switch (dir) {
            case NORTH -> Direction.SOUTH;
            case SOUTH -> Direction.NORTH;
            case EAST -> Direction.WEST;
            case WEST -> Direction.EAST;
            default -> dir;
        };
    }

    public static Direction rotateHorizontal(Direction dir) {
        return switch (dir) {
            case NORTH -> Direction.EAST;
            case EAST -> Direction.SOUTH;
            case SOUTH -> Direction.WEST;
            case WEST -> Direction.NORTH;
            default -> dir;
        };
    }

    public static int downRay(LevelAccessor level, BlockPos pos, int maxDist) {
        int d = 0;
        for (int i = 1; i < maxDist; i++) {
            if (!level.isEmptyBlock(pos.below(i))) {
                return d;
            }
            d++;
        }
        return d;
    }

    public static int downRayRep(LevelAccessor level, BlockPos pos, int maxDist) {
        int d = 0;
        for (int i = 1; i < maxDist; i++) {
            if (!level.getBlockState(pos.below(i)).canBeReplaced()) {
                return d;
            }
            d++;
        }
        return d;
    }

    public static int upRay(LevelAccessor level, BlockPos pos, int maxDist) {
        int d = 0;
        for (int i = 1; i < maxDist; i++) {
            if (!level.isEmptyBlock(pos.above(i))) {
                return d;
            }
            d++;
        }
        return d;
    }

    public static boolean replaceableOrPlant(BlockState state) {
        return state.canBeReplaced() || state.getBlock() instanceof net.minecraft.world.level.block.PlantBlock;
    }

    public static boolean isFluid(BlockState state) {
        return !state.getFluidState().isEmpty();
    }

    public static boolean isInvulnerable(BlockState state, LevelAccessor level, BlockPos pos) {
        return state.getDestroySpeed(level, pos) < 0;
    }

    public static boolean isInvulnerableUnsafe(BlockState state, LevelAccessor level, BlockPos pos) {
        return isInvulnerable(state, level, pos);
    }
}
INNER_EOF
