package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.mipush.sdk.AppInfoHolder.ClientInfoData;
import com.xiaomi.push.service.xmpush.Command;
import com.xiaomi.xmpush.thrift.XmPushActionRegistrationResult;
import com.xiaomi.xmpush.thrift.XmPushActionUnRegistrationResult;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MiPushClient4Hybrid {
    private static Map<String, ClientInfoData> dataMap = new HashMap();
    private static MiPushClientCallbackV2 sCallback;
    private static Map<String, Long> sRegisterTimeMap = new HashMap();

    public static void onReceiveRegisterResult(Context context, XmPushActionRegistrationResult regResult) {
        String appPackage = regResult.getPackageName();
        if (regResult.getErrorCode() == 0) {
            ClientInfoData data = (ClientInfoData) dataMap.get(appPackage);
            if (data != null) {
                data.setHybridRegIdAndSecret(regResult.regId, regResult.regSecret);
                AppInfoHolder.getInstance(context).saveHybridAppInfo(appPackage, data);
            }
        }
        List<String> cmdArgs = null;
        if (!TextUtils.isEmpty(regResult.regId)) {
            cmdArgs = new ArrayList();
            cmdArgs.add(regResult.regId);
        }
        MiPushCommandMessage commandMessage = PushMessageHelper.generateCommandMessage(Command.COMMAND_REGISTER.value, cmdArgs, regResult.errorCode, regResult.reason, null);
        if (sCallback != null) {
            sCallback.onReceiveRegisterResult(appPackage, commandMessage);
        }
    }

    public static void onReceiveUnregisterResult(Context context, XmPushActionUnRegistrationResult unregResult) {
        MiPushCommandMessage commandMessage = PushMessageHelper.generateCommandMessage(Command.COMMAND_UNREGISTER.value, null, unregResult.errorCode, unregResult.reason, null);
        String appPackage = unregResult.getPackageName();
        if (sCallback != null) {
            sCallback.onReceiveUnregisterResult(appPackage, commandMessage);
        }
    }

    public static void onNotificationMessageClicked(Context context, String appPackage, MiPushMessage message) {
        if (!TextUtils.isEmpty(appPackage)) {
            if (isPlatformMessage(message)) {
                onPlatformNotificationMessageClicked(context, message);
            } else if (sCallback != null) {
                sCallback.onNotificationMessageClicked(appPackage, message);
            }
        }
    }

    private static void onPlatformNotificationMessageClicked(Context context, MiPushMessage message) {
        Intent intent = null;
        String webUri = (String) message.getExtra().get("web_uri");
        String intentUri = (String) message.getExtra().get("intent_uri");
        if (!TextUtils.isEmpty(webUri)) {
            intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(webUri));
        } else if (!TextUtils.isEmpty(intentUri)) {
            try {
                intent = Intent.parseUri(intentUri, 0);
            } catch (URISyntaxException e) {
                MyLog.e("intent uri parse failed", e);
            }
        }
        if (intent == null) {
            MyLog.w("web uri and intent uri all are empty");
            return;
        }
        intent.addFlags(268435456);
        try {
            context.startActivity(intent);
        } catch (Throwable e2) {
            MyLog.e("start activity failed from web uri or intent uri", e2);
        }
    }

    private static boolean isPlatformMessage(MiPushMessage message) {
        return TextUtils.equals(message.getExtra() == null ? "" : (String) message.getExtra().get("push_server_action"), "platform_message");
    }
}
