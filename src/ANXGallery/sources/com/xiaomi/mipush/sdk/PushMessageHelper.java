package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.text.TextUtils;
import com.xiaomi.xmpush.thrift.PushMetaInfo;
import com.xiaomi.xmpush.thrift.XmPushActionSendMessage;
import java.util.List;

public class PushMessageHelper {
    private static int pushMode = 0;

    private static boolean isIntentAvailable(Context context, Intent intent) {
        try {
            List<ResolveInfo> resolveInfos = context.getPackageManager().queryBroadcastReceivers(intent, 32);
            if (resolveInfos == null || resolveInfos.isEmpty()) {
                return false;
            }
            return true;
        } catch (Exception e) {
            return true;
        }
    }

    public static int getPushMode(Context context) {
        if (pushMode == 0) {
            if (isUseCallbackPushMode(context)) {
                setPushMode(1);
            } else {
                setPushMode(2);
            }
        }
        return pushMode;
    }

    private static void setPushMode(int newMode) {
        pushMode = newMode;
    }

    public static boolean isUseCallbackPushMode(Context context) {
        Intent intent = new Intent("com.xiaomi.mipush.RECEIVE_MESSAGE");
        intent.setClassName(context.getPackageName(), "com.xiaomi.mipush.sdk.PushServiceReceiver");
        return isIntentAvailable(context, intent);
    }

    public static void sendCommandMessageBroadcast(Context context, MiPushCommandMessage commandMessage) {
        Intent intent = new Intent("com.xiaomi.mipush.RECEIVE_MESSAGE");
        intent.setPackage(context.getPackageName());
        intent.putExtra("message_type", 3);
        intent.putExtra("key_command", commandMessage);
        new PushServiceReceiver().onReceive(context, intent);
    }

    public static MiPushCommandMessage generateCommandMessage(String command, List<String> commandArguments, long resultCode, String reason, String category) {
        MiPushCommandMessage commandResult = new MiPushCommandMessage();
        commandResult.setCommand(command);
        commandResult.setCommandArguments(commandArguments);
        commandResult.setResultCode(resultCode);
        commandResult.setReason(reason);
        commandResult.setCategory(category);
        return commandResult;
    }

    public static MiPushMessage generateMessage(XmPushActionSendMessage msg, PushMetaInfo metaInfo, boolean hasNotified) {
        MiPushMessage message = new MiPushMessage();
        message.setMessageId(msg.getId());
        if (!TextUtils.isEmpty(msg.getAliasName())) {
            message.setMessageType(1);
            message.setAlias(msg.getAliasName());
        } else if (!TextUtils.isEmpty(msg.getTopic())) {
            message.setMessageType(2);
            message.setTopic(msg.getTopic());
        } else if (TextUtils.isEmpty(msg.getUserAccount())) {
            message.setMessageType(0);
        } else {
            message.setMessageType(3);
            message.setUserAccount(msg.getUserAccount());
        }
        message.setCategory(msg.getCategory());
        if (msg.getMessage() != null) {
            message.setContent(msg.getMessage().getPayload());
        }
        if (metaInfo != null) {
            if (TextUtils.isEmpty(message.getMessageId())) {
                message.setMessageId(metaInfo.getId());
            }
            if (TextUtils.isEmpty(message.getTopic())) {
                message.setTopic(metaInfo.getTopic());
            }
            message.setDescription(metaInfo.getDescription());
            message.setTitle(metaInfo.getTitle());
            message.setNotifyType(metaInfo.getNotifyType());
            message.setNotifyId(metaInfo.getNotifyId());
            message.setPassThrough(metaInfo.getPassThrough());
            message.setExtra(metaInfo.getExtra());
        }
        message.setNotified(hasNotified);
        return message;
    }
}
