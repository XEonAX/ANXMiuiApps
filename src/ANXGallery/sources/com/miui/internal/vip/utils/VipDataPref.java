package com.miui.internal.vip.utils;

import android.accounts.Account;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import miui.accounts.ExtraAccountManager;

public class VipDataPref {
    private static final String UpdatePostFix = "_update";
    private final Context mCtx;
    private final String mName;
    private volatile SharedPreferences mPref;
    private String mPrefName;

    public VipDataPref(Context ctx, String name) {
        this.mName = name;
        this.mCtx = ctx;
    }

    public SharedPreferences getPref() {
        Account account = getAccount();
        if (account == null) {
            return null;
        }
        String name = new StringBuilder();
        name.append(this.mName);
        name.append(Utils.md5(account.name));
        name = name.toString();
        synchronized (this) {
            if (!name.equals(this.mPrefName)) {
                this.mPrefName = name;
                this.mPref = this.mCtx.getSharedPreferences(this.mPrefName, 0);
            }
        }
        return this.mPref;
    }

    public String getString(String name) {
        SharedPreferences pref = getPref();
        if (pref != null) {
            return pref.getString(name, "");
        }
        return "";
    }

    public void remove(String name) {
        SharedPreferences pref = getPref();
        if (pref != null) {
            pref.edit().remove(name).apply();
        }
    }

    public void setString(String name, String content) {
        SharedPreferences pref = getPref();
        if (pref != null) {
            pref.edit().putString(name, content).apply();
        }
    }

    public long getLong(String name) {
        SharedPreferences pref = getPref();
        if (pref == null) {
            return 0;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(name);
        stringBuilder.append(UpdatePostFix);
        return pref.getLong(stringBuilder.toString(), 0);
    }

    public void setLong(String name, long data) {
        SharedPreferences pref = getPref();
        if (pref != null) {
            Editor edit = pref.edit();
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(name);
            stringBuilder.append(UpdatePostFix);
            edit.putLong(stringBuilder.toString(), data).apply();
        }
    }

    public int getInt(String name) {
        SharedPreferences pref = getPref();
        if (pref == null) {
            return 0;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(name);
        stringBuilder.append(UpdatePostFix);
        return pref.getInt(stringBuilder.toString(), 0);
    }

    public void setInt(String name, int data) {
        SharedPreferences pref = getPref();
        if (pref != null) {
            Editor edit = pref.edit();
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(name);
            stringBuilder.append(UpdatePostFix);
            edit.putInt(stringBuilder.toString(), data).apply();
        }
    }

    public void clear() {
        SharedPreferences pref = getPref();
        if (pref != null) {
            pref.edit().clear().apply();
        }
    }

    public synchronized void reset() {
        this.mPrefName = null;
        this.mPref = null;
    }

    private Account getAccount() {
        return ExtraAccountManager.getXiaomiAccount(this.mCtx);
    }
}
