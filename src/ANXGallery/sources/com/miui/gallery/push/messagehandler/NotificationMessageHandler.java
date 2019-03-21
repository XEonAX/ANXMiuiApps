package com.miui.gallery.push.messagehandler;

import android.app.Notification;
import android.app.Notification.Builder;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.miui.gallery.R;
import com.miui.gallery.provider.GalleryContract.Common;
import com.miui.gallery.push.GalleryPushMessage;
import com.miui.gallery.util.GalleryStatHelper;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.NotificationHelper;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import org.jcodec.containers.mp4.boxes.Box;
import org.json.JSONObject;

public class NotificationMessageHandler extends MessageHandler {
    private static long mLastTime = 0;

    public void handlePull(Context context, GalleryPushMessage message) {
    }

    public void handleDirect(Context context, GalleryPushMessage message) {
        if (context == null) {
            Log.d("NotificationMessageHandler", "context is null");
            return;
        }
        String messageData = message.getData();
        if (messageData == null) {
            Log.e("NotificationMessageHandler", "message data is null");
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(message.getData());
            int id = getPushNotificationId(jSONObject.optInt("id", 0));
            NotificationManager nm = (NotificationManager) context.getSystemService("notification");
            if (nm == null) {
                Log.d("NotificationMessageHandler", "notification manager is null");
            } else if (jSONObject.optBoolean("isCancel", false)) {
                nm.cancel(id);
                Log.d("NotificationMessageHandler", "is cancel message");
            } else {
                long cur = System.currentTimeMillis();
                long duration = cur - mLastTime;
                mLastTime = cur;
                if (duration < 600000) {
                    Log.e("NotificationMessageHandler", "too frequently to push notification, time duration is %d", Long.valueOf(duration));
                    return;
                }
                int version = jSONObject.optInt("version", 0);
                if (version > 0) {
                    Log.d("NotificationMessageHandler", "message version is not fit, server version is %d, local version is %d", Integer.valueOf(version), Integer.valueOf(0));
                    return;
                }
                String url = jSONObject.optString("url");
                if (TextUtils.isEmpty(url)) {
                    Log.e("NotificationMessageHandler", "empty url");
                    return;
                }
                Uri uri = Uri.parse(url);
                Intent contentIntent = new Intent("android.intent.action.VIEW", uri);
                if (uri.getBooleanQueryParameter("is_activity_action", false)) {
                    Log.d("NotificationMessageHandler", "is activity action");
                    String packageName = jSONObject.optString("intent_package_name");
                    if (!TextUtils.isEmpty(packageName)) {
                        contentIntent.setPackage(packageName);
                    }
                    JSONObject extraJSON = jSONObject.optJSONObject("intent_extra");
                    if (extraJSON != null) {
                        Iterator keySet = extraJSON.keys();
                        while (keySet.hasNext()) {
                            String key = (String) keySet.next();
                            contentIntent.putExtra(key, extraJSON.optString(key));
                        }
                    }
                    if (contentIntent.resolveActivity(context.getPackageManager()) == null) {
                        Log.d("NotificationMessageHandler", "no activity to handle this uri");
                        return;
                    }
                }
                JSONObject titleJSON = jSONObject.optJSONObject("title");
                JSONObject descriptionJSON = jSONObject.optJSONObject("description");
                String title = null;
                String description = null;
                if (!(titleJSON == null || descriptionJSON == null)) {
                    String local = Locale.getDefault().toString().toLowerCase();
                    title = titleJSON.optString(local);
                    description = descriptionJSON.optString(local);
                }
                if (TextUtils.isEmpty(title) || TextUtils.isEmpty(description)) {
                    Log.e("NotificationMessageHandler", "no title or description");
                    return;
                }
                Intent intent = new Intent("android.intent.action.VIEW", Common.URI_PUSH_LANDING_PAGE);
                intent.setPackage("com.miui.gallery");
                intent.putExtra("notification_content_intent", contentIntent);
                intent.putExtra("notification_content_id", id);
                PendingIntent pi = PendingIntent.getActivity(context, 0, intent, Box.MAX_BOX_SIZE);
                Builder builder = new Builder(context);
                builder.setTicker(title);
                builder.setContentTitle(title);
                builder.setContentText(description);
                builder.setSmallIcon(R.mipmap.ic_launcher_gallery);
                builder.setContentIntent(pi);
                NotificationHelper.setLowChannel(context, builder);
                Notification notification = builder.build();
                notification.flags = 16;
                nm.notify(id, notification);
                new HashMap().put("pushContent", String.format(Locale.US, "%d_%s", new Object[]{Integer.valueOf(id), url}));
                GalleryStatHelper.recordCountEvent("push_notification", "push_notification_arrive");
            }
        } catch (Object e) {
            Log.e("NotificationMessageHandler", "fail to parse notification data from" + messageData, e);
        }
    }

    private int getPushNotificationId(int originId) {
        return NotificationHelper.getPushNotificationId(originId);
    }
}
