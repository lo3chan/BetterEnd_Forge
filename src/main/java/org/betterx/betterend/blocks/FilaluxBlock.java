package org.betterx.betterend.blocks;

import net.minecraft.world.level.block.VineBlock;

import net.minecraft.world.level.block.state.BlockBehaviour;

public class FilaluxBlock extends VineBlock {
    public FilaluxBlock() {
        super(15, true, p -> p.offsetType(BlockBehaviour.OffsetType.NONE));
    }
}
