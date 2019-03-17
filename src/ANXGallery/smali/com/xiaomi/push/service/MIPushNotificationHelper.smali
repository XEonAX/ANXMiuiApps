.class public Lcom/xiaomi/push/service/MIPushNotificationHelper;
.super Ljava/lang/Object;
.source "MIPushNotificationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/service/MIPushNotificationHelper$DownloadOnlinePicTask;,
        Lcom/xiaomi/push/service/MIPushNotificationHelper$GetNotificationResult;,
        Lcom/xiaomi/push/service/MIPushNotificationHelper$NotifyPushMessageInfo;
    }
.end annotation


# static fields
.field public static lastNotify:J

.field private static final notifyContainerCache:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sThreadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 148
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/xiaomi/push/service/MIPushNotificationHelper;->lastNotify:J

    .line 150
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/xiaomi/push/service/MIPushNotificationHelper;->notifyContainerCache:Ljava/util/LinkedList;

    .line 164
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/push/service/MIPushNotificationHelper;->sThreadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private static checkMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .prologue
    .line 1151
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static clearLocalNotifyType(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1193
    const-string v1, "pref_notify_type"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1195
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1196
    return-void
.end method

.method public static clearNotification(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1061
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->clearNotification(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1062
    return-void
.end method

.method public static clearNotification(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "notifyId"    # I

    .prologue
    .line 1072
    const-string v6, "notification"

    .line 1073
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 1074
    .local v2, "nm":Landroid/app/NotificationManager;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    div-int/lit8 v6, v6, 0xa

    mul-int/lit8 v6, v6, 0xa

    add-int v3, v6, p2

    .line 1075
    .local v3, "notificationId":I
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 1076
    .local v4, "removeCache":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/util/Pair<Ljava/lang/Integer;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;>;>;"
    if-ltz p2, :cond_0

    .line 1077
    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1079
    :cond_0
    sget-object v7, Lcom/xiaomi/push/service/MIPushNotificationHelper;->notifyContainerCache:Ljava/util/LinkedList;

    monitor-enter v7

    .line 1080
    :try_start_0
    sget-object v6, Lcom/xiaomi/push/service/MIPushNotificationHelper;->notifyContainerCache:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1081
    .local v0, "cacheItem":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;>;"
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 1082
    .local v1, "container":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    if-eqz v1, :cond_1

    .line 1083
    invoke-static {v1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getTargetPackage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v5

    .line 1084
    .local v5, "targetPkgName":Ljava/lang/String;
    if-ltz p2, :cond_2

    .line 1085
    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v3, v6, :cond_1

    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1086
    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1100
    .end local v0    # "cacheItem":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;>;"
    .end local v1    # "container":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .end local v5    # "targetPkgName":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1088
    .restart local v0    # "cacheItem":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;>;"
    .restart local v1    # "container":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .restart local v5    # "targetPkgName":Ljava/lang/String;
    :cond_2
    const/4 v6, -0x1

    if-ne p2, v6, :cond_1

    .line 1089
    :try_start_1
    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1090
    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1091
    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1096
    .end local v0    # "cacheItem":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;>;"
    .end local v1    # "container":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .end local v5    # "targetPkgName":Ljava/lang/String;
    :cond_3
    sget-object v6, Lcom/xiaomi/push/service/MIPushNotificationHelper;->notifyContainerCache:Ljava/util/LinkedList;

    if-eqz v6, :cond_4

    .line 1097
    sget-object v6, Lcom/xiaomi/push/service/MIPushNotificationHelper;->notifyContainerCache:Ljava/util/LinkedList;

    invoke-virtual {v6, v4}, Ljava/util/LinkedList;->removeAll(Ljava/util/Collection;)Z

    .line 1098
    invoke-static {p0, v4}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->uploadClearMessageData(Landroid/content/Context;Ljava/util/LinkedList;)V

    .line 1100
    :cond_4
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1101
    return-void
.end method

.method public static clearNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    .line 1112
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1148
    :goto_0
    return-void

    .line 1115
    :cond_0
    const-string v8, "notification"

    .line 1116
    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 1117
    .local v2, "nm":Landroid/app/NotificationManager;
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 1118
    .local v6, "removeCache":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/util/Pair<Ljava/lang/Integer;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;>;>;"
    sget-object v9, Lcom/xiaomi/push/service/MIPushNotificationHelper;->notifyContainerCache:Ljava/util/LinkedList;

    monitor-enter v9

    .line 1119
    :try_start_0
    sget-object v8, Lcom/xiaomi/push/service/MIPushNotificationHelper;->notifyContainerCache:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1120
    .local v0, "cacheItem":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;>;"
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 1121
    .local v1, "container":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    if-eqz v1, :cond_1

    .line 1124
    invoke-static {v1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getTargetPackage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v7

    .line 1126
    .local v7, "targetPkgName":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getMetaInfo()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v4

    .line 1127
    .local v4, "pushMetaInfo":Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    if-eqz v4, :cond_1

    invoke-static {v7, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1130
    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 1131
    .local v5, "pushTitle":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    .line 1133
    .local v3, "pushDescription":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1135
    invoke-static {p2, v5}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->checkMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {p3, v3}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->checkMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1136
    iget-object v8, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1137
    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1146
    .end local v0    # "cacheItem":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;>;"
    .end local v1    # "container":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .end local v3    # "pushDescription":Ljava/lang/String;
    .end local v4    # "pushMetaInfo":Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    .end local v5    # "pushTitle":Ljava/lang/String;
    .end local v7    # "targetPkgName":Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 1141
    :cond_2
    :try_start_1
    sget-object v8, Lcom/xiaomi/push/service/MIPushNotificationHelper;->notifyContainerCache:Ljava/util/LinkedList;

    if-eqz v8, :cond_3

    .line 1142
    sget-object v8, Lcom/xiaomi/push/service/MIPushNotificationHelper;->notifyContainerCache:Ljava/util/LinkedList;

    invoke-virtual {v8, v6}, Ljava/util/LinkedList;->removeAll(Ljava/util/Collection;)Z

    .line 1144
    invoke-static {p0, v6}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->uploadClearMessageData(Landroid/content/Context;Ljava/util/LinkedList;)V

    .line 1146
    :cond_3
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static determineTitleAndDespByDIP(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)[Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "metaInfo"    # Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    .prologue
    .line 444
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 445
    .local v3, "title":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, "desp":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v1

    .line 448
    .local v1, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 449
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v6, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 450
    .local v6, "widthPixels":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v2, v7, Landroid/util/DisplayMetrics;->density:F

    .line 451
    .local v2, "scale":F
    int-to-float v7, v6

    div-float/2addr v7, v2

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->intValue()I

    move-result v5

    .line 453
    .local v5, "width":I
    const/16 v7, 0x140

    if-gt v5, v7, :cond_2

    .line 454
    const-string/jumbo v7, "title_short"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 455
    .local v4, "tmp":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 456
    move-object v3, v4

    .line 458
    :cond_0
    const-string v7, "description_short"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "tmp":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 459
    .restart local v4    # "tmp":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 460
    move-object v0, v4

    .line 473
    .end local v2    # "scale":F
    .end local v4    # "tmp":Ljava/lang/String;
    .end local v5    # "width":I
    .end local v6    # "widthPixels":I
    :cond_1
    :goto_0
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    return-object v7

    .line 462
    .restart local v2    # "scale":F
    .restart local v5    # "width":I
    .restart local v6    # "widthPixels":I
    :cond_2
    const/16 v7, 0x168

    if-le v5, v7, :cond_1

    .line 463
    const-string/jumbo v7, "title_long"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 464
    .restart local v4    # "tmp":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 465
    move-object v3, v4

    .line 467
    :cond_3
    const-string v7, "description_long"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "tmp":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 468
    .restart local v4    # "tmp":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 469
    move-object v0, v4

    goto :goto_0
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1005
    instance-of v5, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_0

    .line 1006
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1019
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    .local v1, "canvas":Landroid/graphics/Canvas;
    .local v2, "height":I
    .local v3, "width":I
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 1009
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "height":I
    .end local v3    # "width":I
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 1010
    .restart local v3    # "width":I
    if-lez v3, :cond_1

    .line 1011
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 1012
    .restart local v2    # "height":I
    if-lez v2, :cond_2

    .line 1014
    :goto_2
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1015
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1016
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {p0, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1017
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "height":I
    :cond_1
    move v3, v4

    .line 1010
    goto :goto_1

    .restart local v2    # "height":I
    :cond_2
    move v2, v4

    .line 1012
    goto :goto_2
.end method

.method private static enableCustomIconForMiui(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 5
    .param p0, "notification"    # Landroid/app/Notification;

    .prologue
    const/4 v4, 0x1

    .line 1023
    const-string v1, "extraNotification"

    invoke-static {p0, v1}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1024
    .local v0, "obj":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1025
    const-string/jumbo v1, "setCustomizedIcon"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    :cond_0
    return-object p0
.end method

.method private static getBitmapFromId(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iconId"    # I

    .prologue
    .line 961
    const/4 v0, 0x0

    .line 962
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 963
    invoke-static {v0}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private static getChannelName(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1353
    .local p2, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    const-string v0, "channel_name"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1354
    const-string v0, "channel_name"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1356
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils;->getAppLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getClickedPendingIntent(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;[B)Landroid/app/PendingIntent;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "container"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .param p2, "metaInfo"    # Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    .param p3, "decryptedContent"    # [B

    .prologue
    const/4 v6, 0x1

    .line 404
    const/4 v0, -0x1

    .line 405
    .local v0, "eventMessageType":I
    invoke-static {p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isNormalNotificationMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 406
    const/16 v0, 0x3e8

    .line 411
    :cond_0
    :goto_0
    const-string v2, ""

    .line 412
    .local v2, "msgId":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 413
    invoke-virtual {p2}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 415
    :cond_1
    const/4 v1, 0x0

    .line 416
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_3

    iget-object v3, p2, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 417
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 418
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v3, p2, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 419
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 436
    :goto_1
    const-string v3, "messageId"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    const-string v3, "eventMessageType"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 438
    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    return-object v3

    .line 407
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "msgId":Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isBusinessMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 408
    const/16 v0, 0xbb8

    goto :goto_0

    .line 420
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "msgId":Ljava/lang/String;
    :cond_3
    invoke-static {p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isBusinessMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 421
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 422
    .restart local v1    # "intent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.xiaomi.xmsf"

    const-string v5, "com.xiaomi.mipush.sdk.PushMessageHandler"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 424
    const-string v3, "mipush_payload"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 425
    const-string v3, "mipush_notified"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 426
    invoke-virtual {p2}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getNotifyId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 429
    :cond_4
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v3, "com.xiaomi.mipush.RECEIVE_MESSAGE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 430
    .restart local v1    # "intent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    const-string v5, "com.xiaomi.mipush.sdk.PushMessageHandler"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 432
    const-string v3, "mipush_payload"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 433
    const-string v3, "mipush_notified"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 434
    invoke-virtual {p2}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getNotifyId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private static getIconId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "iconName"    # Ljava/lang/String;

    .prologue
    .line 997
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 998
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 999
    .local v0, "r":Landroid/content/res/Resources;
    const-string v1, "drawable"

    invoke-virtual {v0, p2, v1, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1001
    .end local v0    # "r":Landroid/content/res/Resources;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getIdForSmallIcon(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetPackage"    # Ljava/lang/String;

    .prologue
    .line 974
    const/4 v0, 0x0

    .line 975
    .local v0, "icon":I
    const-string v3, "mipush_notification"

    invoke-static {p0, p1, v3}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getIconId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 976
    .local v1, "largeIcon":I
    const-string v3, "mipush_small_notification"

    invoke-static {p0, p1, v3}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getIconId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 977
    .local v2, "smallIcon":I
    if-lez v1, :cond_1

    .line 978
    move v0, v1

    .line 984
    :goto_0
    if-nez v0, :cond_0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-lt v3, v4, :cond_0

    .line 985
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->logo:I

    .line 987
    :cond_0
    return v0

    .line 979
    :cond_1
    if-lez v2, :cond_2

    .line 980
    move v0, v2

    goto :goto_0

    .line 982
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    goto :goto_0
.end method

.method public static getInterfaceId(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;
    .locals 1
    .param p0, "container"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .prologue
    .line 1278
    invoke-static {p0}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isBusinessMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1279
    const-string v0, "E100002"

    .line 1290
    :goto_0
    return-object v0

    .line 1282
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isNormalNotificationMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1283
    const-string v0, "E100000"

    goto :goto_0

    .line 1286
    :cond_1
    invoke-static {p0}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isPassThoughMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1287
    const-string v0, "E100001"

    goto :goto_0

    .line 1290
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method static getLocalNotifyType(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1187
    const-string v1, "pref_notify_type"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1189
    .local v0, "sp":Landroid/content/SharedPreferences;
    const v1, 0x7fffffff

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private static getNotificationForCustomLayout(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;[B)Landroid/widget/RemoteViews;
    .locals 31
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "container"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .param p2, "decryptedContent"    # [B

    .prologue
    .line 878
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getMetaInfo()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v18

    .line 879
    .local v18, "metaInfo":Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getTargetPackage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v19

    .line 880
    .local v19, "pkg":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v7

    .line 881
    .local v7, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v7, :cond_1

    .line 882
    const/16 v24, 0x0

    .line 957
    :cond_0
    :goto_0
    return-object v24

    .line 884
    :cond_1
    const-string v30, "layout_name"

    move-object/from16 v0, v30

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 885
    .local v16, "layoutName":Ljava/lang/String;
    const-string v30, "layout_value"

    move-object/from16 v0, v30

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 887
    .local v17, "layoutValue":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_2

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_3

    .line 888
    :cond_2
    const/16 v24, 0x0

    goto :goto_0

    .line 890
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    .line 891
    .local v20, "pkgManager":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    .line 893
    .local v4, "apkResources":Landroid/content/res/Resources;
    :try_start_0
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 898
    const-string v30, "layout"

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    move-object/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    .line 899
    .local v22, "resLayout":I
    if-nez v22, :cond_4

    .line 900
    const/16 v24, 0x0

    goto :goto_0

    .line 894
    .end local v22    # "resLayout":I
    :catch_0
    move-exception v6

    .line 895
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 896
    const/16 v24, 0x0

    goto :goto_0

    .line 903
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v22    # "resLayout":I
    :cond_4
    new-instance v24, Landroid/widget/RemoteViews;

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 905
    .local v24, "rv":Landroid/widget/RemoteViews;
    :try_start_1
    new-instance v12, Lorg/json/JSONObject;

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 907
    .local v12, "json":Lorg/json/JSONObject;
    const-string/jumbo v30, "text"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_6

    .line 908
    const-string/jumbo v30, "text"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 909
    .local v14, "jsonText":Lorg/json/JSONObject;
    invoke-virtual {v14}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v10

    .line 910
    .local v10, "iterText":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_6

    .line 911
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 912
    .local v25, "str":Ljava/lang/String;
    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 913
    .local v29, "v":Ljava/lang/String;
    const-string v30, "id"

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    move-object/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v23

    .line 914
    .local v23, "resLet":I
    if-lez v23, :cond_5

    .line 915
    move-object/from16 v0, v24

    move/from16 v1, v23

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 953
    .end local v10    # "iterText":Ljava/util/Iterator;
    .end local v12    # "json":Lorg/json/JSONObject;
    .end local v14    # "jsonText":Lorg/json/JSONObject;
    .end local v23    # "resLet":I
    .end local v25    # "str":Ljava/lang/String;
    .end local v29    # "v":Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 954
    .local v6, "e":Lorg/json/JSONException;
    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 955
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 920
    .end local v6    # "e":Lorg/json/JSONException;
    .restart local v12    # "json":Lorg/json/JSONObject;
    :cond_6
    :try_start_2
    const-string v30, "image"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_8

    .line 921
    const-string v30, "image"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 922
    .local v13, "jsonImage":Lorg/json/JSONObject;
    invoke-virtual {v13}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    .line 923
    .local v9, "iterImage":Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_8

    .line 924
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 925
    .restart local v25    # "str":Ljava/lang/String;
    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 926
    .restart local v29    # "v":Ljava/lang/String;
    const-string v30, "id"

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    move-object/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v23

    .line 927
    .restart local v23    # "resLet":I
    const-string v30, "drawable"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    .line 928
    .local v21, "resImg":I
    if-lez v23, :cond_7

    .line 929
    move-object/from16 v0, v24

    move/from16 v1, v23

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_2

    .line 934
    .end local v9    # "iterImage":Ljava/util/Iterator;
    .end local v13    # "jsonImage":Lorg/json/JSONObject;
    .end local v21    # "resImg":I
    .end local v23    # "resLet":I
    .end local v25    # "str":Ljava/lang/String;
    .end local v29    # "v":Ljava/lang/String;
    :cond_8
    const-string/jumbo v30, "time"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_0

    .line 935
    const-string/jumbo v30, "time"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 936
    .local v15, "jsonTime":Lorg/json/JSONObject;
    invoke-virtual {v15}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v11

    .line 937
    .local v11, "iterTime":Ljava/util/Iterator;
    :cond_9
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_0

    .line 938
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 939
    .restart local v25    # "str":Ljava/lang/String;
    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 940
    .restart local v29    # "v":Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v30

    if-nez v30, :cond_a

    .line 941
    const-string/jumbo v29, "yy-MM-dd hh:mm"

    .line 943
    :cond_a
    const-string v30, "id"

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    move-object/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v23

    .line 944
    .restart local v23    # "resLet":I
    if-lez v23, :cond_9

    .line 945
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 946
    .local v26, "time":J
    new-instance v8, Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v29

    invoke-direct {v8, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 947
    .local v8, "format":Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/util/Date;

    move-wide/from16 v0, v26

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 948
    .local v5, "d":Ljava/util/Date;
    invoke-virtual {v8, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v28

    .line 949
    .local v28, "txt":Ljava/lang/String;
    move-object/from16 v0, v24

    move/from16 v1, v23

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3
.end method

.method private static getNotificationForLargeIcons(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;[BLandroid/widget/RemoteViews;Landroid/app/PendingIntent;)Lcom/xiaomi/push/service/MIPushNotificationHelper$GetNotificationResult;
    .locals 54
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "container"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .param p2, "decryptedContent"    # [B
    .param p3, "remoteView"    # Landroid/widget/RemoteViews;
    .param p4, "intent"    # Landroid/app/PendingIntent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 490
    new-instance v21, Lcom/xiaomi/push/service/MIPushNotificationHelper$GetNotificationResult;

    invoke-direct/range {v21 .. v21}, Lcom/xiaomi/push/service/MIPushNotificationHelper$GetNotificationResult;-><init>()V

    .line 491
    .local v21, "getNotificationResult":Lcom/xiaomi/push/service/MIPushNotificationHelper$GetNotificationResult;
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getMetaInfo()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v31

    .line 492
    .local v31, "metaInfo":Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getTargetPackage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v45

    .line 493
    .local v45, "targetPackage":Ljava/lang/String;
    invoke-virtual/range {v31 .. v31}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v30

    .line 494
    .local v30, "metaExtra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v8, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 496
    .local v8, "builder":Landroid/app/Notification$Builder;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->determineTitleAndDespByDIP(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)[Ljava/lang/String;

    move-result-object v38

    .line 497
    .local v38, "ret":[Ljava/lang/String;
    const/16 v48, 0x0

    aget-object v48, v38, v48

    move-object/from16 v0, v48

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 498
    const/16 v48, 0x1

    aget-object v48, v38, v48

    move-object/from16 v0, v48

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 499
    if-eqz p3, :cond_18

    .line 500
    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 505
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v30

    invoke-static {v8, v0, v1, v2}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->setNotificationStyleAction(Landroid/app/Notification$Builder;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 506
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v48

    move-wide/from16 v0, v48

    invoke-virtual {v8, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 508
    if-nez v30, :cond_19

    const/16 v39, 0x0

    .line 509
    .local v39, "showWhenStr":Ljava/lang/String;
    :goto_1
    invoke-static/range {v39 .. v39}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v48

    if-eqz v48, :cond_1a

    .line 510
    sget v48, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v49, 0x18

    move/from16 v0, v48

    move/from16 v1, v49

    if-lt v0, v1, :cond_1

    .line 512
    const/16 v48, 0x1

    move/from16 v0, v48

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 517
    :cond_1
    :goto_2
    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 519
    const-string v48, "mipush_notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v48

    invoke-static {v0, v1, v2}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getIconId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v28

    .line 520
    .local v28, "largeIconIntIndex":I
    const-string v48, "mipush_small_notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v48

    invoke-static {v0, v1, v2}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getIconId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v42

    .line 521
    .local v42, "smallIconIntIndex":I
    if-lez v28, :cond_1b

    if-lez v42, :cond_1b

    .line 522
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getBitmapFromId(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 523
    move/from16 v0, v42

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 529
    :goto_3
    const/16 v40, 0x0

    .line 530
    .local v40, "smallIcon":Ljava/lang/Object;
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isMIUI()Z

    move-result v48

    if-eqz v48, :cond_2

    sget v48, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v49, 0x17

    move/from16 v0, v48

    move/from16 v1, v49

    if-lt v0, v1, :cond_2

    .line 532
    if-nez v30, :cond_1c

    const/16 v41, 0x0

    .line 533
    .local v41, "smallIconBitmap":Landroid/graphics/Bitmap;
    :goto_4
    if-eqz v41, :cond_1e

    .line 534
    const-string v48, "android.graphics.drawable.Icon"

    const-string v49, "createWithBitmap"

    const/16 v50, 0x1

    move/from16 v0, v50

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    aput-object v41, v50, v51

    invoke-static/range {v48 .. v50}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    .line 535
    if-eqz v40, :cond_1d

    .line 536
    const-string/jumbo v48, "setSmallIcon"

    const/16 v49, 0x1

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    aput-object v40, v49, v50

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    invoke-static {v8, v0, v1}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    new-instance v20, Landroid/os/Bundle;

    invoke-direct/range {v20 .. v20}, Landroid/os/Bundle;-><init>()V

    .line 538
    .local v20, "extras":Landroid/os/Bundle;
    const-string v48, "miui.isGrayscaleIcon"

    const/16 v49, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v48

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 539
    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 548
    .end local v20    # "extras":Landroid/os/Bundle;
    .end local v40    # "smallIcon":Ljava/lang/Object;
    :goto_5
    if-nez v30, :cond_20

    const/4 v12, 0x0

    .line 549
    .local v12, "color":Ljava/lang/String;
    :goto_6
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v48

    if-nez v48, :cond_2

    .line 551
    :try_start_0
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    .line 552
    .local v13, "colorValue":I
    const-string/jumbo v48, "setColor"

    const/16 v49, 0x1

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v51

    aput-object v51, v49, v50

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    invoke-static {v8, v0, v1}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    .end local v12    # "color":Ljava/lang/String;
    .end local v13    # "colorValue":I
    .end local v41    # "smallIconBitmap":Landroid/graphics/Bitmap;
    :cond_2
    :goto_7
    if-nez v30, :cond_21

    const/16 v23, 0x0

    .line 560
    .local v23, "iconUri":Ljava/lang/String;
    :goto_8
    if-eqz v30, :cond_22

    const-string v48, "__adiom"

    move-object/from16 v0, v30

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/String;

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v48

    if-eqz v48, :cond_22

    const/4 v5, 0x1

    .line 561
    .local v5, "allowDynamicIconOnMiui":Z
    :goto_9
    if-nez v5, :cond_3

    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isMIUI()Z

    move-result v48

    if-nez v48, :cond_23

    :cond_3
    const/4 v4, 0x1

    .line 562
    .local v4, "allowDynamicIcon":Z
    :goto_a
    const/4 v15, 0x0

    .line 563
    .local v15, "customLargeIcon":Z
    if-eqz v23, :cond_5

    if-eqz v4, :cond_5

    .line 564
    const/4 v7, 0x0

    .line 565
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    const-string v48, "http"

    move-object/from16 v0, v23

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v48

    if-eqz v48, :cond_24

    .line 566
    const/16 v48, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v48

    invoke-static {v0, v1, v2}, Lcom/xiaomi/push/service/NotificationIconHelper;->getIconFromUrl(Landroid/content/Context;Ljava/lang/String;Z)Lcom/xiaomi/push/service/NotificationIconHelper$GetIconResult;

    move-result-object v37

    .line 567
    .local v37, "result":Lcom/xiaomi/push/service/NotificationIconHelper$GetIconResult;
    if-eqz v37, :cond_4

    .line 568
    move-object/from16 v0, v37

    iget-object v7, v0, Lcom/xiaomi/push/service/NotificationIconHelper$GetIconResult;->bitmap:Landroid/graphics/Bitmap;

    .line 569
    move-object/from16 v0, v37

    iget-wide v0, v0, Lcom/xiaomi/push/service/NotificationIconHelper$GetIconResult;->downloadSize:J

    move-wide/from16 v48, v0

    move-wide/from16 v0, v48

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/xiaomi/push/service/MIPushNotificationHelper$GetNotificationResult;->trafficSize:J

    .line 575
    .end local v37    # "result":Lcom/xiaomi/push/service/NotificationIconHelper$GetIconResult;
    :cond_4
    :goto_b
    if-eqz v7, :cond_5

    .line 576
    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 577
    const/4 v15, 0x1

    .line 581
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    :cond_5
    if-nez v30, :cond_25

    const/16 v27, 0x0

    .line 582
    .local v27, "largeIcon":Landroid/graphics/Bitmap;
    :goto_c
    if-eqz v27, :cond_6

    .line 583
    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 586
    :cond_6
    if-eqz v30, :cond_8

    sget v48, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v49, 0x18

    move/from16 v0, v48

    move/from16 v1, v49

    if-lt v0, v1, :cond_8

    .line 587
    const-string v48, "notification_group"

    move-object/from16 v0, v30

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 588
    .local v22, "group":Ljava/lang/String;
    const-string v48, "notification_is_summary"

    move-object/from16 v0, v30

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 589
    .local v26, "isSummaryStr":Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v25

    .line 592
    .local v25, "isSummary":Z
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v48

    if-eqz v48, :cond_7

    .line 593
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getTargetPackage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v22

    .line 594
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isXMS()Z

    move-result v48

    if-eqz v48, :cond_7

    .line 595
    invoke-virtual/range {v31 .. v31}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getNotifyId()I

    move-result v35

    .line 597
    .local v35, "notifyId":I
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v48

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 601
    .end local v35    # "notifyId":I
    :cond_7
    const-string/jumbo v48, "setGroup"

    const/16 v49, 0x1

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    aput-object v22, v49, v50

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    invoke-static {v8, v0, v1}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    const-string/jumbo v48, "setGroupSummary"

    const/16 v49, 0x1

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v51

    aput-object v51, v49, v50

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    invoke-static {v8, v0, v1}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    .end local v22    # "group":Ljava/lang/String;
    .end local v25    # "isSummary":Z
    .end local v26    # "isSummaryStr":Ljava/lang/String;
    :cond_8
    const/16 v48, 0x1

    move/from16 v0, v48

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 609
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 610
    .local v16, "currentTime":J
    if-eqz v30, :cond_9

    const-string/jumbo v48, "ticker"

    move-object/from16 v0, v30

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_9

    .line 611
    const-string/jumbo v48, "ticker"

    move-object/from16 v0, v30

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/CharSequence;

    move-object/from16 v0, v48

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 613
    :cond_9
    const/16 v36, -0x64

    .line 614
    .local v36, "notifyType":I
    const/16 v44, 0x0

    .line 615
    .local v44, "soundUri":Ljava/lang/String;
    const/4 v9, 0x0

    .line 616
    .local v9, "canSetSound":Z
    sget-wide v48, Lcom/xiaomi/push/service/MIPushNotificationHelper;->lastNotify:J

    sub-long v48, v16, v48

    const-wide/16 v50, 0x2710

    cmp-long v48, v48, v50

    if-lez v48, :cond_b

    .line 617
    sput-wide v16, Lcom/xiaomi/push/service/MIPushNotificationHelper;->lastNotify:J

    .line 619
    move-object/from16 v0, v31

    iget v0, v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->notifyType:I

    move/from16 v36, v0

    .line 620
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->hasLocalNotifyType(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v48

    if-eqz v48, :cond_a

    .line 621
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getLocalNotifyType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v36

    .line 624
    :cond_a
    move/from16 v0, v36

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 625
    if-eqz v30, :cond_b

    and-int/lit8 v48, v36, 0x1

    if-eqz v48, :cond_b

    .line 626
    const-string/jumbo v48, "sound_uri"

    move-object/from16 v0, v30

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    .end local v44    # "soundUri":Ljava/lang/String;
    check-cast v44, Ljava/lang/String;

    .line 627
    .restart local v44    # "soundUri":Ljava/lang/String;
    invoke-static/range {v44 .. v44}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v48

    if-nez v48, :cond_b

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "android.resource://"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, v44

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v48

    if-eqz v48, :cond_b

    .line 628
    const/4 v9, 0x1

    .line 629
    xor-int/lit8 v48, v36, 0x1

    move/from16 v0, v48

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 630
    invoke-static/range {v44 .. v44}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 636
    :cond_b
    if-eqz v30, :cond_13

    sget v48, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v49, 0x1a

    move/from16 v0, v48

    move/from16 v1, v49

    if-lt v0, v1, :cond_13

    .line 638
    invoke-static/range {v30 .. v30}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getTimeout(Ljava/util/Map;)I

    move-result v46

    .line 639
    .local v46, "timeout":I
    if-lez v46, :cond_c

    .line 640
    const-string/jumbo v48, "setTimeoutAfter"

    const/16 v49, 0x1

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    move/from16 v0, v46

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v51, v0

    move/from16 v0, v51

    int-to-long v0, v0

    move-wide/from16 v52, v0

    invoke-static/range {v52 .. v53}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v51

    aput-object v51, v49, v50

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    invoke-static {v8, v0, v1}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    :cond_c
    const-string v48, "channel_id"

    move-object/from16 v0, v30

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 644
    .local v11, "channelId":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v48

    if-eqz v48, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v48

    move-object/from16 v0, v48

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v48, v0

    const/16 v49, 0x1a

    move/from16 v0, v48

    move/from16 v1, v49

    if-lt v0, v1, :cond_12

    .line 645
    :cond_d
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v48

    if-eqz v48, :cond_26

    .line 646
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "mipush_"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, "_"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 650
    :cond_e
    :goto_d
    const-string/jumbo v48, "setChannelId"

    const/16 v49, 0x1

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    aput-object v11, v49, v50

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    invoke-static {v8, v0, v1}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getChannelName(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v32

    .line 652
    .local v32, "name":Ljava/lang/CharSequence;
    const/16 v24, 0x3

    .line 653
    .local v24, "importance":I
    const-string v48, "notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/app/NotificationManager;

    .line 655
    .local v33, "nm":Landroid/app/NotificationManager;
    :try_start_1
    const-string v48, "getNotificationChannel"

    const/16 v49, 0x1

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    aput-object v11, v49, v50

    move-object/from16 v0, v33

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    invoke-static {v0, v1, v2}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    .line 656
    .local v37, "result":Ljava/lang/Object;
    if-nez v37, :cond_12

    .line 657
    const-string v48, "android.app.NotificationChannel"

    invoke-static/range {v48 .. v48}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v48

    const/16 v49, 0x3

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    const-class v51, Ljava/lang/String;

    aput-object v51, v49, v50

    const/16 v50, 0x1

    const-class v51, Ljava/lang/CharSequence;

    aput-object v51, v49, v50

    const/16 v50, 0x2

    sget-object v51, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v51, v49, v50

    invoke-virtual/range {v48 .. v49}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v14

    .line 658
    .local v14, "con":Ljava/lang/reflect/Constructor;
    const/16 v48, 0x3

    move/from16 v0, v48

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    aput-object v11, v48, v49

    const/16 v49, 0x1

    aput-object v32, v48, v49

    const/16 v49, 0x2

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    aput-object v50, v48, v49

    move-object/from16 v0, v48

    invoke-virtual {v14, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 659
    .local v10, "channel":Ljava/lang/Object;
    const/16 v48, -0x64

    move/from16 v0, v36

    move/from16 v1, v48

    if-le v0, v1, :cond_11

    .line 660
    const/16 v48, 0x0

    const/16 v49, 0x0

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    invoke-virtual {v8, v0, v1}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 661
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 662
    and-int/lit8 v43, v36, 0x1

    .line 663
    .local v43, "sound":I
    and-int/lit8 v47, v36, 0x2

    .line 664
    .local v47, "vibrate":I
    and-int/lit8 v29, v36, 0x4

    .line 665
    .local v29, "lights":I
    const/16 v48, 0x1

    move/from16 v0, v43

    move/from16 v1, v48

    if-eq v0, v1, :cond_f

    .line 666
    const-string/jumbo v48, "setSound"

    const/16 v49, 0x2

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    const/16 v51, 0x0

    aput-object v51, v49, v50

    const/16 v50, 0x1

    const/16 v51, 0x0

    aput-object v51, v49, v50

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    invoke-static {v10, v0, v1}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    :cond_f
    if-eqz v9, :cond_10

    .line 669
    const-string/jumbo v48, "setSound"

    const/16 v49, 0x2

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    aput-object v44, v49, v50

    const/16 v50, 0x1

    sget-object v51, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    aput-object v51, v49, v50

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    invoke-static {v10, v0, v1}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    :cond_10
    const-string v49, "enableVibration"

    const/16 v48, 0x1

    move/from16 v0, v48

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    const/16 v48, 0x2

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_27

    const/16 v48, 0x1

    :goto_e
    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v48

    aput-object v48, v50, v51

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    invoke-static {v10, v0, v1}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    const-string v49, "enableLights"

    const/16 v48, 0x1

    move/from16 v0, v48

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    const/16 v48, 0x4

    move/from16 v0, v29

    move/from16 v1, v48

    if-ne v0, v1, :cond_28

    const/16 v48, 0x1

    :goto_f
    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v48

    aput-object v48, v50, v51

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    invoke-static {v10, v0, v1}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    .end local v29    # "lights":I
    .end local v43    # "sound":I
    .end local v47    # "vibrate":I
    :cond_11
    move-object/from16 v0, v30

    invoke-static {v10, v0}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->setChannelDescription(Ljava/lang/Object;Ljava/util/Map;)V

    .line 675
    const-string v48, "createNotificationChannel"

    const/16 v49, 0x1

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    aput-object v10, v49, v50

    move-object/from16 v0, v33

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    invoke-static {v0, v1, v2}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 682
    .end local v10    # "channel":Ljava/lang/Object;
    .end local v14    # "con":Ljava/lang/reflect/Constructor;
    .end local v24    # "importance":I
    .end local v32    # "name":Ljava/lang/CharSequence;
    .end local v33    # "nm":Landroid/app/NotificationManager;
    .end local v37    # "result":Ljava/lang/Object;
    :cond_12
    :goto_10
    const-string v48, "background_color"

    move-object/from16 v0, v30

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 683
    .restart local v12    # "color":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v48

    if-nez v48, :cond_13

    .line 685
    :try_start_2
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 686
    .local v6, "argb":I
    const/16 v48, 0x1

    move/from16 v0, v48

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 687
    invoke-virtual {v8, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 688
    const-string/jumbo v48, "setColorized"

    const/16 v49, 0x1

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    const/16 v51, 0x1

    invoke-static/range {v51 .. v51}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v51

    aput-object v51, v49, v50

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    invoke-static {v8, v0, v1}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 698
    .end local v6    # "argb":I
    .end local v11    # "channelId":Ljava/lang/String;
    .end local v12    # "color":Ljava/lang/String;
    .end local v46    # "timeout":I
    :cond_13
    :goto_11
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isXMS()Z

    move-result v48

    if-eqz v48, :cond_14

    const-string v48, "com.xiaomi.xmsf"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_14

    .line 699
    const-string v48, "miui.util.NotificationHelper"

    const-string/jumbo v49, "setTargetPkg"

    const/16 v50, 0x3

    move/from16 v0, v50

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    aput-object p0, v50, v51

    const/16 v51, 0x1

    aput-object v8, v50, v51

    const/16 v51, 0x2

    .line 700
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getTargetPackage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v52

    aput-object v52, v50, v51

    .line 699
    invoke-static/range {v48 .. v50}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    :cond_14
    invoke-virtual {v8}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v34

    .line 704
    .local v34, "notification":Landroid/app/Notification;
    if-eqz v15, :cond_15

    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isMIUI()Z

    move-result v48

    if-eqz v48, :cond_15

    .line 705
    invoke-static/range {v34 .. v34}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->enableCustomIconForMiui(Landroid/app/Notification;)Landroid/app/Notification;

    .line 711
    :cond_15
    if-eqz v30, :cond_17

    .line 712
    const-string v48, "extraNotification"

    move-object/from16 v0, v34

    move-object/from16 v1, v48

    invoke-static {v0, v1}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    .line 713
    .local v19, "extraNotification":Ljava/lang/Object;
    if-eqz v19, :cond_17

    .line 714
    const-string v48, "enable_keyguard"

    move-object/from16 v0, v30

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/CharSequence;

    invoke-static/range {v48 .. v48}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v48

    if-nez v48, :cond_16

    .line 715
    const-string/jumbo v49, "setEnableKeyguard"

    const/16 v48, 0x1

    move/from16 v0, v48

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    const-string v48, "enable_keyguard"

    move-object/from16 v0, v30

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/String;

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v48

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v48

    aput-object v48, v50, v51

    move-object/from16 v0, v19

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-static {v0, v1, v2}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    :cond_16
    const-string v48, "enable_float"

    move-object/from16 v0, v30

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/CharSequence;

    invoke-static/range {v48 .. v48}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v48

    if-nez v48, :cond_17

    .line 718
    const-string/jumbo v49, "setEnableFloat"

    const/16 v48, 0x1

    move/from16 v0, v48

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    const-string v48, "enable_float"

    move-object/from16 v0, v30

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/String;

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v48

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v48

    aput-object v48, v50, v51

    move-object/from16 v0, v19

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-static {v0, v1, v2}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    .end local v19    # "extraNotification":Ljava/lang/Object;
    :cond_17
    move-object/from16 v0, v34

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/xiaomi/push/service/MIPushNotificationHelper$GetNotificationResult;->notification:Landroid/app/Notification;

    .line 725
    return-object v21

    .line 501
    .end local v4    # "allowDynamicIcon":Z
    .end local v5    # "allowDynamicIconOnMiui":Z
    .end local v9    # "canSetSound":Z
    .end local v15    # "customLargeIcon":Z
    .end local v16    # "currentTime":J
    .end local v23    # "iconUri":Ljava/lang/String;
    .end local v27    # "largeIcon":Landroid/graphics/Bitmap;
    .end local v28    # "largeIconIntIndex":I
    .end local v34    # "notification":Landroid/app/Notification;
    .end local v36    # "notifyType":I
    .end local v39    # "showWhenStr":Ljava/lang/String;
    .end local v42    # "smallIconIntIndex":I
    .end local v44    # "soundUri":Ljava/lang/String;
    :cond_18
    sget v48, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v49, 0x10

    move/from16 v0, v48

    move/from16 v1, v49

    if-lt v0, v1, :cond_0

    if-eqz v30, :cond_0

    const-string v48, "notification_style_type"

    move-object/from16 v0, v30

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_0

    .line 502
    const/16 v48, 0x1

    aget-object v48, v38, v48

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v48

    invoke-static {v0, v1, v8, v2}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->setNotificationStyle(Landroid/content/Context;Ljava/util/Map;Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v8

    goto/16 :goto_0

    .line 508
    :cond_19
    const-string v48, "notification_show_when"

    move-object/from16 v0, v30

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/String;

    move-object/from16 v39, v48

    goto/16 :goto_1

    .line 515
    .restart local v39    # "showWhenStr":Ljava/lang/String;
    :cond_1a
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v48

    move/from16 v0, v48

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    goto/16 :goto_2

    .line 525
    .restart local v28    # "largeIconIntIndex":I
    .restart local v42    # "smallIconIntIndex":I
    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getIdForSmallIcon(Landroid/content/Context;Ljava/lang/String;)I

    move-result v48

    move/from16 v0, v48

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto/16 :goto_3

    .line 532
    .restart local v40    # "smallIcon":Ljava/lang/Object;
    :cond_1c
    const-string v48, "notification_small_icon_uri"

    move-object/from16 v0, v30

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/String;

    const/16 v49, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move/from16 v2, v49

    invoke-static {v0, v1, v2}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getOnlinePictureResource(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v41

    goto/16 :goto_4

    .line 541
    .restart local v41    # "smallIconBitmap":Landroid/graphics/Bitmap;
    :cond_1d
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "failed te get small icon with url:"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v48, "notification_small_icon_uri"

    move-object/from16 v0, v30

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/String;

    move-object/from16 v0, v49

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 544
    :cond_1e
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "failed to get small icon url:"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    if-nez v30, :cond_1f

    const/16 v48, 0x0

    :goto_12
    move-object/from16 v0, v49

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_1f
    const-string v48, "notification_small_icon_uri"

    move-object/from16 v0, v30

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/String;

    goto :goto_12

    .line 548
    .end local v40    # "smallIcon":Ljava/lang/Object;
    :cond_20
    const-string v48, "notification_small_icon_color"

    move-object/from16 v0, v30

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/String;

    move-object/from16 v12, v48

    goto/16 :goto_6

    .line 553
    .restart local v12    # "color":Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 554
    .local v18, "e":Ljava/lang/Exception;
    invoke-static/range {v18 .. v18}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 559
    .end local v12    # "color":Ljava/lang/String;
    .end local v18    # "e":Ljava/lang/Exception;
    .end local v41    # "smallIconBitmap":Landroid/graphics/Bitmap;
    :cond_21
    const-string v48, "__dynamic_icon_uri"

    move-object/from16 v0, v30

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/String;

    move-object/from16 v23, v48

    goto/16 :goto_8

    .line 560
    .restart local v23    # "iconUri":Ljava/lang/String;
    :cond_22
    const/4 v5, 0x0

    goto/16 :goto_9

    .line 561
    .restart local v5    # "allowDynamicIconOnMiui":Z
    :cond_23
    const/4 v4, 0x0

    goto/16 :goto_a

    .line 572
    .restart local v4    # "allowDynamicIcon":Z
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v15    # "customLargeIcon":Z
    :cond_24
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/NotificationIconHelper;->getIconFromUri(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    goto/16 :goto_b

    .line 581
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    :cond_25
    const-string v48, "notification_large_icon_uri"

    move-object/from16 v0, v30

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/String;

    const/16 v49, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move/from16 v2, v49

    invoke-static {v0, v1, v2}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getOnlinePictureResource(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v27

    goto/16 :goto_c

    .line 647
    .restart local v9    # "canSetSound":Z
    .restart local v11    # "channelId":Ljava/lang/String;
    .restart local v16    # "currentTime":J
    .restart local v27    # "largeIcon":Landroid/graphics/Bitmap;
    .restart local v36    # "notifyType":I
    .restart local v44    # "soundUri":Ljava/lang/String;
    .restart local v46    # "timeout":I
    :cond_26
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isMIUI()Z

    move-result v48

    if-eqz v48, :cond_e

    .line 648
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "mipush_"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, "_"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_d

    .line 671
    .restart local v10    # "channel":Ljava/lang/Object;
    .restart local v14    # "con":Ljava/lang/reflect/Constructor;
    .restart local v24    # "importance":I
    .restart local v29    # "lights":I
    .restart local v32    # "name":Ljava/lang/CharSequence;
    .restart local v33    # "nm":Landroid/app/NotificationManager;
    .restart local v37    # "result":Ljava/lang/Object;
    .restart local v43    # "sound":I
    .restart local v47    # "vibrate":I
    :cond_27
    const/16 v48, 0x0

    goto/16 :goto_e

    .line 672
    :cond_28
    const/16 v48, 0x0

    goto/16 :goto_f

    .line 677
    .end local v10    # "channel":Ljava/lang/Object;
    .end local v14    # "con":Ljava/lang/reflect/Constructor;
    .end local v29    # "lights":I
    .end local v37    # "result":Ljava/lang/Object;
    .end local v43    # "sound":I
    .end local v47    # "vibrate":I
    :catch_1
    move-exception v18

    .line 678
    .restart local v18    # "e":Ljava/lang/Exception;
    invoke-static/range {v18 .. v18}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 689
    .end local v18    # "e":Ljava/lang/Exception;
    .end local v24    # "importance":I
    .end local v32    # "name":Ljava/lang/CharSequence;
    .end local v33    # "nm":Landroid/app/NotificationManager;
    .restart local v12    # "color":Ljava/lang/String;
    :catch_2
    move-exception v18

    .line 690
    .restart local v18    # "e":Ljava/lang/Exception;
    invoke-static/range {v18 .. v18}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_11
.end method

.method private static getOnlinePictureResource(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "picUrl"    # Ljava/lang/String;
    .param p2, "isSizeLimited"    # Z

    .prologue
    const/4 v8, 0x1

    .line 1298
    const/4 v4, 0x0

    .line 1299
    .local v4, "futureResult":Landroid/graphics/Bitmap;
    sget-object v5, Lcom/xiaomi/push/service/MIPushNotificationHelper;->sThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lcom/xiaomi/push/service/MIPushNotificationHelper$DownloadOnlinePicTask;

    invoke-direct {v6, p1, p0, p2}, Lcom/xiaomi/push/service/MIPushNotificationHelper$DownloadOnlinePicTask;-><init>(Ljava/lang/String;Landroid/content/Context;Z)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    .line 1301
    .local v3, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Landroid/graphics/Bitmap;>;"
    const-wide/16 v6, 0xb4

    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v6, v7, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1309
    if-nez v4, :cond_0

    .line 1310
    :goto_0
    invoke-interface {v3, v8}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 1313
    :cond_0
    return-object v4

    .line 1302
    :catch_0
    move-exception v2

    .line 1303
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 1309
    if-nez v4, :cond_0

    goto :goto_0

    .line 1304
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v2

    .line 1305
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 1309
    if-nez v4, :cond_0

    goto :goto_0

    .line 1306
    .end local v2    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v2

    .line 1307
    .local v2, "e":Ljava/util/concurrent/TimeoutException;
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1309
    if-nez v4, :cond_0

    goto :goto_0

    .end local v2    # "e":Ljava/util/concurrent/TimeoutException;
    :catchall_0
    move-exception v5

    if-nez v4, :cond_1

    .line 1310
    invoke-interface {v3, v8}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 1309
    :cond_1
    throw v5
.end method

.method private static getPendingIntentFromExtra(Landroid/content/Context;Ljava/lang/String;ILjava/util/Map;)Landroid/content/Intent;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "place"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 759
    .local p3, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v15, 0x2

    move/from16 v0, p2

    if-ge v0, v15, :cond_1

    const-string v15, "notification_style_button_left_notify_effect"

    :goto_0
    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 761
    .local v11, "typeId":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 762
    const/4 v3, 0x0

    .line 827
    :cond_0
    :goto_1
    return-object v3

    .line 759
    .end local v11    # "typeId":Ljava/lang/String;
    :cond_1
    const/4 v15, 0x3

    move/from16 v0, p2

    if-ge v0, v15, :cond_2

    const-string v15, "notification_style_button_mid_notify_effect"

    goto :goto_0

    :cond_2
    const-string v15, "notification_style_button_right_notify_effect"

    goto :goto_0

    .line 764
    .restart local v11    # "typeId":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    .line 765
    .local v3, "intent":Landroid/content/Intent;
    sget-object v15, Lcom/xiaomi/push/service/PushConstants;->NOTIFICATION_CLICK_DEFAULT:Ljava/lang/String;

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 767
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 814
    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    .line 815
    const/high16 v15, 0x10000000

    invoke-virtual {v3, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 817
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const/high16 v16, 0x10000

    move/from16 v0, v16

    invoke-virtual {v15, v3, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v9

    .line 819
    .local v9, "rinfo":Landroid/content/pm/ResolveInfo;
    if-nez v9, :cond_0

    .line 827
    .end local v9    # "rinfo":Landroid/content/pm/ResolveInfo;
    :cond_5
    :goto_3
    const/4 v3, 0x0

    goto :goto_1

    .line 768
    :catch_0
    move-exception v2

    .line 769
    .local v2, "e":Ljava/lang/Exception;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cause: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 771
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_6
    sget-object v15, Lcom/xiaomi/push/service/PushConstants;->NOTIFICATION_CLICK_INTENT:Ljava/lang/String;

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 772
    const/4 v15, 0x2

    move/from16 v0, p2

    if-ge v0, v15, :cond_7

    const-string v7, "notification_style_button_left_intent_uri"

    .line 774
    .local v7, "intentUriKey":Ljava/lang/String;
    :goto_4
    const/4 v15, 0x2

    move/from16 v0, p2

    if-ge v0, v15, :cond_9

    const-string v5, "notification_style_button_left_intent_class"

    .line 776
    .local v5, "intentClassKey":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 777
    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 778
    .local v6, "intentStr":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 780
    const/4 v15, 0x1

    :try_start_2
    invoke-static {v6, v15}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 781
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 782
    :catch_1
    move-exception v2

    .line 783
    .local v2, "e":Ljava/net/URISyntaxException;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cause: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 772
    .end local v2    # "e":Ljava/net/URISyntaxException;
    .end local v5    # "intentClassKey":Ljava/lang/String;
    .end local v6    # "intentStr":Ljava/lang/String;
    .end local v7    # "intentUriKey":Ljava/lang/String;
    :cond_7
    const/4 v15, 0x3

    move/from16 v0, p2

    if-ge v0, v15, :cond_8

    const-string v7, "notification_style_button_mid_intent_uri"

    goto :goto_4

    :cond_8
    const-string v7, "notification_style_button_right_intent_uri"

    goto :goto_4

    .line 774
    .restart local v7    # "intentUriKey":Ljava/lang/String;
    :cond_9
    const/4 v15, 0x3

    move/from16 v0, p2

    if-ge v0, v15, :cond_a

    const-string v5, "notification_style_button_mid_intent_class"

    goto :goto_5

    :cond_a
    const-string v5, "notification_style_button_right_intent_class"

    goto :goto_5

    .line 786
    .restart local v5    # "intentClassKey":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 787
    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 788
    .local v1, "className":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 789
    .restart local v3    # "intent":Landroid/content/Intent;
    new-instance v15, Landroid/content/ComponentName;

    move-object/from16 v0, p1

    invoke-direct {v15, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 791
    .end local v1    # "className":Ljava/lang/String;
    .end local v5    # "intentClassKey":Ljava/lang/String;
    .end local v7    # "intentUriKey":Ljava/lang/String;
    :cond_c
    sget-object v15, Lcom/xiaomi/push/service/PushConstants;->NOTIFICATION_CLICK_WEB_PAGE:Ljava/lang/String;

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 792
    const/4 v15, 0x2

    move/from16 v0, p2

    if-ge v0, v15, :cond_f

    const-string v14, "notification_style_button_left_web_uri"

    .line 794
    .local v14, "webUriKey":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 795
    .local v12, "uri":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 796
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 797
    .local v10, "tmp":Ljava/lang/String;
    const-string v15, "http://"

    invoke-virtual {v10, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_d

    const-string v15, "https://"

    invoke-virtual {v10, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_d

    .line 798
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "http://"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 801
    :cond_d
    :try_start_3
    new-instance v13, Ljava/net/URL;

    invoke-direct {v13, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 802
    .local v13, "url":Ljava/net/URL;
    invoke-virtual {v13}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v8

    .line 803
    .local v8, "protocol":Ljava/lang/String;
    const-string v15, "http"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_e

    const-string v15, "https"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 804
    :cond_e
    new-instance v4, Landroid/content/Intent;

    const-string v15, "android.intent.action.VIEW"

    invoke-direct {v4, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_2

    .line 805
    .end local v3    # "intent":Landroid/content/Intent;
    .local v4, "intent":Landroid/content/Intent;
    :try_start_4
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v4, v15}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 806
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->setXiaomiBrowserDefault(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v3

    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    goto/16 :goto_2

    .line 792
    .end local v8    # "protocol":Ljava/lang/String;
    .end local v10    # "tmp":Ljava/lang/String;
    .end local v12    # "uri":Ljava/lang/String;
    .end local v13    # "url":Ljava/net/URL;
    .end local v14    # "webUriKey":Ljava/lang/String;
    :cond_f
    const/4 v15, 0x3

    move/from16 v0, p2

    if-ge v0, v15, :cond_10

    const-string v14, "notification_style_button_mid_web_uri"

    goto :goto_6

    :cond_10
    const-string v14, "notification_style_button_right_web_uri"

    goto :goto_6

    .line 808
    .restart local v10    # "tmp":Ljava/lang/String;
    .restart local v12    # "uri":Ljava/lang/String;
    .restart local v14    # "webUriKey":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 809
    .local v2, "e":Ljava/net/MalformedURLException;
    :goto_7
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cause: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 822
    .end local v2    # "e":Ljava/net/MalformedURLException;
    .end local v10    # "tmp":Ljava/lang/String;
    .end local v12    # "uri":Ljava/lang/String;
    .end local v14    # "webUriKey":Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 823
    .local v2, "e":Ljava/lang/Exception;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cause: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 808
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v8    # "protocol":Ljava/lang/String;
    .restart local v10    # "tmp":Ljava/lang/String;
    .restart local v12    # "uri":Ljava/lang/String;
    .restart local v13    # "url":Ljava/net/URL;
    .restart local v14    # "webUriKey":Ljava/lang/String;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    goto :goto_7
.end method

.method private static getStylePendingIntent(Landroid/content/Context;Ljava/lang/String;ILjava/util/Map;)Landroid/app/PendingIntent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "place"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .prologue
    .local p3, "metaExtra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 748
    if-nez p3, :cond_1

    .line 755
    :cond_0
    :goto_0
    return-object v1

    .line 751
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getPendingIntentFromExtra(Landroid/content/Context;Ljava/lang/String;ILjava/util/Map;)Landroid/content/Intent;

    move-result-object v0

    .line 752
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 753
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    goto :goto_0
.end method

.method static getTargetPackage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;
    .locals 4
    .param p0, "container"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .prologue
    .line 1048
    const-string v2, "com.xiaomi.xmsf"

    iget-object v3, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1049
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getMetaInfo()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v0

    .line 1050
    .local v0, "metaInfo":Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1051
    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v2

    const-string v3, "miui_package_name"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1052
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1057
    .end local v0    # "metaInfo":Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    .end local v1    # "packageName":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getTimeout(Ljava/util/Map;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 862
    .local p0, "metaExtra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .line 863
    .local v1, "notification_timeout":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    .line 864
    .local v2, "timeout":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 866
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 871
    :cond_0
    :goto_1
    return v2

    .line 862
    .end local v1    # "notification_timeout":Ljava/lang/String;
    .end local v2    # "timeout":I
    :cond_1
    const-string/jumbo v3, "timeout"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v1, v3

    goto :goto_0

    .line 867
    .restart local v1    # "notification_timeout":Ljava/lang/String;
    .restart local v2    # "timeout":I
    :catch_0
    move-exception v0

    .line 868
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_1
.end method

.method static hasLocalNotifyType(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1199
    const-string v1, "pref_notify_type"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1201
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isApplicationForeground(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 167
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 168
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 169
    .local v2, "processInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v2, :cond_1

    .line 170
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 171
    .local v1, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0x64

    if-ne v4, v5, :cond_0

    iget-object v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 172
    const/4 v3, 0x1

    .line 176
    .end local v1    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isBusinessMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z
    .locals 2
    .param p0, "container"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .prologue
    .line 1241
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getMetaInfo()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v0

    .line 1242
    .local v0, "metaInfo":Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    invoke-static {v0}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isIdVaild(Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isIgnoreRegInfo()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isIdVaild(Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)Z
    .locals 5
    .param p0, "metaInfo"    # Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    .prologue
    .line 1227
    const/4 v2, 0x0

    .line 1228
    .local v2, "result":Z
    if-eqz p0, :cond_0

    .line 1229
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v1

    .line 1230
    .local v1, "msgId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x16

    if-ne v3, v4, :cond_0

    .line 1231
    const-string v3, "satuigm"

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1232
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 1233
    const/4 v2, 0x1

    .line 1237
    .end local v0    # "index":I
    .end local v1    # "msgId":Ljava/lang/String;
    :cond_0
    return v2
.end method

.method public static isNPBMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z
    .locals 1
    .param p0, "container"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .prologue
    .line 1274
    invoke-static {p0}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isBusinessMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isNormalNotificationMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isPassThoughMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNormalNotificationMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z
    .locals 2
    .param p0, "container"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .prologue
    .line 1263
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getMetaInfo()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v0

    .line 1264
    .local v0, "metaInfo":Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    invoke-static {v0}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isIdVaild(Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->passThrough:I

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isBusinessMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isNotifyForeground(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1211
    .local p0, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    const-string v1, "notify_foreground"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1212
    :cond_0
    const/4 v1, 0x1

    .line 1215
    :goto_0
    return v1

    .line 1214
    :cond_1
    const-string v1, "notify_foreground"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1215
    .local v0, "value":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isPassThoughMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z
    .locals 3
    .param p0, "container"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .prologue
    const/4 v1, 0x1

    .line 1252
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getMetaInfo()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v0

    .line 1253
    .local v0, "metaInfo":Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    invoke-static {v0}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isIdVaild(Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->passThrough:I

    if-ne v2, v1, :cond_0

    invoke-static {p0}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isBusinessMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static notifyPushMessage(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;[B)Lcom/xiaomi/push/service/MIPushNotificationHelper$NotifyPushMessageInfo;
    .locals 39
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "container"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .param p2, "decryptedContent"    # [B

    .prologue
    .line 187
    new-instance v18, Lcom/xiaomi/push/service/MIPushNotificationHelper$NotifyPushMessageInfo;

    invoke-direct/range {v18 .. v18}, Lcom/xiaomi/push/service/MIPushNotificationHelper$NotifyPushMessageInfo;-><init>()V

    .line 190
    .local v18, "info":Lcom/xiaomi/push/service/MIPushNotificationHelper$NotifyPushMessageInfo;
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getTargetPackage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils;->getAppNotificationOp(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;

    move-result-object v28

    .line 191
    .local v28, "notificationOp":Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;
    sget-object v6, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;->NOT_ALLOWED:Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;

    move-object/from16 v0, v28

    if-ne v0, v6, :cond_1

    .line 192
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getMetaInfo()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v23

    .line 193
    .local v23, "metaInfo":Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    if-eqz v23, :cond_0

    .line 194
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v6

    .line 195
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getInterfaceId(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v23 .. v23}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Do not notify because user block "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getTargetPackage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\u2018s notification"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent4NeedDrop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Do not notify because user block "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getTargetPackage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u2018s notification"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 391
    :goto_0
    return-object v18

    .line 202
    .end local v23    # "metaInfo":Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    :cond_1
    invoke-static/range {p0 .. p1}, Lcom/xiaomi/push/service/TypedShieldHelper;->isShield(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 203
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/TypedShieldHelper;->getShieldType(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v36

    .line 204
    .local v36, "shieldTypeName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getMetaInfo()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v23

    .line 205
    .restart local v23    # "metaInfo":Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    if-eqz v23, :cond_2

    .line 206
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v6

    .line 207
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getInterfaceId(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v23 .. v23}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Do not notify because user block "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v36

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\u2018s notification"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent4NeedDrop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Do not notify because user block "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u2018s notification"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 213
    .end local v23    # "metaInfo":Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    .end local v36    # "shieldTypeName":Ljava/lang/String;
    :cond_3
    const-string v6, "notification"

    .line 214
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/app/NotificationManager;

    .line 215
    .local v25, "nm":Landroid/app/NotificationManager;
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getMetaInfo()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v23

    .line 216
    .restart local v23    # "metaInfo":Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    const/16 v26, 0x0

    .line 217
    .local v26, "notification":Landroid/app/Notification;
    invoke-static/range {p0 .. p2}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getNotificationForCustomLayout(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;[B)Landroid/widget/RemoteViews;

    move-result-object v34

    .line 219
    .local v34, "rv":Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move-object/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getClickedPendingIntent(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;[B)Landroid/app/PendingIntent;

    move-result-object v19

    .line 220
    .local v19, "intent":Landroid/app/PendingIntent;
    if-nez v19, :cond_5

    .line 221
    if-eqz v23, :cond_4

    .line 222
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v6

    .line 223
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getInterfaceId(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v23 .. v23}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v9

    const-string v10, "The click PendingIntent is null. "

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent4NeedDrop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_4
    const-string v6, "The click PendingIntent is null. "

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 229
    :cond_5
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_12

    .line 230
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v34

    move-object/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getNotificationForLargeIcons(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;[BLandroid/widget/RemoteViews;Landroid/app/PendingIntent;)Lcom/xiaomi/push/service/MIPushNotificationHelper$GetNotificationResult;

    move-result-object v17

    .line 231
    .local v17, "getNotificationResult":Lcom/xiaomi/push/service/MIPushNotificationHelper$GetNotificationResult;
    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/xiaomi/push/service/MIPushNotificationHelper$GetNotificationResult;->trafficSize:J

    move-object/from16 v0, v18

    iput-wide v6, v0, Lcom/xiaomi/push/service/MIPushNotificationHelper$NotifyPushMessageInfo;->traffic:J

    .line 232
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getTargetPackage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    iput-object v6, v0, Lcom/xiaomi/push/service/MIPushNotificationHelper$NotifyPushMessageInfo;->targetPkgName:Ljava/lang/String;

    .line 233
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/xiaomi/push/service/MIPushNotificationHelper$GetNotificationResult;->notification:Landroid/app/Notification;

    move-object/from16 v26, v0

    .line 297
    .end local v17    # "getNotificationResult":Lcom/xiaomi/push/service/MIPushNotificationHelper$GetNotificationResult;
    :cond_6
    :goto_1
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isMIUI()Z

    move-result v6

    if-eqz v6, :cond_a

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-lt v6, v7, :cond_a

    .line 299
    invoke-virtual/range {v23 .. v23}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 300
    move-object/from16 v0, v26

    iget-object v6, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "message_id"

    invoke-virtual/range {v23 .. v23}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_7
    invoke-virtual/range {v23 .. v23}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getInternal()Ljava/util/Map;

    move-result-object v6

    if-nez v6, :cond_1a

    const/16 v35, 0x0

    .line 305
    .local v35, "scoreInfo":Ljava/lang/String;
    :goto_2
    invoke-static/range {v35 .. v35}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 306
    move-object/from16 v0, v26

    iget-object v6, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "score_info"

    move-object/from16 v0, v35

    invoke-virtual {v6, v7, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :cond_8
    const/4 v15, -0x1

    .line 313
    .local v15, "eventMessageType":I
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isNormalNotificationMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 314
    const/16 v15, 0x3e8

    .line 318
    :cond_9
    :goto_3
    move-object/from16 v0, v26

    iget-object v6, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "eventMessageType"

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    .end local v15    # "eventMessageType":I
    .end local v35    # "scoreInfo":Ljava/lang/String;
    :cond_a
    invoke-virtual/range {v23 .. v23}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v6

    if-nez v6, :cond_1c

    const/16 v22, 0x0

    .line 324
    .local v22, "messageCountStr":Ljava/lang/String;
    :goto_4
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isMIUI()Z

    move-result v6

    if-eqz v6, :cond_b

    if-eqz v22, :cond_b

    .line 326
    :try_start_0
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 327
    .local v21, "messageCount":I
    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->setMessageCount(Landroid/app/Notification;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4

    .line 338
    .end local v21    # "messageCount":I
    :cond_b
    :goto_5
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isXMS()Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "com.xiaomi.xmsf"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 339
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getTargetPackage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-static {v0, v6}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->setTargetPackage(Landroid/app/Notification;Ljava/lang/String;)Landroid/app/Notification;

    .line 344
    :cond_c
    const-string v6, "com.xiaomi.xmsf"

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getTargetPackage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 345
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/xiaomi/push/service/TypedShieldHelper;->processTypedShieldExtra(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;Landroid/app/Notification;)V

    .line 348
    :cond_d
    invoke-virtual/range {v23 .. v23}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getNotifyId()I

    move-result v30

    .line 350
    .local v30, "notifyId":I
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getTargetPackage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    div-int/lit8 v6, v6, 0xa

    mul-int/lit8 v6, v6, 0xa

    add-int v32, v6, v30

    .line 352
    .local v32, "realID":I
    move-object/from16 v0, v25

    move/from16 v1, v32

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 353
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isBusinessMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 354
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v6

    .line 355
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getInterfaceId(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v23 .. v23}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0xbba

    const-string/jumbo v11, "try show business message"

    invoke-virtual/range {v6 .. v11}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 358
    :cond_e
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isNormalNotificationMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 359
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v6

    .line 360
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getInterfaceId(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v23 .. v23}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x3ea

    const-string/jumbo v11, "try show notification message"

    invoke-virtual/range {v6 .. v11}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 364
    :cond_f
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-ge v6, v7, :cond_10

    .line 365
    move/from16 v27, v32

    .line 366
    .local v27, "notificationId":I
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;

    move-result-object v20

    .line 367
    .local v20, "jobManager":Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;
    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->cancelJob(I)Z

    .line 368
    invoke-virtual/range {v23 .. v23}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getTimeout(Ljava/util/Map;)I

    move-result v38

    .line 369
    .local v38, "timeout":I
    if-lez v38, :cond_10

    .line 370
    new-instance v6, Lcom/xiaomi/push/service/MIPushNotificationHelper$1;

    move/from16 v0, v27

    move-object/from16 v1, v25

    invoke-direct {v6, v0, v1}, Lcom/xiaomi/push/service/MIPushNotificationHelper$1;-><init>(ILandroid/app/NotificationManager;)V

    move-object/from16 v0, v20

    move/from16 v1, v38

    invoke-virtual {v0, v6, v1}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->addOneShootJob(Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;I)Z

    .line 383
    .end local v20    # "jobManager":Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;
    .end local v27    # "notificationId":I
    .end local v38    # "timeout":I
    :cond_10
    new-instance v29, Landroid/util/Pair;

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 384
    .local v29, "notifyContainerPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;>;"
    sget-object v7, Lcom/xiaomi/push/service/MIPushNotificationHelper;->notifyContainerCache:Ljava/util/LinkedList;

    monitor-enter v7

    .line 385
    :try_start_1
    sget-object v6, Lcom/xiaomi/push/service/MIPushNotificationHelper;->notifyContainerCache:Ljava/util/LinkedList;

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 386
    sget-object v6, Lcom/xiaomi/push/service/MIPushNotificationHelper;->notifyContainerCache:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    const/16 v8, 0x64

    if-le v6, v8, :cond_11

    .line 387
    sget-object v6, Lcom/xiaomi/push/service/MIPushNotificationHelper;->notifyContainerCache:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 389
    :cond_11
    monitor-exit v7

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 235
    .end local v22    # "messageCountStr":Ljava/lang/String;
    .end local v29    # "notifyContainerPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;>;"
    .end local v30    # "notifyId":I
    .end local v32    # "realID":I
    :cond_12
    new-instance v26, Landroid/app/Notification;

    .end local v26    # "notification":Landroid/app/Notification;
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getTargetPackage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getIdForSmallIcon(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, v26

    invoke-direct {v0, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 238
    .restart local v26    # "notification":Landroid/app/Notification;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->determineTitleAndDespByDIP(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)[Ljava/lang/String;

    move-result-object v33

    .line 241
    .local v33, "ret":[Ljava/lang/String;
    :try_start_2
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string/jumbo v7, "setLatestEventInfo"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Ljava/lang/CharSequence;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-class v10, Ljava/lang/CharSequence;

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-class v10, Landroid/app/PendingIntent;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v24

    .line 242
    .local v24, "method":Ljava/lang/reflect/Method;
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    aget-object v8, v33, v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x1

    aget-object v8, v33, v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object v19, v6, v7

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3

    .line 269
    .end local v24    # "method":Ljava/lang/reflect/Method;
    :goto_6
    invoke-virtual/range {v23 .. v23}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v16

    .line 270
    .local v16, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v16, :cond_13

    const-string/jumbo v6, "ticker"

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 271
    const-string/jumbo v6, "ticker"

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    move-object/from16 v0, v26

    iput-object v6, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 273
    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 274
    .local v12, "currentTime":J
    sget-wide v6, Lcom/xiaomi/push/service/MIPushNotificationHelper;->lastNotify:J

    sub-long v6, v12, v6

    const-wide/16 v8, 0x2710

    cmp-long v6, v6, v8

    if-lez v6, :cond_15

    .line 275
    sput-wide v12, Lcom/xiaomi/push/service/MIPushNotificationHelper;->lastNotify:J

    .line 276
    move-object/from16 v0, v23

    iget v0, v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->notifyType:I

    move/from16 v31, v0

    .line 277
    .local v31, "notifyType":I
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getTargetPackage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->hasLocalNotifyType(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 278
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getTargetPackage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getLocalNotifyType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v31

    .line 280
    :cond_14
    move/from16 v0, v31

    move-object/from16 v1, v26

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 281
    if-eqz v16, :cond_15

    and-int/lit8 v6, v31, 0x1

    if-eqz v6, :cond_15

    .line 282
    const-string/jumbo v6, "sound_uri"

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/String;

    .line 283
    .local v37, "soundUri":Ljava/lang/String;
    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_15

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android.resource://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 284
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getTargetPackage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 285
    xor-int/lit8 v6, v31, 0x1

    move-object/from16 v0, v26

    iput v6, v0, Landroid/app/Notification;->defaults:I

    .line 286
    invoke-static/range {v37 .. v37}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, v26

    iput-object v6, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 290
    .end local v31    # "notifyType":I
    .end local v37    # "soundUri":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, v26

    iget v6, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x10

    move-object/from16 v0, v26

    iput v6, v0, Landroid/app/Notification;->flags:I

    .line 292
    if-eqz v34, :cond_6

    .line 293
    move-object/from16 v0, v34

    move-object/from16 v1, v26

    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto/16 :goto_1

    .line 243
    .end local v12    # "currentTime":J
    .end local v16    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v14

    .line 244
    .local v14, "e":Ljava/lang/NoSuchMethodException;
    if-eqz v23, :cond_16

    .line 245
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v6

    .line 246
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getInterfaceId(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v23 .. v23}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9, v14}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent4ERROR(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    :cond_16
    invoke-static {v14}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 249
    .end local v14    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v14

    .line 250
    .local v14, "e":Ljava/lang/IllegalAccessException;
    if-eqz v23, :cond_17

    .line 251
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v6

    .line 252
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getInterfaceId(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v23 .. v23}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9, v14}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent4ERROR(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 254
    :cond_17
    invoke-static {v14}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 255
    .end local v14    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v14

    .line 256
    .local v14, "e":Ljava/lang/IllegalArgumentException;
    if-eqz v23, :cond_18

    .line 257
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v6

    .line 258
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getInterfaceId(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v23 .. v23}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9, v14}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent4ERROR(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 260
    :cond_18
    invoke-static {v14}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 261
    .end local v14    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v14

    .line 262
    .local v14, "e":Ljava/lang/reflect/InvocationTargetException;
    if-eqz v23, :cond_19

    .line 263
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v6

    .line 264
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getInterfaceId(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v23 .. v23}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9, v14}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent4ERROR(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 266
    :cond_19
    invoke-static {v14}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 304
    .end local v14    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v33    # "ret":[Ljava/lang/String;
    :cond_1a
    invoke-virtual/range {v23 .. v23}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getInternal()Ljava/util/Map;

    move-result-object v6

    const-string v7, "score_info"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v35, v6

    goto/16 :goto_2

    .line 315
    .restart local v15    # "eventMessageType":I
    .restart local v35    # "scoreInfo":Ljava/lang/String;
    :cond_1b
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isBusinessMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 316
    const/16 v15, 0xbb8

    goto/16 :goto_3

    .line 323
    .end local v15    # "eventMessageType":I
    .end local v35    # "scoreInfo":Ljava/lang/String;
    :cond_1c
    invoke-virtual/range {v23 .. v23}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v6

    const-string v7, "message_count"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v22, v6

    goto/16 :goto_4

    .line 328
    .restart local v22    # "messageCountStr":Ljava/lang/String;
    :catch_4
    move-exception v14

    .line 329
    .local v14, "e":Ljava/lang/NumberFormatException;
    if-eqz v23, :cond_1d

    .line 330
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v6

    .line 331
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getInterfaceId(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v23 .. v23}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9, v14}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent4ERROR(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 333
    :cond_1d
    invoke-static {v14}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_5
.end method

.method private static setChannelDescription(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 4
    .param p0, "channel"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1360
    .local p1, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    const-string v0, "channel_description"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1364
    :cond_0
    :goto_0
    return-void

    .line 1363
    :cond_1
    const-string/jumbo v0, "setDescription"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "channel_description"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static setLocalNotifyType(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "notifyType"    # I

    .prologue
    .line 1205
    const-string v1, "pref_notify_type"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1207
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1208
    return-void
.end method

.method private static setMessageCount(Landroid/app/Notification;I)V
    .locals 5
    .param p0, "notification"    # Landroid/app/Notification;
    .param p1, "messageCount"    # I

    .prologue
    .line 395
    const-string v1, "extraNotification"

    invoke-static {p0, v1}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 396
    .local v0, "miuiNotification":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 397
    const-string/jumbo v1, "setMessageCount"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    :cond_0
    return-void
.end method

.method private static setNotificationStyle(Landroid/content/Context;Ljava/util/Map;Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "builder"    # Landroid/app/Notification$Builder;
    .param p3, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/Notification$Builder;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/Notification$Builder;"
        }
    .end annotation

    .prologue
    .local p1, "metaExtra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 844
    const-string v2, "2"

    const-string v4, "notification_style_type"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 845
    new-instance v0, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v0, p2}, Landroid/app/Notification$BigPictureStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 846
    .local v0, "bigPictureStyle":Landroid/app/Notification$BigPictureStyle;
    if-nez p1, :cond_1

    move-object v1, v3

    .line 848
    .local v1, "picture":Landroid/graphics/Bitmap;
    :goto_0
    if-nez v1, :cond_2

    .line 858
    .end local v0    # "bigPictureStyle":Landroid/app/Notification$BigPictureStyle;
    .end local v1    # "picture":Landroid/graphics/Bitmap;
    :cond_0
    :goto_1
    return-object p2

    .line 846
    .restart local v0    # "bigPictureStyle":Landroid/app/Notification$BigPictureStyle;
    :cond_1
    const-string v2, "notification_bigPic_uri"

    .line 847
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p0, v2, v4}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getOnlinePictureResource(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 851
    .restart local v1    # "picture":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {v0, v1}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 852
    invoke-virtual {v0, v3}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 853
    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_1

    .line 854
    .end local v0    # "bigPictureStyle":Landroid/app/Notification$BigPictureStyle;
    .end local v1    # "picture":Landroid/graphics/Bitmap;
    :cond_3
    const-string v2, "1"

    const-string v3, "notification_style_type"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 855
    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v2, p3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_1
.end method

.method private static setNotificationStyleAction(Landroid/app/Notification$Builder;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Landroid/app/Notification$Builder;
    .locals 3
    .param p0, "builder"    # Landroid/app/Notification$Builder;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Notification$Builder;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/Notification$Builder;"
        }
    .end annotation

    .prologue
    .local p3, "metaExtra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 729
    const/4 v1, 0x1

    invoke-static {p1, p2, v1, p3}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getStylePendingIntent(Landroid/content/Context;Ljava/lang/String;ILjava/util/Map;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 730
    .local v0, "stylePendingIntent":Landroid/app/PendingIntent;
    if-eqz v0, :cond_0

    const-string v1, "notification_style_button_left_name"

    .line 731
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 732
    const-string v1, "notification_style_button_left_name"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v2, v1, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 734
    :cond_0
    const/4 v1, 0x2

    invoke-static {p1, p2, v1, p3}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getStylePendingIntent(Landroid/content/Context;Ljava/lang/String;ILjava/util/Map;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 735
    if-eqz v0, :cond_1

    const-string v1, "notification_style_button_mid_name"

    .line 736
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 737
    const-string v1, "notification_style_button_mid_name"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v2, v1, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 739
    :cond_1
    const/4 v1, 0x3

    invoke-static {p1, p2, v1, p3}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getStylePendingIntent(Landroid/content/Context;Ljava/lang/String;ILjava/util/Map;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 740
    if-eqz v0, :cond_2

    const-string v1, "notification_style_button_right_name"

    .line 741
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 742
    const-string v1, "notification_style_button_right_name"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v2, v1, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 744
    :cond_2
    return-object p0
.end method

.method private static setTargetPackage(Landroid/app/Notification;Ljava/lang/String;)Landroid/app/Notification;
    .locals 10
    .param p0, "notification"    # Landroid/app/Notification;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1032
    :try_start_0
    const-class v0, Landroid/app/Notification;

    .line 1033
    .local v0, "clazz":Ljava/lang/Class;
    const-string v5, "extraNotification"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1034
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1035
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1036
    .local v3, "object":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v6, "setTargetPkg"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/CharSequence;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1039
    .local v4, "setMethod":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1040
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1044
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "object":Ljava/lang/Object;
    .end local v4    # "setMethod":Ljava/lang/reflect/Method;
    :goto_0
    return-object p0

    .line 1041
    :catch_0
    move-exception v1

    .line 1042
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static setXiaomiBrowserDefault(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 832
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.android.browser"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 833
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 834
    const-string v2, "com.android.browser"

    const-string v3, "com.android.browser.BrowserActivity"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 840
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-object p1

    .line 837
    :catch_0
    move-exception v0

    .line 838
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static uploadClearMessageData(Landroid/content/Context;Ljava/util/LinkedList;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/LinkedList",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1178
    .local p1, "removeCache":Ljava/util/LinkedList;, "Ljava/util/LinkedList<+Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1180
    const-string v2, "category_clear_notification"

    const-string v3, "clear_notification"

    .line 1182
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    int-to-long v4, v0

    const-string v6, ""

    move-object v1, p0

    .line 1180
    invoke-static/range {v1 .. v6}, Lcom/xiaomi/push/service/TinyDataHelper;->cacheTinyData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 1184
    :cond_0
    return-void
.end method
