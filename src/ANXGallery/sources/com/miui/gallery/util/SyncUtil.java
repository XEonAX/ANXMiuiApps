package com.miui.gallery.util;

import android.accounts.Account;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.SyncRequest;
import android.content.SyncRequest.Builder;
import android.os.Bundle;
import android.os.Looper;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import com.miui.account.AccountHelper;
import com.miui.gallery.cloud.AccountCache;
import com.miui.gallery.cloud.SyncConditionManager;
import com.miui.gallery.cloud.UpDownloadManager;
import com.miui.gallery.cloud.policy.IPolicy;
import com.miui.gallery.cloud.policy.SyncPolicyManager;
import com.miui.gallery.cloud.syncstate.SyncStateManager;
import com.miui.gallery.cloud.syncstate.SyncType;
import com.miui.gallery.preference.GalleryPreferences.Sync;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.util.GalleryIntent.CloudGuideSource;
import com.miui.gallery.util.deprecated.Preference;
import com.xiaomi.micloudsdk.sync.MiCloudResolver;
import java.util.HashMap;
import miui.gallery.support.SyncCompat;

public class SyncUtil {

    public static class Request {
        private boolean mIsDelayUpload;
        private boolean mIsManual;
        private int mSyncReason;
        private SyncType mSyncType;

        public static class Builder {
            private boolean mIsDelayUpload;
            private boolean mIsManual;
            private int mSyncReason;
            private SyncType mSyncType;

            public Builder setSyncType(SyncType syncType) {
                this.mSyncType = syncType;
                return this;
            }

            public Builder setSyncReason(int reason) {
                this.mSyncReason = reason;
                return this;
            }

            public Builder setManual(boolean manual) {
                this.mIsManual = manual;
                return this;
            }

            public Builder setDelayUpload(boolean delayUpload) {
                this.mIsDelayUpload = delayUpload;
                return this;
            }

            public Builder cloneFrom(Request request) {
                this.mSyncType = request.getSyncType();
                this.mSyncReason = request.getSyncReason();
                this.mIsDelayUpload = request.isDelayUpload();
                this.mIsManual = request.isManual();
                return this;
            }

            public Request build() {
                return new Request(this, null);
            }
        }

        /* synthetic */ Request(Builder x0, AnonymousClass1 x1) {
            this(x0);
        }

        private Request(Builder builder) {
            this.mSyncType = SyncType.NORMAL;
            this.mSyncReason = 0;
            this.mIsDelayUpload = false;
            this.mSyncType = builder.mSyncType;
            this.mSyncReason = builder.mSyncReason;
            this.mIsDelayUpload = builder.mIsDelayUpload;
            this.mIsManual = builder.mIsManual;
        }

        public SyncType getSyncType() {
            return this.mSyncType;
        }

        public int getSyncReason() {
            return this.mSyncReason;
        }

        public boolean isDelayUpload() {
            return this.mIsDelayUpload;
        }

        public boolean isManual() {
            return this.mIsManual;
        }

        public String toString() {
            return "Request {syncType=" + this.mSyncType + ", reason=" + this.mSyncReason + ", delayUpload=" + this.mIsDelayUpload + ", manual=" + this.mIsManual + "}";
        }
    }

    public static boolean existXiaomiAccount(Context context) {
        if (context == null) {
            Log.e("SyncUtil", "existXiaomiAccount context null");
            return false;
        } else if (AccountHelper.getXiaomiAccount(context) != null) {
            return true;
        } else {
            return false;
        }
    }

    public static boolean isGalleryCloudSyncable(Context context) {
        if (context == null) {
            Log.e("SyncUtil", "isGalleryCloudSyncable context null");
            return false;
        }
        Account account = AccountHelper.getXiaomiAccount(context);
        if (account != null && ContentResolver.getMasterSyncAutomatically() && ContentResolver.getSyncAutomatically(account, "com.miui.gallery.cloud.provider")) {
            return true;
        }
        return false;
    }

    public static void requestSync(Context context) {
        requestSync(context, new Builder().setSyncType(SyncType.NORMAL).setSyncReason(0).build());
    }

    public static void requestSync(Context context, Request request) {
        if (context == null) {
            Log.e("SyncUtil", "requestSync context null");
        } else if (Looper.getMainLooper() == Looper.myLooper()) {
            requestSyncInWorkThread(context, request);
        } else {
            doRequestSync(context, request);
        }
    }

    private static void requestSyncInWorkThread(Context context, final Request request) {
        final Context application = context.getApplicationContext();
        ThreadManager.getMiscPool().submit(new Job<Object>() {
            public Object run(JobContext jc) {
                SyncUtil.doRequestSync(application, request);
                return null;
            }
        });
    }

