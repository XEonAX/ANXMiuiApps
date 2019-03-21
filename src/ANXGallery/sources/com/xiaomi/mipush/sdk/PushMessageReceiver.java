package com.xiaomi.mipush.sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.nexstreaming.nexeditorsdk.nexProject;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.mipush.sdk.MessageHandleService.MessageHandleJob;
import com.xiaomi.push.service.clientReport.PushClientReportManager;

public abstract class PushMessageReceiver extends BroadcastReceiver {
    public final void onReceive(Context context, Intent intent) {
        MessageHandleService.addJob(context.getApplicationContext(), new MessageHandleJob(intent, this));
        try {
            if (intent.getIntExtra("eventMessageType", -1) == nexProject.kAutoThemeTransitionDuration) {
                PushClientReportManager.getInstance(context.getApplicationContext()).reportEvent(context.getPackageName(), intent, 2003, "receive passThough message broadcast");
            }
        } catch (Throwable e) {
            MyLog.e(e);
        }
    }

    public void onReceivePassThroughMessage(Context context, MiPushMessage message) {
    }

    public void onNotificationMessageClicked(Context context, MiPushMessage message) {
    }

    public void onNotificationMessageArrived(Context context, MiPushMessage message) {
    }

    @Deprecated
    public void onReceiveMessage(Context context, MiPushMessage message) {
    }

    public void onReceiveRegisterResult(Context context, MiPushCommandMessage message) {
    }

    public void onCommandResult(Context context, MiPushCommandMessage commandMessage) {
    }

    public void onRequirePermissions(Context context, String[] permissions) {
    }
}
