package org.betterx.betterend.blocks.properties;

import net.minecraft.util.StringRepresentable;

public enum PentaShape implements StringRepresentable {
    BOTTOM("bottom"),
    PRE_BOTTOM("pre_bottom"),
    MIDDLE("middle"),
    PRE_TOP("pre_top"),
    TOP("top");

    private final String name;

    PentaShape(String name) {
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
