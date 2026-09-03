package org.betterx.betterend.blocks;

import net.minecraft.world.level.block.RotatedPillarBlock;

import net.minecraft.world.level.block.Blocks;
import net.minecraft.world.level.material.MapColor;

import net.minecraft.world.level.block.state.BlockBehaviour;

public class AmaranitaStemBlock extends RotatedPillarBlock {
    public AmaranitaStemBlock() {
        super(BlockBehaviour.Properties.copy(Blocks.OAK_PLANKS).mapColor(MapColor.COLOR_LIGHT_GREEN));
    }
}
