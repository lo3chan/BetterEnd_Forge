package org.betterx.betterend.blocks;

import net.minecraft.world.level.block.Block;

import net.minecraft.world.level.block.SoundType;

public class FilaluxLanternBlock extends Block.Wood {
    public FilaluxLanternBlock() {
        super(Properties.of()
                        .lightLevel((bs) -> 15)
                        .sound(SoundType.WOOD));
    }
}
