package com.aeonax;

import android.app.Activity;
import java.util.ArrayList;

public class PermissionsAsker {
    public static void Ask(Activity activity) {
        Activity activity2 = activity;
        if (activity2 != null) {
            ArrayList<String> permissionsToAsk = new ArrayList();
            for (String p : new String[]{"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE", "android.permission.ACCESS_WIFI_STATE", "android.permission.SYSTEM_ALERT_WINDOW", "android.permission.MOUNT_UNMOUNT_FILESYSTEMS", "android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.WRITE_MEDIA_STORAGE", "android.permission.ACCESS_ALL_EXTERNAL_STORAGE", "android.permission.RECORD_AUDIO", "android.permission.BLUETOOTH", "android.permission.INTERACT_ACROSS_USERS", "com.android.launcher.permission.INSTALL_SHORTCUT", "android.permission.FOREGROUND_SERVICE", "android.permission.WRITE_SETTINGS", "android.permission.MANAGE_MEDIA_PROJECTION"}) {
                if (activity2.checkSelfPermission(p) != 0) {
                    permissionsToAsk.add(p);
                }
            }
            if (permissionsToAsk.size() > 0) {
                activity2.requestPermissions((String[]) permissionsToAsk.toArray(new String[permissionsToAsk.size()]), 1);
            }
        }
    }
}
