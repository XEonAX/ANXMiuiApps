package com.miui.gallery.permission.introduction;

import android.app.Activity;
import android.content.Context;
import com.miui.gallery.permission.PermissionsDialogFragment;
import com.miui.gallery.permission.RuntimePermissions;
import com.miui.gallery.permission.core.OnPermissionIntroduced;
import com.miui.gallery.permission.core.Permission;
import com.miui.gallery.preference.BaseGalleryPreferences.PermissionIntroduction;
import java.util.ArrayList;
import java.util.HashSet;

public class RuntimePermissionsIntroduction {
    public void introduce(Activity activity, String permission, final OnPermissionIntroduced callback) {
        if (PermissionIntroduction.isRuntimePermissionsIntroduced()) {
            callback.onPermissionIntroduced(true);
        } else {
            PermissionsDialogFragment.newInstance(parsePermissions(activity), new OnPermissionIntroduced() {
                public void onPermissionIntroduced(boolean allowed) {
                    PermissionIntroduction.setRuntimePermissionsIntroduced(true);
                    callback.onPermissionIntroduced(allowed);
                }
            }).show(activity.getFragmentManager(), "PermissionsDialogFragment");
        }
    }

    private static ArrayList<Permission> parsePermissions(Context context) {
        Permission p;
        ArrayList<Permission> permissionGroups = new ArrayList();
        HashSet<Permission> tempFilter = new HashSet();
        String[] requiredPermissions = getAllRequiredPermissions();
        if (requiredPermissions != null) {
            for (String permission : requiredPermissions) {
                p = RuntimePermissions.parsePermission(context, permission, true);
                if (!(p == null || tempFilter.contains(p))) {
                    tempFilter.add(p);
                    permissionGroups.add(p);
                }
            }
        }
        String[] optionalPermissions = getAllOptionalPermissions();
        if (optionalPermissions != null) {
            for (String permission2 : optionalPermissions) {
                p = RuntimePermissions.parsePermission(context, permission2, false);
                if (!(p == null || tempFilter.contains(p))) {
                    tempFilter.add(p);
                    permissionGroups.add(p);
                }
            }
        }
        return permissionGroups;
    }

    private static String[] getAllRequiredPermissions() {
        return RuntimePermissions.PERMISSIONS_REQUIRED;
    }

    private static String[] getAllOptionalPermissions() {
        return RuntimePermissions.PERMISSION_OPTIONAL;
    }
}
