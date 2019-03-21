package com.miui.gallery.push;

import android.content.Context;
import com.miui.gallery.util.Log;
import com.xiaomi.mipush.sdk.MiPushCommandMessage;
import com.xiaomi.mipush.sdk.MiPushMessage;
import com.xiaomi.mipush.sdk.PushMessageReceiver;

public class GalleryPushReceiver extends PushMessageReceiver {
    private static final String TAG = "GalleryPushReceiver";

    public void onReceivePassThroughMessage(Context context, MiPushMessage message) {
        Log.d(TAG, "onReceivePassThroughMessage: %s", String.valueOf(message));
        PushMessageDispatcher.dispatch(context, message);
    }

    public void onNotificationMessageClicked(Context context, MiPushMessage message) {
        Log.d(TAG, "onNotificationMessageClicked: %s", String.valueOf(message));
    }

    public void onNotificationMessageArrived(Context context, MiPushMessage message) {
        Log.d(TAG, "onNotificationMessageArrived: %s", String.valueOf(message));
    }

    public void onCommandResult(Context context, MiPushCommandMessage message) {
        Log.d(TAG, "onCommandResult: %s", String.valueOf(message));
    }

    public void onReceiveRegisterResult(Context context, MiPushCommandMessage message) {
        Log.d(TAG, "onReceiveRegisterResult: %s", String.valueOf(message));
        if ("register".equals(message.getCommand()) && message.getResultCode() == 0) {
            GalleryPushManager.getInstance().setUserAccountAndTopics(context);
        }
    }
}
