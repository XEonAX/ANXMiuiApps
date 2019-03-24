package com.miui.internal.component.module;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.content.res.ResourcesImpl;
import android.os.Build.VERSION;
import com.miui.internal.util.PackageConstants;
import com.miui.internal.variable.Android_App_ActivityThread_class;
import com.miui.internal.variable.Android_App_ActivityThread_class.Factory;
import com.miui.internal.variable.Android_App_LoadedApk_class;
import com.miui.internal.variable.Android_App_ResourcesManager_class;
import com.miui.internal.variable.Android_Content_Res_AssetManager_class;
import com.miui.internal.variable.Android_Content_Res_ResourcesImpl_class;
import com.miui.internal.variable.Android_Content_Res_Resources_class;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import java.util.Map;

public class ModuleResourceLoader {
    public static void load(List<String> list) {
        load(list, null);
    }

    public static void load(List<String> list, List<String> list2) {
        if (PackageConstants.sSdkStatus < 2) {
            load2Initial(list, list2);
        } else {
            load2Current(list, list2, PackageConstants.sApplication);
        }
    }

    public static void load2Initial(List<String> list, List<String> list2) {
        Android_App_ActivityThread_class android_App_ActivityThread_class = Factory.getInstance().get();
        Object currentActivityThread = android_App_ActivityThread_class.currentActivityThread();
        Android_App_LoadedApk_class android_App_LoadedApk_class = Android_App_LoadedApk_class.Factory.getInstance().get();
        Object initialLoadedApk = android_App_ActivityThread_class.getInitialLoadedApk(currentActivityThread);
        a(android_App_LoadedApk_class.getResources(initialLoadedApk), android_App_LoadedApk_class.getApplicationInfo(initialLoadedApk).sourceDir, list2, list);
    }

    public static void load2Current(List<String> list, List<String> list2, Context context) {
        a(context.getResources(), context.getApplicationInfo().sourceDir, list2, list);
    }

    public static void load2System(List<String> list, List<String> list2) {
        a(Resources.getSystem(), null, list2, list);
    }

    private static void a(Resources resources, String str, List<String> list, List<String> list2) {
        Android_Content_Res_AssetManager_class android_Content_Res_AssetManager_class = Android_Content_Res_AssetManager_class.Factory.getInstance().get();
        AssetManager assets = resources.getAssets();
        if (VERSION.SDK_INT < 21) {
            assets = android_Content_Res_AssetManager_class.newInstance();
            android_Content_Res_AssetManager_class.addAssetPath(assets, str);
            if (list != null) {
                for (String addAssetPath : list) {
                    android_Content_Res_AssetManager_class.addAssetPath(assets, addAssetPath);
                }
            }
        }
        for (String addAssetPath2 : list2) {
            if (VERSION.SDK_INT >= 24) {
                try {
                    Map map;
                    Android_Content_Res_ResourcesImpl_class android_Content_Res_ResourcesImpl_class = Android_Content_Res_ResourcesImpl_class.Factory.getInstance().get();
                    Object D = D();
                    Field declaredField = D.getClass().getDeclaredField("mResourceImpls");
                    declaredField.setAccessible(true);
                    synchronized (D) {
                        map = (Map) declaredField.get(D);
                        Android_App_ResourcesManager_class.appendAssetPath(addAssetPath2);
                    }
                    if (map != null) {
                        for (Object obj : map.keySet()) {
                            WeakReference weakReference = (WeakReference) map.get(obj);
                            if (weakReference.get() != null) {
                                android_Content_Res_AssetManager_class.addAssetPath(android_Content_Res_ResourcesImpl_class.getAssets((ResourcesImpl) weakReference.get()), addAssetPath2);
                            }
                        }
                    }
                } catch (ClassNotFoundException e) {
                } catch (NoSuchMethodException e2) {
                } catch (InvocationTargetException e3) {
                } catch (IllegalAccessException e4) {
                } catch (NoSuchFieldException e5) {
                }
            } else {
                android_Content_Res_AssetManager_class.addAssetPath(assets, addAssetPath2);
            }
        }
        if (VERSION.SDK_INT < 21) {
            a(resources, assets);
        }
    }

    private static Object D() throws ClassNotFoundException, NoSuchMethodException, InvocationTargetException, IllegalAccessException {
        Method declaredMethod = Class.forName("android.app.ResourcesManager").getDeclaredMethod("getInstance", new Class[0]);
        declaredMethod.setAccessible(true);
        return declaredMethod.invoke(null, new Object[0]);
    }

    private static void a(Resources resources, AssetManager assetManager) {
        Resources resources2 = new Resources(assetManager, resources.getDisplayMetrics(), resources.getConfiguration());
        AssetManager assets = resources.getAssets();
        Android_Content_Res_Resources_class android_Content_Res_Resources_class = Android_Content_Res_Resources_class.Factory.getInstance().get();
        android_Content_Res_Resources_class.setAssetManager(resources, assetManager);
        android_Content_Res_Resources_class.setAssetManager(resources2, null);
        assets.close();
        resources.updateConfiguration(resources.getConfiguration(), resources.getDisplayMetrics());
    }
}
