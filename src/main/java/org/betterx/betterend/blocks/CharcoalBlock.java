package org.betterx.betterend.blocks;

import org.betterx.bclib.behaviours.interfaces.BehaviourStone;
import net.minecraft.world.level.block.Block;
import org.betterx.bclib.interfaces.Fuel;

import net.minecraft.world.level.block.Blocks;

import net.minecraft.world.level.block.state.BlockBehaviour;

public class CharcoalBlock extends Block implements Fuel, BehaviourStone {
    public CharcoalBlock() {
        super(BlockBehaviour.Properties.copy(Blocks.COAL_BLOCK));
    }

    @Override
    public int getFuelTime() {
        return 16000;
    }
}
