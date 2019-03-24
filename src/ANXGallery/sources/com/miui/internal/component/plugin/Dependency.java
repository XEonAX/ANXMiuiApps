package com.miui.internal.component.plugin;

public class Dependency {
    private boolean dL;
    private boolean dO;
    private int minLevel;
    private String name;
    private int targetLevel;

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public boolean isResourcesRequired() {
        return this.dO;
    }

    public void setResourcesRequired(boolean z) {
        this.dO = z;
    }

    public boolean isOptional() {
        return this.dL;
    }

    public void setOptional(boolean z) {
        this.dL = z;
    }

    public int getMinLevel() {
        return this.minLevel;
    }

    public void setMinLevel(int i) {
        this.minLevel = i;
    }

    public int getTargetLevel() {
        return this.targetLevel;
    }

    public void setTargetLevel(int i) {
        this.targetLevel = i;
    }
}
