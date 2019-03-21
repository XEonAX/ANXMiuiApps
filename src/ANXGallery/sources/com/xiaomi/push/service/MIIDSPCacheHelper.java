package com.xiaomi.push.service;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;

public class MIIDSPCacheHelper {
    private static volatile MIIDSPCacheHelper sInstance;
    private SharedPreferences mSharedPreference;

    private MIIDSPCacheHelper(Context context) {
        this.mSharedPreference = context.getSharedPreferences("mipush", 0);
    }

    public static MIIDSPCacheHelper getInstance(Context context) {
        if (sInstance == null) {
            synchronized (MIIDSPCacheHelper.class) {
                if (sInstance == null) {
                    sInstance = new MIIDSPCacheHelper(context);
                }
            }
        }
        return sInstance;
    }

    public synchronized void removeCachedMIID() {
        Editor editor = this.mSharedPreference.edit();
        editor.remove("miid");
        editor.commit();
    }

    public synchronized void updateCachedMIID(String miid) {
        if (TextUtils.isEmpty(miid)) {
            miid = "0";
        }
        Editor editor = this.mSharedPreference.edit();
        editor.putString("miid", miid);
        editor.commit();
    }

    public synchronized String getCachedMIID() {
        return this.mSharedPreference.getString("miid", "0");
    }

    public synchronized boolean hasCachedMIID() {
        return !TextUtils.equals("0", getCachedMIID());
    }
}