    private static void doRequestSync(Context context, Request request) {
        context = context.getApplicationContext();
        if (!isGalleryCloudSyncable(context)) {
            return;
        }
        if (isSyncPause(context)) {
            SyncLog.d("SyncUtil", "sync has pause");
            return;
        }
        SyncType syncType = wrapSyncType(context, request.getSyncType());
        request = new Builder().cloneFrom(request).setSyncType(syncType).build();
        SyncLog.d("SyncUtil", "requestSync: request[%s] %s", request, TextUtils.join("\n\t", Thread.currentThread().getStackTrace()));
        int checkResult = SyncConditionManager.checkCloudSpace(context);
        if (syncType.isForce() || checkResult != 2) {
            Account account = AccountHelper.getXiaomiAccount(context);
            if (account == null) {
                SyncLog.w("SyncUtil", "account is null");
                return;
            }
            if (ContentResolver.isSyncActive(account, "com.miui.gallery.cloud.provider")) {
                if (request.getSyncReason() == 1) {
                    SyncLog.d("SyncUtil", "sync active, no need request");
                    SyncStateManager.getInstance().setSyncType(syncType, false);
                    return;
                }
            } else if (ContentResolver.isSyncPending(account, "com.miui.gallery.cloud.provider")) {
                SyncType oldType = SyncStateManager.getInstance().getSyncType();
                if (SyncType.compare(oldType, syncType) >= 0) {
                    if (SyncConditionManager.checkIgnoreCancel(transformPriority(request.getSyncReason()), oldType) != 0) {
                        SyncLog.d("SyncUtil", "sync pending, and sync type not less than current, no need request");
                        return;
                    } else {
                        syncType = oldType;
                        SyncLog.d("SyncUtil", "sync pending, and sync type not less than current, but condition ok, request");
                    }
                }
                SyncLog.d("SyncUtil", "sync pending, and sync type less than current, cancel old");
                ContentResolver.cancelSync(account, "com.miui.gallery.cloud.provider");
            }
            SyncRequest syncRequest = packSyncParams(context, request);
            if (syncRequest != null) {
                ContentResolver.requestSync(syncRequest);
                SyncStateManager.getInstance().setSyncType(syncType, false);
                LocalBroadcastManager.getInstance(context).sendBroadcast(new Intent("com.miui.gallery.SYNC_COMMAND_DISPATCHED"));
                return;
            }
            SyncLog.e("SyncUtil", "sync request null");
            return;
        }
        SyncLog.d("SyncUtil", "sync pre check cloud space not ok");
    }

    public static boolean isSyncPause(Context context) {
        if (context == null) {
            Log.e("SyncUtil", "isSyncPause context null");
            return false;
        }
        Account account = AccountCache.getAccount();
        if (account != null) {
            return MiCloudResolver.isSyncPausing(context, account, "com.miui.gallery.cloud.provider");
        }
        Log.e("SyncUtil", "isSyncPause account null");
        return false;
    }

    public static void pauseSync(Context context, long interval) {
        if (context == null) {
            Log.e("SyncUtil", "pauseSync context null");
            return;
        }
        Account account = AccountCache.getAccount();
        if (account == null) {
            Log.e("SyncUtil", "pauseSync account null");
            return;
        }
        MiCloudResolver.pauseSync(context.getApplicationContext(), account, "com.miui.gallery.cloud.provider", interval);
        stopSync(context.getApplicationContext());
    }

    public static void resumeSync(Context context) {
        if (context == null) {
            Log.e("SyncUtil", "resumeSync context null");
            return;
        }
        Account account = AccountCache.getAccount();
        if (account == null) {
            Log.e("SyncUtil", "pauseSync account null");
            return;
        }
        MiCloudResolver.resumeSync(context.getApplicationContext(), account, "com.miui.gallery.cloud.provider");
        LocalBroadcastManager.getInstance(context).sendBroadcast(new Intent("com.miui.gallery.SYNC_COMMAND_DISPATCHED"));
    }

    public static void stopSync(Context context) {
        if (context == null) {
            Log.e("SyncUtil", "stopSync context null");
            return;
        }
        SyncConditionManager.setCancelledForAllBackground(true);
        UpDownloadManager.cancelAllBackgroundPriority(true, true);
        SyncStateManager.getInstance().setSyncType(SyncType.UNKNOW, true);
        LocalBroadcastManager.getInstance(context).sendBroadcast(new Intent("com.miui.gallery.SYNC_COMMAND_DISPATCHED"));
    }

    public static boolean setSyncAutomatically(Context context, boolean sync) {
        if (context == null) {
            Log.e("SyncUtil", "switchBackup context null");
            return false;
        }
        Account account = AccountHelper.getXiaomiAccount(context);
        if (!sync) {
            stopSync(context);
        } else if (!PrivacyAgreementUtils.isCloudServiceAgreementEnable(context) && IntentUtil.startCloudMainPage(context)) {
            return false;
        } else {
            if (account == null) {
                IntentUtil.guideToLoginXiaomiAccount(context, CloudGuideSource.AUTOBACKUP);
                return false;
            }
        }
        statSyncEnabledEvent(sync);
        ContentResolver.setSyncAutomatically(account, "com.miui.gallery.cloud.provider", sync);
        return true;
    }

