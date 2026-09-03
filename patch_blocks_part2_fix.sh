#!/bin/bash
for file in src/main/java/org/betterx/betterend/blocks/ChandelierBlock.java src/main/java/org/betterx/betterend/blocks/SulphurCrystalBlock.java; do
    sed -i 's/extends BaseAttachedBlock.[a-zA-Z]* /extends FaceAttachedHorizontalDirectionalBlock /g' "$file"
done
