package com.miui.gallery.permission.core;

import android.app.Activity;
import android.content.Context;
import android.os.Build.VERSION;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.text.TextUtils;
import java.util.ArrayList;

public class PermissionUtils {
    public static boolean checkPermission(Activity activity, String permission) {
        if (!supportRuntimePermissionCheck() || ContextCompat.checkSelfPermission(activity, permission) == 0) {
            return true;
        }
        return false;
    }

    public static boolean checkPermission(Context context, String permission) {
        if (!supportRuntimePermissionCheck() || ContextCompat.checkSelfPermission(context, permission) == 0) {
            return true;
        }
        return false;
    }

    public static void requestPermissions(Activity activity, String[] permissions, int requestCode) {
        if (supportRuntimePermissionCheck() && !activity.isFinishing() && !activity.isDestroyed()) {
            ActivityCompat.requestPermissions(activity, permissions, requestCode);
        }
    }

    private static boolean supportRuntimePermissionCheck() {
        return VERSION.SDK_INT >= 23;
    }

    public static String[] getUngrantedPermissions(Activity activity, String[] permissions) {
        if (!supportRuntimePermissionCheck() || permissions == null || permissions.length <= 0) {
            return null;
        }
        ArrayList<String> permissionList = new ArrayList();
        for (String permission : permissions) {
            if (!(TextUtils.isEmpty(permission) || checkPermission(activity, permission))) {
                permissionList.add(permission);
            }
        }
        if (permissionList.isEmpty()) {
            return new String[0];
        }
        String[] permissionArray = new String[permissionList.size()];
        permissionList.toArray(permissionArray);
        return permissionArray;
    }
}
