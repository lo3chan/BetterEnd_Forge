package org.betterx.betterend.blocks;

import org.betterx.bclib.behaviours.BehaviourBuilders;
import org.betterx.bclib.behaviours.interfaces.BehaviourSnow;
import net.minecraft.world.level.block.Block;

public class DenseSnowBlock extends Block implements BehaviourSnow {
    public DenseSnowBlock() {
        super(BehaviourBuilders.createSnow());
    }
}
