.class public Lcom/miui/gallery/push/messagehandler/CloudControlMessageHandler;
.super Lcom/miui/gallery/push/messagehandler/MessageHandler;
.source "CloudControlMessageHandler.java"


# static fields
.field private static final ONE_WEEK_MILLIS:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 32
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/miui/gallery/push/messagehandler/CloudControlMessageHandler;->ONE_WEEK_MILLIS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/miui/gallery/push/messagehandler/MessageHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleDirect(Landroid/content/Context;Lcom/miui/gallery/push/GalleryPushMessage;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/miui/gallery/push/GalleryPushMessage;

    .prologue
    .line 58
    invoke-virtual/range {p2 .. p2}, Lcom/miui/gallery/push/GalleryPushMessage;->getTag()J

    move-result-wide v10

    .line 59
    .local v10, "pushTag":J
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CloudControl;->getPushTag()J

    move-result-wide v6

    .line 60
    .local v6, "lastPushTag":J
    cmp-long v13, v10, v6

    if-gtz v13, :cond_1

    .line 61
    const-string v13, "CloudControlMessageHandler"

    const-string v14, "Current push tag is less than last push tag, skip handle"

    invoke-static {v13, v14}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->generatorCommonParams()Ljava/util/Map;

    move-result-object v8

    .line 63
    .local v8, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v13, "businessModule"

    invoke-virtual/range {p2 .. p2}, Lcom/miui/gallery/push/GalleryPushMessage;->getBusinessModule()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v8, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string/jumbo v13, "tag_lastTag"

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "%d_%d"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v8, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v13, "mipush"

    const-string v14, "push_tag_is_invalid"

    invoke-static {v13, v14, v8}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 110
    .end local v8    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-static {v10, v11}, Lcom/miui/gallery/preference/GalleryPreferences$CloudControl;->setPushTag(J)V

    .line 75
    invoke-virtual/range {p2 .. p2}, Lcom/miui/gallery/push/GalleryPushMessage;->getData()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "content":Ljava/lang/String;
    :try_start_0
    new-instance v13, Lcom/google/gson/GsonBuilder;

    invoke-direct {v13}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v14, Lcom/miui/gallery/cloudcontrol/FeatureProfile;

    new-instance v15, Lcom/miui/gallery/cloudcontrol/FeatureProfile$Deserializer;

    invoke-direct {v15}, Lcom/miui/gallery/cloudcontrol/FeatureProfile$Deserializer;-><init>()V

    .line 79
    invoke-virtual {v13, v14, v15}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v13

    .line 80
    invoke-virtual {v13}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v13

    new-instance v14, Lcom/miui/gallery/push/messagehandler/CloudControlMessageHandler$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/miui/gallery/push/messagehandler/CloudControlMessageHandler$1;-><init>(Lcom/miui/gallery/push/messagehandler/CloudControlMessageHandler;)V

    .line 83
    invoke-virtual {v14}, Lcom/miui/gallery/push/messagehandler/CloudControlMessageHandler$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v14

    .line 81
    invoke-virtual {v13, v2, v14}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .local v5, "featureProfiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloudcontrol/FeatureProfile;>;"
    invoke-static {v5}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 91
    const/4 v9, 0x0

    .line 92
    .local v9, "persistError":Z
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/cloudcontrol/FeatureProfile;

    .line 93
    .local v4, "featureProfile":Lcom/miui/gallery/cloudcontrol/FeatureProfile;
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->getInstance()Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    move-result-object v14

    invoke-virtual {v14, v4}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->insertToCache(Lcom/miui/gallery/cloudcontrol/FeatureProfile;)V

    .line 94
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/miui/gallery/cloudcontrol/CloudControlDBHelper;->tryInsertToDB(Landroid/content/Context;Lcom/miui/gallery/cloudcontrol/FeatureProfile;)I

    move-result v12

    .line 95
    .local v12, "ret":I
    if-nez v12, :cond_2

    .line 96
    const/4 v9, 0x1

    .line 97
    const-string v14, "CloudControlMessageHandler"

    const-string v15, "Persist failed: %s"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 85
    .end local v4    # "featureProfile":Lcom/miui/gallery/cloudcontrol/FeatureProfile;
    .end local v5    # "featureProfiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloudcontrol/FeatureProfile;>;"
    .end local v9    # "persistError":Z
    .end local v12    # "ret":I
    :catch_0
    move-exception v3

    .line 86
    .local v3, "e":Ljava/lang/Exception;
    const-string v13, "CloudControlMessageHandler"

    const-string v14, "Parse direct content [%s] failed: \n%s"

    invoke-static {v13, v14, v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 100
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v5    # "featureProfiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloudcontrol/FeatureProfile;>;"
    .restart local v9    # "persistError":Z
    :cond_3
    if-eqz v9, :cond_0

    .line 101
    invoke-static {}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->generatorCommonParams()Ljava/util/Map;

    move-result-object v8

    .line 102
    .restart local v8    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v13, "response"

    invoke-interface {v8, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v13, "cloud_control"

    const-string v14, "cloud_control_persist_error"

    invoke-static {v13, v14, v8}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public handlePull(Landroid/content/Context;Lcom/miui/gallery/push/GalleryPushMessage;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/miui/gallery/push/GalleryPushMessage;

    .prologue
    .line 36
    if-nez p2, :cond_0

    .line 53
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/net/ConnectivityHelper;->isUnmeteredNetworkConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    new-instance v2, Lcom/miui/gallery/cloudcontrol/CloudControlRequestHelper;

    invoke-direct {v2, p1}, Lcom/miui/gallery/cloudcontrol/CloudControlRequestHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/miui/gallery/cloudcontrol/CloudControlRequestHelper;->execRequestSync()Z

    .line 39
    const-string v2, "CloudControlMessageHandler"

    const-string v3, "Pull data trigger by push"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_1
    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/net/ConnectivityHelper;->isNetworkConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 43
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CloudControl;->getLastRequestSucceedTime()J

    move-result-wide v0

    .line 44
    .local v0, "lastRequestSucceedTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sget-wide v4, Lcom/miui/gallery/push/messagehandler/CloudControlMessageHandler;->ONE_WEEK_MILLIS:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 46
    new-instance v2, Lcom/miui/gallery/cloudcontrol/CloudControlRequestHelper;

    invoke-direct {v2, p1}, Lcom/miui/gallery/cloudcontrol/CloudControlRequestHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/miui/gallery/cloudcontrol/CloudControlRequestHelper;->execRequestSync()Z

    .line 47
    const-string v2, "CloudControlMessageHandler"

    const-string v3, "Force pull data after one week"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    .end local v0    # "lastRequestSucceedTime":J
    :cond_2
    const-string v2, "CloudControlMessageHandler"

    const-string v3, "Post as pending task"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/miui/gallery/pendingtask/PendingTaskManager;->getInstance()Lcom/miui/gallery/pendingtask/PendingTaskManager;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3, p2}, Lcom/miui/gallery/pendingtask/PendingTaskManager;->postTask(ILjava/lang/Object;)V

    goto :goto_0
.end method
