package com.xiaomi.micloudsdk.sync;

import android.accounts.Account;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.SyncAdapterType;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.xiaomi.micloudsdk.sync.utils.SyncContentUtils;
import java.util.ArrayList;
import java.util.List;

public class MiCloudResolver {
    public static void requestSync(Context context, Account account, String authority) {
        assertContext(context);
        assertAccount(account);
        assertAuthority(authority);
        Log.d("MiCloudResolver", "requestSync: authority: " + authority);
        if (isSyncPausing(context, account, authority)) {
            Log.e("MiCloudResolver", "requestSync: authority: " + authority + "is paused. request sync fail");
        }
        ContentResolver.requestSync(account, authority, new Bundle());
    }

    public static void cancelSync(Context context, Account account, String authority) {
        assertContext(context);
        assertAccount(account);
        assertAuthority(authority);
        Log.d("MiCloudResolver", "cancelSync: authority: " + authority);
        ContentResolver.cancelSync(account, authority);
        sendCancelCommand(context, authority);
    }

    public static void pauseSync(Context context, Account account, String authority, long time) {
        assertContext(context);
        assertAccount(account);
        assertAuthority(authority);
        assertTime(time);
        Log.d("MiCloudResolver", "pauseSync: authority: " + authority + ", time: " + time);
        cancelSync(context, account, authority);
        SyncContentUtils.savePauseTime(context, authority, time);
        tryToStartResumeService(context);
    }

    public static void resumeSync(Context context, Account account, String authority) {
        assertContext(context);
        assertAccount(account);
        assertAuthority(authority);
        Log.d("MiCloudResolver", "resumeSync: authority: " + authority);
        SyncContentUtils.insertPauseExceptAuthority(context, authority);
        SyncContentUtils.savePauseTime(context, authority, 0);
        requestSync(context, account, authority);
        tryToStartResumeService(context);
    }

    public static long getResumeTime(Context context, String authority) {
        assertContext(context);
        assertAuthority(authority);
        Log.d("MiCloudResolver", "getResumeTime: authority: " + authority);
        boolean isPauseExcept = SyncContentUtils.isPauseExceptAuthority(context, authority);
        long time = SyncContentUtils.loadResumeTime(context, authority);
        if (isPauseExcept) {
            return time;
        }
        long resumeTime = SyncContentUtils.loadResumeTime(context, "_all");
        if (resumeTime < time) {
            resumeTime = time;
        }
        return resumeTime;
    }

    public static boolean isSyncPausing(Context context, Account account, String authority) {
        assertContext(context);
        assertAccount(account);
        assertAuthority(authority);
        Log.d("MiCloudResolver", "isSyncPausing: authority: " + authority);
        return System.currentTimeMillis() <= getResumeTime(context, authority);
    }

    private static void assertContext(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("context is null");
        }
    }

    private static void assertAccount(Account account) {
        if (account == null || !"com.xiaomi".equals(account.type)) {
            throw new IllegalArgumentException("illegal account");
        }
    }

    private static void assertAuthority(String authority) {
        if (TextUtils.isEmpty(authority)) {
            throw new IllegalArgumentException("illegal authority: empty");
        } else if (!getAuthorityList().contains(authority)) {
            throw new IllegalArgumentException("illegal authority: not registered authority: " + authority);
        }
    }

    private static void assertTime(long time) {
        if (time < 0) {
            throw new IllegalArgumentException("illegal time");
        }
    }

    public static List<String> getAuthorityList() {
        List<String> authorityList = new ArrayList();
        for (SyncAdapterType sa : ContentResolver.getSyncAdapterTypes()) {
            if ("com.xiaomi".equals(sa.accountType)) {
                authorityList.add(sa.authority);
            }
        }
        return authorityList;
    }

    private static void tryToStartResumeService(Context context) {
        Intent intent = new Intent("com.xiaomi.action.SYNC_RESUME");
        intent.setPackage("com.miui.cloudservice");
        intent.putExtra("extra_operation", "alarm");
        if (context.getPackageManager().resolveService(intent, 32) != null) {
            context.startService(intent);
        }
    }

    private static void sendCancelCommand(Context context, String authority) {
        SyncCommandServiceBase.sendCommandService(context, authority, "value_command_cancel_sync");
    }
}
