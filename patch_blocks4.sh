#!/bin/bash
find src/main/java/org/betterx/betterend/blocks -name "*.java" -exec sed -i 's/import org.betterx.bclib.blocks.BlockProperties.TripleShape;//g' {} +
find src/main/java/org/betterx/betterend/blocks -name "*.java" -exec sed -i 's/import org.betterx.bclib.blocks.BlockProperties.PentaShape;//g' {} +
