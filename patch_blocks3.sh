#!/bin/bash
find src/main/java/org/betterx/betterend/blocks -name "*.java" -exec sed -i 's/import org.betterx.bclib.blocks.BlockProperties;/import net.minecraft.world.level.block.state.properties.BlockStateProperties;/g' {} +
find src/main/java/org/betterx/betterend/blocks -name "*.java" -exec sed -i 's/import org.betterx.bclib.blocks.BaseBlock;/import net.minecraft.world.level.block.Block;/g' {} +
find src/main/java/org/betterx/betterend/blocks -name "*.java" -exec sed -i 's/import org.betterx.bclib.blocks.BaseLeavesBlock;/import net.minecraft.world.level.block.LeavesBlock;/g' {} +
find src/main/java/org/betterx/betterend/blocks -name "*.java" -exec sed -i 's/import org.betterx.bclib.blocks.BaseDoublePlantBlock;/import net.minecraft.world.level.block.DoublePlantBlock;/g' {} +
find src/main/java/org/betterx/betterend/blocks -name "*.java" -exec sed -i 's/import org.betterx.bclib.blocks.BasePlantBlock;/import net.minecraft.world.level.block.BushBlock;/g' {} +
find src/main/java/org/betterx/betterend/blocks -name "*.java" -exec sed -i 's/import org.betterx.bclib.blocks.BaseVineBlock;/import net.minecraft.world.level.block.VineBlock;/g' {} +
find src/main/java/org/betterx/betterend/blocks -name "*.java" -exec sed -i 's/import org.betterx.bclib.blocks.BaseTerrainBlock;/import net.minecraft.world.level.block.Block;/g' {} +
find src/main/java/org/betterx/betterend/blocks -name "*.java" -exec sed -i 's/import org.betterx.bclib.blocks.BaseRotatedPillarBlock;/import net.minecraft.world.level.block.RotatedPillarBlock;/g' {} +
find src/main/java/org/betterx/betterend/blocks -name "*.java" -exec sed -i 's/import org.betterx.bclib.blocks.BaseCropBlock;/import net.minecraft.world.level.block.CropBlock;/g' {} +
find src/main/java/org/betterx/betterend/blocks -name "*.java" -exec sed -i 's/import org.betterx.bclib.blocks.TripleTerrainBlock;/import net.minecraft.world.level.block.Block;/g' {} +
find src/main/java/org/betterx/betterend/blocks -name "*.java" -exec sed -i 's/import org.betterx.bclib.blocks.BasePlantWithAgeBlock;/import net.minecraft.world.level.block.CropBlock;/g' {} +
find src/main/java/org/betterx/betterend/blocks -name "*.java" -exec sed -i 's/import org.betterx.bclib.blocks.WallMushroomBlock;/import net.minecraft.world.level.block.Block;/g' {} +
find src/main/java/org/betterx/betterend/blocks -name "*.java" -exec sed -i 's/import org.betterx.bclib.blocks.LeveledAnvilBlock;/import net.minecraft.world.level.block.AnvilBlock;/g' {} +
find src/main/java/org/betterx/betterend/blocks -name "*.java" -exec sed -i 's/import org.betterx.bclib.blocks.BaseWallPlantBlock;/import net.minecraft.world.level.block.Block;/g' {} +
find src/main/java/org/betterx/betterend/blocks -name "*.java" -exec sed -i 's/import org.betterx.bclib.blocks.BaseUnderwaterWallPlantBlock;/import net.minecraft.world.level.block.Block;/g' {} +
find src/main/java/org/betterx/betterend/blocks -name "*.java" -exec sed -i 's/import org.betterx.bclib.blocks.FeatureSaplingBlock;/import net.minecraft.world.level.block.SaplingBlock;/g' {} +
find src/main/java/org/betterx/betterend/blocks -name "*.java" -exec sed -i 's/import org.betterx.bclib.blocks.UnderwaterPlantBlock;/import net.minecraft.world.level.block.WaterlilyBlock;/g' {} +
find src/main/java/org/betterx/betterend/blocks -name "*.java" -exec sed -i 's/import org.betterx.bclib.blocks.UnderwaterPlantWithAgeBlock;/import net.minecraft.world.level.block.KelpBlock;/g' {} +
find src/main/java/org/betterx/betterend/blocks -name "*.java" -exec sed -i 's/import org.betterx.bclib.blocks.UpDownPlantBlock;/import net.minecraft.world.level.block.DoublePlantBlock;/g' {} +

find src/main/java/org/betterx/betterend/blocks -name "*.java" -exec sed -i 's/extends BaseBlock /extends Block /g' {} +
find src/main/java/org/betterx/betterend/blocks -name "*.java" -exec sed -i 's/extends BaseLeavesBlock /extends LeavesBlock /g' {} +
find src/main/java/org/betterx/betterend/blocks -name "*.java" -exec sed -i 's/extends BaseDoublePlantBlock /extends DoublePlantBlock /g' {} +
find src/main/java/org/betterx/betterend/blocks -name "*.java" -exec sed -i 's/extends BasePlantBlock /extends BushBlock /g' {} +
find src/main/java/org/betterx/betterend/blocks -name "*.java" -exec sed -i 's/extends BaseVineBlock /extends VineBlock /g' {} +
find src/main/java/org/betterx/betterend/blocks -name "*.java" -exec sed -i 's/extends BaseTerrainBlock /extends Block /g' {} +
find src/main/java/org/betterx/betterend/blocks -name "*.java" -exec sed -i 's/extends BaseRotatedPillarBlock /extends RotatedPillarBlock /g' {} +
find src/main/java/org/betterx/betterend/blocks -name "*.java" -exec sed -i 's/extends BaseCropBlock /extends CropBlock /g' {} +
find src/main/java/org/betterx/betterend/blocks -name "*.java" -exec sed -i 's/extends TripleTerrainBlock /extends Block /g' {} +
find src/main/java/org/betterx/betterend/blocks -name "*.java" -exec sed -i 's/extends BasePlantWithAgeBlock /extends CropBlock /g' {} +
find src/main/java/org/betterx/betterend/blocks -name "*.java" -exec sed -i 's/extends WallMushroomBlock /extends Block /g' {} +
find src/main/java/org/betterx/betterend/blocks -name "*.java" -exec sed -i 's/extends LeveledAnvilBlock /extends AnvilBlock /g' {} +
find src/main/java/org/betterx/betterend/blocks -name "*.java" -exec sed -i 's/extends BaseWallPlantBlock /extends Block /g' {} +
find src/main/java/org/betterx/betterend/blocks -name "*.java" -exec sed -i 's/extends BaseUnderwaterWallPlantBlock /extends Block /g' {} +
find src/main/java/org/betterx/betterend/blocks -name "*.java" -exec sed -i 's/extends FeatureSaplingBlock /extends SaplingBlock /g' {} +
find src/main/java/org/betterx/betterend/blocks -name "*.java" -exec sed -i 's/extends UnderwaterPlantBlock /extends WaterlilyBlock /g' {} +
find src/main/java/org/betterx/betterend/blocks -name "*.java" -exec sed -i 's/extends UnderwaterPlantWithAgeBlock /extends KelpBlock /g' {} +
find src/main/java/org/betterx/betterend/blocks -name "*.java" -exec sed -i 's/extends UpDownPlantBlock /extends DoublePlantBlock /g' {} +

find src/main/java/org/betterx/betterend/blocks -name "*.java" -exec sed -i 's/extends BaseBlock\./extends Block\./g' {} +
