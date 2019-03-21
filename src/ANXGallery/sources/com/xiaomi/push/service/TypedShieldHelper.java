package com.xiaomi.push.service;

import android.annotation.TargetApi;
import android.app.Notification;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.TextUtils;
import com.xiaomi.xmpush.thrift.XmPushActionContainer;
import java.util.Map;

public class TypedShieldHelper {
    public static Runnable shieldInfoSyncTask;

    public static boolean isShield(Context context, XmPushActionContainer container) {
        if (!"com.xiaomi.xmsf".equals(MIPushNotificationHelper.getTargetPackage(container))) {
            return false;
        }
        String typeName = getShieldType(container);
        if (TextUtils.isEmpty(typeName)) {
            return false;
        }
        SharedPreferences sp = context.getSharedPreferences("typed_shield_pref", 4);
        if (!(sp.contains(typeName + "_shield") || shieldInfoSyncTask == null)) {
            shieldInfoSyncTask.run();
        }
        return sp.getBoolean(typeName + "_shield", true);
    }

    public static String getShieldType(XmPushActionContainer container) {
        Map<String, String> extra = container.getMetaInfo().getExtra();
        return extra == null ? null : (String) extra.get("__typed_shield_type");
    }

    private static String getShieldTitle(Context context, String shieldTypeName) {
        return context.getSharedPreferences("typed_shield_pref", 4).getString(shieldTypeName + "_title", shieldTypeName);
    }

    @TargetApi(19)
    static void processTypedShieldExtra(Context context, XmPushActionContainer container, Notification notification) {
        if (VERSION.SDK_INT >= 19) {
            String typeName = getShieldType(container);
            if (!TextUtils.isEmpty(typeName) && "com.xiaomi.xmsf".equals(MIPushNotificationHelper.getTargetPackage(container))) {
                Bundle notificationBundle = notification.extras;
                if (notificationBundle == null) {
                    notificationBundle = new Bundle();
                }
                notificationBundle.putString("miui.category", typeName);
                notificationBundle.putString("miui.substName", getShieldTitle(context, typeName));
                notification.extras = notificationBundle;
            }
        }
    }
}
