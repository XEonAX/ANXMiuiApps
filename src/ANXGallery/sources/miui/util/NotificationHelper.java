package miui.util;

import android.app.MiuiNotification;
import android.app.Notification;
import android.app.Notification.Builder;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.util.Log;
import miui.os.C0015Build;
import miui.reflect.Field;

public class NotificationHelper {
    private static final String EXTRA_SUBSTITUTE_APP_NAME = "android.substName";
    private static final String TAG = "NotificationHelper";

    private NotificationHelper() {
    }

    public static Notification setTargetPkg(Context context, Builder builder, String packageName) {
        if (C0015Build.IS_MIUI) {
            return setTargetPkgForMiui(builder, packageName);
        }
        return setTargetPkgForAndroid(context, builder, packageName);
    }

    private static Notification setTargetPkgForMiui(Builder builder, String packageName) {
        Notification notification = builder.build();
        ((MiuiNotification) Field.of(Notification.class, "extraNotification", MiuiNotification.class).get(notification)).setTargetPkg(packageName);
        return notification;
    }

    private static Notification setTargetPkgForAndroid(Context context, Builder builder, String packageName) {
        PackageManager pm = context.getPackageManager();
        try {
            ApplicationInfo info = pm.getApplicationInfo(packageName, null);
            Drawable icon = info.loadIcon(pm);
            if (icon instanceof BitmapDrawable) {
                builder.setLargeIcon(((BitmapDrawable) icon).getBitmap());
            }
            if (VERSION.SDK_INT >= 20) {
                setSubstituteAppName(builder, info.loadLabel(pm).toString());
            }
        } catch (NameNotFoundException e) {
            Log.e(TAG, "setTargetPkg failed", e);
        }
        return builder.build();
    }

    private static void setSubstituteAppName(Builder builder, String appName) {
        Bundle bundle = new Bundle();
        bundle.putString(EXTRA_SUBSTITUTE_APP_NAME, appName);
        builder.addExtras(bundle);
    }
}
