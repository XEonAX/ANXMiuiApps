package com.xiaomi.micloudsdk.sync.utils;

import android.content.Context;
import android.util.Log;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.xiaomi.micloudsdk.exception.CloudServerException;
import com.xiaomi.micloudsdk.provider.GdprUtils;
import com.xiaomi.micloudsdk.sync.utils.SyncContentUtils.Reason;

public class SyncRecordUtils {
    public static void recordSyncResultSuccess(Context context, String authority) {
        Log.d("SyncRecordUtils", "recordSyncResultSuccess");
        SyncContentUtils.recordSyncResult(context, authority, Reason.SUCCESS);
    }

    public static void recordSyncResult(Context context, String authority, CloudServerException exception) {
        Log.d("SyncRecordUtils", "recordSyncResult");
        if (exception.statusCode != -10001) {
            SyncContentUtils.recordSyncResult(context, authority, exception.statusCode);
            return;
        }
        Reason reason;
        switch (exception.code) {
            case 0:
                reason = Reason.SUCCESS;
                break;
            case 1:
                reason = Reason.SYNC_SOFT_ERROR;
                break;
            case 2:
                reason = Reason.SYNC_HARD_ERROR;
                break;
            case 100:
                reason = Reason.AUTH_TOKEN_ERROR;
                break;
            case BaiduSceneResult.SHOOTING /*101*/:
                reason = Reason.TIME_UNAVAILABLE;
                break;
            case 1000:
                reason = Reason.NETWORK_DISALLOWED;
                break;
            case 1001:
                reason = Reason.ACTIVATED_FAIL;
                break;
            case 1002:
                reason = Reason.PERMISSION_LIMIT;
                break;
            case 1003:
                reason = Reason.SECURE_SPACE_LIMIT;
                break;
            case 52003:
                if (!GdprUtils.isGdprAvailable(context)) {
                    reason = Reason.UNKNOWN;
                    break;
                } else {
                    reason = Reason.PRIVACY_ERROR;
                    break;
                }
            default:
                reason = Reason.UNKNOWN;
                break;
        }
        SyncContentUtils.recordSyncResult(context, authority, reason);
    }
}
