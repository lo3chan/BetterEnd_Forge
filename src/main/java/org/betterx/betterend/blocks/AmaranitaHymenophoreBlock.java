package org.betterx.betterend.blocks;

import org.betterx.bclib.behaviours.BehaviourBuilders;
import net.minecraft.world.level.block.Block;
import org.betterx.bclib.client.render.BCLRenderLayer;
import org.betterx.bclib.interfaces.RenderLayerProvider;

import net.minecraft.world.level.block.SoundType;

public class AmaranitaHymenophoreBlock extends Block.Wood implements RenderLayerProvider {
    public AmaranitaHymenophoreBlock() {
        super(BehaviourBuilders.createWood().sound(SoundType.WOOD));
    }

    @Override
    public BCLRenderLayer getRenderLayer() {
        return BCLRenderLayer.CUTOUT;
    }
}
