.class public Lcom/miui/gallery/push/messagehandler/FeatureRedDotMessageHandler;
.super Lcom/miui/gallery/push/messagehandler/MessageHandler;
.source "FeatureRedDotMessageHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/miui/gallery/push/messagehandler/MessageHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleDirect(Landroid/content/Context;Lcom/miui/gallery/push/GalleryPushMessage;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/miui/gallery/push/GalleryPushMessage;

    .prologue
    .line 33
    if-nez p1, :cond_1

    .line 34
    const-string v12, "FeatureRedDotMessageHandler"

    const-string v13, "context is null"

    invoke-static {v12, v13}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/miui/gallery/push/GalleryPushMessage;->getData()Ljava/lang/String;

    move-result-object v7

    .line 39
    .local v7, "messageData":Ljava/lang/String;
    if-nez v7, :cond_2

    .line 40
    const-string v12, "FeatureRedDotMessageHandler"

    const-string v13, "message data is null"

    invoke-static {v12, v13}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual/range {p2 .. p2}, Lcom/miui/gallery/push/GalleryPushMessage;->getData()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 46
    .local v0, "dataJSON":Lorg/json/JSONObject;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v12, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 47
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string/jumbo v12, "start_time"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 48
    .local v9, "startTimeStr":Ljava/lang/String;
    const-string v12, "end_time"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, "endTimeStr":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    const-wide/16 v10, 0x0

    .line 50
    .local v10, "startTime":J
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    const-wide v4, 0x7fffffffffffffffL

    .line 51
    .local v4, "endTime":J
    :goto_2
    const-string v12, "feature_name"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 52
    .local v6, "featureName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    cmp-long v12, v12, v4

    if-gtz v12, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 53
    invoke-static {v6, v10, v11, v4, v5}, Lcom/miui/gallery/preference/GalleryPreferences$FeatureRedDot;->setFeatureRedDotValidTime(Ljava/lang/String;JJ)V

    .line 55
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 56
    .local v8, "param":Ljava/util/Map;
    const-string v12, "featureName"

    invoke-interface {v8, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v12, "feature_red_dot"

    const-string v13, "push_red_dot_arrive"

    invoke-static {v12, v13, v8}, Lcom/miui/gallery/util/GalleryStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    .end local v0    # "dataJSON":Lorg/json/JSONObject;
    .end local v1    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v3    # "endTimeStr":Ljava/lang/String;
    .end local v4    # "endTime":J
    .end local v6    # "featureName":Ljava/lang/String;
    .end local v8    # "param":Ljava/util/Map;
    .end local v9    # "startTimeStr":Ljava/lang/String;
    .end local v10    # "startTime":J
    :catch_0
    move-exception v2

    .line 61
    .local v2, "e":Ljava/lang/Exception;
    const-string v12, "FeatureRedDotMessageHandler"

    const-string v13, "fail to parse feature red dot data from %s"

    invoke-static {v12, v13, v7, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 49
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "dataJSON":Lorg/json/JSONObject;
    .restart local v1    # "dateFormat":Ljava/text/SimpleDateFormat;
    .restart local v3    # "endTimeStr":Ljava/lang/String;
    .restart local v9    # "startTimeStr":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-virtual {v1, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    goto :goto_1

    .line 50
    .restart local v10    # "startTime":J
    :cond_4
    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v4

    goto :goto_2
.end method

.method public handlePull(Landroid/content/Context;Lcom/miui/gallery/push/GalleryPushMessage;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/miui/gallery/push/GalleryPushMessage;

    .prologue
    .line 29
    return-void
.end method
