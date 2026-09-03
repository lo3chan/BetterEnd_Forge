#!/bin/bash
for file in src/main/java/org/betterx/betterend/blocks/AmberBlock.java src/main/java/org/betterx/betterend/blocks/AncientEmeraldIceBlock.java src/main/java/org/betterx/betterend/blocks/CharcoalBlock.java src/main/java/org/betterx/betterend/blocks/EnderBlock.java src/main/java/org/betterx/betterend/blocks/GlowingPillarLuminophorBlock.java src/main/java/org/betterx/betterend/blocks/SilkMothHiveBlock.java; do
    sed -i 's/import org.betterx.bclib.blocks.BaseBlock;/import net.minecraft.world.level.block.Block;/g' "$file"
    sed -i 's/extends BaseBlock /extends Block /g' "$file"
done
