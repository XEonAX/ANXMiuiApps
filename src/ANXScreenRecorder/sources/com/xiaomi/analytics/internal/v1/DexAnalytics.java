package com.xiaomi.analytics.internal.v1;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.util.Log;
import com.xiaomi.analytics.internal.Version;
import com.xiaomi.analytics.internal.util.ALog;
import com.xiaomi.analytics.internal.util.AndroidUtils;
import dalvik.system.DexClassLoader;

public class DexAnalytics implements AnalyticsInterface {
    private static final String ANALYTICS_CLASS_NAME = "com.miui.analytics.Analytics";
    private static final String TAG = "DexAnalytics";
    private ClassLoader mClassLoader;
    private Context mContext;
    private String mDexPath;
    private volatile boolean mInitialized;
    private String mLibPath;
    private int mVersion;
    private String mVersionName = "";

    public DexAnalytics(Context context, String dexPath, String libPath) {
        this.mContext = AndroidUtils.getApplicationContext(context);
        this.mDexPath = dexPath;
        this.mLibPath = libPath;
        PackageInfo pi = context.getPackageManager().getPackageArchiveInfo(dexPath, 1);
        this.mVersion = pi.versionCode;
        this.mVersionName = pi.versionName;
    }

    private void initAnalytics() {
        try {
            this.mClassLoader.loadClass(ANALYTICS_CLASS_NAME).getDeclaredMethod("initialize", new Class[]{Context.class, Integer.TYPE, String.class}).invoke(null, new Object[]{this.mContext, Integer.valueOf(this.mVersion), this.mVersionName});
        } catch (Throwable e) {
            Log.w(ALog.addPrefix(TAG), "initAnalytics exception", e);
        }
    }

    public void init() {
        try {
            if (!this.mInitialized) {
                this.mClassLoader = new DexClassLoader(this.mDexPath, this.mContext.getDir("dex", 0).getAbsolutePath(), this.mLibPath, ClassLoader.getSystemClassLoader());
                initAnalytics();
                this.mInitialized = true;
                ALog.d(TAG, "initialized");
            }
        } catch (Exception e) {
            Log.e(ALog.addPrefix(TAG), "init e", e);
        }
    }

    public Version getVersion() {
        return new Version(this.mVersionName);
    }

    public String getClientExtra(String configKey) {
        try {
            init();
            return (String) this.mClassLoader.loadClass(ANALYTICS_CLASS_NAME).getDeclaredMethod("getClientExtra", new Class[]{String.class, String.class}).invoke(null, new Object[]{this.mContext.getPackageName(), configKey});
        } catch (Throwable e) {
            Log.w(ALog.addPrefix(TAG), "getClientExtra exception", e);
            return "";
        }
    }

    public boolean isPolicyReady(String configKey) {
        try {
            init();
            return ((Boolean) this.mClassLoader.loadClass(ANALYTICS_CLASS_NAME).getDeclaredMethod("isPolicyReady", new Class[]{String.class, String.class}).invoke(null, new Object[]{this.mContext.getPackageName(), configKey})).booleanValue();
        } catch (Throwable e) {
            Log.w(ALog.addPrefix(TAG), "isPolicyReady exception", e);
            return false;
        }
    }

    public void trackEvent(String event) {
        try {
            init();
            this.mClassLoader.loadClass(ANALYTICS_CLASS_NAME).getDeclaredMethod("trackEvent", new Class[]{String.class}).invoke(null, new Object[]{event});
        } catch (Throwable e) {
            Log.w(ALog.addPrefix(TAG), "trackEvent exception", e);
        }
    }

    public void trackEvents(String[] events) {
        try {
            init();
            this.mClassLoader.loadClass(ANALYTICS_CLASS_NAME).getDeclaredMethod("trackEvents", new Class[]{String[].class}).invoke(null, new Object[]{events});
        } catch (Throwable e) {
            Log.w(ALog.addPrefix(TAG), "trackEvents exception", e);
        }
    }

    public void setDebugOn(boolean on) {
        try {
            init();
            this.mClassLoader.loadClass(ANALYTICS_CLASS_NAME).getDeclaredMethod("setDebugOn", new Class[]{Boolean.TYPE}).invoke(null, new Object[]{Boolean.valueOf(on)});
        } catch (Throwable e) {
            Log.w(ALog.addPrefix(TAG), "setDebugOn exception", e);
        }
    }

    public void close() {
    }

    public void setDefaultPolicy(String name, String value) {
        try {
            init();
            this.mClassLoader.loadClass(ANALYTICS_CLASS_NAME).getDeclaredMethod("setDefaultPolicy", new Class[]{String.class, String.class}).invoke(null, new Object[]{name, value});
        } catch (Throwable e) {
            Log.w(ALog.addPrefix(TAG), "setDefaultPolicy exception", e);
        }
    }

    public void deleteAllEvents(String appId) {
        try {
            init();
            this.mClassLoader.loadClass(ANALYTICS_CLASS_NAME).getDeclaredMethod("deleteAllEvents", new Class[]{String.class}).invoke(null, new Object[]{appId});
        } catch (Throwable e) {
            Log.w(ALog.addPrefix(TAG), "deleteAllEvents exception", e);
        }
    }
}
