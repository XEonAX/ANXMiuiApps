package com.miui.gallery.cloud.syncstate;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SyncStatusObserver;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.support.v4.content.LocalBroadcastManager;
import com.miui.gallery.cloud.NetworkUtils;
import com.miui.gallery.cloud.control.BatteryMonitor;
import com.miui.gallery.preference.GalleryPreferences.Sync;
import com.miui.gallery.provider.GalleryContract.Media;
import com.miui.gallery.provider.GalleryContract.ShareImage;
import com.miui.gallery.provider.deprecated.GalleryCloudProvider;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.util.Log;

class SyncStateObserver {
    private BroadcastReceiver mCtaReceiver;
    private BroadcastReceiver mDeviceStorageReceiver;
    private BroadcastReceiver mFirstPulledReceiver;
    private ContentObserver mMediaObserver;
    private BroadcastReceiver mNetworkReceiver;
    private BroadcastReceiver mPowerStatusReceiver;
    private int mRegisterCount = 0;
    private BroadcastReceiver mSyncCommandDispatchedReceiver;
    private ContentObserver mSyncOnlyWifiObeserver;
    private Object mSyncSettingObserver;
    private ContentObserver mUploadingObserver;

    private class CTAReceiver extends BroadcastReceiver {
        private CTAReceiver() {
        }

        /* synthetic */ CTAReceiver(SyncStateObserver x0, AnonymousClass1 x1) {
            this();
        }

        public void onReceive(Context context, Intent intent) {
            SyncStateManager.getInstance().updateSyncStatus();
        }
    }

    private class DeviceStorageStateReceiver extends BroadcastReceiver {
        private DeviceStorageStateReceiver() {
        }

        /* synthetic */ DeviceStorageStateReceiver(SyncStateObserver x0, AnonymousClass1 x1) {
            this();
        }

        public void onReceive(Context context, Intent intent) {
            Object action = intent.getAction();
            Log.i("SyncStateObserver", "DeviceStorageStateReceiver %s", action);
            if ("android.intent.action.DEVICE_STORAGE_LOW".equals(action)) {
                Sync.setDeviceStorageLow(true);
                SyncStateManager.getInstance().setIsLocalSpaceFull(true);
            } else if ("android.intent.action.DEVICE_STORAGE_OK".equals(action)) {
                Sync.setDeviceStorageLow(false);
                SyncStateManager.getInstance().setIsLocalSpaceFull(false);
            }
        }
    }

    private class FirstPulledReceiver extends BroadcastReceiver {
        private FirstPulledReceiver() {
        }

        /* synthetic */ FirstPulledReceiver(SyncStateObserver x0, AnonymousClass1 x1) {
            this();
        }

