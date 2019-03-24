package com.miui.internal.component.plugin;

import android.content.res.Resources;
import java.util.List;

public class PluginResourceLoader {
    private PluginLoader dW;

    public PluginResourceLoader(PluginLoader pluginLoader) {
        this.dW = pluginLoader;
    }

    public Resources lookup(Class<?> cls) throws PluginException {
        return lookup(cls.getName());
    }

    public Resources lookup(String str) throws PluginException {
        List plugins = this.dW.getPlugins(str);
        StringBuilder stringBuilder;
        if (plugins == null || plugins.size() == 0) {
            stringBuilder = new StringBuilder();
            stringBuilder.append("no plugin found for extension ");
            stringBuilder.append(str);
            throw new PluginException(stringBuilder.toString());
        } else if (plugins.size() <= 1) {
            return this.dW.getResources((Plugin) plugins.get(0));
        } else {
            stringBuilder = new StringBuilder();
            stringBuilder.append("more than one plugin found for extension ");
            stringBuilder.append(str);
            throw new PluginException(stringBuilder.toString());
        }
    }
}
