package com.miui.internal.component;

import android.app.Application;
import android.content.Context;
import android.content.res.AssetManager;
import com.miui.internal.component.plugin.PluginClassLoader;
import com.miui.internal.component.plugin.PluginContext;
import com.miui.internal.component.plugin.PluginLoader;
import com.miui.internal.component.plugin.PluginResourceLoader;
import com.miui.internal.util.PackageConstants;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import miui.core.Manifest;
import miui.module.ModuleManager;
import miui.os.C0002FileUtils;
import miui.util.IOUtils;

public class ComponentManager {
    private static final String ds = "plugins";
    private static final String dt = "plugins";
    private Application du;
    private Manifest dv;

    public ComponentManager(Application application, Manifest manifest) {
        this.du = application;
        this.dv = manifest;
    }

    public void load() {
        B();
        C();
    }

    private void B() {
        ModuleManager.createInstance(this.du).loadModules((String[]) this.dv.getDependencies().keySet().toArray(new String[0]));
    }

    private void C() {
        PluginContext.getInstance().setApplicationContext(this.du);
        File c = c(this.du);
        if (!c.exists()) {
            a(this.du, "plugins", c);
        }
        PluginLoader pluginLoader = new PluginLoader(c);
        PluginContext.getInstance().setPluginLoader(pluginLoader);
        PluginContext.getInstance().setPluginClassLoader(new PluginClassLoader(pluginLoader));
        PluginContext.getInstance().setPluginResourceLoader(new PluginResourceLoader(pluginLoader));
    }

    private File c(Context context) {
        return new File(PackageConstants.getSdkBaseFolder(context), "plugins");
    }

    private void a(Context context, String str, File file) {
        try {
            file.mkdirs();
            AssetManager assets = context.getAssets();
            for (String str2 : assets.list(str)) {
                File file2 = new File(file, str2);
                file2.getParentFile().mkdirs();
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(str);
                stringBuilder.append("/");
                stringBuilder.append(str2);
                InputStream open = assets.open(stringBuilder.toString());
                C0002FileUtils.copyToFile(open, file2);
                IOUtils.closeQuietly(open);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
