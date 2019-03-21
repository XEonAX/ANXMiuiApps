package com.xiaomi.push.service;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.string.XMStringUtils;
import java.util.ArrayList;
import java.util.List;

public class MIPushAppInfo {
    private static MIPushAppInfo sInstance = null;
    private Context appContext;
    private final List<String> disabledPushPkg = new ArrayList();
    private final List<String> disabledPushPkgCache = new ArrayList();
    private List<String> unRegisteredPkg = new ArrayList();

    public static MIPushAppInfo getInstance(Context context) {
        if (sInstance == null) {
            sInstance = new MIPushAppInfo(context);
        }
        return sInstance;
    }

    private MIPushAppInfo(Context context) {
        String pkg;
        int i = 0;
        this.appContext = context.getApplicationContext();
        if (this.appContext == null) {
            this.appContext = context;
        }
        SharedPreferences sp = this.appContext.getSharedPreferences("mipush_app_info", 0);
        for (String pkg2 : sp.getString("unregistered_pkg_names", "").split(",")) {
            if (TextUtils.isEmpty(pkg2)) {
                this.unRegisteredPkg.add(pkg2);
            }
        }
        for (String pkg22 : sp.getString("disable_push_pkg_names", "").split(",")) {
            if (!TextUtils.isEmpty(pkg22)) {
                this.disabledPushPkg.add(pkg22);
            }
        }
        String[] closeCacheNames = sp.getString("disable_push_pkg_names_cache", "").split(",");
        int length = closeCacheNames.length;
        while (i < length) {
            pkg22 = closeCacheNames[i];
            if (!TextUtils.isEmpty(pkg22)) {
                this.disabledPushPkgCache.add(pkg22);
            }
            i++;
        }
    }

    public boolean isUnRegistered(String packageName) {
        boolean contains;
        synchronized (this.unRegisteredPkg) {
            contains = this.unRegisteredPkg.contains(packageName);
        }
        return contains;
    }

    public boolean isPushDisabled(String packageName) {
        boolean contains;
        synchronized (this.disabledPushPkg) {
            contains = this.disabledPushPkg.contains(packageName);
        }
        return contains;
    }

    public boolean isPushDisabled4User(String packageName) {
        boolean contains;
        synchronized (this.disabledPushPkgCache) {
            contains = this.disabledPushPkgCache.contains(packageName);
        }
        return contains;
    }

    public void addUnRegisteredPkg(String packageName) {
        synchronized (this.unRegisteredPkg) {
            if (!this.unRegisteredPkg.contains(packageName)) {
                this.unRegisteredPkg.add(packageName);
                this.appContext.getSharedPreferences("mipush_app_info", 0).edit().putString("unregistered_pkg_names", XMStringUtils.join(this.unRegisteredPkg, ",")).commit();
            }
        }
    }

    public void addDisablePushPkg(String packageName) {
        synchronized (this.disabledPushPkg) {
            if (!this.disabledPushPkg.contains(packageName)) {
                this.disabledPushPkg.add(packageName);
                this.appContext.getSharedPreferences("mipush_app_info", 0).edit().putString("disable_push_pkg_names", XMStringUtils.join(this.disabledPushPkg, ",")).commit();
            }
        }
    }

    public void addDisablePushPkgCache(String packageName) {
        synchronized (this.disabledPushPkgCache) {
            if (!this.disabledPushPkgCache.contains(packageName)) {
                this.disabledPushPkgCache.add(packageName);
                this.appContext.getSharedPreferences("mipush_app_info", 0).edit().putString("disable_push_pkg_names_cache", XMStringUtils.join(this.disabledPushPkgCache, ",")).commit();
            }
        }
    }

    public void removeUnRegisteredPkg(String packageName) {
        synchronized (this.unRegisteredPkg) {
            if (this.unRegisteredPkg.contains(packageName)) {
                this.unRegisteredPkg.remove(packageName);
                this.appContext.getSharedPreferences("mipush_app_info", 0).edit().putString("unregistered_pkg_names", XMStringUtils.join(this.unRegisteredPkg, ",")).commit();
            }
        }
    }

    public void removeDisablePushPkg(String packageName) {
        synchronized (this.disabledPushPkg) {
            if (this.disabledPushPkg.contains(packageName)) {
                this.disabledPushPkg.remove(packageName);
                this.appContext.getSharedPreferences("mipush_app_info", 0).edit().putString("disable_push_pkg_names", XMStringUtils.join(this.disabledPushPkg, ",")).commit();
            }
        }
    }

    public void removeDisablePushPkgCache(String packageName) {
        synchronized (this.disabledPushPkgCache) {
            if (this.disabledPushPkgCache.contains(packageName)) {
                this.disabledPushPkgCache.remove(packageName);
                this.appContext.getSharedPreferences("mipush_app_info", 0).edit().putString("disable_push_pkg_names_cache", XMStringUtils.join(this.disabledPushPkgCache, ",")).commit();
            }
        }
    }
}
