package org.betterx.betterend.blocks.properties;

import net.minecraft.util.StringRepresentable;

public enum TripleShape implements StringRepresentable {
    TOP("top"),
    MIDDLE("middle"),
    BOTTOM("bottom");

    private final String name;

    TripleShape(String name) {
        this.name = name;
    }

    @Override
    public String getSerializedName() {
        return this.name;
    }

    @Override
    public String toString() {
        return this.name;
    }
}
