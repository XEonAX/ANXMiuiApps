package com.xiaomi.micloudsdk.sync;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AccountManagerFuture;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.content.AbstractThreadedSyncAdapter;
import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.content.Context;
import android.content.SyncResult;
import android.content.SyncStats;
import android.os.Bundle;
import android.util.Log;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.xiaomi.micloudsdk.data.ExtendedAuthToken;
import com.xiaomi.micloudsdk.exception.CloudServerException;
import com.xiaomi.micloudsdk.provider.GdprUtils;
import com.xiaomi.micloudsdk.sync.utils.SyncRecordUtils;
import com.xiaomi.micloudsdk.sync.utils.SyncTimeUtils;
import java.io.IOException;
import miui.cloud.stat.MiCloudStatUtil;

public abstract class SyncAdapterBase extends AbstractThreadedSyncAdapter {
    protected boolean isForceSync;
    protected boolean isIgnoreBatteryLow;
    protected boolean isIgnoreTemperature;
    protected boolean isIgnoreWifiSettings;
    protected boolean isManualSync;
    protected Account mAccount;
    protected final String mAuthType;
    protected String mAuthority;
    protected Context mContext;
    protected ExtendedAuthToken mExtToken;
    protected String mExtTokenStr;
    protected String[] mNumbers = new String[2];
    protected ContentResolver mResolver;
    protected SyncResult mSyncResult;
    protected String[] mTickets = new String[2];

    protected abstract void onPerformMiCloudSync(Bundle bundle) throws CloudServerException;

    public SyncAdapterBase(Context context, boolean autoInitialize, String authType) {
        super(context, autoInitialize);
        this.mContext = context;
        this.mResolver = context.getContentResolver();
        this.mAuthType = authType;
    }

