package com.ali.auth.third.core.storage;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.ali.auth.third.core.context.KernelContext;
import com.ali.auth.third.core.exception.SecRuntimeException;
import com.ali.auth.third.core.model.Constants;
import com.ali.auth.third.core.service.StorageService;
import com.ali.auth.third.core.storage.aes.AESCrypt;
import com.ali.auth.third.core.storage.aes.MD5;
import java.util.TreeMap;

public class CommonStorageServiceImpl implements StorageService {
    private SharedPreferences a = this.b.getSharedPreferences(Constants.TB_SESSION, 0);
    private Context b = KernelContext.getApplicationContext();
    private String c;

    public String decrypt(String str) {
        return str;
    }

    public String encode(String str) {
        return str;
    }

    public String getAppKey() {
        try {
            ApplicationInfo applicationInfo = this.b.getPackageManager().getApplicationInfo(this.b.getPackageName(), 128);
            if (applicationInfo.metaData == null) {
                return null;
            }
            Object obj = applicationInfo.metaData.get("com.alibaba.app.appkey");
            return obj != null ? obj.toString() : null;
        } catch (Exception e) {
            return null;
        }
    }

    public String getDDpExValue(String str) {
        return null;
    }

    public String getUmid() {
        return this.c;
    }

    public String getValue(String str, boolean z) {
        String string = this.a.getString(str, "");
        return !TextUtils.isEmpty(string) ? symDecrypt(string, MD5.getMD5(KernelContext.timestamp + "")) : string;
    }

    public void putDDpExValue(String str, String str2) {
    }

    @SuppressLint({"NewApi"})
    public void putValue(String str, String str2, boolean z) {
        String symEncrypt = symEncrypt(str2, MD5.getMD5(KernelContext.timestamp + ""));
        if (VERSION.SDK_INT >= 9) {
            this.a.edit().putString(str, symEncrypt).apply();
        } else {
            this.a.edit().putString(str, symEncrypt).commit();
        }
    }

    public void removeDDpExValue(String str) {
    }

    public void removeSafeToken(String str) {
    }

    public void removeValue(String str, boolean z) {
        this.a.edit().remove(str);
    }

    public boolean saveSafeToken(String str, String str2) {
        return false;
    }

    public void setUmid(String str) {
        this.c = str;
    }

    public String signMap(String str, TreeMap<String, String> treeMap) {
        return null;
    }

    public String symDecrypt(String str, String str2) {
        try {
            return AESCrypt.decrypt(str2, str);
        } catch (Throwable e) {
            throw new SecRuntimeException(-2, e);
        }
    }

    public String symEncrypt(String str, String str2) {
        try {
            return AESCrypt.encrypt(str2, str);
        } catch (Throwable e) {
            throw new SecRuntimeException(-1, e);
        }
    }
}
