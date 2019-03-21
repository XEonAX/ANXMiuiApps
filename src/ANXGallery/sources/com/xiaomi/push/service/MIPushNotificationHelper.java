package com.xiaomi.push.service;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.Notification;
import android.app.Notification.BigPictureStyle;
import android.app.Notification.BigTextStyle;
import android.app.Notification.Builder;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import android.widget.RemoteViews;
import com.xiaomi.channel.commonutils.android.AppInfoUtils;
import com.xiaomi.channel.commonutils.android.AppInfoUtils.AppNotificationOp;
import com.xiaomi.channel.commonutils.android.MIUIUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.misc.ScheduledJobManager;
import com.xiaomi.channel.commonutils.misc.ScheduledJobManager.Job;
import com.xiaomi.channel.commonutils.reflect.JavaCalls;
import com.xiaomi.push.service.NotificationIconHelper.GetIconResult;
import com.xiaomi.push.service.clientReport.PushClientReportManager;
import com.xiaomi.xmpush.thrift.PushMetaInfo;
import com.xiaomi.xmpush.thrift.XmPushActionContainer;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import org.jcodec.containers.mp4.boxes.Box;
import org.json.JSONObject;

public class MIPushNotificationHelper {
    public static long lastNotify = 0;
    private static final LinkedList<Pair<Integer, XmPushActionContainer>> notifyContainerCache = new LinkedList();
    private static ExecutorService sThreadPool = Executors.newCachedThreadPool();

    private static class DownloadOnlinePicTask implements Callable<Bitmap> {
        private Context context;
        private boolean isSizeLimited;
        private String picUrl;

        public DownloadOnlinePicTask(String url, Context context, boolean isSizeLimited) {
            this.context = context;
            this.picUrl = url;
            this.isSizeLimited = isSizeLimited;
        }

        public Bitmap call() throws Exception {
            if (TextUtils.isEmpty(this.picUrl)) {
                MyLog.w("Failed get online picture/icon resource cause picUrl is empty");
                return null;
            } else if (this.picUrl.startsWith("http")) {
                GetIconResult result = NotificationIconHelper.getIconFromUrl(this.context, this.picUrl, this.isSizeLimited);
                if (result != null) {
                    return result.bitmap;
                }
                MyLog.w("Failed get online picture/icon resource");
                return null;
            } else {
                Bitmap pic = NotificationIconHelper.getIconFromUri(this.context, this.picUrl);
                if (pic != null) {
                    return pic;
                }
                MyLog.w("Failed get online picture/icon resource");
                return pic;
            }
        }
    }

    public static class GetNotificationResult {
        Notification notification;
        long trafficSize = 0;
    }

    public static class NotifyPushMessageInfo {
        public String targetPkgName;
        public long traffic = 0;
    }

