package org.betterx.betterend.world.biome;

import com.mojang.serialization.MapCodec;
import net.minecraft.core.Holder;
import net.minecraft.world.level.biome.Biome;
import net.neoforged.neoforge.common.world.BiomeModifier;
import net.neoforged.neoforge.common.world.ModifiableBiomeInfo;
import org.betterx.betterend.registry.EndRegistries;

public class EndBiomeModifier implements BiomeModifier {

    public static final MapCodec<EndBiomeModifier> CODEC = MapCodec.unit(EndBiomeModifier::new);

    public EndBiomeModifier() {
    }

    @Override
    public void modify(Holder<Biome> biome, Phase phase, ModifiableBiomeInfo.BiomeInfo.Builder builder) {
        // Implement modification logic here
    }

    @Override
    public MapCodec<? extends BiomeModifier> codec() {
        return EndRegistries.END_BIOME_MODIFIER.get();
    }
}
