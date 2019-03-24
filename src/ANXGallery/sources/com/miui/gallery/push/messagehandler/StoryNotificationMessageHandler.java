package com.miui.gallery.push.messagehandler;

import android.annotation.TargetApi;
import android.app.Notification;
import android.app.Notification.Builder;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.view.View;
import com.miui.gallery.R;
import com.miui.gallery.assistant.manager.ImageFeatureManger;
import com.miui.gallery.card.Card;
import com.miui.gallery.card.CardManager;
import com.miui.gallery.cloud.card.SyncCardFromServer;
import com.miui.gallery.cloud.card.SyncCardFromServer.OperationCardCallback;
import com.miui.gallery.push.GalleryPushMessage;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.NotificationHelper;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.FailReason;
import com.nostra13.universalimageloader.core.listener.ImageLoadingListener;
import com.xiaomi.micloudsdk.request.utils.CloudUtils;
import miui.app.constants.ThemeManagerConstants;
import org.json.JSONObject;

public class StoryNotificationMessageHandler extends MessageHandler {
    private static long mLastTime = 0;

    public void handlePull(Context context, GalleryPushMessage message) {
    }

    public void handleDirect(Context context, GalleryPushMessage message) {
        if (context == null || !ImageFeatureManger.isStoryFunctionEnable()) {
            Log.d("StoryNotificationMessageHandler", "context is null");
            return;
        }
        String messageData = message.getData();
        if (messageData == null) {
            Log.e("StoryNotificationMessageHandler", "message data is null");
            return;
        }
        try {
            JSONObject notificationJSON = new JSONObject(message.getData());
            final int id = getPushNotificationId(notificationJSON.optInt("id", 0));
            if (notificationJSON.optBoolean("isCancel", false)) {
                NotificationManager nm = (NotificationManager) context.getSystemService(ThemeManagerConstants.COMPONENT_CODE_NOTIFICATION);
                if (nm != null) {
                    nm.cancel(id);
                    Log.d("StoryNotificationMessageHandler", "is cancel message");
                    return;
                }
                return;
            }
            long cur = System.currentTimeMillis();
            long duration = cur - mLastTime;
            mLastTime = cur;
            if (duration < 600000) {
                Log.e("StoryNotificationMessageHandler", "too frequently to push notification, time duration is %d", Long.valueOf(duration));
                return;
            }
            int version = notificationJSON.optInt("version", 0);
            if (version > 0) {
                Log.d("StoryNotificationMessageHandler", "message version is not fit, server version is %d, local version is %d", Integer.valueOf(version), Integer.valueOf(0));
                return;
            }
            long storyId = notificationJSON.optLong("story_id", 0);
            BaseSamplingStatHelper.recordStringPropertyEvent("assistant", "assistant_operation_card_push_recieved", "story_" + storyId);
            Card card = CardManager.getInstance().getCardByServerId(String.valueOf(storyId), true);
            if (card == null) {
                final Context context2 = context;
                new SyncCardFromServer(CloudUtils.getXiaomiAccount()).getOperationCards(String.valueOf(storyId), new OperationCardCallback() {
                    public void onOperationCardGet(Card card) {
                        if (card != null && !card.isOutofDate()) {
                            StoryNotificationMessageHandler.this.publishStoryNotification(context2, id, card);
                        }
                    }
                });
            } else if (!card.isOutofDate()) {
                publishStoryNotification(context, id, card);
            }
        } catch (Object e) {
            Log.e("StoryNotificationMessageHandler", "fail to parse notification data from" + messageData, e);
        }
    }

    @TargetApi(23)
    private void publishStoryNotification(Context context, int notificationId, Card card) {
        if (context == null || card == null) {
            Log.d("StoryNotificationMessageHandler", "No valid context or card!");
            return;
        }
        final String title = card.getTitle();
        final String description = card.getDescription();
        if (card.getOperationInfo() == null || card.getOperationInfo().getIconUrl() == null) {
            publishStoryNotificationInternal(context, notificationId, title, description, null);
            return;
        }
        final Context context2 = context;
        final int i = notificationId;
        ImageLoader.getInstance().loadImage(card.getOperationInfo().getIconUrl(), new ImageLoadingListener() {
            public void onLoadingStarted(String imageUri, View view) {
            }

            public void onLoadingFailed(String imageUri, View view, FailReason failReason) {
                StoryNotificationMessageHandler.this.publishStoryNotificationInternal(context2, i, title, description, null);
            }

            public void onLoadingComplete(String imageUri, View view, Bitmap loadedImage) {
                StoryNotificationMessageHandler.this.publishStoryNotificationInternal(context2, i, title, description, loadedImage);
            }

            public void onLoadingCancelled(String imageUri, View view) {
                StoryNotificationMessageHandler.this.publishStoryNotificationInternal(context2, i, title, description, null);
            }
        });
    }

    private void publishStoryNotificationInternal(Context context, int notificationId, String title, String description, Bitmap icon) {
        NotificationManager nm = (NotificationManager) context.getSystemService(ThemeManagerConstants.COMPONENT_CODE_NOTIFICATION);
        if (nm == null) {
            Log.d("StoryNotificationMessageHandler", "notification manager is null");
            return;
        }
        Intent notificationIntent = new Intent("com.miui.gallery.action.VIEW_ALBUM");
        notificationIntent.putExtra("extra_start_page", 2);
        PendingIntent pi = PendingIntent.getActivity(context, 0, notificationIntent, 134217728);
        Builder builder = new Builder(context);
        builder.setTicker(title);
        builder.setContentTitle(title);
        builder.setContentText(description);
        if (icon != null) {
            builder.setLargeIcon(icon);
        }
        builder.setSmallIcon(R.mipmap.ic_launcher_gallery);
        NotificationHelper.setLowChannel(context, builder);
        builder.setContentIntent(pi);
        Notification notification = builder.build();
        notification.flags = 16;
        nm.notify(notificationId, notification);
        Log.d("StoryNotificationMessageHandler", "publis notification %d success", Integer.valueOf(notificationId));
    }

    private int getPushNotificationId(int originId) {
        return NotificationHelper.getPushNotificationId(originId);
    }
}