        public void onReceive(Context context, Intent intent) {
            SyncStateManager.getInstance().updateSyncStatus();
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
                Log.d("SyncStateObserver", "NetworkReceiver mLastConnected: %s, connect: %s", Boolean.valueOf(this.mIsNetConnected), Boolean.valueOf(netConnected));
                this.mIsNetConnected = netConnected;
                netChanged = true;
            }
            if (!this.mIsNetConnected || NetworkUtils.isActiveNetworkMetered()) {
                isWifiConnected = false;
            } else {
                isWifiConnected = true;
            }
            if (this.mIsWifiConnected != isWifiConnected) {
                Log.d("SyncStateObserver", "NetworkReceiver mLastWifiConnect: %s, wifiConnect: %s", Boolean.valueOf(this.mIsWifiConnected), Boolean.valueOf(isWifiConnected));
                this.mIsWifiConnected = isWifiConnected;
                netChanged = true;
            }
            if (netChanged) {
                SyncStateManager.getInstance().updateSyncStatus();
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
                BatteryMonitor.getInstance();
                boolean isBatteryLow = !BatteryMonitor.isPowerCanSync(context, intent);
                if (isBatteryLow != this.mIsBatteryLow) {
                    this.mIsBatteryLow = isBatteryLow;
                    if (isBatteryLow) {
                        z = false;
                    }
                    Sync.setPowerCanSync(z);
                    Log.d("SyncStateObserver", "battery status changed: %s", Boolean.valueOf(isBatteryLow));
                }
                SyncStateManager.getInstance().setIsBatteryLow(isBatteryLow);
            }
        }
    }

    private class SyncContentObserver extends ContentObserver {
        public SyncContentObserver(Handler handler) {
            super(handler);
        }

        public void onChange(boolean selfChange) {
            SyncStateManager.getInstance().updateSyncStatus();
        }

        public void onChange(boolean selfChange, Uri uri) {
            Log.d("SyncStateObserver", "SyncContentObserver %s", (Object) uri);
            super.onChange(selfChange, uri);
        }
    }

    private class SyncRequestDispatchedReceiver extends BroadcastReceiver {
        private SyncRequestDispatchedReceiver() {
        }

        /* synthetic */ SyncRequestDispatchedReceiver(SyncStateObserver x0, AnonymousClass1 x1) {
            this();
        }

        public void onReceive(Context context, Intent intent) {
            Log.d("SyncStateObserver", "SyncRequestDispatchedReceiver: %s", intent.getAction());
            if ("com.miui.gallery.SYNC_COMMAND_DISPATCHED".equals(intent.getAction())) {
                SyncStateManager.getInstance().onSyncCommandDispatched();
            }
        }
    }

    private class SyncSettingObserver implements SyncStatusObserver {
        private SyncSettingObserver() {
        }

        /* synthetic */ SyncSettingObserver(SyncStateObserver x0, AnonymousClass1 x1) {
            this();
        }

        public void onStatusChanged(int which) {
            if (which == 1) {
                Log.d("SyncStateObserver", "SyncSettingObserver");
                SyncStateManager.getInstance().updateSyncStatus();
            }
        }
    }

    private class UploadingObserver extends ContentObserver {
        public UploadingObserver(Handler handler) {
            super(handler);
        }

        public void onChange(boolean selfChange) {
            Log.d("SyncStateObserver", "UploadingObserver");
            SyncStateManager.getInstance().updateSyncStatus();
        }
    }

    SyncStateObserver() {
    }

    private void ensureObservers() {
        if (this.mNetworkReceiver == null) {
            this.mCtaReceiver = new CTAReceiver(this, null);
            this.mNetworkReceiver = new NetworkReceiver();
            this.mPowerStatusReceiver = new PowerChangedReceiver();
            this.mDeviceStorageReceiver = new DeviceStorageStateReceiver(this, null);
            this.mSyncCommandDispatchedReceiver = new SyncRequestDispatchedReceiver(this, null);
            this.mUploadingObserver = new UploadingObserver(ThreadManager.getWorkHandler());
            this.mMediaObserver = new SyncContentObserver(ThreadManager.getWorkHandler());
            this.mSyncOnlyWifiObeserver = new SyncContentObserver(ThreadManager.getWorkHandler());
            this.mSyncSettingObserver = new SyncSettingObserver(this, null);
            this.mFirstPulledReceiver = new FirstPulledReceiver(this, null);
        }
    }

    private void initState(Context context) {
        Intent intent = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (intent != null) {
            Sync.setPowerCanSync(BatteryMonitor.isPowerCanSync(context, intent));
        }
    }

    private void doRegister(Context context) {
        ensureObservers();
        initState(context);
        LocalBroadcastManager.getInstance(context).registerReceiver(this.mCtaReceiver, new IntentFilter("com.miui.gallery.action.CTA_CHANGED"));
        IntentFilter netFilter = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
        netFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE");
        context.registerReceiver(this.mNetworkReceiver, netFilter, null, ThreadManager.getWorkHandler());
        context.registerReceiver(this.mPowerStatusReceiver, new IntentFilter("android.intent.action.BATTERY_CHANGED"), null, ThreadManager.getWorkHandler());
        IntentFilter deviceFilter = new IntentFilter("android.intent.action.DEVICE_STORAGE_LOW");
        deviceFilter.addAction("android.intent.action.DEVICE_STORAGE_OK");
        context.registerReceiver(this.mDeviceStorageReceiver, deviceFilter, null, ThreadManager.getWorkHandler());
        LocalBroadcastManager.getInstance(context).registerReceiver(this.mSyncCommandDispatchedReceiver, new IntentFilter("com.miui.gallery.SYNC_COMMAND_DISPATCHED"));
        context.getContentResolver().registerContentObserver(GalleryCloudProvider.UPLOAD_STATE_URI, true, this.mUploadingObserver);
        context.getContentResolver().registerContentObserver(Media.URI, true, this.mMediaObserver);
        context.getContentResolver().registerContentObserver(ShareImage.SHARE_URI, true, this.mMediaObserver);
        context.getContentResolver().registerContentObserver(GalleryCloudProvider.SYNC_SETTINGS_URI, false, this.mSyncOnlyWifiObeserver);
        this.mSyncSettingObserver = ContentResolver.addStatusChangeListener(1, new SyncSettingObserver(this, null));
        LocalBroadcastManager.getInstance(context).registerReceiver(this.mFirstPulledReceiver, new IntentFilter("com.miui.gallery.action.FIRST_SYNC_FINISHED"));
    }

    void register(Context context) {
        Log.i("SyncStateObserver", "register %s", (Object) context);
        int i = this.mRegisterCount;
        this.mRegisterCount = i + 1;
        if (i == 0) {
            final Context application = context.getApplicationContext();
            ThreadManager.getWorkHandler().post(new Runnable() {
                public void run() {
                    Log.d("SyncStateObserver", "do register");
                    SyncStateObserver.this.doRegister(application);
                }
            });
        }
    }

    private void doUnregister(Context context) {
        if (this.mCtaReceiver != null) {
            LocalBroadcastManager.getInstance(context).unregisterReceiver(this.mCtaReceiver);
            this.mCtaReceiver = null;
        }
        if (this.mNetworkReceiver != null) {
            context.unregisterReceiver(this.mNetworkReceiver);
            this.mNetworkReceiver = null;
        }
        if (this.mPowerStatusReceiver != null) {
            context.unregisterReceiver(this.mPowerStatusReceiver);
            this.mPowerStatusReceiver = null;
        }
        if (this.mDeviceStorageReceiver != null) {
            context.unregisterReceiver(this.mDeviceStorageReceiver);
            this.mDeviceStorageReceiver = null;
        }
        if (this.mSyncCommandDispatchedReceiver != null) {
            LocalBroadcastManager.getInstance(context).unregisterReceiver(this.mSyncCommandDispatchedReceiver);
            this.mSyncCommandDispatchedReceiver = null;
        }
        if (this.mUploadingObserver != null) {
            context.getContentResolver().unregisterContentObserver(this.mUploadingObserver);
            this.mUploadingObserver = null;
        }
        if (this.mMediaObserver != null) {
            context.getContentResolver().unregisterContentObserver(this.mMediaObserver);
            this.mMediaObserver = null;
        }
        if (this.mSyncOnlyWifiObeserver != null) {
            context.getContentResolver().unregisterContentObserver(this.mSyncOnlyWifiObeserver);
            this.mSyncOnlyWifiObeserver = null;
        }
        if (this.mSyncSettingObserver != null) {
            ContentResolver.removeStatusChangeListener(this.mSyncSettingObserver);
            this.mSyncSettingObserver = null;
        }
        if (this.mFirstPulledReceiver != null) {
            LocalBroadcastManager.getInstance(context).unregisterReceiver(this.mFirstPulledReceiver);
            this.mFirstPulledReceiver = null;
        }
    }

    void unregister(Context context) {
        Log.i("SyncStateObserver", "unregister %s", (Object) context);
        int i = this.mRegisterCount - 1;
        this.mRegisterCount = i;
        if (i <= 0) {
            final Context application = context.getApplicationContext();
            ThreadManager.getWorkHandler().post(new Runnable() {
                public void run() {
                    Log.d("SyncStateObserver", "do unregister");
                    SyncStateObserver.this.doUnregister(application);
                }
            });
        }
    }
}
