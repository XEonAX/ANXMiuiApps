package com.miui.gallery.cloud.download;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.v4.content.LocalBroadcastManager;
import com.miui.gallery.cloud.NetworkUtils;
import com.miui.gallery.cloud.control.BatteryMonitor;
import com.miui.gallery.preference.GalleryPreferences.Sync;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.util.Log;

final class DownloadObserver {
    private BroadcastReceiver mCtaReceiver;
    private BroadcastReceiver mDeviceStorageReceiver;
    private BroadcastReceiver mNetworkReceiver;
    private BroadcastReceiver mPowerStatusReceiver;
    private int mRegisterCount = 0;

    private class CTAReceiver extends BroadcastReceiver {
        private CTAReceiver() {
        }

        /* synthetic */ CTAReceiver(DownloadObserver x0, AnonymousClass1 x1) {
            this();
        }

        public void onReceive(Context context, Intent intent) {
            BatchDownloadManager.getInstance().onConditionChanged(context);
        }
    }

    private class DeviceStorageStateReceiver extends BroadcastReceiver {
        private DeviceStorageStateReceiver() {
        }

        /* synthetic */ DeviceStorageStateReceiver(DownloadObserver x0, AnonymousClass1 x1) {
            this();
        }

        public void onReceive(Context context, Intent intent) {
            Object action = intent.getAction();
            Log.i("DownloadObserver", "DeviceStorageStateReceiver %s", action);
            if ("android.intent.action.DEVICE_STORAGE_LOW".equals(action)) {
                Sync.setDeviceStorageLow(true);
                BatchDownloadManager.getInstance().onConditionChanged(context);
            } else if ("android.intent.action.DEVICE_STORAGE_OK".equals(action)) {
                Sync.setDeviceStorageLow(false);
                BatchDownloadManager.getInstance().onConditionChanged(context);
            }
        }
    }

    private class NetworkReceiver extends BroadcastReceiver {
        private boolean mIsNetConnected = NetworkUtils.isNetworkConnected();
        private boolean mIsWifiConnected;

        public NetworkReceiver() {
            this.mIsWifiConnected = !NetworkUtils.isActiveNetworkMetered();
        }

        public void onReceive(Context context, Intent intent) {
            boolean netConnected;
            boolean isWifiConnected;
            if (intent.getBooleanExtra("noConnectivity", false)) {
                netConnected = false;
            } else {
                netConnected = true;
            }
            boolean netChanged = false;
            if (this.mIsNetConnected != netConnected) {
                Log.d("DownloadObserver", "NetworkReceiver mLastConnect: %s, netConnect: %s", Boolean.valueOf(this.mIsNetConnected), Boolean.valueOf(netConnected));
                this.mIsNetConnected = netConnected;
                netChanged = true;
            }
            if (!this.mIsNetConnected || NetworkUtils.isActiveNetworkMetered()) {
                isWifiConnected = false;
            } else {
                isWifiConnected = true;
            }
            if (this.mIsWifiConnected != isWifiConnected) {
                Log.d("DownloadObserver", "NetworkReceiver mLastWifiConnect: %s, wifiConnect: %s", Boolean.valueOf(this.mIsWifiConnected), Boolean.valueOf(isWifiConnected));
                this.mIsWifiConnected = isWifiConnected;
                netChanged = true;
            }
            if (netChanged) {
                BatchDownloadManager.getInstance().onConditionChanged(context);
            }
        }
    }

    private class PowerChangedReceiver extends BroadcastReceiver {
        private boolean mIsBatteryLow;

        public PowerChangedReceiver() {
            this.mIsBatteryLow = !Sync.getPowerCanSync();
        }

        public void onReceive(Context context, Intent intent) {
            boolean z = true;
            if ("android.intent.action.BATTERY_CHANGED".equals(intent.getAction())) {
                boolean isBatteryLow;
                boolean isCharging = Sync.getIsPlugged();
                BatteryMonitor.getInstance();
                if (BatteryMonitor.isPowerCanSync(context, intent)) {
                    isBatteryLow = false;
                } else {
                    isBatteryLow = true;
                }
                if (isBatteryLow != this.mIsBatteryLow) {
                    this.mIsBatteryLow = isBatteryLow;
                    if (isBatteryLow) {
                        z = false;
                    }
                    Sync.setPowerCanSync(z);
                    BatchDownloadManager.getInstance().onConditionChanged(context);
                    Log.d("DownloadObserver", "battery status changed: %s", Boolean.valueOf(isBatteryLow));
                } else if (isCharging != Sync.getIsPlugged()) {
                    BatchDownloadManager.getInstance().onConditionChanged(context);
                    String str = "DownloadObserver";
                    String str2 = "charging state changed: %s";
                    if (isCharging) {
                        z = false;
                    }
                    Log.d(str, str2, Boolean.valueOf(z));
                }
            }
        }
    }

    DownloadObserver() {
    }

    private void ensureObservers() {
        this.mCtaReceiver = new CTAReceiver(this, null);
        this.mNetworkReceiver = new NetworkReceiver();
        this.mPowerStatusReceiver = new PowerChangedReceiver();
        this.mDeviceStorageReceiver = new DeviceStorageStateReceiver(this, null);
    }

    private void doRegister(Context context) {
        ensureObservers();
        LocalBroadcastManager.getInstance(context).registerReceiver(this.mCtaReceiver, new IntentFilter("com.miui.gallery.action.CTA_CHANGED"));
        IntentFilter netFilter = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
        netFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE");
        context.registerReceiver(this.mNetworkReceiver, netFilter, null, ThreadManager.getWorkHandler());
        context.registerReceiver(this.mPowerStatusReceiver, new IntentFilter("android.intent.action.BATTERY_CHANGED"), null, ThreadManager.getWorkHandler());
        IntentFilter deviceFilter = new IntentFilter("android.intent.action.DEVICE_STORAGE_LOW");
        deviceFilter.addAction("android.intent.action.DEVICE_STORAGE_OK");
        context.registerReceiver(this.mDeviceStorageReceiver, deviceFilter, null, ThreadManager.getWorkHandler());
    }

    void register(Context context) {
        Log.i("DownloadObserver", "register %s", (Object) context);
        int i = this.mRegisterCount;
        this.mRegisterCount = i + 1;
        if (i == 0) {
            final Context application = context.getApplicationContext();
            ThreadManager.getWorkHandler().post(new Runnable() {
                public void run() {
                    Log.d("DownloadObserver", "do register");
                    DownloadObserver.this.doRegister(application);
                }
            });
        }
    }
}
