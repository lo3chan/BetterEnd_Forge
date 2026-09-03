package org.betterx.betterend.blocks.basis;

import net.minecraft.world.level.block.RotatedPillarBlock;

import net.minecraft.resources.ResourceLocation;

import net.minecraftforge.api.distmarker.Dist;
import net.minecraftforge.api.distmarker.OnlyIn;

import java.util.Optional;

public class LitPillarBlock extends RotatedPillarBlock {
    private static final String PATTERN = "{\"parent\":\"betterend:block/pillar_noshade\",\"textures\":{\"end\":\"betterend:block/name_top\",\"side\":\"betterend:block/name_side\"}}";

    public LitPillarBlock(Properties settings) {
        super(settings);
    }

    @Override
    @OnlyIn(Dist.CLIENT)
    protected Optional<String> createBlockPattern(ResourceLocation blockId) {
        String name = blockId.getPath();
        return Optional.of(PATTERN.replace("name", name));
    }
}
