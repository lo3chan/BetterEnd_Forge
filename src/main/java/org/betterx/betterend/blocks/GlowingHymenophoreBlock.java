package org.betterx.betterend.blocks;

import net.minecraft.world.level.block.Block;
import org.betterx.bclib.interfaces.tools.AddMineableAxe;

import net.minecraft.world.level.block.SoundType;

public class GlowingHymenophoreBlock extends Block.Wood implements AddMineableAxe {
    public GlowingHymenophoreBlock() {
        super(Properties.of()
                        .lightLevel((bs) -> 15)
                        .sound(SoundType.WART_BLOCK)
        );
    }
}
