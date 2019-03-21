package com.miui.gallery.permission;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.PermissionInfo;
import android.text.TextUtils;
import com.miui.gallery.R;
import com.miui.gallery.permission.core.Permission;

public class RuntimePermissions {
    public static final String[] PERMISSIONS_REQUIRED = new String[]{"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"};
    public static final String[] PERMISSION_OPTIONAL = new String[]{"android.permission.READ_CONTACTS", "android.permission.GET_ACCOUNTS", "android.permission.READ_PHONE_STATE"};

    public static Permission parsePermission(Context context, String permission, boolean required) {
        if (TextUtils.isEmpty(permission)) {
            return null;
        }
        try {
            PermissionInfo info = context.getPackageManager().getPermissionInfo(permission, 0);
            if (info == null) {
                return null;
            }
            int resName = -1;
            int resDesc = -1;
            if ("android.permission-group.STORAGE".equalsIgnoreCase(info.group)) {
                resName = R.string.permission_storage_name;
                resDesc = R.string.permission_storage_desc;
            } else if ("android.permission-group.CONTACTS".equalsIgnoreCase(info.group)) {
                resName = R.string.permission_contract_name;
                resDesc = R.string.permissin_contract_desc;
            } else if ("android.permission-group.PHONE".equalsIgnoreCase(info.group)) {
                resName = R.string.permission_phone_name;
                resDesc = R.string.permission_phone_desc;
            }
            return new Permission(info.group, resName != -1 ? context.getResources().getString(resName) : "", resDesc != -1 ? context.getResources().getString(resDesc) : "", required);
        } catch (NameNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }
}
