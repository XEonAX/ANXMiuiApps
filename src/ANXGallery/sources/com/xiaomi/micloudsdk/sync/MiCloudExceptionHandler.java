package com.xiaomi.micloudsdk.sync;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AccountManagerFuture;
import android.content.ContentResolver;
import android.content.Context;
import android.content.SyncResult;
import android.content.SyncStats;
import android.os.Bundle;
import android.util.Log;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.xiaomi.micloudsdk.exception.CloudServerException;
import com.xiaomi.micloudsdk.sync.utils.SyncRecordUtils;
import com.xiaomi.micloudsdk.sync.utils.SyncTimeUtils;
import com.xiaomi.micloudsdk.utils.PrefUtils;
import miui.cloud.stat.MiCloudStatUtil;

public class MiCloudExceptionHandler {
    public static void handleException(Context context, Account account, String authority, SyncResult syncResult, CloudServerException exception, String authType, String extTokenStr, Bundle extras) {
        String reason;
        boolean retry = false;
        switch (exception.statusCode) {
            case -10001:
                Log.w("MiCloudExceptionHandler", "Non-server error. code: " + exception.code);
                switch (exception.code) {
                    case 0:
                        reason = "code_sync_success";
                        break;
                    case 1:
                        reason = "sync_soft_error";
                        retry = true;
                        break;
                    case 2:
                        reason = "sync_hard_error";
                        retry = true;
                        handleException(context, authority, syncResult, (long) SyncTimeUtils.getSyncSuspendTime(context, authority));
                        break;
                    case 100:
                        reason = "auth_token_error";
                        handleUnauthorizedException(context, account, authority, syncResult, authType, extTokenStr, extras);
                        break;
                    case BaiduSceneResult.SHOOTING /*101*/:
                        reason = "time_unavailable";
                        break;
                    case 1000:
                        reason = "network_disallowed";
                        break;
                    case 1001:
                        reason = "activated_fail";
                        break;
                    default:
                        reason = "code_sync_unknown";
                        break;
                }
            case 400:
                Log.w("MiCloudExceptionHandler", "Http bad request error. Suspending sync.");
                reason = "sever_error_bad_request";
                retry = true;
                handleException(context, authority, syncResult, (long) SyncTimeUtils.getSyncSuspendTime(context, authority));
                break;
            case 401:
                Log.w("MiCloudExceptionHandler", "Http unauthorized error.");
                reason = "sever_error_unauthorized";
                retry = true;
                handleUnauthorizedException(context, account, authority, syncResult, authType, extTokenStr, extras);
                break;
            case 403:
                Log.w("MiCloudExceptionHandler", "Http forbidden error. Suspend sync.");
                reason = "sever_error_forbidden";
                retry = true;
                handleException(context, authority, syncResult, (long) SyncTimeUtils.getSyncSuspendTime(context, authority));
                break;
            case 406:
                Log.w("MiCloudExceptionHandler", "Http not-acceptable error. Suspend sync.");
                reason = "sever_error_not-acceptable";
                retry = true;
                handleException(context, authority, syncResult, (long) SyncTimeUtils.getSyncSuspendTime(context, authority));
                break;
            default:
                if (!exception.is5xxServerException()) {
                    Log.e("MiCloudExceptionHandler", "Unrecognized server error " + exception.statusCode);
                    reason = "code_sync_unknown";
                    break;
                }
                reason = "server_5xx_error";
                retry = true;
                long retryTime = exception.get5xxServerExceptionRetryTime();
                if (retryTime == 2147483647L) {
                    retryTime = (long) SyncTimeUtils.getSyncSuspendTime(context, authority);
                }
                Log.w("MiCloudExceptionHandler", "Http 5xx error. retryTime: " + retryTime);
                handleException(context, authority, syncResult, retryTime);
                break;
        }
        SyncRecordUtils.recordSyncResult(context, authority, exception);
        MiCloudStatUtil.wrapErrorBundle(extras, authority, reason, retry);
    }

    public static void handleException(Context context, String authority, SyncResult syncResult, long suspendTime) {
        SyncTimeUtils.suspendSync(context, authority, suspendTime);
        setSyncRetry(syncResult, suspendTime);
    }

    private static void handleUnauthorizedException(Context context, Account account, String authority, SyncResult syncResult, String authType, String extTokenStr, Bundle extras) {
        String prefTokenxpiredDay = String.format("TokenExpiredDay_%s", new Object[]{authority});
        long today = System.currentTimeMillis() / 86400000;
        if (PrefUtils.getLong(context, prefTokenxpiredDay, Long.valueOf(0)).longValue() == today) {
            Log.w("MiCloudExceptionHandler", "Http unauthorized error. Suspend sync.");
            handleException(context, authority, syncResult, (long) SyncTimeUtils.getSyncSuspendTime(context, authority));
            return;
        }
        Log.w("MiCloudExceptionHandler", "Http unauthorized error. Invalid and retry");
        invalidAuthToken(context, account, authType, extTokenStr);
        ContentResolver.requestSync(account, authority, extras);
        PrefUtils.putLong(context, prefTokenxpiredDay, Long.valueOf(today));
    }

    private static void invalidAuthToken(Context context, Account account, String authType, String extTokenStr) {
        AccountManager am = AccountManager.get(context);
        AccountManagerFuture<Bundle> future = am.getAuthToken(account, authType, true, null, null);
        am.invalidateAuthToken(account.type, extTokenStr);
    }

    private static void setSyncRetry(SyncResult syncResult, long delayUntil) {
        SyncStats syncStats = syncResult.stats;
        syncStats.numIoExceptions++;
        syncResult.delayUntil = delayUntil;
    }
}
