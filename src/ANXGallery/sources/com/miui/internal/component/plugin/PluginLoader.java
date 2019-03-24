package com.miui.internal.component.plugin;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import miui.os.C0002FileUtils;

public class PluginLoader {
    private static final String eb = "plugins-opt";
    private static final String ec = ".apk";
    private static final String ed = ".xml";
    private static final String ee = "PluginManifest.xml";
    private static final String ef = "assets/PluginManifest.xml";
    private static Map<String, Plugin> eg = new HashMap();
    private static Map<String, List<Plugin>> eh = new HashMap();
    private static Map<String, ClassLoader> ei = new HashMap();
    private static Map<String, Resources> ej = new HashMap();
    private File dD = new File(this.ek.getParentFile(), eb);
    private File ek;

    public PluginLoader(File file) {
        this.ek = file;
        this.ek.mkdirs();
        this.dD.mkdirs();
        C();
        F();
    }

    /* JADX WARNING: Removed duplicated region for block: B:56:0x009c A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x0088 A:{SYNTHETIC, Splitter: B:37:0x0088} */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x009c A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x007e A:{SYNTHETIC, Splitter: B:31:0x007e} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void C() {
        ZipFile zipFile;
        IOException e;
        Throwable th;
        PluginParseException e2;
        E();
        File[] listFiles = this.ek.listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                if (file.getName().endsWith(".apk")) {
                    File file2 = this.ek;
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append(C0002FileUtils.getName(file.getPath()));
                    stringBuilder.append(".xml");
                    File file3 = new File(file2, stringBuilder.toString());
                    zipFile = null;
                    try {
                        if (!file3.exists()) {
                            ZipFile zipFile2 = new ZipFile(file);
                            try {
                                C0002FileUtils.copyToFile(zipFile2.getInputStream(new ZipEntry(ef)), file3);
                                zipFile = zipFile2;
                            } catch (IOException e3) {
                                e = e3;
                                zipFile = zipFile2;
                                try {
                                    e.printStackTrace();
                                    if (zipFile == null) {
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                }
                            } catch (PluginParseException e4) {
                                e2 = e4;
                                zipFile = zipFile2;
                                e2.printStackTrace();
                                if (zipFile == null) {
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                zipFile = zipFile2;
                            }
                        }
                        Plugin b = b(file3, file);
                        eg.put(b.getName(), b);
                        if (zipFile != null) {
                            try {
                                zipFile.close();
                            } catch (IOException e5) {
                                e5.printStackTrace();
                            }
                        }
                    } catch (IOException e6) {
                        e5 = e6;
                        e5.printStackTrace();
                        if (zipFile == null) {
                            zipFile.close();
                        }
                    } catch (PluginParseException e7) {
                        e2 = e7;
                        e2.printStackTrace();
                        if (zipFile == null) {
                            zipFile.close();
                        }
                    }
                }
            }
            return;
        }
        return;
        if (zipFile != null) {
            try {
                zipFile.close();
            } catch (IOException e8) {
                e8.printStackTrace();
            }
        }
        throw th;
        throw th;
    }

    private void E() {
        Context applicationContext = PluginContext.getInstance().getApplicationContext();
        Plugin plugin = null;
        try {
            String packageResourcePath = applicationContext.getPackageResourcePath();
            if (packageResourcePath != null) {
                plugin = a(applicationContext.getAssets().open(ee), new File(packageResourcePath));
            }
        } catch (IOException e) {
        } catch (PluginParseException e2) {
            e2.printStackTrace();
        }
        if (plugin == null) {
            plugin = new Plugin();
            plugin.setName(applicationContext.getPackageName());
            plugin.setGroup(applicationContext.getPackageName());
            plugin.setResources(AccessPermission.PRIVATE);
        }
        eg.put(plugin.getName(), plugin);
        ei.put(plugin.getName(), getClass().getClassLoader());
        ej.put(plugin.getName(), applicationContext.getResources());
    }

    private Plugin b(File file, File file2) throws IOException, PluginParseException {
        return a(new FileInputStream(file), file2);
    }

