package com.xiaomi.push.service;

import android.content.Context;
import android.content.SharedPreferences;
import com.xiaomi.channel.commonutils.android.SharedPrefsCompat;
import com.xiaomi.channel.commonutils.misc.DebugUtils;
import com.xiaomi.channel.commonutils.misc.ScheduledJobManager;
import com.xiaomi.channel.commonutils.network.Network;

public final class Sync {
    private static volatile Sync sSync;
    Context mContext;
    private SharedPreferences mPrefs;

    public static abstract class SyncJob implements Runnable {
        String group;
        long period;

        abstract void sync(Sync sync);

        SyncJob(String group, long period) {
            this.group = group;
            this.period = period;
        }

        public void run() {
            if (Sync.sSync != null) {
                Context context = Sync.sSync.mContext;
                if (!Network.isConnected(context)) {
                    return;
                }
                if (System.currentTimeMillis() - Sync.sSync.mPrefs.getLong(":ts-" + this.group, 0) > this.period || DebugUtils.isTesting(context)) {
                    SharedPrefsCompat.apply(Sync.sSync.mPrefs.edit().putLong(":ts-" + this.group, System.currentTimeMillis()));
                    sync(Sync.sSync);
                }
            }
        }
    }

    public static Sync getInstance(Context context) {
        if (sSync == null) {
            synchronized (Sync.class) {
                if (sSync == null) {
                    sSync = new Sync(context);
                }
            }
        }
        return sSync;
    }

    private Sync(Context context) {
        this.mContext = context.getApplicationContext();
        this.mPrefs = context.getSharedPreferences("sync", 0);
    }

    public String getString(String group, String key) {
        return this.mPrefs.getString(group + ":" + key, "");
    }

    public void put(String group, String key, String val) {
        SharedPrefsCompat.apply(sSync.mPrefs.edit().putString(group + ":" + key, val));
    }

    public void schedSync(SyncJob job) {
        ScheduledJobManager.getInstance(this.mContext).addOneShootJob((Runnable) job, ((int) (Math.random() * 30.0d)) + 10);
    }
}
