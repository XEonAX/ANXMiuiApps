package com.miui.internal;

import android.content.ContentResolver;
import android.content.Context;
import android.os.Build.VERSION;
import android.os.UserHandle;
import miui.securityspace.CrossUserUtils;

public class CrossUserHelper {
    public static boolean checkUidPermission(Context context, String packageName) {
        return CrossUserUtils.checkUidPermission(context, packageName);
    }

    public static ContentResolver getContentResolver(Context context, int uid) {
        if (support()) {
            return context.getContentResolverForUser(new UserHandle(uid));
        }
        throw new UnsupportedOperationException("not support multi users");
    }

    public static boolean support() {
        return VERSION.SDK_INT > 19;
    }
}
