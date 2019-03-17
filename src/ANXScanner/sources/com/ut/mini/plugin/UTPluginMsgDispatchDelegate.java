package com.ut.mini.plugin;

public abstract class UTPluginMsgDispatchDelegate {
    private Object f = null;

    public final Object getMsgObj() {
        return this.f;
    }

    public UTPluginMsgDispatchDelegate(Object aMsgObject) {
        this.f = aMsgObject;
    }

    public boolean isMatchPlugin(UTPlugin lPlugin) {
        return true;
    }

    public Object getDispatchObject(UTPlugin lPlugin) {
        return this.f;
    }
}
