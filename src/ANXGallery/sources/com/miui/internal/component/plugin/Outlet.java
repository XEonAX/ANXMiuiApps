package com.miui.internal.component.plugin;

public class Outlet {
    private boolean dL;
    private AccessPermission dQ;
    private String name;

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public AccessPermission getVisibility() {
        return this.dQ;
    }

    public void setVisibility(AccessPermission accessPermission) {
        this.dQ = accessPermission;
    }

    public boolean isOptional() {
        return this.dL;
    }

    public void setOptional(boolean z) {
        this.dL = z;
    }
}