    private Plugin a(InputStream inputStream, File file) throws IOException, PluginParseException {
        Plugin parsePlugin = new PluginManifestParser().parsePlugin(inputStream);
        parsePlugin.setFile(file);
        return parsePlugin;
    }

    private void F() {
        for (String str : eg.keySet()) {
            Plugin plugin = (Plugin) eg.get(str);
            for (String str2 : plugin.getExtensions().keySet()) {
                List list = (List) eh.get(str2);
                if (list == null) {
                    list = new ArrayList();
                    eh.put(str2, list);
                }
                list.add(plugin);
            }
        }
    }

    public boolean hasExtension(String str) {
        return eh.containsKey(str);
    }

    public List<Plugin> getPlugins(String str) {
        return (List) eh.get(str);
    }

    public ClassLoader getClassLoader(Plugin plugin) {
        if (!ei.containsKey(plugin.getName())) {
            synchronized (ei) {
                if (!ei.containsKey(plugin.getName())) {
                    ei.put(plugin.getName(), a(plugin));
                }
            }
        }
        return (ClassLoader) ei.get(plugin.getName());
    }

    private ClassLoader a(Plugin plugin) {
        return new DexClassLoader(plugin.getFile().getAbsolutePath(), this.dD.getAbsolutePath(), null, getClass().getClassLoader());
    }

    public Resources getResources(Plugin plugin) {
        if (!ej.containsKey(plugin.getName())) {
            synchronized (ej) {
                if (!ej.containsKey(plugin.getName())) {
                    ej.put(plugin.getName(), b(plugin));
                }
            }
        }
        return (Resources) ej.get(plugin.getName());
    }

    private Resources b(Plugin plugin) {
        StringBuilder stringBuilder;
        try {
            AssetManager assetManager = (AssetManager) AssetManager.class.newInstance();
            a(assetManager, plugin.getFile().getPath());
            for (Dependency dependency : plugin.getDependencies().values()) {
                if (dependency.isResourcesRequired()) {
                    a(assetManager, ((Plugin) eg.get(dependency.getName())).getFile().getPath());
                }
            }
            Resources resources = PluginContext.getInstance().getApplicationContext().getResources();
            return new Resources(assetManager, resources.getDisplayMetrics(), resources.getConfiguration());
        } catch (InstantiationException e) {
            e.printStackTrace();
            stringBuilder = new StringBuilder();
            stringBuilder.append("invoke asset manager encounter an error: ");
            stringBuilder.append(e.getMessage());
            throw new PluginException(stringBuilder.toString());
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
            stringBuilder = new StringBuilder();
            stringBuilder.append("invoke asset manager encounter an error: ");
            stringBuilder.append(e2.getMessage());
            throw new PluginException(stringBuilder.toString());
        }
    }

    private void a(AssetManager assetManager, String str) {
        StringBuilder stringBuilder;
        try {
            AssetManager.class.getMethod("addAssetPath", new Class[]{String.class}).invoke(assetManager, new Object[]{str});
        } catch (IllegalAccessException e) {
            e.printStackTrace();
            stringBuilder = new StringBuilder();
            stringBuilder.append("invoke asset manager encounter an error: ");
            stringBuilder.append(e.getMessage());
            throw new PluginException(stringBuilder.toString());
        } catch (IllegalArgumentException e2) {
            e2.printStackTrace();
            stringBuilder = new StringBuilder();
            stringBuilder.append("invoke asset manager encounter an error: ");
            stringBuilder.append(e2.getMessage());
            throw new PluginException(stringBuilder.toString());
        } catch (InvocationTargetException e3) {
            e3.printStackTrace();
            stringBuilder = new StringBuilder();
            stringBuilder.append("invoke asset manager encounter an error: ");
            stringBuilder.append(e3.getMessage());
            throw new PluginException(stringBuilder.toString());
        } catch (NoSuchMethodException e4) {
            e4.printStackTrace();
            stringBuilder = new StringBuilder();
            stringBuilder.append("invoke asset manager encounter an error: ");
            stringBuilder.append(e4.getMessage());
            throw new PluginException(stringBuilder.toString());
        }
    }
}
