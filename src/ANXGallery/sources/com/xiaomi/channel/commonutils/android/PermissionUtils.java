package com.xiaomi.channel.commonutils.android;

import android.content.Context;

public class PermissionUtils {
    public static boolean checkSelfPermission(Context context, String permissionNameStr) {
        return context.getPackageManager().checkPermission(permissionNameStr, context.getPackageName()) == 0;
    }
}
