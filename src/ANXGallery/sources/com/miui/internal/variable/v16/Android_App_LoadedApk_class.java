package com.miui.internal.variable.v16;

import android.content.pm.ApplicationInfo;
import android.content.res.Resources;
import com.miui.internal.variable.VariableExceptionHandler;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public class Android_App_LoadedApk_class implements com.miui.internal.variable.Android_App_LoadedApk_class {
    public Resources getResources(Object obj) {
        try {
            Field declaredField = obj.getClass().getDeclaredField("mResources");
            declaredField.setAccessible(true);
            return (Resources) declaredField.get(obj);
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("android.app.LoadedApk.mResources", e);
            return null;
        }
    }

    public ApplicationInfo getApplicationInfo(Object obj) {
        try {
            Method declaredMethod = obj.getClass().getDeclaredMethod("getApplicationInfo", new Class[0]);
            declaredMethod.setAccessible(true);
            return (ApplicationInfo) declaredMethod.invoke(obj, new Object[0]);
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("android.app.LoadedApk.getApplicationInfo", e);
            return null;
        }
    }
}
