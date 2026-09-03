package org.betterx.betterend.blocks;

import org.betterx.bclib.behaviours.BehaviourBuilders;
import net.minecraft.world.level.block.Block;

import net.minecraft.world.level.block.SoundType;

public class AmaranitaCapBlock extends Block.Wood {
    public AmaranitaCapBlock() {
        super(BehaviourBuilders.createWood().sound(SoundType.WOOD));
    }
}
