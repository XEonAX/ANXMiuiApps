package com.miui.internal.component.plugin;

import java.util.List;

public class PluginClassLoader {
    private PluginLoader dW;

    public PluginClassLoader(PluginLoader pluginLoader) {
        this.dW = pluginLoader;
    }

    public <T> T lookup(Class<T> cls) throws PluginException {
        return lookup(cls.getName());
    }

    public <T> T lookup(String str) throws PluginException {
        StringBuilder stringBuilder;
        List plugins = this.dW.getPlugins(str);
        StringBuilder stringBuilder2;
        if (plugins == null || plugins.size() == 0) {
            stringBuilder2 = new StringBuilder();
            stringBuilder2.append("no plugin found for extension ");
            stringBuilder2.append(str);
            throw new PluginException(stringBuilder2.toString());
        } else if (plugins.size() <= 1) {
            Plugin plugin = (Plugin) plugins.get(0);
            try {
                return this.dW.getClassLoader(plugin).loadClass(plugin.getExtension(str).getLocation()).newInstance();
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
                stringBuilder = new StringBuilder();
                stringBuilder.append("no impl of extension ");
                stringBuilder.append(str);
                stringBuilder.append(" found in plugin ");
                stringBuilder.append(plugin.getName());
                throw new PluginException(stringBuilder.toString());
            } catch (InstantiationException e2) {
                e2.printStackTrace();
                stringBuilder = new StringBuilder();
                stringBuilder.append("init impl of extension ");
                stringBuilder.append(str);
                stringBuilder.append(" failed in plugin ");
                stringBuilder.append(plugin.getName());
                throw new PluginException(stringBuilder.toString());
            } catch (IllegalAccessException e3) {
                e3.printStackTrace();
                stringBuilder = new StringBuilder();
                stringBuilder.append("access impl of extension ");
                stringBuilder.append(str);
                stringBuilder.append(" failed in plugin ");
                stringBuilder.append(plugin.getName());
                throw new PluginException(stringBuilder.toString());
            }
        } else {
            stringBuilder2 = new StringBuilder();
            stringBuilder2.append("more than one plugin found for extension ");
            stringBuilder2.append(str);
            throw new PluginException(stringBuilder2.toString());
        }
    }
}
