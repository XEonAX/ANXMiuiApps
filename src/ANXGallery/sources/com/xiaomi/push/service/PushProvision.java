package com.xiaomi.push.service;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Uri;
import android.os.Build.VERSION;
import android.provider.Settings.Global;
import android.provider.Settings.Secure;
import com.xiaomi.channel.commonutils.misc.BuildSettings;

public class PushProvision {
    private static PushProvision sInstance;
    private Context mContext;
    private int mProvisioned = 0;

    public static PushProvision getInstance(Context context) {
        if (sInstance == null) {
            sInstance = new PushProvision(context);
        }
        return sInstance;
    }

    private PushProvision(Context context) {
        this.mContext = context.getApplicationContext();
    }

    public boolean checkProvisioned() {
        return BuildSettings.ReleaseChannel.contains("xmsf") || BuildSettings.ReleaseChannel.contains("xiaomi") || BuildSettings.ReleaseChannel.contains("miui");
    }

    @SuppressLint({"NewApi"})
    public int getProvisioned() {
        if (this.mProvisioned != 0) {
            return this.mProvisioned;
        }
        if (VERSION.SDK_INT >= 17) {
            this.mProvisioned = Global.getInt(this.mContext.getContentResolver(), "device_provisioned", 0);
            return this.mProvisioned;
        }
        this.mProvisioned = Secure.getInt(this.mContext.getContentResolver(), "device_provisioned", 0);
        return this.mProvisioned;
    }

    @SuppressLint({"NewApi"})
    public Uri getProvisionedUri() {
        if (VERSION.SDK_INT >= 17) {
            return Global.getUriFor("device_provisioned");
        }
        return Secure.getUriFor("device_provisioned");
    }
}
