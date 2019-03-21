package com.miui.gallery.util;

import android.app.Notification;
import android.app.Notification.Builder;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.os.Build.VERSION;
import com.miui.gallery.R;
import com.nexstreaming.nexeditorsdk.nexCrop;

public class NotificationHelper {
    public static int getBabyAlbumNotificationId(boolean isSharer, int id) {
        if (isSharer) {
            return 200000 + (id % nexCrop.ABSTRACT_DIMENSION);
        }
        return (id % nexCrop.ABSTRACT_DIMENSION) + nexCrop.ABSTRACT_DIMENSION;
    }

    public static int getPushNotificationId(int id) {
        return 300000 + (id % nexCrop.ABSTRACT_DIMENSION);
    }

    public static void setDefaultChannel(Context context, Builder builder) {
        if (VERSION.SDK_INT >= 26) {
            addNotificationChannel(context, 3);
            builder.setChannelId("com.miui.gallery.default");
        }
    }

    public static void setLowChannel(Context context, Builder builder) {
        if (VERSION.SDK_INT >= 26) {
            addNotificationChannel(context, 2);
            builder.setChannelId("com.miui.gallery.low");
        }
    }

    public static Notification getEmptyNotification(Context context) {
        Builder builder = new Builder(context);
        if (VERSION.SDK_INT >= 26) {
            addNotificationChannel(context, 1);
            builder.setChannelId("com.miui.gallery.MIN");
        }
        return builder.build();
    }

    private static void addNotificationChannel(Context context, int importance) {
        if (VERSION.SDK_INT >= 26) {
            NotificationChannel channel;
            switch (importance) {
                case 1:
                    channel = new NotificationChannel("com.miui.gallery.MIN", context.getString(R.string.channel_min_name), 1);
                    break;
                case 2:
                    channel = new NotificationChannel("com.miui.gallery.low", context.getString(R.string.channel_low_name), 2);
                    break;
                case 3:
                    channel = new NotificationChannel("com.miui.gallery.default", context.getString(R.string.channel_default_name), 3);
                    break;
                default:
                    return;
            }
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            if (notificationManager != null && !notificationManager.getNotificationChannels().contains(channel)) {
                notificationManager.createNotificationChannel(channel);
            }
        }
    }
}