    public static void setBackupOnlyWifi(Context context, boolean backupOnlyWifi) {
        if (context == null) {
            Log.e("SyncUtil", "setBackupOnlyWifi context null");
            return;
        }
        Sync.setBackupOnlyInWifi(backupOnlyWifi);
        if (!backupOnlyWifi) {
            Account account = AccountHelper.getXiaomiAccount(context);
            if (account != null && !ContentResolver.isSyncActive(account, "com.miui.gallery.cloud.provider") && ContentResolver.isSyncPending(account, "com.miui.gallery.cloud.provider")) {
                SyncType type = wrapSyncType(context, SyncStateManager.getInstance().getSyncType());
                if (SyncConditionManager.checkIgnoreCancel(transformPriority(1), type) == 0) {
                    SyncLog.d("SyncUtil", "not back only wifi, sync pending, but condition ok, request");
                    requestSync(context, new Builder().setSyncType(type).setSyncReason(1).build());
                }
            }
        }
    }

    public static long getResumeTime(Context context) {
        if (context != null) {
            return MiCloudResolver.getResumeTime(context.getApplicationContext(), "com.miui.gallery.cloud.provider");
        }
        Log.e("SyncUtil", "getResumeTime context null");
        return -1;
    }

    private static int transformPriority(int syncReason) {
        switch (syncReason) {
            case 1:
                return 5;
            default:
                return 0;
        }
    }

    private static SyncType wrapSyncType(Context context, SyncType syncType) {
        if (syncType != SyncType.NORMAL && syncType != SyncType.UNKNOW && syncType != SyncType.BACKGROUND) {
            return syncType;
        }
        return MiscUtil.isAppProcessInForeground(context) ? SyncType.NORMAL : SyncType.BACKGROUND;
    }

    public static SyncRequest packSyncParams(Context context, Request request) {
        boolean z = false;
        if (context == null) {
            Log.e("SyncUtil", "packSyncParams context null");
            return null;
        }
        Account xiaomiAccount = AccountHelper.getXiaomiAccount(context);
        if (xiaomiAccount == null) {
            return null;
        }
        Builder builder = new Builder().setSyncAdapter(xiaomiAccount, "com.miui.gallery.cloud.provider").syncOnce();
        IPolicy policy = SyncPolicyManager.getInstance().getPolicy(request.getSyncType());
        if (policy == null || !policy.isEnable()) {
            return null;
        }
        boolean isManual;
        boolean isMetaDataRequest = isMetaDataRequest(request.getSyncReason());
        boolean disallowMetered = isMetaDataRequest ? false : policy.isDisallowMetered();
        boolean requireCharging = isMetaDataRequest ? false : policy.isRequireCharging();
        if (policy.isManual() || request.isManual()) {
            isManual = true;
        } else {
            isManual = false;
        }
        builder.setDisallowMetered(disallowMetered).setExpedited(policy.isExpedited()).setManual(isManual);
        if (requireCharging) {
            SyncCompat.setRequiresCharging(builder, policy.isRequireCharging());
        }
        Bundle extras = new Bundle();
        String str = "sync_no_delay";
        if (!request.isDelayUpload()) {
            z = true;
        }
        extras.putBoolean(str, z);
        extras.putString("sync_type", request.getSyncType().getIdentifier());
        if (!disallowMetered) {
            extras.putBoolean("micloud_ignore_wifi_settings", true);
        }
        if (policy.isIgnoreBatteryLow()) {
            extras.putBoolean("micloud_ignore_battery_low", true);
        }
        if (policy.isManual()) {
            extras.putBoolean("micloud_force", true);
        }
        builder.setExtras(extras);
        return builder.build();
    }

    private static boolean isMetaDataRequest(int syncReason) {
        return syncReason == 0 || !Preference.sIsFirstSynced();
    }

    public static SyncType unpackSyncParams(Bundle extras) {
        if (extras != null) {
            if (extras.containsKey("sync_type")) {
                return SyncType.fromIdentifier(extras.getString("sync_type"));
            }
            if (extras.getBoolean("micloud_ignore_wifi_settings", false)) {
                return SyncType.GPRS_FORCE;
            }
            if (extras.getBoolean("micloud_ignore_battery_low", false)) {
                return SyncType.POWER_FORCE;
            }
        }
        return SyncType.NORMAL;
    }

    public static void statSyncEnabledEvent(boolean enabled) {
        HashMap<String, String> values = new HashMap();
        values.put("state", Boolean.toString(enabled));
        BaseSamplingStatHelper.recordCountEvent("micloud_sync", "sync_enabled", values);
    }
}
