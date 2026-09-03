package org.betterx.betterend.blocks;

import org.betterx.bclib.behaviours.interfaces.BehaviourStone;
import net.minecraft.world.level.block.Block;

import net.minecraft.world.level.block.Blocks;

import net.minecraft.world.level.block.state.BlockBehaviour;

public class MissingTileBlock extends Block implements BehaviourStone {
    public MissingTileBlock() {
        super(BlockBehaviour.Properties.copy(Blocks.END_STONE));
    }
}