    public static boolean isApplicationForeground(Context context, String packageName) {
        List<RunningAppProcessInfo> processInfos = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        if (processInfos != null) {
            for (RunningAppProcessInfo processInfo : processInfos) {
                if (processInfo.importance == 100 && Arrays.asList(processInfo.pkgList).contains(packageName)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static NotifyPushMessageInfo notifyPushMessage(Context context, XmPushActionContainer container, byte[] decryptedContent) {
        NotifyPushMessageInfo info = new NotifyPushMessageInfo();
        PushMetaInfo metaInfo;
        if (AppInfoUtils.getAppNotificationOp(context, getTargetPackage(container)) == AppNotificationOp.NOT_ALLOWED) {
            metaInfo = container.getMetaInfo();
            if (metaInfo != null) {
                PushClientReportManager.getInstance(context.getApplicationContext()).reportEvent4NeedDrop(container.getPackageName(), getInterfaceId(container), metaInfo.getId(), "Do not notify because user block " + getTargetPackage(container) + "‘s notification");
            }
            MyLog.w("Do not notify because user block " + getTargetPackage(container) + "‘s notification");
        } else if (TypedShieldHelper.isShield(context, container)) {
            String shieldTypeName = TypedShieldHelper.getShieldType(container);
            metaInfo = container.getMetaInfo();
            if (metaInfo != null) {
                PushClientReportManager.getInstance(context.getApplicationContext()).reportEvent4NeedDrop(container.getPackageName(), getInterfaceId(container), metaInfo.getId(), "Do not notify because user block " + shieldTypeName + "‘s notification");
            }
            MyLog.w("Do not notify because user block " + shieldTypeName + "‘s notification");
        } else {
            NotificationManager nm = (NotificationManager) context.getSystemService("notification");
            metaInfo = container.getMetaInfo();
            RemoteViews rv = getNotificationForCustomLayout(context, container, decryptedContent);
            PendingIntent intent = getClickedPendingIntent(context, container, metaInfo, decryptedContent);
            if (intent == null) {
                if (metaInfo != null) {
                    PushClientReportManager.getInstance(context.getApplicationContext()).reportEvent4NeedDrop(container.getPackageName(), getInterfaceId(container), metaInfo.getId(), "The click PendingIntent is null. ");
                }
                MyLog.w("The click PendingIntent is null. ");
            } else {
                Notification notification;
                if (VERSION.SDK_INT >= 11) {
                    GetNotificationResult getNotificationResult = getNotificationForLargeIcons(context, container, decryptedContent, rv, intent);
                    info.traffic = getNotificationResult.trafficSize;
                    info.targetPkgName = getTargetPackage(container);
                    notification = getNotificationResult.notification;
                } else {
                    Notification notification2 = new Notification(getIdForSmallIcon(context, getTargetPackage(container)), null, System.currentTimeMillis());
                    String[] ret = determineTitleAndDespByDIP(context, metaInfo);
                    try {
                        notification2.getClass().getMethod("setLatestEventInfo", new Class[]{Context.class, CharSequence.class, CharSequence.class, PendingIntent.class}).invoke(notification2, new Object[]{context, ret[0], ret[1], intent});
                    } catch (Throwable e) {
                        if (metaInfo != null) {
                            PushClientReportManager.getInstance(context.getApplicationContext()).reportEvent4ERROR(container.getPackageName(), getInterfaceId(container), metaInfo.getId(), e);
                        }
                        MyLog.e(e);
                    } catch (Throwable e2) {
                        if (metaInfo != null) {
                            PushClientReportManager.getInstance(context.getApplicationContext()).reportEvent4ERROR(container.getPackageName(), getInterfaceId(container), metaInfo.getId(), e2);
                        }
                        MyLog.e(e2);
                    } catch (Throwable e22) {
                        if (metaInfo != null) {
                            PushClientReportManager.getInstance(context.getApplicationContext()).reportEvent4ERROR(container.getPackageName(), getInterfaceId(container), metaInfo.getId(), e22);
                        }
                        MyLog.e(e22);
                    } catch (Throwable e222) {
                        if (metaInfo != null) {
                            PushClientReportManager.getInstance(context.getApplicationContext()).reportEvent4ERROR(container.getPackageName(), getInterfaceId(container), metaInfo.getId(), e222);
                        }
                        MyLog.e(e222);
                    }
                    Map<String, String> extra = metaInfo.getExtra();
                    if (extra != null) {
                        if (extra.containsKey("ticker")) {
                            notification2.tickerText = (CharSequence) extra.get("ticker");
                        }
                    }
                    long currentTime = System.currentTimeMillis();
                    if (currentTime - lastNotify > 10000) {
                        lastNotify = currentTime;
                        int notifyType = metaInfo.notifyType;
                        if (hasLocalNotifyType(context, getTargetPackage(container))) {
                            notifyType = getLocalNotifyType(context, getTargetPackage(container));
                        }
                        notification2.defaults = notifyType;
                        if (!(extra == null || (notifyType & 1) == 0)) {
                            String soundUri = (String) extra.get("sound_uri");
                            if (!TextUtils.isEmpty(soundUri)) {
                                if (soundUri.startsWith("android.resource://" + getTargetPackage(container))) {
                                    notification2.defaults = notifyType ^ 1;
                                    notification2.sound = Uri.parse(soundUri);
                                }
                            }
                        }
                    }
                    notification2.flags |= 16;
                    if (rv != null) {
                        notification2.contentView = rv;
                    }
                }
                if (MIUIUtils.isMIUI() && VERSION.SDK_INT >= 19) {
                    String scoreInfo;
                    if (!TextUtils.isEmpty(metaInfo.getId())) {
                        notification.extras.putString("message_id", metaInfo.getId());
                    }
                    if (metaInfo.getInternal() == null) {
                        scoreInfo = null;
                    } else {
                        scoreInfo = (String) metaInfo.getInternal().get("score_info");
                    }
                    if (!TextUtils.isEmpty(scoreInfo)) {
                        notification.extras.putString("score_info", scoreInfo);
                    }
                    int eventMessageType = -1;
                    if (isNormalNotificationMessage(container)) {
                        eventMessageType = 1000;
                    } else if (isBusinessMessage(container)) {
                        eventMessageType = 3000;
                    }
                    notification.extras.putString("eventMessageType", String.valueOf(eventMessageType));
                }
                String messageCountStr = metaInfo.getExtra() == null ? null : (String) metaInfo.getExtra().get("message_count");
                if (MIUIUtils.isMIUI() && messageCountStr != null) {
                    try {
                        setMessageCount(notification, Integer.parseInt(messageCountStr));
                    } catch (Throwable e2222) {
                        if (metaInfo != null) {
                            PushClientReportManager.getInstance(context.getApplicationContext()).reportEvent4ERROR(container.getPackageName(), getInterfaceId(container), metaInfo.getId(), e2222);
                        }
                        MyLog.e(e2222);
                    }
                }
                if (!MIUIUtils.isXMS() && "com.xiaomi.xmsf".equals(context.getPackageName())) {
                    setTargetPackage(notification, getTargetPackage(container));
                }
                if ("com.xiaomi.xmsf".equals(getTargetPackage(container))) {
                    TypedShieldHelper.processTypedShieldExtra(context, container, notification);
                }
                int realID = ((getTargetPackage(container).hashCode() / 10) * 10) + metaInfo.getNotifyId();
                nm.notify(realID, notification);
                if (isBusinessMessage(container)) {
                    PushClientReportManager.getInstance(context.getApplicationContext()).reportEvent(container.getPackageName(), getInterfaceId(container), metaInfo.getId(), 3002, "try show business message");
                }
                if (isNormalNotificationMessage(container)) {
                    PushClientReportManager.getInstance(context.getApplicationContext()).reportEvent(container.getPackageName(), getInterfaceId(container), metaInfo.getId(), 1002, "try show notification message");
                }
                if (VERSION.SDK_INT < 26) {
                    int notificationId = realID;
                    ScheduledJobManager jobManager = ScheduledJobManager.getInstance(context);
                    jobManager.cancelJob(notificationId);
                    int timeout = getTimeout(metaInfo.getExtra());
                    if (timeout > 0) {
                        final int i = notificationId;
                        final NotificationManager notificationManager = nm;
                        jobManager.addOneShootJob(new Job() {
                            public int getJobId() {
                                return i;
                            }

                            public void run() {
                                notificationManager.cancel(i);
                            }
                        }, timeout);
                    }
                }
                Pair<Integer, XmPushActionContainer> pair = new Pair(Integer.valueOf(realID), container);
                synchronized (notifyContainerCache) {
                    notifyContainerCache.add(pair);
                    if (notifyContainerCache.size() > 100) {
                        notifyContainerCache.remove();
                    }
                }
            }
        }
        return info;
    }

    private static void setMessageCount(Notification notification, int messageCount) {
        Object miuiNotification = JavaCalls.getField(notification, "extraNotification");
        if (miuiNotification != null) {
            JavaCalls.callMethod(miuiNotification, "setMessageCount", Integer.valueOf(messageCount));
        }
    }

    private static PendingIntent getClickedPendingIntent(Context context, XmPushActionContainer container, PushMetaInfo metaInfo, byte[] decryptedContent) {
        Intent intent;
        int eventMessageType = -1;
        if (isNormalNotificationMessage(container)) {
            eventMessageType = 1000;
        } else if (isBusinessMessage(container)) {
            eventMessageType = 3000;
        }
        String msgId = "";
        if (metaInfo != null) {
            msgId = metaInfo.getId();
        }
        if (metaInfo != null && !TextUtils.isEmpty(metaInfo.url)) {
            intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(metaInfo.url));
            intent.addFlags(268435456);
        } else if (isBusinessMessage(container)) {
            intent = new Intent();
            intent.setComponent(new ComponentName("com.xiaomi.xmsf", "com.xiaomi.mipush.sdk.PushMessageHandler"));
            intent.putExtra("mipush_payload", decryptedContent);
            intent.putExtra("mipush_notified", true);
            intent.addCategory(String.valueOf(metaInfo.getNotifyId()));
        } else {
            intent = new Intent("com.xiaomi.mipush.RECEIVE_MESSAGE");
            intent.setComponent(new ComponentName(container.packageName, "com.xiaomi.mipush.sdk.PushMessageHandler"));
            intent.putExtra("mipush_payload", decryptedContent);
            intent.putExtra("mipush_notified", true);
            intent.addCategory(String.valueOf(metaInfo.getNotifyId()));
        }
        intent.putExtra("messageId", msgId);
        intent.putExtra("eventMessageType", eventMessageType);
        return PendingIntent.getService(context, 0, intent, Box.MAX_BOX_SIZE);
    }

    private static String[] determineTitleAndDespByDIP(Context context, PushMetaInfo metaInfo) {
        String title = metaInfo.getTitle();
        String desp = metaInfo.getDescription();
        Map<String, String> extra = metaInfo.getExtra();
        if (extra != null) {
            int widthPixels = context.getResources().getDisplayMetrics().widthPixels;
            int width = Float.valueOf((((float) widthPixels) / context.getResources().getDisplayMetrics().density) + 0.5f).intValue();
            String tmp;
            if (width <= 320) {
                tmp = (String) extra.get("title_short");
                if (!TextUtils.isEmpty(tmp)) {
                    title = tmp;
                }
                tmp = (String) extra.get("description_short");
                if (!TextUtils.isEmpty(tmp)) {
                    desp = tmp;
                }
            } else if (width > 360) {
                tmp = (String) extra.get("title_long");
                if (!TextUtils.isEmpty(tmp)) {
                    title = tmp;
                }
                tmp = (String) extra.get("description_long");
                if (!TextUtils.isEmpty(tmp)) {
                    desp = tmp;
                }
            }
        }
        return new String[]{title, desp};
    }

    @SuppressLint({"NewApi"})
    private static GetNotificationResult getNotificationForLargeIcons(Context context, XmPushActionContainer container, byte[] decryptedContent, RemoteViews remoteView, PendingIntent intent) {
        Bitmap largeIcon;
        GetNotificationResult getNotificationResult = new GetNotificationResult();
        PushMetaInfo metaInfo = container.getMetaInfo();
        String targetPackage = getTargetPackage(container);
        Map<String, String> metaExtra = metaInfo.getExtra();
        Builder builder = new Builder(context);
        String[] ret = determineTitleAndDespByDIP(context, metaInfo);
        builder.setContentTitle(ret[0]);
        builder.setContentText(ret[1]);
        if (remoteView != null) {
            builder.setContent(remoteView);
        } else if (VERSION.SDK_INT >= 16 && metaExtra != null && metaExtra.containsKey("notification_style_type")) {
            builder = setNotificationStyle(context, metaExtra, builder, ret[1]);
        }
        builder = setNotificationStyleAction(builder, context, container.getPackageName(), metaExtra);
        builder.setWhen(System.currentTimeMillis());
        String showWhenStr = metaExtra == null ? null : (String) metaExtra.get("notification_show_when");
        if (!TextUtils.isEmpty(showWhenStr)) {
            builder.setShowWhen(Boolean.parseBoolean(showWhenStr));
        } else if (VERSION.SDK_INT >= 24) {
            builder.setShowWhen(true);
        }
        builder.setContentIntent(intent);
        int largeIconIntIndex = getIconId(context, targetPackage, "mipush_notification");
        int smallIconIntIndex = getIconId(context, targetPackage, "mipush_small_notification");
        if (largeIconIntIndex <= 0 || smallIconIntIndex <= 0) {
            builder.setSmallIcon(getIdForSmallIcon(context, targetPackage));
        } else {
            builder.setLargeIcon(getBitmapFromId(context, largeIconIntIndex));
            builder.setSmallIcon(smallIconIntIndex);
        }
        if (MIUIUtils.isMIUI() && VERSION.SDK_INT >= 23) {
            if ((metaExtra == null ? null : getOnlinePictureResource(context, (String) metaExtra.get("notification_small_icon_uri"), true)) != null) {
                if (JavaCalls.callStaticMethod("android.graphics.drawable.Icon", "createWithBitmap", metaExtra == null ? null : getOnlinePictureResource(context, (String) metaExtra.get("notification_small_icon_uri"), true)) != null) {
                    JavaCalls.callMethod(builder, "setSmallIcon", JavaCalls.callStaticMethod("android.graphics.drawable.Icon", "createWithBitmap", metaExtra == null ? null : getOnlinePictureResource(context, (String) metaExtra.get("notification_small_icon_uri"), true)));
                    Bundle extras = new Bundle();
                    extras.putBoolean("miui.isGrayscaleIcon", true);
                    builder.addExtras(extras);
                } else {
                    MyLog.w("failed te get small icon with url:" + ((String) metaExtra.get("notification_small_icon_uri")));
                }
            } else {
                MyLog.w("failed to get small icon url:" + (metaExtra == null ? null : (String) metaExtra.get("notification_small_icon_uri")));
            }
            if (!TextUtils.isEmpty(metaExtra == null ? null : (String) metaExtra.get("notification_small_icon_color"))) {
                try {
                    JavaCalls.callMethod(builder, "setColor", Integer.valueOf(Color.parseColor(metaExtra == null ? null : (String) metaExtra.get("notification_small_icon_color"))));
                } catch (Throwable e) {
                    MyLog.e(e);
                }
            }
        }
        String iconUri = metaExtra == null ? null : (String) metaExtra.get("__dynamic_icon_uri");
        boolean allowDynamicIconOnMiui = metaExtra != null && Boolean.parseBoolean((String) metaExtra.get("__adiom"));
        boolean allowDynamicIcon = allowDynamicIconOnMiui || !MIUIUtils.isMIUI();
        boolean customLargeIcon = false;
        if (iconUri != null && allowDynamicIcon) {
            Bitmap bitmap = null;
            if (iconUri.startsWith("http")) {
                GetIconResult result = NotificationIconHelper.getIconFromUrl(context, iconUri, true);
                if (result != null) {
                    bitmap = result.bitmap;
                    getNotificationResult.trafficSize = result.downloadSize;
                }
            } else {
                bitmap = NotificationIconHelper.getIconFromUri(context, iconUri);
            }
            if (bitmap != null) {
                builder.setLargeIcon(bitmap);
                customLargeIcon = true;
            }
        }
        if (metaExtra == null) {
            largeIcon = null;
        } else {
            largeIcon = getOnlinePictureResource(context, (String) metaExtra.get("notification_large_icon_uri"), true);
        }
        if (largeIcon != null) {
            builder.setLargeIcon(largeIcon);
        }
        if (metaExtra != null && VERSION.SDK_INT >= 24) {
            String group = (String) metaExtra.get("notification_group");
            boolean isSummary = Boolean.parseBoolean((String) metaExtra.get("notification_is_summary"));
            if (TextUtils.isEmpty(group)) {
                group = getTargetPackage(container);
                if (MIUIUtils.isXMS()) {
                    group = group + metaInfo.getNotifyId();
                }
            }
            JavaCalls.callMethod(builder, "setGroup", group);
            JavaCalls.callMethod(builder, "setGroupSummary", Boolean.valueOf(isSummary));
        }
        builder.setAutoCancel(true);
        long currentTime = System.currentTimeMillis();
        if (metaExtra != null && metaExtra.containsKey("ticker")) {
            builder.setTicker((CharSequence) metaExtra.get("ticker"));
        }
        int notifyType = -100;
        String soundUri = null;
        boolean canSetSound = false;
        if (currentTime - lastNotify > 10000) {
            lastNotify = currentTime;
            notifyType = metaInfo.notifyType;
            if (hasLocalNotifyType(context, targetPackage)) {
                notifyType = getLocalNotifyType(context, targetPackage);
            }
            builder.setDefaults(notifyType);
            if (!(metaExtra == null || (notifyType & 1) == 0)) {
                soundUri = (String) metaExtra.get("sound_uri");
                if (!TextUtils.isEmpty(soundUri) && soundUri.startsWith("android.resource://" + targetPackage)) {
                    canSetSound = true;
                    builder.setDefaults(notifyType ^ 1);
                    builder.setSound(Uri.parse(soundUri));
                }
            }
        }
        if (metaExtra != null && VERSION.SDK_INT >= 26) {
            if (getTimeout(metaExtra) > 0) {
                JavaCalls.callMethod(builder, "setTimeoutAfter", Long.valueOf((long) (getTimeout(metaExtra) * 1000)));
            }
            String channelId = (String) metaExtra.get("channel_id");
            if (!TextUtils.isEmpty(channelId) || context.getApplicationInfo().targetSdkVersion >= 26) {
                if (TextUtils.isEmpty(channelId)) {
                    channelId = "mipush_" + targetPackage + "_" + notifyType;
                } else if (MIUIUtils.isMIUI()) {
                    channelId = "mipush_" + targetPackage + "_" + channelId;
                }
                JavaCalls.callMethod(builder, "setChannelId", channelId);
                CharSequence name = getChannelName(context, targetPackage, metaExtra);
                NotificationManager nm = (NotificationManager) context.getSystemService("notification");
                try {
                    if (JavaCalls.callMethod(nm, "getNotificationChannel", channelId) == null) {
                        Object channel = Class.forName("android.app.NotificationChannel").getConstructor(new Class[]{String.class, CharSequence.class, Integer.TYPE}).newInstance(new Object[]{channelId, name, Integer.valueOf(3)});
                        if (notifyType > -100) {
                            builder.setSound(null, null);
                            builder.setDefaults(0);
                            int vibrate = notifyType & 2;
                            int lights = notifyType & 4;
                            if ((notifyType & 1) != 1) {
                                JavaCalls.callMethod(channel, "setSound", null, null);
                            }
                            if (canSetSound) {
                                JavaCalls.callMethod(channel, "setSound", soundUri, Notification.AUDIO_ATTRIBUTES_DEFAULT);
                            }
                            String str = "enableVibration";
                            Boolean[] boolArr = new Object[1];
                            boolArr[0] = Boolean.valueOf(vibrate == 2);
                            JavaCalls.callMethod(channel, str, boolArr);
                            str = "enableLights";
                            boolArr = new Object[1];
                            boolArr[0] = Boolean.valueOf(lights == 4);
                            JavaCalls.callMethod(channel, str, boolArr);
                        }
                        setChannelDescription(channel, metaExtra);
                        JavaCalls.callMethod(nm, "createNotificationChannel", channel);
                    }
                } catch (Throwable e2) {
                    MyLog.e(e2);
                }
            }
            String color = (String) metaExtra.get("background_color");
            if (!TextUtils.isEmpty(color)) {
                try {
                    int argb = Integer.parseInt(color);
                    builder.setOngoing(true);
                    builder.setColor(argb);
                    JavaCalls.callMethod(builder, "setColorized", Boolean.valueOf(true));
                } catch (Throwable e22) {
                    MyLog.e(e22);
                }
            }
        }
        if (MIUIUtils.isXMS() && "com.xiaomi.xmsf".equals(context.getPackageName())) {
            JavaCalls.callStaticMethod("miui.util.NotificationHelper", "setTargetPkg", context, builder, getTargetPackage(container));
        }
        Notification notification = builder.getNotification();
        if (customLargeIcon && MIUIUtils.isMIUI()) {
            enableCustomIconForMiui(notification);
        }
        if (metaExtra != null) {
            Object extraNotification = JavaCalls.getField(notification, "extraNotification");
            if (extraNotification != null) {
                if (!TextUtils.isEmpty((CharSequence) metaExtra.get("enable_keyguard"))) {
                    JavaCalls.callMethod(extraNotification, "setEnableKeyguard", Boolean.valueOf(Boolean.parseBoolean((String) metaExtra.get("enable_keyguard"))));
                }
                if (!TextUtils.isEmpty((CharSequence) metaExtra.get("enable_float"))) {
                    JavaCalls.callMethod(extraNotification, "setEnableFloat", Boolean.valueOf(Boolean.parseBoolean((String) metaExtra.get("enable_float"))));
                }
            }
        }
        getNotificationResult.notification = notification;
        return getNotificationResult;
    }

    private static Builder setNotificationStyleAction(Builder builder, Context context, String pkgName, Map<String, String> metaExtra) {
        PendingIntent stylePendingIntent = getStylePendingIntent(context, pkgName, 1, metaExtra);
        if (!(stylePendingIntent == null || TextUtils.isEmpty((CharSequence) metaExtra.get("notification_style_button_left_name")))) {
            builder.addAction(0, (CharSequence) metaExtra.get("notification_style_button_left_name"), stylePendingIntent);
        }
        stylePendingIntent = getStylePendingIntent(context, pkgName, 2, metaExtra);
        if (!(stylePendingIntent == null || TextUtils.isEmpty((CharSequence) metaExtra.get("notification_style_button_mid_name")))) {
            builder.addAction(0, (CharSequence) metaExtra.get("notification_style_button_mid_name"), stylePendingIntent);
        }
        stylePendingIntent = getStylePendingIntent(context, pkgName, 3, metaExtra);
        if (!(stylePendingIntent == null || TextUtils.isEmpty((CharSequence) metaExtra.get("notification_style_button_right_name")))) {
            builder.addAction(0, (CharSequence) metaExtra.get("notification_style_button_right_name"), stylePendingIntent);
        }
        return builder;
    }

    private static PendingIntent getStylePendingIntent(Context context, String pkgName, int place, Map<String, String> metaExtra) {
        if (metaExtra == null) {
            return null;
        }
        Intent intent = getPendingIntentFromExtra(context, pkgName, place, metaExtra);
        if (intent != null) {
            return PendingIntent.getActivity(context, 0, intent, 0);
        }
        return null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:15:0x0037  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static Intent getPendingIntentFromExtra(Context context, String pkgName, int place, Map<String, String> extra) {
        MalformedURLException e;
        Object obj = place < 2 ? "notification_style_button_left_notify_effect" : place < 3 ? "notification_style_button_mid_notify_effect" : "notification_style_button_right_notify_effect";
        String typeId = (String) extra.get(obj);
        if (TextUtils.isEmpty(typeId)) {
            return null;
        }
        Intent intent = null;
        if (PushConstants.NOTIFICATION_CLICK_DEFAULT.equals(typeId)) {
            try {
                intent = context.getPackageManager().getLaunchIntentForPackage(pkgName);
            } catch (Exception e2) {
                MyLog.e("Cause: " + e2.getMessage());
            }
        } else if (PushConstants.NOTIFICATION_CLICK_INTENT.equals(typeId)) {
            String intentUriKey = place < 2 ? "notification_style_button_left_intent_uri" : place < 3 ? "notification_style_button_mid_intent_uri" : "notification_style_button_right_intent_uri";
            String intentClassKey = place < 2 ? "notification_style_button_left_intent_class" : place < 3 ? "notification_style_button_mid_intent_class" : "notification_style_button_right_intent_class";
            if (extra.containsKey(intentUriKey)) {
                String intentStr = (String) extra.get(intentUriKey);
                if (intentStr != null) {
                    try {
                        intent = Intent.parseUri(intentStr, 1);
                        intent.setPackage(pkgName);
                    } catch (URISyntaxException e3) {
                        MyLog.e("Cause: " + e3.getMessage());
                    }
                }
            } else if (extra.containsKey(intentClassKey)) {
                String className = (String) extra.get(intentClassKey);
                intent = new Intent();
                intent.setComponent(new ComponentName(pkgName, className));
            }
        } else if (PushConstants.NOTIFICATION_CLICK_WEB_PAGE.equals(typeId)) {
            String webUriKey = place < 2 ? "notification_style_button_left_web_uri" : place < 3 ? "notification_style_button_mid_web_uri" : "notification_style_button_right_web_uri";
            String uri = (String) extra.get(webUriKey);
            if (!TextUtils.isEmpty(uri)) {
                String tmp = uri.trim();
                if (!(tmp.startsWith("http://") || tmp.startsWith("https://"))) {
                    tmp = "http://" + tmp;
                }
                try {
                    String protocol = new URL(tmp).getProtocol();
                    if ("http".equals(protocol) || "https".equals(protocol)) {
                        Intent intent2 = new Intent("android.intent.action.VIEW");
                        try {
                            intent2.setData(Uri.parse(tmp));
                            intent = setXiaomiBrowserDefault(context, intent2);
                        } catch (MalformedURLException e4) {
                            e = e4;
                            intent = intent2;
                        }
                    }
                } catch (MalformedURLException e5) {
                    e = e5;
                    MyLog.e("Cause: " + e.getMessage());
                    if (intent != null) {
                    }
                    return null;
                }
            }
        }
        if (intent != null) {
            intent.addFlags(268435456);
            try {
                if (context.getPackageManager().resolveActivity(intent, 65536) != null) {
                    return intent;
                }
            } catch (Exception e22) {
                MyLog.e("Cause: " + e22.getMessage());
            }
        }
        return null;
    }

    private static Intent setXiaomiBrowserDefault(Context context, Intent intent) {
        try {
            if (context.getPackageManager().getPackageInfo("com.android.browser", 4) != null) {
                intent.setClassName("com.android.browser", "com.android.browser.BrowserActivity");
            }
        } catch (Throwable e) {
            MyLog.e(e);
        }
        return intent;
    }

    private static Builder setNotificationStyle(Context context, Map<String, String> metaExtra, Builder builder, String content) {
        if ("2".equals(metaExtra.get("notification_style_type"))) {
            Bitmap picture;
            BigPictureStyle bigPictureStyle = new BigPictureStyle(builder);
            if (metaExtra == null) {
                picture = null;
            } else {
                picture = getOnlinePictureResource(context, (String) metaExtra.get("notification_bigPic_uri"), false);
            }
            if (picture != null) {
                bigPictureStyle.bigPicture(picture);
                bigPictureStyle.bigLargeIcon(null);
                builder.setStyle(bigPictureStyle);
            }
        } else if ("1".equals(metaExtra.get("notification_style_type"))) {
            builder.setStyle(new BigTextStyle().bigText(content));
        }
        return builder;
    }

    private static int getTimeout(Map<String, String> metaExtra) {
        String notification_timeout = metaExtra == null ? null : (String) metaExtra.get("timeout");
        if (TextUtils.isEmpty(notification_timeout)) {
            return 0;
        }
        try {
            return Integer.parseInt(notification_timeout);
        } catch (Exception e) {
            return 0;
        }
    }

    private static RemoteViews getNotificationForCustomLayout(Context context, XmPushActionContainer container, byte[] decryptedContent) {
        PushMetaInfo metaInfo = container.getMetaInfo();
        String pkg = getTargetPackage(container);
        Map<String, String> extra = metaInfo.getExtra();
        if (extra == null) {
            return null;
        }
        String layoutName = (String) extra.get("layout_name");
        String layoutValue = (String) extra.get("layout_value");
        if (TextUtils.isEmpty(layoutName) || TextUtils.isEmpty(layoutValue)) {
            return null;
        }
        try {
            Resources apkResources = context.getPackageManager().getResourcesForApplication(pkg);
            int resLayout = apkResources.getIdentifier(layoutName, "layout", pkg);
            if (resLayout == 0) {
                return null;
            }
            RemoteViews remoteViews = new RemoteViews(pkg, resLayout);
            try {
                String str;
                String v;
                int resLet;
                JSONObject json = new JSONObject(layoutValue);
                if (json.has("text")) {
                    JSONObject jsonText = json.getJSONObject("text");
                    Iterator iterText = jsonText.keys();
                    while (iterText.hasNext()) {
                        str = (String) iterText.next();
                        v = jsonText.getString(str);
                        resLet = apkResources.getIdentifier(str, "id", pkg);
                        if (resLet > 0) {
                            remoteViews.setTextViewText(resLet, v);
                        }
                    }
                }
                if (json.has("image")) {
                    JSONObject jsonImage = json.getJSONObject("image");
                    Iterator iterImage = jsonImage.keys();
                    while (iterImage.hasNext()) {
                        str = (String) iterImage.next();
                        v = jsonImage.getString(str);
                        resLet = apkResources.getIdentifier(str, "id", pkg);
                        int resImg = apkResources.getIdentifier(v, "drawable", pkg);
                        if (resLet > 0) {
                            remoteViews.setImageViewResource(resLet, resImg);
                        }
                    }
                }
                if (!json.has("time")) {
                    return remoteViews;
                }
                JSONObject jsonTime = json.getJSONObject("time");
                Iterator iterTime = jsonTime.keys();
                while (iterTime.hasNext()) {
                    str = (String) iterTime.next();
                    v = jsonTime.getString(str);
                    if (v.length() == 0) {
                        v = "yy-MM-dd hh:mm";
                    }
                    resLet = apkResources.getIdentifier(str, "id", pkg);
                    if (resLet > 0) {
                        remoteViews.setTextViewText(resLet, new SimpleDateFormat(v).format(new Date(System.currentTimeMillis())));
                    }
                }
                return remoteViews;
            } catch (Throwable e) {
                MyLog.e(e);
                return null;
            }
        } catch (Throwable e2) {
            MyLog.e(e2);
            return null;
        }
    }

    private static Bitmap getBitmapFromId(Context context, int iconId) {
        return drawableToBitmap(context.getResources().getDrawable(iconId));
    }

    private static int getIdForSmallIcon(Context context, String targetPackage) {
        int icon;
        int largeIcon = getIconId(context, targetPackage, "mipush_notification");
        int smallIcon = getIconId(context, targetPackage, "mipush_small_notification");
        if (largeIcon > 0) {
            icon = largeIcon;
        } else if (smallIcon > 0) {
            icon = smallIcon;
        } else {
            icon = context.getApplicationInfo().icon;
        }
        if (icon != 0 || VERSION.SDK_INT < 9) {
            return icon;
        }
        return context.getApplicationInfo().logo;
    }

    private static int getIconId(Context context, String targetPackage, String iconName) {
        if (targetPackage.equals(context.getPackageName())) {
            return context.getResources().getIdentifier(iconName, "drawable", targetPackage);
        }
        return 0;
    }

    public static Bitmap drawableToBitmap(Drawable drawable) {
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        int width = drawable.getIntrinsicWidth();
        if (width <= 0) {
            width = 1;
        }
        int height = drawable.getIntrinsicHeight();
        if (height <= 0) {
            height = 1;
        }
        Bitmap bitmap = Bitmap.createBitmap(width, height, Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        return bitmap;
    }

    private static Notification enableCustomIconForMiui(Notification notification) {
        Object obj = JavaCalls.getField(notification, "extraNotification");
        if (obj != null) {
            JavaCalls.callMethod(obj, "setCustomizedIcon", Boolean.valueOf(true));
        }
        return notification;
    }

    private static Notification setTargetPackage(Notification notification, String packageName) {
        try {
            Field field = Notification.class.getDeclaredField("extraNotification");
            field.setAccessible(true);
            Object object = field.get(notification);
            Method setMethod = object.getClass().getDeclaredMethod("setTargetPkg", new Class[]{CharSequence.class});
            setMethod.setAccessible(true);
            setMethod.invoke(object, new Object[]{packageName});
        } catch (Throwable e) {
            MyLog.e(e);
        }
        return notification;
    }

    static String getTargetPackage(XmPushActionContainer container) {
        if ("com.xiaomi.xmsf".equals(container.packageName)) {
            PushMetaInfo metaInfo = container.getMetaInfo();
            if (!(metaInfo == null || metaInfo.getExtra() == null)) {
                String packageName = (String) metaInfo.getExtra().get("miui_package_name");
                if (!TextUtils.isEmpty(packageName)) {
                    return packageName;
                }
            }
        }
        return container.packageName;
    }

    public static void clearNotification(Context context, String packageName) {
        clearNotification(context, packageName, -1);
    }

    public static void clearNotification(Context context, String packageName, int notifyId) {
        NotificationManager nm = (NotificationManager) context.getSystemService("notification");
        int notificationId = ((packageName.hashCode() / 10) * 10) + notifyId;
        LinkedList<Pair<Integer, XmPushActionContainer>> removeCache = new LinkedList();
        if (notifyId >= 0) {
            nm.cancel(notificationId);
        }
        synchronized (notifyContainerCache) {
            Iterator it = notifyContainerCache.iterator();
            while (it.hasNext()) {
                Pair<Integer, XmPushActionContainer> cacheItem = (Pair) it.next();
                XmPushActionContainer container = cacheItem.second;
                if (container != null) {
                    String targetPkgName = getTargetPackage(container);
                    if (notifyId >= 0) {
                        if (notificationId == ((Integer) cacheItem.first).intValue() && TextUtils.equals(targetPkgName, packageName)) {
                            removeCache.add(cacheItem);
                        }
                    } else if (notifyId != -1) {
                        continue;
                    } else if (TextUtils.equals(targetPkgName, packageName)) {
                        nm.cancel(((Integer) cacheItem.first).intValue());
                        removeCache.add(cacheItem);
                    }
                }
            }
            if (notifyContainerCache != null) {
                notifyContainerCache.removeAll(removeCache);
                uploadClearMessageData(context, removeCache);
            }
        }
    }

    public static void clearNotification(Context context, String packageName, String title, String description) {
        if (!TextUtils.isEmpty(title) || !TextUtils.isEmpty(description)) {
            NotificationManager nm = (NotificationManager) context.getSystemService("notification");
            LinkedList<Pair<Integer, XmPushActionContainer>> removeCache = new LinkedList();
            synchronized (notifyContainerCache) {
                Iterator it = notifyContainerCache.iterator();
                while (it.hasNext()) {
                    Pair<Integer, XmPushActionContainer> cacheItem = (Pair) it.next();
                    XmPushActionContainer container = cacheItem.second;
                    if (container != null) {
                        String targetPkgName = getTargetPackage(container);
                        PushMetaInfo pushMetaInfo = container.getMetaInfo();
                        if (pushMetaInfo != null && TextUtils.equals(targetPkgName, packageName)) {
                            String pushTitle = pushMetaInfo.getTitle();
                            String pushDescription = pushMetaInfo.getDescription();
                            if (!TextUtils.isEmpty(pushTitle) && !TextUtils.isEmpty(pushDescription) && checkMatch(title, pushTitle) && checkMatch(description, pushDescription)) {
                                nm.cancel(((Integer) cacheItem.first).intValue());
                                removeCache.add(cacheItem);
                            }
                        }
                    }
                }
                if (notifyContainerCache != null) {
                    notifyContainerCache.removeAll(removeCache);
                    uploadClearMessageData(context, removeCache);
                }
            }
        }
    }

    private static boolean checkMatch(String str1, String str2) {
        return TextUtils.isEmpty(str1) || str2.contains(str1);
    }

    public static void uploadClearMessageData(Context context, LinkedList<? extends Object> removeCache) {
        if (removeCache != null && removeCache.size() > 0) {
            TinyDataHelper.cacheTinyData(context, "category_clear_notification", "clear_notification", (long) removeCache.size(), "");
        }
    }

    static int getLocalNotifyType(Context context, String packageName) {
        return context.getSharedPreferences("pref_notify_type", 0).getInt(packageName, Integer.MAX_VALUE);
    }

    static void clearLocalNotifyType(Context context, String packageName) {
        context.getSharedPreferences("pref_notify_type", 0).edit().remove(packageName).commit();
    }

    static boolean hasLocalNotifyType(Context context, String packageName) {
        return context.getSharedPreferences("pref_notify_type", 0).contains(packageName);
    }

    static void setLocalNotifyType(Context context, String packageName, int notifyType) {
        context.getSharedPreferences("pref_notify_type", 0).edit().putInt(packageName, notifyType).commit();
    }

    public static boolean isNotifyForeground(Map<String, String> extra) {
        if (extra == null || !extra.containsKey("notify_foreground")) {
            return true;
        }
        return "1".equals((String) extra.get("notify_foreground"));
    }

    private static boolean isIdVaild(PushMetaInfo metaInfo) {
        if (metaInfo == null) {
            return false;
        }
        String msgId = metaInfo.getId();
        if (TextUtils.isEmpty(msgId) || msgId.length() != 22 || "satuigm".indexOf(msgId.charAt(0)) < 0) {
            return false;
        }
        return true;
    }

    public static boolean isBusinessMessage(XmPushActionContainer container) {
        PushMetaInfo metaInfo = container.getMetaInfo();
        return isIdVaild(metaInfo) && metaInfo.isIgnoreRegInfo();
    }

    public static boolean isPassThoughMessage(XmPushActionContainer container) {
        PushMetaInfo metaInfo = container.getMetaInfo();
        if (isIdVaild(metaInfo) && metaInfo.passThrough == 1 && !isBusinessMessage(container)) {
            return true;
        }
        return false;
    }

    public static boolean isNormalNotificationMessage(XmPushActionContainer container) {
        PushMetaInfo metaInfo = container.getMetaInfo();
        return isIdVaild(metaInfo) && metaInfo.passThrough == 0 && !isBusinessMessage(container);
    }

    public static boolean isNPBMessage(XmPushActionContainer container) {
        return isBusinessMessage(container) || isNormalNotificationMessage(container) || isPassThoughMessage(container);
    }

    public static String getInterfaceId(XmPushActionContainer container) {
        if (isBusinessMessage(container)) {
            return "E100002";
        }
        if (isNormalNotificationMessage(container)) {
            return "E100000";
        }
        if (isPassThoughMessage(container)) {
            return "E100001";
        }
        return "";
    }

    /* JADX WARNING: Missing block: B:3:0x0019, code:
            if (r4 == null) goto L_0x001b;
     */
    /* JADX WARNING: Missing block: B:4:0x001b, code:
            r3.cancel(true);
     */
    /* JADX WARNING: Missing block: B:5:0x001e, code:
            return r4;
     */
    /* JADX WARNING: Missing block: B:9:0x0023, code:
            if (r4 != null) goto L_0x001e;
     */
    /* JADX WARNING: Missing block: B:12:0x002a, code:
            if (r4 != null) goto L_0x001e;
     */
    /* JADX WARNING: Missing block: B:15:0x0031, code:
            if (r4 != null) goto L_0x001e;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static Bitmap getOnlinePictureResource(Context context, String picUrl, boolean isSizeLimited) {
        Bitmap futureResult = null;
        Future<Bitmap> future = sThreadPool.submit(new DownloadOnlinePicTask(picUrl, context, isSizeLimited));
        try {
            futureResult = (Bitmap) future.get(180, TimeUnit.SECONDS);
        } catch (Throwable e) {
            MyLog.e(e);
        } catch (Throwable e2) {
            MyLog.e(e2);
        } catch (Throwable e22) {
            MyLog.e(e22);
        } catch (Throwable th) {
            if (futureResult == null) {
                future.cancel(true);
            }
        }
    }

    private static String getChannelName(Context context, String targetPackage, Map<String, String> extras) {
        if (extras == null || TextUtils.isEmpty((CharSequence) extras.get("channel_name"))) {
            return AppInfoUtils.getAppLabel(context, targetPackage);
        }
        return (String) extras.get("channel_name");
    }

    private static void setChannelDescription(Object channel, Map<String, String> extras) {
        if (extras != null && !TextUtils.isEmpty((CharSequence) extras.get("channel_description"))) {
            JavaCalls.callMethod(channel, "setDescription", extras.get("channel_description"));
        }
    }
}
