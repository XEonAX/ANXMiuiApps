.class public Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler;
.super Lcom/miui/gallery/push/messagehandler/MessageHandler;
.source "StoryNotificationMessageHandler.java"


# static fields
.field private static mLastTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler;->mLastTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/miui/gallery/push/messagehandler/MessageHandler;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler;Landroid/content/Context;ILcom/miui/gallery/card/Card;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/miui/gallery/card/Card;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler;->publishStoryNotification(Landroid/content/Context;ILcom/miui/gallery/card/Card;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Landroid/graphics/Bitmap;

    .prologue
    .line 38
    invoke-direct/range {p0 .. p5}, Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler;->publishStoryNotificationInternal(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private getPushNotificationId(I)I
    .locals 1
    .param p1, "originId"    # I

    .prologue
    .line 200
    invoke-static {p1}, Lcom/miui/gallery/util/NotificationHelper;->getPushNotificationId(I)I

    move-result v0

    return v0
.end method

.method private publishStoryNotification(Landroid/content/Context;ILcom/miui/gallery/card/Card;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notificationId"    # I
    .param p3, "card"    # Lcom/miui/gallery/card/Card;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 136
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 137
    :cond_0
    const-string v0, "StoryNotificationMessageHandler"

    const-string v1, "No valid context or card!"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :goto_0
    return-void

    .line 140
    :cond_1
    invoke-virtual {p3}, Lcom/miui/gallery/card/Card;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 141
    .local v4, "title":Ljava/lang/String;
    invoke-virtual {p3}, Lcom/miui/gallery/card/Card;->getDescription()Ljava/lang/String;

    move-result-object v5

    .line 143
    .local v5, "description":Ljava/lang/String;
    invoke-virtual {p3}, Lcom/miui/gallery/card/Card;->getOperationInfo()Lcom/miui/gallery/cloud/card/model/CardInfo$OperationInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Lcom/miui/gallery/card/Card;->getOperationInfo()Lcom/miui/gallery/cloud/card/model/CardInfo$OperationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/card/model/CardInfo$OperationInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 144
    invoke-virtual {p3}, Lcom/miui/gallery/card/Card;->getOperationInfo()Lcom/miui/gallery/cloud/card/model/CardInfo$OperationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/card/model/CardInfo$OperationInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v7

    .line 145
    .local v7, "iconUrl":Ljava/lang/String;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v6

    new-instance v0, Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler$2;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler$2;-><init>(Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    goto :goto_0

    .line 166
    .end local v7    # "iconUrl":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler;->publishStoryNotificationInternal(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private publishStoryNotificationInternal(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notificationId"    # I
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 173
    const-string v5, "notification"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 174
    .local v1, "nm":Landroid/app/NotificationManager;
    if-nez v1, :cond_0

    .line 175
    const-string v5, "StoryNotificationMessageHandler"

    const-string v6, "notification manager is null"

    invoke-static {v5, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :goto_0
    return-void

    .line 178
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.miui.gallery.action.VIEW_ALBUM"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    .local v3, "notificationIntent":Landroid/content/Intent;
    const-string v5, "extra_start_page"

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 180
    const/4 v5, 0x0

    const/high16 v6, 0x8000000

    invoke-static {p1, v5, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 181
    .local v4, "pi":Landroid/app/PendingIntent;
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 182
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 183
    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 184
    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 185
    if-eqz p5, :cond_1

    .line 186
    invoke-virtual {v0, p5}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 188
    :cond_1
    const/high16 v5, 0x7f030000

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 189
    invoke-static {p1, v0}, Lcom/miui/gallery/util/NotificationHelper;->setLowChannel(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    .line 190
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 191
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 192
    .local v2, "notification":Landroid/app/Notification;
    const/16 v5, 0x10

    iput v5, v2, Landroid/app/Notification;->flags:I

    .line 193
    invoke-virtual {v1, p2, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 194
    const-string v5, "StoryNotificationMessageHandler"

    const-string v6, "publis notification %d success"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public handleDirect(Landroid/content/Context;Lcom/miui/gallery/push/GalleryPushMessage;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/miui/gallery/push/GalleryPushMessage;

    .prologue
    .line 63
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->isStoryFunctionEnable()Z

    move-result v17

    if-nez v17, :cond_2

    .line 64
    :cond_0
    const-string v17, "StoryNotificationMessageHandler"

    const-string v18, "context is null"

    invoke-static/range {v17 .. v18}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_1
    :goto_0
    return-void

    .line 68
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/miui/gallery/push/GalleryPushMessage;->getData()Ljava/lang/String;

    move-result-object v11

    .line 69
    .local v11, "messageData":Ljava/lang/String;
    if-nez v11, :cond_3

    .line 70
    const-string v17, "StoryNotificationMessageHandler"

    const-string v18, "message data is null"

    invoke-static/range {v17 .. v18}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_3
    :try_start_0
    new-instance v13, Lorg/json/JSONObject;

    invoke-virtual/range {p2 .. p2}, Lcom/miui/gallery/push/GalleryPushMessage;->getData()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 76
    .local v13, "notificationJSON":Lorg/json/JSONObject;
    const-string v17, "id"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler;->getPushNotificationId(I)I

    move-result v10

    .line 77
    .local v10, "id":I
    const-string v17, "isCancel"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 78
    const-string v17, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/NotificationManager;

    .line 79
    .local v12, "nm":Landroid/app/NotificationManager;
    if-eqz v12, :cond_1

    .line 80
    invoke-virtual {v12, v10}, Landroid/app/NotificationManager;->cancel(I)V

    .line 81
    const-string v17, "StoryNotificationMessageHandler"

    const-string v18, "is cancel message"

    invoke-static/range {v17 .. v18}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    .end local v10    # "id":I
    .end local v12    # "nm":Landroid/app/NotificationManager;
    .end local v13    # "notificationJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    .line 123
    .local v5, "e":Ljava/lang/Exception;
    const-string v17, "StoryNotificationMessageHandler"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "fail to parse notification data from"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 86
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v10    # "id":I
    .restart local v13    # "notificationJSON":Lorg/json/JSONObject;
    :cond_4
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 87
    .local v6, "cur":J
    sget-wide v18, Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler;->mLastTime:J

    sub-long v8, v6, v18

    .line 88
    .local v8, "duration":J
    sput-wide v6, Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler;->mLastTime:J

    .line 89
    const-wide/32 v18, 0x927c0

    cmp-long v17, v8, v18

    if-gez v17, :cond_5

    .line 90
    const-string v17, "StoryNotificationMessageHandler"

    const-string/jumbo v18, "too frequently to push notification, time duration is %d"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 94
    :cond_5
    const-string/jumbo v17, "version"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v16

    .line 95
    .local v16, "version":I
    if-lez v16, :cond_6

    .line 96
    const-string v17, "StoryNotificationMessageHandler"

    const-string v18, "message version is not fit, server version is %d, local version is %d"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-static/range {v17 .. v20}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 100
    :cond_6
    const-string/jumbo v17, "story_id"

    const-wide/16 v18, 0x0

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v13, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 101
    .local v14, "storyId":J
    const-string v17, "assistant"

    const-string v18, "assistant_operation_card_push_recieved"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "story_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lcom/miui/gallery/card/CardManager;->getInstance()Lcom/miui/gallery/card/CardManager;

    move-result-object v17

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/miui/gallery/card/CardManager;->getCardByServerId(Ljava/lang/String;Z)Lcom/miui/gallery/card/Card;

    move-result-object v4

    .line 107
    .local v4, "card":Lcom/miui/gallery/card/Card;
    if-eqz v4, :cond_7

    .line 108
    invoke-virtual {v4}, Lcom/miui/gallery/card/Card;->isOutofDate()Z

    move-result v17

    if-nez v17, :cond_1

    .line 109
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10, v4}, Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler;->publishStoryNotification(Landroid/content/Context;ILcom/miui/gallery/card/Card;)V

    goto/16 :goto_0

    .line 112
    :cond_7
    new-instance v17, Lcom/miui/gallery/cloud/card/SyncCardFromServer;

    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->getXiaomiAccount()Landroid/accounts/Account;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/miui/gallery/cloud/card/SyncCardFromServer;-><init>(Landroid/accounts/Account;)V

    .line 113
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    new-instance v19, Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v10}, Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler$1;-><init>(Lcom/miui/gallery/push/messagehandler/StoryNotificationMessageHandler;Landroid/content/Context;I)V

    invoke-virtual/range {v17 .. v19}, Lcom/miui/gallery/cloud/card/SyncCardFromServer;->getOperationCards(Ljava/lang/String;Lcom/miui/gallery/cloud/card/SyncCardFromServer$OperationCardCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public handlePull(Landroid/content/Context;Lcom/miui/gallery/push/GalleryPushMessage;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/miui/gallery/push/GalleryPushMessage;

    .prologue
    .line 53
    return-void
.end method
