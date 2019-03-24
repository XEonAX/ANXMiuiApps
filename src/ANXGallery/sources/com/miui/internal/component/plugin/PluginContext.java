package com.miui.internal.component.plugin;

import android.content.Context;

public class PluginContext {
    private static volatile PluginContext dX;
    private PluginLoader dW;
    private Context dY;
    private PluginClassLoader dZ;
    private PluginResourceLoader ea;

    public static PluginContext getInstance() {
        if (dX == null) {
            synchronized (PluginContext.class) {
                if (dX == null) {
                    dX = new PluginContext();
                }
            }
        }
        return dX;
    }

    private PluginContext() {
    }

    public Context getApplicationContext() {
        return this.dY;
    }

    public void setApplicationContext(Context context) {
        this.dY = context;
    }

    public PluginLoader getPluginLoader() {
        return this.dW;
    }

    public void setPluginLoader(PluginLoader pluginLoader) {
        this.dW = pluginLoader;
    }

    public PluginClassLoader getPluginClassLoader() {
        return this.dZ;
    }

    public void setPluginClassLoader(PluginClassLoader pluginClassLoader) {
        this.dZ = pluginClassLoader;
    }

    public PluginResourceLoader getPluginResourceLoader() {
        return this.ea;
    }

    public void setPluginResourceLoader(PluginResourceLoader pluginResourceLoader) {
        this.ea = pluginResourceLoader;
    }
}
