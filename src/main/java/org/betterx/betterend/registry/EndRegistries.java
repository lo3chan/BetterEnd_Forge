package org.betterx.betterend.registry;

import net.minecraft.core.registries.Registries;
import net.minecraft.world.entity.EntityType;
import net.minecraft.world.item.Item;
import net.minecraft.world.level.block.Block;
import net.minecraft.world.level.block.entity.BlockEntityType;
import net.neoforged.bus.api.IEventBus;
import net.neoforged.neoforge.registries.DeferredRegister;
import org.betterx.betterend.BetterEnd;

public class EndRegistries {
    public static final DeferredRegister.Blocks BLOCKS = DeferredRegister.createBlocks(BetterEnd.MOD_ID);
    public static final DeferredRegister.Items ITEMS = DeferredRegister.createItems(BetterEnd.MOD_ID);
    public static final DeferredRegister<EntityType<?>> ENTITY_TYPES = DeferredRegister.create(Registries.ENTITY_TYPE, BetterEnd.MOD_ID);
    public static final DeferredRegister<BlockEntityType<?>> BLOCK_ENTITY_TYPES = DeferredRegister.create(Registries.BLOCK_ENTITY_TYPE, BetterEnd.MOD_ID);

    public static void init(IEventBus modEventBus) {
        BLOCKS.register(modEventBus);
        ITEMS.register(modEventBus);
        ENTITY_TYPES.register(modEventBus);
        BLOCK_ENTITY_TYPES.register(modEventBus);
    }
}