    public void onPerformSync(Account account, Bundle extras, String authority, ContentProviderClient provider, SyncResult syncResult) {
        if (GdprUtils.isPermissionGranted(this.mContext)) {
            this.mAccount = account;
            this.mAuthority = authority;
            this.mSyncResult = syncResult;
            long timeStart = System.currentTimeMillis();
            extras.putBoolean("stat_key_sync_start", true);
            MiCloudStatUtil.performSyncPhoneStateStat(this.mContext, extras);
            Log.d("MiCloudSyncAdapterBase", "onPerformSync: ---sync start---");
            Log.d("MiCloudSyncAdapterBase", "authority: " + authority + ", " + "extras: " + extras.toString());
            if (!ContentResolver.getMasterSyncAutomatically()) {
                Log.e("MiCloudSyncAdapterBase", "onPerformSync: master sync automatically is off. do not sync!!");
                return;
            } else if (!ContentResolver.getSyncAutomatically(account, authority)) {
                Log.e("MiCloudSyncAdapterBase", "onPerformSync: sync automatically is off. do not sync!!");
                return;
            } else if (MiCloudResolver.isSyncPausing(this.mContext, this.mAccount, this.mAuthority)) {
                Log.e("MiCloudSyncAdapterBase", "onPerformSync: sync is set to pause. do not sync!!");
                return;
            } else {
                this.isIgnoreTemperature = extras.getBoolean("micloud_ignore_temperature", false);
                this.isIgnoreWifiSettings = extras.getBoolean("micloud_ignore_wifi_settings", false);
                this.isIgnoreBatteryLow = extras.getBoolean("micloud_ignore_battery_low", false);
                this.isForceSync = extras.getBoolean("micloud_force", false);
                this.isManualSync = extras.getBoolean("force", false);
                Account account2;
                String str;
                SyncResult syncResult2;
                if (this.isForceSync || this.isManualSync || SyncTimeUtils.isSyncTimeAvailable(this.mContext, authority)) {
                    if (this.isManualSync) {
                        SyncTimeUtils.resetBackoffStatus(this.mContext, authority);
                    }
                    this.mExtTokenStr = getExtTokenStr(this.mContext, this.mAccount, this.mAuthority);
                    if (this.mExtTokenStr == null) {
                        Log.e("MiCloudSyncAdapterBase", "onPerformSync: No ext token string.");
                        account2 = account;
                        str = authority;
                        syncResult2 = syncResult;
                        MiCloudExceptionHandler.handleException(this.mContext, account2, str, syncResult2, new CloudServerException(-10001, 100), this.mAuthType, this.mExtTokenStr, extras);
                        return;
                    }
                    this.mExtToken = ExtendedAuthToken.parse(this.mExtTokenStr);
                    onTransformExtAuthToken(this.mExtToken);
                    if (this.mExtToken == null) {
                        Log.e("MiCloudSyncAdapterBase", "onPerformSync: Cannot parse ext token.");
                        account2 = account;
                        str = authority;
                        syncResult2 = syncResult;
                        MiCloudExceptionHandler.handleException(this.mContext, account2, str, syncResult2, new CloudServerException(-10001, 100), this.mAuthType, this.mExtTokenStr, extras);
                        return;
                    }
                    try {
                        onPerformMiCloudSync(extras);
                        if (this.mSyncResult.hasError()) {
                            Log.d("MiCloudSyncAdapterBase", "onPerformSync: hasError");
                            if (this.mSyncResult.hasSoftError()) {
                                Log.d("MiCloudSyncAdapterBase", "onPerformSync: softError");
                                account2 = account;
                                str = authority;
                                syncResult2 = syncResult;
                                MiCloudExceptionHandler.handleException(this.mContext, account2, str, syncResult2, new CloudServerException(-10001, 1), this.mAuthType, this.mExtTokenStr, extras);
                            } else if (this.mSyncResult.hasHardError()) {
                                Log.d("MiCloudSyncAdapterBase", "onPerformSync: hardError");
                                account2 = account;
                                str = authority;
                                syncResult2 = syncResult;
                                MiCloudExceptionHandler.handleException(this.mContext, account2, str, syncResult2, new CloudServerException(-10001, 2), this.mAuthType, this.mExtTokenStr, extras);
                            }
                            MiCloudStatUtil.performSyncErrorStat(this.mContext, timeStart, extras);
                            return;
                        }
                        Log.d("MiCloudSyncAdapterBase", "onPerformSync: NoError");
                        SyncTimeUtils.resetBackoffStatus(this.mContext, authority);
                        SyncRecordUtils.recordSyncResultSuccess(this.mContext, authority);
                        MiCloudStatUtil.performSyncSuccessStat(this.mContext, authority, timeStart, extras);
                        return;
                    } catch (CloudServerException exception) {
                        Log.e("MiCloudSyncAdapterBase", "onPerformSync", exception);
                        MiCloudExceptionHandler.handleException(this.mContext, account, authority, syncResult, exception, this.mAuthType, this.mExtTokenStr, extras);
                        MiCloudStatUtil.performSyncErrorStat(this.mContext, timeStart, extras);
                        return;
                    }
                }
                Log.e("MiCloudSyncAdapterBase", "onPerformSync: sync time is not available. do not sync!!");
                account2 = account;
                str = authority;
                syncResult2 = syncResult;
                MiCloudExceptionHandler.handleException(this.mContext, account2, str, syncResult2, new CloudServerException(-10001, (int) BaiduSceneResult.SHOOTING), this.mAuthType, this.mExtTokenStr, extras);
                return;
            }
        }
        SyncStats syncStats = syncResult.stats;
        syncStats.numAuthExceptions++;
        Log.i("MiCloudSyncAdapterBase", "Gdpr Permission deny: " + authority);
    }

    protected void onTransformExtAuthToken(ExtendedAuthToken token) {
    }

    String getExtTokenStr(Context context, Account account, String authority) {
        try {
            Log.v("MiCloudSyncAdapterBase", "onPerformSync: getting auth token. authority: " + authority);
            AccountManagerFuture<Bundle> future = AccountManager.get(context).getAuthToken(account, this.mAuthType, true, null, null);
            if (future == null) {
                Log.e("MiCloudSyncAdapterBase", "onPerformSync: Null future.");
                return null;
            } else if (future.getResult() != null) {
                return ((Bundle) future.getResult()).getString("authtoken");
            } else {
                Log.e("MiCloudSyncAdapterBase", "onPerformSync: Null future result.");
                return null;
            }
        } catch (OperationCanceledException e) {
            Log.e("MiCloudSyncAdapterBase", "onPerformSync", e);
            return null;
        } catch (AuthenticatorException e2) {
            Log.e("MiCloudSyncAdapterBase", "onPerformSync", e2);
            return null;
        } catch (IOException e3) {
            Log.e("MiCloudSyncAdapterBase", "onPerformSync", e3);
            return null;
        }
    }
}
