#!/bin/bash
for file in src/main/java/org/betterx/betterend/blocks/SmallJellyshroomBlock.java src/main/java/org/betterx/betterend/blocks/FilaluxWingsBlock.java src/main/java/org/betterx/betterend/blocks/SmaragdantCrystalShardBlock.java src/main/java/org/betterx/betterend/blocks/ChandelierBlock.java src/main/java/org/betterx/betterend/blocks/SulphurCrystalBlock.java src/main/java/org/betterx/betterend/blocks/basis/FurBlock.java; do
    sed -i 's/import org.betterx.bclib.blocks.BaseAttachedBlock;/import net.minecraft.world.level.block.FaceAttachedHorizontalDirectionalBlock;/g' "$file"
    sed -i 's/extends BaseAttachedBlock /extends FaceAttachedHorizontalDirectionalBlock /g' "$file"
done

for file in src/main/java/org/betterx/betterend/blocks/MengerSpongeBlock.java src/main/java/org/betterx/betterend/blocks/FlowerPotBlock.java src/main/java/org/betterx/betterend/blocks/NeonCactusPlantBlock.java src/main/java/org/betterx/betterend/blocks/MengerSpongeWetBlock.java src/main/java/org/betterx/betterend/blocks/LumecornBlock.java src/main/java/org/betterx/betterend/blocks/CavePumpkinBlock.java src/main/java/org/betterx/betterend/blocks/EndLotusLeafBlock.java src/main/java/org/betterx/betterend/blocks/HydrothermalVentBlock.java src/main/java/org/betterx/betterend/blocks/basis/EndLanternBlock.java src/main/java/org/betterx/betterend/blocks/basis/PedestalBlock.java; do
    sed -i 's/import org.betterx.bclib.blocks.BaseBlockNotFull;/import net.minecraft.world.level.block.Block;/g' "$file"
    sed -i 's/extends BaseBlockNotFull /extends Block /g' "$file"
done

for file in src/main/java/org/betterx/betterend/blocks/EndStoneSmelter.java; do
    sed -i 's/import org.betterx.bclib.blocks.BaseBlockWithEntity;/import net.minecraft.world.level.block.BaseEntityBlock;/g' "$file"
    sed -i 's/extends BaseBlockWithEntity /extends BaseEntityBlock /g' "$file"
done
