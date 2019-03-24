package com.miui.internal.variable.v16;

import android.app.Application;
import com.miui.internal.variable.VariableExceptionHandler;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Map;

public class Android_App_ActivityThread_class implements com.miui.internal.variable.Android_App_ActivityThread_class {
    private static final String TAG = "Android_App_ActivityThread_class_v16";
    private Object ld = null;
    private volatile Application le = null;
    private String lf;
    private Object lg;

    public Android_App_ActivityThread_class() {
        try {
            Method declaredMethod = Class.forName("android.app.ActivityThread").getDeclaredMethod("currentActivityThread", new Class[0]);
            declaredMethod.setAccessible(true);
            this.ld = declaredMethod.invoke(null, new Object[0]);
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("android.app.ActivityThread.currentActivityThread", e);
        }
    }

    public Application currentApplication() {
        try {
            if (this.le == null) {
                Method declaredMethod = this.ld.getClass().getDeclaredMethod("currentApplication", new Class[0]);
                declaredMethod.setAccessible(true);
                this.le = (Application) declaredMethod.invoke(null, new Object[0]);
            }
            return this.le;
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("android.app.ActivityThread.currentApplication", e);
            return null;
        }
    }

    public Object currentActivityThread() {
        return this.ld;
    }

    public String getInitialPackageName(Object obj) {
        try {
            if (this.lf == null) {
                Field declaredField = obj.getClass().getDeclaredField("mPackages");
                declaredField.setAccessible(true);
                Map map = (Map) declaredField.get(obj);
                this.lf = (String) map.keySet().iterator().next();
                this.lg = ((WeakReference) map.values().iterator().next()).get();
            }
            return this.lf;
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("android.app.ActivityThread.mPackages", e);
            return null;
        }
    }

    public Object getInitialLoadedApk(Object obj) {
        getInitialPackageName(obj);
        return this.lg;
    }
}
