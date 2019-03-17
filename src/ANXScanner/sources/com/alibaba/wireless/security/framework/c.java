package com.alibaba.wireless.security.framework;

import android.content.pm.PackageInfo;
import android.content.res.AssetManager;
import com.alibaba.wireless.security.framework.utils.a;
import com.alibaba.wireless.security.framework.utils.d;
import com.alibaba.wireless.security.open.initialize.ISecurityGuardPlugin;
import dalvik.system.DexClassLoader;

public class c implements ISGPluginInfo {
    private String a;
    private String b;
    private DexClassLoader c;
    private AssetManager d;
    private a e;
    private ISecurityGuardPlugin f;
    private ISGPluginManager g;

    public c(String str, ISGPluginManager iSGPluginManager, String str2, DexClassLoader dexClassLoader, a aVar, ISecurityGuardPlugin iSecurityGuardPlugin) {
        this.a = str;
        this.g = iSGPluginManager;
        this.b = str2;
        this.c = dexClassLoader;
        this.e = aVar;
        this.f = iSecurityGuardPlugin;
    }

    public String a(String str) {
        String str2 = "";
        return this.e.a != null ? this.e.a.applicationInfo.metaData.getString(str) : this.e.a(str);
    }

    public AssetManager getAssetManager() {
        if (this.d != null) {
            return this.d;
        }
        try {
            Object obj = (AssetManager) AssetManager.class.newInstance();
            d.a(obj).a("addAssetPath", this.a);
            this.d = obj;
            return this.d;
        } catch (Throwable e) {
            a.a("", e);
            return null;
        }
    }

    public DexClassLoader getClassLoader() {
        return this.c;
    }

    public PackageInfo getPackageInfo() {
        return this.e.a;
    }

    public String getPluginName() {
        return this.b;
    }

    public String getPluginPath() {
        return this.a;
    }

    public ISecurityGuardPlugin getSGPluginEntry() {
        return this.f;
    }

    public ISGPluginManager getSGPluginManager() {
        return this.g;
    }

    public String getVersion() {
        String str = "";
        return this.e.a != null ? this.e.a.versionName : this.e.a("version");
    }
}
