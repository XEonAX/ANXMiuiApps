package com.miui.gallery.permission.core;

import android.app.Activity;

public interface PermissionCheckCallback {
    String[] getRuntimePermissions();

    boolean isPermissionRequired(String str);

    void onPermissionsChecked(String[] strArr, int[] iArr);

    void showPermissionIntroduction(Activity activity, String str, OnPermissionIntroduced onPermissionIntroduced);
}
