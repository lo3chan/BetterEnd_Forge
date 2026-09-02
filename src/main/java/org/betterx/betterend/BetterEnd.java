package org.betterx.betterend;

import org.betterx.betterend.registry.EndRegistries;
import org.betterx.betterend.advancements.BECriteria;
import org.betterx.betterend.api.BetterEndPlugin;
import org.betterx.betterend.commands.CommandRegistry;
import org.betterx.betterend.config.Configs;
import org.betterx.betterend.effects.EndPotions;
import org.betterx.betterend.effects.EndStatusEffects;
import org.betterx.betterend.integration.Integrations;
import org.betterx.betterend.network.RitualUpdate;
import org.betterx.betterend.recipe.builders.InfusionRecipe;
import org.betterx.betterend.registry.*;
import org.betterx.betterend.tab.CreativeTabs;
import org.betterx.betterend.util.BonemealPlants;
import org.betterx.betterend.util.LootTableUtil;
import org.betterx.betterend.world.generator.EndLandBiomeDecider;
import org.betterx.betterend.world.generator.GeneratorOptions;

import net.minecraft.core.registries.Registries;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.world.level.biome.Biomes;

import net.neoforged.bus.api.EventPriority;
import net.neoforged.bus.api.IEventBus;
import net.neoforged.fml.common.Mod;
import net.neoforged.fml.event.lifecycle.FMLCommonSetupEvent;
import net.neoforged.fml.event.lifecycle.FMLClientSetupEvent;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.ServiceLoader;
import java.util.List;

@Mod(BetterEnd.MOD_ID)
public class BetterEnd {
    public static final String MOD_ID = "betterend";
    public static final Logger LOGGER = LoggerFactory.getLogger(MOD_ID);
    private static boolean bonemealInitialized = false;

    public BetterEnd(IEventBus modEventBus) {
        // Initialize central registries
        EndRegistries.init(modEventBus);

        modEventBus.addListener(this::onCommonSetup);
        modEventBus.addListener(this::onClientSetup);

        // Preload particles
        EndParticles.ensureStaticallyLoadedServerside();
    }

    private void onCommonSetup(final FMLCommonSetupEvent event) {
        event.enqueueWork(this::onInitialize);
    }

    private void onClientSetup(final FMLClientSetupEvent event) {

    }

    public void onInitialize() {
        EndNumericProviders.register();
        EndPortals.loadPortals();
        EndMenuTypes.ensureStaticallyLoaded();
        EndBiomes.register();
        EndTags.register();
        EndPotions.register();
        InfusionRecipe.register();
        EndStructures.register();
        GeneratorOptions.init();
        LootTableUtil.init();
        CommandRegistry.register();
        BECriteria.register();
        ServiceLoader.load(BetterEndPlugin.class).forEach(BetterEndPlugin::register);
        Integrations.init();
        Configs.saveConfigs();
    }

    public static ResourceLocation makeID(String path) {
        return ResourceLocation.fromNamespaceAndPath(MOD_ID, path);
    }
}
