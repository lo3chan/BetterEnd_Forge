#!/bin/bash
find src/main/java/org/betterx/betterend/blocks -name "*.java" -exec sed -i 's/TripleShape/org.betterx.betterend.blocks.properties.TripleShape/g' {} +
find src/main/java/org/betterx/betterend/blocks -name "*.java" -exec sed -i 's/PentaShape/org.betterx.betterend.blocks.properties.PentaShape/g' {} +
find src/main/java/org/betterx/betterend/blocks -name "*.java" -exec sed -i 's/org.betterx.betterend.blocks.properties.org.betterx.betterend.blocks.properties/org.betterx.betterend.blocks.properties/g' {} +
