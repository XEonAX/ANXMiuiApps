package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.android.SharedPrefsCompat;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.misc.ScheduledJobManager;
import com.xiaomi.push.service.OnlineConfig;
import java.util.HashMap;

public class AssemblePushHelper {
    private static HashMap<String, String> mTokens = new HashMap();

    static void checkAssemblePushStatus(Context ctx) {
        boolean fallbackMipush = false;
        SharedPreferences sp = ctx.getSharedPreferences("mipush_extra", 0);
        String hwkey = getTokenKey(AssemblePush.ASSEMBLE_PUSH_HUAWEI);
        String fcmkey = getTokenKey(AssemblePush.ASSEMBLE_PUSH_FCM);
        if (!TextUtils.isEmpty(sp.getString(hwkey, "")) && TextUtils.isEmpty(sp.getString(fcmkey, ""))) {
            fallbackMipush = true;
        }
        if (fallbackMipush) {
            PushServiceClient.getInstance(ctx).send3rdPushHint(2, hwkey);
        }
    }

    public static boolean isOpenAssemblePushOnlineSwitch(Context context, AssemblePush type) {
        if (AssemblePushInfoHelper.getConfigKeyByType(type) != null) {
            return OnlineConfig.getInstance(context).getBooleanValue(AssemblePushInfoHelper.getConfigKeyByType(type).getValue(), true);
        }
        return false;
    }

    private static synchronized void saveAssemblePushToken(Context context, AssemblePush type, String token) {
        synchronized (AssemblePushHelper.class) {
            String key = getTokenKey(type);
            if (TextUtils.isEmpty(key)) {
                MyLog.w("ASSEMBLE_PUSH : can not find the key of token used in sp file");
            } else {
                SharedPrefsCompat.apply(context.getSharedPreferences("mipush_extra", 0).edit().putString(key, token));
                MyLog.w("ASSEMBLE_PUSH : update sp file success!  " + token);
            }
        }
    }

    public static void saveAssemblePushTokenAfterAck(final Context context, final AssemblePush type, final String regInfo) {
        ScheduledJobManager.getInstance(context).addOneShootJob(new Runnable() {
            public void run() {
                if (!TextUtils.isEmpty(regInfo)) {
                    String token = "";
                    for (String str : regInfo.split("~")) {
                        if (!TextUtils.isEmpty(str) && str.startsWith("token:")) {
                            token = str.substring(str.indexOf(":") + 1);
                            break;
                        }
                    }
                    if (TextUtils.isEmpty(token)) {
                        MyLog.w("ASSEMBLE_PUSH : receive incorrect token");
                        return;
                    }
                    MyLog.w("ASSEMBLE_PUSH : receive correct token");
                    AssemblePushHelper.saveAssemblePushToken(context, type, token);
                    AssemblePushHelper.checkAssemblePushStatus(context);
                }
            }
        });
    }

    protected static synchronized String getAssemblePushToken(Context context, String key) {
        String value;
        synchronized (AssemblePushHelper.class) {
            value = (String) mTokens.get(key);
            if (TextUtils.isEmpty(value)) {
                value = "";
            }
        }
        return value;
    }

    public static void registerAssemblePush(Context context) {
        AssemblePushCollectionsManager.getInstance(context).register();
    }

    public static void unregisterAssemblePush(Context context) {
        AssemblePushCollectionsManager.getInstance(context).unregister();
    }

    public static HashMap<String, String> getAssemblePushExtra(Context context, AssemblePush type) {
        HashMap<String, String> extra = new HashMap();
        String regInfo = null;
        String spKey = getTokenKey(type);
        if (!TextUtils.isEmpty(spKey)) {
            switch (type) {
                case ASSEMBLE_PUSH_HUAWEI:
                    ApplicationInfo appInfo = null;
                    try {
                        appInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
                    } catch (Exception e) {
                        MyLog.e(e.toString());
                    }
                    int appId = -1;
                    if (appInfo != null) {
                        appId = appInfo.metaData.getInt("com.huawei.hms.client.appid");
                    }
                    regInfo = "brand:" + AssemblePushUtils.getPhoneBrand(context).name() + "~" + "token" + ":" + getAssemblePushToken(context, spKey) + "~" + "package_name" + ":" + context.getPackageName() + "~" + "app_id" + ":" + appId;
                    break;
                case ASSEMBLE_PUSH_FCM:
                    regInfo = "brand:" + PhoneBrand.FCM.name() + "~" + "token" + ":" + getAssemblePushToken(context, spKey) + "~" + "package_name" + ":" + context.getPackageName();
                    break;
                case ASSEMBLE_PUSH_COS:
                    regInfo = "brand:" + PhoneBrand.OPPO.name() + "~" + "token" + ":" + getAssemblePushToken(context, spKey) + "~" + "package_name" + ":" + context.getPackageName();
                    break;
            }
            extra.put("RegInfo", regInfo);
        }
        return extra;
    }

    public static String getTokenKey(AssemblePush type) {
        switch (type) {
            case ASSEMBLE_PUSH_HUAWEI:
                return "hms_push_token";
            case ASSEMBLE_PUSH_FCM:
                return "fcm_push_token";
            case ASSEMBLE_PUSH_COS:
                return "cos_push_token";
            default:
                return null;
        }
    }
}
