.class public Lcom/xiaomi/push/service/MIPushEventProcessor;
.super Ljava/lang/Object;
.source "MIPushEventProcessor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildContainer([B)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .locals 2
    .param p0, "decryptedContent"    # [B

    .prologue
    .line 282
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;-><init>()V

    .line 284
    .local v0, "container":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    :try_start_0
    invoke-static {v0, p0}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->convertByteArrayToThriftObject(Lorg/apache/thrift/TBase;[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    .end local v0    # "container":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    :goto_0
    return-object v0

    .line 285
    .restart local v0    # "container":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    :catch_0
    move-exception v1

    .line 286
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 287
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static buildIntent([BJ)Landroid/content/Intent;
    .locals 5
    .param p0, "decryptedContent"    # [B
    .param p1, "receiveTime"    # J

    .prologue
    .line 270
    invoke-static {p0}, Lcom/xiaomi/push/service/MIPushEventProcessor;->buildContainer([B)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    move-result-object v0

    .line 271
    .local v0, "container":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    if-nez v0, :cond_0

    .line 272
    const/4 v1, 0x0

    .line 278
    :goto_0
    return-object v1

    .line 274
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xiaomi.mipush.RECEIVE_MESSAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "mipush_payload"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 276
    const-string v2, "mrt"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    iget-object v2, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static constructAckMessage(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "container"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .prologue
    const/4 v0, 0x0

    .line 849
    invoke-static {p0, p1, v0, v0, v0}, Lcom/xiaomi/push/service/MIPushEventProcessor;->constructAckMessage(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;ZZZ)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    move-result-object v0

    return-object v0
.end method

.method public static constructAckMessage(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;ZZZ)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "container"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .param p2, "isGeoReceived"    # Z
    .param p3, "isGeoShowed"    # Z
    .param p4, "isGeoPassed"    # Z

    .prologue
    .line 864
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;-><init>()V

    .line 865
    .local v0, "ackMessage":Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getAppid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->setAppId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    .line 866
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getMetaInfo()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v3

    .line 867
    .local v3, "metaInfo":Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    if-eqz v3, :cond_0

    .line 868
    invoke-virtual {v3}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->setId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    .line 869
    invoke-virtual {v3}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getMessageTs()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->setMessageTs(J)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    .line 870
    invoke-virtual {v3}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getTopic()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 871
    invoke-virtual {v3}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getTopic()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->setTopic(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    .line 874
    :cond_0
    invoke-static {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->getDeviceStatus(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)S

    move-result v4

    invoke-virtual {v0, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->setDeviceStatus(S)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    .line 875
    invoke-static {p2, p3, p4}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->getGeoMsgStatus(ZZZ)S

    move-result v4

    invoke-virtual {v0, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->setGeoMsgStatus(S)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    .line 878
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getAppid()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/xiaomi/xmpush/thrift/ActionType;->AckMessage:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 877
    invoke-static {v4, v5, v0, v6}, Lcom/xiaomi/push/service/MIPushHelper;->generateRequestContainer(Ljava/lang/String;Ljava/lang/String;Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    move-result-object v1

    .line 879
    .local v1, "actionContainer":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getMetaInfo()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->deepCopy()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v2

    .line 880
    .local v2, "actionMetaInfo":Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    const-string v4, "mat"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->putToExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->setMetaInfo(Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 882
    return-object v1
.end method

.method private static geoMessageIsValidated(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z
    .locals 4
    .param p0, "pushService"    # Lcom/xiaomi/push/service/XMPushService;
    .param p1, "container"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .prologue
    const/4 v2, 0x0

    .line 613
    invoke-static {p0}, Lcom/xiaomi/push/service/GeoFenceUtils;->checkMetoknlpVersionAbove(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 639
    :goto_0
    return v1

    .line 617
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/push/service/GeoFenceUtils;->verifyGeoChannel(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    .line 618
    goto :goto_0

    .line 621
    :cond_1
    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils;->isPkgInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 624
    invoke-static {p0, p1}, Lcom/xiaomi/push/service/MIPushEventProcessor;->sendAppNotInstallNotification(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V

    move v1, v2

    .line 625
    goto :goto_0

    .line 629
    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getMetaInfo()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v0

    .line 630
    .local v0, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_3

    move v1, v2

    .line 631
    goto :goto_0

    .line 633
    :cond_3
    const-string v3, "12"

    const-string v1, "__geo_action"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    .line 634
    goto :goto_0

    .line 636
    :cond_4
    const-string v1, "__geo_ids"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    .line 637
    goto :goto_0

    .line 639
    :cond_5
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 886
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 889
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v4, 0x20

    :try_start_0
    invoke-virtual {v1, p1, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 891
    .local v2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    .line 893
    .end local v2    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    return v3

    .line 891
    .restart local v2    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 892
    .end local v2    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v0

    .line 893
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static isMIUIOldAdsSDKMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z
    .locals 3
    .param p0, "container"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .prologue
    .line 673
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getMetaInfo()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getMetaInfo()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    .line 674
    :cond_0
    const/4 v0, 0x0

    .line 676
    :goto_0
    return v0

    :cond_1
    const-string v0, "1"

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getMetaInfo()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v1

    const-string v2, "obslete_ads_message"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static isMIUIPushMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z
    .locals 2
    .param p0, "container"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .prologue
    .line 644
    const-string v0, "com.xiaomi.xmsf"

    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getMetaInfo()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 645
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getMetaInfo()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 646
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getMetaInfo()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v0

    const-string v1, "miui_package_name"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 644
    :goto_0
    return v0

    .line 646
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isMIUIPushSupported(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 656
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.xiaomi.mipush.miui.CLICK_MESSAGE"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 657
    .local v2, "notiIntent":Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 658
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.xiaomi.mipush.miui.RECEIVE_MESSAGE"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 659
    .local v3, "passThroughIntent":Landroid/content/Intent;
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 660
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 662
    .local v4, "pmgr":Landroid/content/pm/PackageManager;
    const/16 v7, 0x20

    :try_start_0
    invoke-virtual {v4, v3, v7}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 664
    .local v0, "brInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/16 v7, 0x20

    invoke-virtual {v4, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 665
    .local v5, "srInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    const/4 v6, 0x1

    .line 668
    .end local v0    # "brInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "srInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    :goto_0
    return v6

    .line 666
    :catch_0
    move-exception v1

    .line 667
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static postProcessMIPushMessage(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;[BLandroid/content/Intent;Z)V
    .locals 26
    .param p0, "pushService"    # Lcom/xiaomi/push/service/XMPushService;
    .param p1, "realTargetPackage"    # Ljava/lang/String;
    .param p2, "decryptedContent"    # [B
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "relateToGeo"    # Z

    .prologue
    .line 303
    invoke-static/range {p2 .. p2}, Lcom/xiaomi/push/service/MIPushEventProcessor;->buildContainer([B)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    move-result-object v13

    .line 304
    .local v13, "container":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    invoke-virtual {v13}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getMetaInfo()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v20

    .line 305
    .local v20, "metaInfo":Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    if-eqz p2, :cond_0

    .line 307
    invoke-virtual {v13}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    .line 308
    invoke-virtual {v13}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getAction()Lcom/xiaomi/xmpush/thrift/ActionType;

    move-result-object v7

    move-object/from16 v0, p2

    array-length v8, v0

    .line 307
    invoke-static {v4, v5, v6, v7, v8}, Lcom/xiaomi/push/clientreport/PerfMessageHelper;->collectPerfData(Ljava/lang/String;Landroid/content/Context;Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;I)V

    .line 310
    :cond_0
    invoke-static {v13}, Lcom/xiaomi/push/service/MIPushEventProcessor;->isMIUIOldAdsSDKMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static/range {p0 .. p1}, Lcom/xiaomi/push/service/MIPushEventProcessor;->isMIUIPushSupported(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 312
    invoke-static {v13}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isNPBMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 313
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v4

    .line 314
    invoke-virtual {v13}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getInterfaceId(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v20 .. v20}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v7

    const-string v8, "old message received by new SDK."

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent4NeedDrop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :cond_1
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/xiaomi/push/service/MIPushEventProcessor;->sendMIUIOldAdsAckMessage(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V

    .line 516
    :cond_2
    :goto_0
    return-void

    .line 318
    :cond_3
    invoke-static {v13}, Lcom/xiaomi/push/service/MIPushEventProcessor;->isMIUIPushMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 319
    invoke-static/range {p0 .. p1}, Lcom/xiaomi/push/service/MIPushEventProcessor;->isMIUIPushSupported(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v13}, Lcom/xiaomi/push/service/MIPushEventProcessor;->predefinedNotification(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 321
    invoke-static {v13}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isNPBMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 322
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v4

    .line 323
    invoke-virtual {v13}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getInterfaceId(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v20 .. v20}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v7

    const-string v8, "new message received by old SDK."

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent4NeedDrop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_4
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/xiaomi/push/service/MIPushEventProcessor;->sendMIUINewAdsAckMessage(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V

    goto :goto_0

    .line 326
    :cond_5
    invoke-static {v13}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isBusinessMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, v13, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    .line 327
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils;->isPkgInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 328
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/MIPushEventProcessor;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 330
    :cond_7
    sget-object v4, Lcom/xiaomi/xmpush/thrift/ActionType;->Registration:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-virtual {v13}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getAction()Lcom/xiaomi/xmpush/thrift/ActionType;

    move-result-object v5

    if-ne v4, v5, :cond_8

    .line 331
    invoke-virtual {v13}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v21

    .line 332
    .local v21, "pkgName":Ljava/lang/String;
    const-string v4, "pref_registered_pkg_names"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/push/service/XMPushService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v25

    .line 335
    .local v25, "sp":Landroid/content/SharedPreferences;
    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    .line 336
    .local v15, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v4, v13, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->appid:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-interface {v15, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 337
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 340
    .end local v15    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v21    # "pkgName":Ljava/lang/String;
    .end local v25    # "sp":Landroid/content/SharedPreferences;
    :cond_8
    invoke-static {v13}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isNormalNotificationMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 342
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v5

    .line 343
    invoke-virtual {v13}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getInterfaceId(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v7

    .line 344
    invoke-virtual/range {v20 .. v20}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x3e9

    .line 346
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-string v12, "receive notification message "

    .line 343
    invoke-virtual/range {v5 .. v12}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V

    .line 349
    invoke-virtual/range {v20 .. v20}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 351
    const-string v4, "messageId"

    invoke-virtual/range {v20 .. v20}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    const-string v4, "eventMessageType"

    const/16 v5, 0x3e8

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 356
    :cond_9
    invoke-static {v13}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isPassThoughMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 358
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v5

    .line 359
    invoke-virtual {v13}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getInterfaceId(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v7

    .line 360
    invoke-virtual/range {v20 .. v20}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x7d1

    .line 362
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-string v12, "receive passThrough message"

    .line 359
    invoke-virtual/range {v5 .. v12}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V

    .line 365
    invoke-virtual/range {v20 .. v20}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 367
    const-string v4, "messageId"

    invoke-virtual/range {v20 .. v20}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    const-string v4, "eventMessageType"

    const/16 v5, 0x7d0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 372
    :cond_a
    invoke-static {v13}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isBusinessMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 374
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v5

    .line 375
    invoke-virtual {v13}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getInterfaceId(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v7

    .line 376
    invoke-virtual/range {v20 .. v20}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xbb9

    .line 378
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-string v12, "receive business message"

    .line 375
    invoke-virtual/range {v5 .. v12}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V

    .line 381
    invoke-virtual/range {v20 .. v20}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 383
    const-string v4, "messageId"

    invoke-virtual/range {v20 .. v20}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    const-string v4, "eventMessageType"

    const/16 v5, 0xbb8

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 389
    :cond_b
    if-eqz v20, :cond_c

    invoke-virtual/range {v20 .. v20}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 390
    invoke-virtual/range {v20 .. v20}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    move-object/from16 v0, v20

    iget v4, v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->passThrough:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_c

    .line 392
    invoke-virtual/range {v20 .. v20}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isNotifyForeground(Ljava/util/Map;)Z

    move-result v4

    if-nez v4, :cond_12

    iget-object v4, v13, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    .line 393
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isApplicationForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 396
    :cond_c
    const-string v4, "com.xiaomi.xmsf"

    iget-object v5, v13, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 397
    invoke-virtual {v13}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isEncryptAction()Z

    move-result v4

    if-nez v4, :cond_d

    if-eqz v20, :cond_d

    .line 399
    invoke-virtual/range {v20 .. v20}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 400
    invoke-virtual/range {v20 .. v20}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v4

    const-string v5, "ab"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 401
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/xiaomi/push/service/MIPushEventProcessor;->sendAckMessage(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V

    .line 402
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receive abtest message. ack it."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 496
    :goto_1
    invoke-virtual {v13}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getAction()Lcom/xiaomi/xmpush/thrift/ActionType;

    move-result-object v4

    sget-object v5, Lcom/xiaomi/xmpush/thrift/ActionType;->UnRegistration:Lcom/xiaomi/xmpush/thrift/ActionType;

    if-ne v4, v5, :cond_2

    const-string v4, "com.xiaomi.xmsf"

    .line 497
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 498
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->stopSelf()V

    goto/16 :goto_0

    .line 404
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-static {v0, v1, v13, v2}, Lcom/xiaomi/push/service/MIPushEventProcessor;->shouldSendBroadcast(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)Z

    move-result v24

    .line 405
    .local v24, "shouldSendBroadcast":Z
    if-eqz v24, :cond_11

    .line 406
    if-eqz v20, :cond_e

    invoke-virtual/range {v20 .. v20}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 407
    invoke-static {v13}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isPassThoughMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 408
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v4

    .line 409
    invoke-virtual {v13}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getInterfaceId(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v6

    .line 410
    invoke-virtual/range {v20 .. v20}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x7d2

    const-string/jumbo v9, "try send passThrough message Broadcast"

    .line 409
    invoke-virtual/range {v4 .. v9}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 426
    :cond_e
    :goto_2
    iget-object v4, v13, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    .line 427
    invoke-static {v4}, Lcom/xiaomi/push/service/MIPushHelper;->getReceiverPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 426
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lcom/xiaomi/push/service/XMPushService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    .line 413
    :cond_f
    invoke-static {v13}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isBusinessMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 414
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v4

    .line 415
    invoke-virtual {v13}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getInterfaceId(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v6

    .line 416
    invoke-virtual/range {v20 .. v20}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "try show awake message , but it don\'t show in foreground"

    .line 415
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent4NeedDrop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 418
    :cond_10
    invoke-static {v13}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isNormalNotificationMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 419
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v4

    .line 420
    invoke-virtual {v13}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getInterfaceId(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v6

    .line 421
    invoke-virtual/range {v20 .. v20}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "try show notification message , but it don\'t show in foreground"

    .line 420
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent4NeedDrop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 429
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v4

    .line 430
    invoke-virtual {v13}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getInterfaceId(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v20 .. v20}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v7

    const-string v8, "passThough message: not permit to send broadcast "

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent4NeedDrop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 437
    .end local v24    # "shouldSendBroadcast":Z
    :cond_12
    const/16 v17, 0x0

    .line 438
    .local v17, "isDupMessage":Z
    const/16 v18, 0x0

    .line 439
    .local v18, "key":Ljava/lang/String;
    if-eqz v20, :cond_15

    .line 440
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->extra:Ljava/util/Map;

    if-eqz v4, :cond_13

    .line 441
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->extra:Ljava/util/Map;

    const-string v5, "jobkey"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "key":Ljava/lang/String;
    check-cast v18, Ljava/lang/String;

    .line 443
    .restart local v18    # "key":Ljava/lang/String;
    :cond_13
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 444
    invoke-virtual/range {v20 .. v20}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v18

    .line 446
    :cond_14
    iget-object v4, v13, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v4, v1}, Lcom/xiaomi/push/service/MiPushMessageDuplicate;->isDuplicateMessage(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    .line 449
    :cond_15
    if-eqz v17, :cond_17

    .line 450
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v4

    .line 451
    invoke-virtual {v13}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getInterfaceId(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v20 .. v20}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v7

    const-string v8, "drop a duplicate message"

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent4DUPMD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drop a duplicate message, key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 488
    :cond_16
    :goto_3
    if-eqz p4, :cond_19

    .line 489
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v13, v4, v5, v6}, Lcom/xiaomi/push/service/MIPushEventProcessor;->sendGeoAck(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;ZZZ)V

    goto/16 :goto_1

    .line 456
    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v13, v1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->notifyPushMessage(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;[B)Lcom/xiaomi/push/service/MIPushNotificationHelper$NotifyPushMessageInfo;

    move-result-object v16

    .line 457
    .local v16, "info":Lcom/xiaomi/push/service/MIPushNotificationHelper$NotifyPushMessageInfo;
    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/xiaomi/push/service/MIPushNotificationHelper$NotifyPushMessageInfo;->traffic:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_18

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/xiaomi/push/service/MIPushNotificationHelper$NotifyPushMessageInfo;->targetPkgName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 458
    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/xiaomi/push/service/MIPushNotificationHelper$NotifyPushMessageInfo;->targetPkgName:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/xiaomi/push/service/MIPushNotificationHelper$NotifyPushMessageInfo;->traffic:J

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 459
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object/from16 v4, p0

    .line 458
    invoke-static/range {v4 .. v11}, Lcom/xiaomi/smack/util/TrafficUtils;->distributionTraffic(Landroid/content/Context;Ljava/lang/String;JZZJ)V

    .line 463
    :cond_18
    invoke-static {v13}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isBusinessMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 464
    new-instance v19, Landroid/content/Intent;

    const-string v4, "com.xiaomi.mipush.MESSAGE_ARRIVED"

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 465
    .local v19, "messageArrivedIntent":Landroid/content/Intent;
    const-string v4, "mipush_payload"

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 466
    iget-object v4, v13, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    .line 469
    .local v22, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v23

    .line 471
    .local v23, "receiverList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v23, :cond_16

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_16

    .line 472
    iget-object v4, v13, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    .line 473
    invoke-static {v4}, Lcom/xiaomi/push/service/MIPushHelper;->getReceiverPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 472
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Lcom/xiaomi/push/service/XMPushService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 475
    .end local v22    # "pm":Landroid/content/pm/PackageManager;
    .end local v23    # "receiverList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v14

    .line 476
    .local v14, "e":Ljava/lang/Exception;
    iget-object v4, v13, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    .line 477
    invoke-static {v4}, Lcom/xiaomi/push/service/MIPushHelper;->getReceiverPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 476
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Lcom/xiaomi/push/service/XMPushService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 478
    if-eqz v14, :cond_16

    .line 479
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v4

    invoke-virtual {v13}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getInterfaceId(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v20 .. v20}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v7

    .line 480
    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    .line 479
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent4ERROR(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 491
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v16    # "info":Lcom/xiaomi/push/service/MIPushNotificationHelper$NotifyPushMessageInfo;
    .end local v19    # "messageArrivedIntent":Landroid/content/Intent;
    :cond_19
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/xiaomi/push/service/MIPushEventProcessor;->sendAckMessage(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V

    goto/16 :goto_1

    .line 500
    .end local v17    # "isDupMessage":Z
    .end local v18    # "key":Ljava/lang/String;
    :cond_1a
    iget-object v4, v13, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils;->isPkgInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 503
    invoke-static {v13}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isNPBMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 504
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v4

    .line 505
    invoke-virtual {v13}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getInterfaceId(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v20 .. v20}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v7

    const-string v8, "receive a message, but the package is removed."

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent4ERROR(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    :cond_1b
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/xiaomi/push/service/MIPushEventProcessor;->sendAppNotInstallNotification(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V

    goto/16 :goto_0

    .line 509
    :cond_1c
    const-string v4, "receive a mipush message, we can see the app, but we can\'t see the receiver."

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 511
    invoke-static {v13}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isNPBMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 512
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v4

    .line 513
    invoke-virtual {v13}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getInterfaceId(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v20 .. v20}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v7

    const-string v8, "receive a mipush message, we can see the app, but we can\'t see the receiver."

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent4ERROR(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static predefinedNotification(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z
    .locals 2
    .param p0, "container"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .prologue
    .line 650
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getMetaInfo()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v0

    .line 651
    .local v0, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    const-string v1, "notify_effect"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static processGeoMessage(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;[B)Z
    .locals 16
    .param p0, "pushService"    # Lcom/xiaomi/push/service/XMPushService;
    .param p1, "metaInfo"    # Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    .param p2, "decryptedContent"    # [B

    .prologue
    .line 236
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v3

    .line 237
    .local v3, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "__geo_ids"

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 238
    .local v8, "ids":[Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v6, "geoMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    array-length v12, v8

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    if-ge v11, v12, :cond_2

    aget-object v7, v8, v11

    .line 241
    .local v7, "id":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/push/service/GeoFenceDao;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/GeoFenceDao;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/xiaomi/push/service/GeoFenceDao;->findGeoFencingById(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/GeoFencing;

    move-result-object v10

    if-nez v10, :cond_0

    .line 240
    :goto_1
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    goto :goto_0

    .line 244
    :cond_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 245
    .local v5, "geoMessage":Landroid/content/ContentValues;
    const-string v10, "geo_id"

    invoke-virtual {v5, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v10, "message_id"

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v10, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v10, "__geo_action"

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 248
    .local v2, "action":I
    const-string v10, "action"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v5, v10, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 249
    const-string v10, "content"

    move-object/from16 v0, p2

    invoke-virtual {v5, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 250
    const-string v13, "deadline"

    const-string v10, "__geo_deadline"

    .line 251
    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 250
    invoke-virtual {v5, v13, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 253
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/push/service/GeoFenceDao;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/GeoFenceDao;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/xiaomi/push/service/GeoFenceDao;->findGeoStatueByGeoId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 255
    .local v4, "geoFenceStatue":Ljava/lang/String;
    const-string v10, "Enter"

    invoke-static {v4, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    if-ne v2, v10, :cond_1

    .line 257
    const/4 v10, 0x1

    .line 266
    .end local v2    # "action":I
    .end local v4    # "geoFenceStatue":Ljava/lang/String;
    .end local v5    # "geoMessage":Landroid/content/ContentValues;
    .end local v7    # "id":Ljava/lang/String;
    :goto_2
    return v10

    .line 259
    .restart local v2    # "action":I
    .restart local v4    # "geoFenceStatue":Ljava/lang/String;
    .restart local v5    # "geoMessage":Landroid/content/ContentValues;
    .restart local v7    # "id":Ljava/lang/String;
    :cond_1
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 262
    .end local v2    # "action":I
    .end local v4    # "geoFenceStatue":Ljava/lang/String;
    .end local v5    # "geoMessage":Landroid/content/ContentValues;
    .end local v7    # "id":Ljava/lang/String;
    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/push/service/GeoFenceMessageDao;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/GeoFenceMessageDao;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/xiaomi/push/service/GeoFenceMessageDao;->insertGeoMessages(Ljava/util/ArrayList;)Z

    move-result v9

    .line 263
    .local v9, "insertResult":Z
    if-nez v9, :cond_3

    .line 264
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "geofence added some new geofence message failed messagi_id:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 266
    :cond_3
    const/4 v10, 0x0

    goto :goto_2
.end method

.method private static processMIPushMessage(Lcom/xiaomi/push/service/XMPushService;[BJ)V
    .locals 26
    .param p0, "pushService"    # Lcom/xiaomi/push/service/XMPushService;
    .param p1, "decryptedContent"    # [B
    .param p2, "packetBytesLen"    # J

    .prologue
    .line 92
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushEventProcessor;->buildContainer([B)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    move-result-object v13

    .line 93
    .local v13, "container":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    if-nez v13, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v4, v13, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 98
    const-string v4, "receive a mipush message without package name"

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    .line 102
    .local v21, "receiveTime":Ljava/lang/Long;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/xiaomi/push/service/MIPushEventProcessor;->buildIntent([BJ)Landroid/content/Intent;

    move-result-object v15

    .line 104
    .local v15, "intent":Landroid/content/Intent;
    invoke-static {v13}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getTargetPackage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v5

    .line 106
    .local v5, "realTargetPackage":Ljava/lang/String;
    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object/from16 v4, p0

    move-wide/from16 v6, p2

    .line 106
    invoke-static/range {v4 .. v11}, Lcom/xiaomi/smack/util/TrafficUtils;->distributionTraffic(Landroid/content/Context;Ljava/lang/String;JZZJ)V

    .line 112
    invoke-virtual {v13}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getMetaInfo()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v17

    .line 113
    .local v17, "metaInfo":Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    if-eqz v17, :cond_3

    .line 114
    const-string v4, "mrt"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v6}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->putToExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_3
    sget-object v4, Lcom/xiaomi/xmpush/thrift/ActionType;->SendMessage:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-virtual {v13}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getAction()Lcom/xiaomi/xmpush/thrift/ActionType;

    move-result-object v6

    if-ne v4, v6, :cond_5

    .line 117
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/push/service/MIPushAppInfo;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/MIPushAppInfo;

    move-result-object v4

    iget-object v6, v13, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/xiaomi/push/service/MIPushAppInfo;->isUnRegistered(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 118
    invoke-static {v13}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isBusinessMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 119
    const-string v20, ""

    .line 120
    .local v20, "msgId":Ljava/lang/String;
    if-eqz v17, :cond_4

    .line 121
    invoke-virtual/range {v17 .. v17}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v20

    .line 122
    invoke-static {v13}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isNPBMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v4

    invoke-virtual {v13}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getInterfaceId(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Drop a message for unregistered"

    move-object/from16 v0, v20

    invoke-virtual {v4, v6, v7, v0, v8}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent4NeedDrop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Drop a message for unregistered, msgid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 127
    iget-object v4, v13, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v13, v4}, Lcom/xiaomi/push/service/MIPushEventProcessor;->sendAppAbsentAck(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 131
    .end local v20    # "msgId":Ljava/lang/String;
    :cond_5
    sget-object v4, Lcom/xiaomi/xmpush/thrift/ActionType;->SendMessage:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-virtual {v13}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getAction()Lcom/xiaomi/xmpush/thrift/ActionType;

    move-result-object v6

    if-ne v4, v6, :cond_7

    .line 132
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/push/service/MIPushAppInfo;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/MIPushAppInfo;

    move-result-object v4

    iget-object v6, v13, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/xiaomi/push/service/MIPushAppInfo;->isPushDisabled4User(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 133
    invoke-static {v13}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isBusinessMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 134
    const-string v20, ""

    .line 135
    .restart local v20    # "msgId":Ljava/lang/String;
    if-eqz v17, :cond_6

    .line 136
    invoke-virtual/range {v17 .. v17}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v20

    .line 137
    invoke-static {v13}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isNPBMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v4

    invoke-virtual {v13}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getInterfaceId(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Drop a message for push closed"

    move-object/from16 v0, v20

    invoke-virtual {v4, v6, v7, v0, v8}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent4NeedDrop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Drop a message for push closed, msgid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 142
    iget-object v4, v13, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v13, v4}, Lcom/xiaomi/push/service/MIPushEventProcessor;->sendAppAbsentAck(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 146
    .end local v20    # "msgId":Ljava/lang/String;
    :cond_7
    sget-object v4, Lcom/xiaomi/xmpush/thrift/ActionType;->SendMessage:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-virtual {v13}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getAction()Lcom/xiaomi/xmpush/thrift/ActionType;

    move-result-object v6

    if-ne v4, v6, :cond_8

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "com.xiaomi.xmsf"

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v13, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Receive a message with wrong package name, expect "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", received "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v13, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 150
    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 152
    const-string/jumbo v4, "unmatched_package"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "package should be "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", but got "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v13, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 152
    move-object/from16 v0, p0

    invoke-static {v0, v13, v4, v6}, Lcom/xiaomi/push/service/MIPushEventProcessor;->sendErrorAck(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    if-eqz v17, :cond_0

    .line 156
    invoke-static {v13}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isNPBMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v4

    .line 158
    invoke-virtual {v13}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getInterfaceId(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v17 .. v17}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Receive a message with wrong package name"

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent4NeedDrop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 165
    :cond_8
    if-eqz v17, :cond_9

    invoke-virtual/range {v17 .. v17}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 166
    const-string v4, "receive a message, appid=%1$s, msgid= %2$s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v13}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getAppid()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 167
    invoke-virtual/range {v17 .. v17}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 166
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 171
    :cond_9
    if-eqz v17, :cond_a

    .line 172
    invoke-virtual/range {v17 .. v17}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v14

    .line 173
    .local v14, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v14, :cond_a

    const-string v4, "hide"

    invoke-interface {v14, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string/jumbo v6, "true"

    const-string v4, "hide"

    .line 174
    invoke-interface {v14, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 175
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/xiaomi/push/service/MIPushEventProcessor;->sendAckMessage(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V

    goto/16 :goto_0

    .line 181
    .end local v14    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_a
    if-eqz v17, :cond_f

    invoke-virtual/range {v17 .. v17}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-virtual/range {v17 .. v17}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v4

    const-string v6, "__miid"

    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 182
    invoke-virtual/range {v17 .. v17}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v14

    .line 183
    .restart local v14    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "__miid"

    invoke-interface {v14, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 184
    .local v19, "miid":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/channel/commonutils/android/MIIDUtils;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v18

    .line 185
    .local v18, "miAccount":Landroid/accounts/Account;
    if-eqz v18, :cond_b

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 186
    :cond_b
    invoke-static {v13}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isNPBMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v4

    .line 188
    invoke-virtual {v13}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->getInterfaceId(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v17 .. v17}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v8

    const-string v9, "miid already logout or anther already login"

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent4NeedDrop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " should be login, but got "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    const-string v4, "nothing"

    :goto_1
    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 191
    const-string v6, "miid already logout or anther already login"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " should be login, but got "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_e

    const-string v4, "nothing"

    :goto_2
    move-object/from16 v0, p0

    invoke-static {v0, v13, v6, v4}, Lcom/xiaomi/push/service/MIPushEventProcessor;->sendErrorAck(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 190
    :cond_d
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_1

    .line 191
    :cond_e
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_2

    .line 198
    .end local v14    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v18    # "miAccount":Landroid/accounts/Account;
    .end local v19    # "miid":Ljava/lang/String;
    :cond_f
    if-eqz v17, :cond_10

    invoke-virtual/range {v17 .. v17}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/push/service/MIPushEventProcessor;->verifyGeoMessage(Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/16 v22, 0x1

    .line 199
    .local v22, "relatedToGeo":Z
    :goto_3
    if-eqz v22, :cond_12

    .line 200
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/push/service/GeoFenceUtils;->getGeoEnableSwitch(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 201
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v6, p0

    move-object v7, v13

    invoke-static/range {v6 .. v11}, Lcom/xiaomi/push/service/MIPushEventProcessor;->sendGeoAck(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;ZZZZ)V

    goto/16 :goto_0

    .line 198
    .end local v22    # "relatedToGeo":Z
    :cond_10
    const/16 v22, 0x0

    goto :goto_3

    .line 206
    .restart local v22    # "relatedToGeo":Z
    :cond_11
    invoke-static/range {v17 .. v17}, Lcom/xiaomi/push/service/MIPushEventProcessor;->shouldGeoLocalCheck(Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)Z

    move-result v23

    .line 207
    .local v23, "shouldLocalCheck":Z
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/push/service/GeoFenceUtils;->canLocalCheck(Landroid/content/Context;)Z

    move-result v12

    .line 208
    .local v12, "canLocalCheck":Z
    if-eqz v23, :cond_13

    if-eqz v12, :cond_13

    const/16 v16, 0x1

    .line 209
    .local v16, "localCheck":Z
    :goto_4
    if-nez v16, :cond_14

    .line 210
    const/16 v24, 0x1

    .line 217
    .local v24, "showNow":Z
    :goto_5
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v13, v4, v6, v7}, Lcom/xiaomi/push/service/MIPushEventProcessor;->sendGeoAck(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;ZZZ)V

    .line 218
    if-eqz v24, :cond_0

    .line 223
    .end local v12    # "canLocalCheck":Z
    .end local v16    # "localCheck":Z
    .end local v23    # "shouldLocalCheck":Z
    .end local v24    # "showNow":Z
    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-static {v0, v5, v1, v15, v2}, Lcom/xiaomi/push/service/MIPushEventProcessor;->postProcessMIPushMessage(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;[BLandroid/content/Intent;Z)V

    goto/16 :goto_0

    .line 208
    .restart local v12    # "canLocalCheck":Z
    .restart local v23    # "shouldLocalCheck":Z
    :cond_13
    const/16 v16, 0x0

    goto :goto_4

    .line 212
    .restart local v16    # "localCheck":Z
    :cond_14
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/xiaomi/push/service/MIPushEventProcessor;->geoMessageIsValidated(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 215
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/xiaomi/push/service/MIPushEventProcessor;->processGeoMessage(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;[B)Z

    move-result v24

    .restart local v24    # "showNow":Z
    goto :goto_5
.end method

.method private static sendAckMessage(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V
    .locals 2
    .param p0, "pushService"    # Lcom/xiaomi/push/service/XMPushService;
    .param p1, "container"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .prologue
    .line 680
    new-instance v0, Lcom/xiaomi/push/service/MIPushEventProcessor$2;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0, p1}, Lcom/xiaomi/push/service/MIPushEventProcessor$2;-><init>(ILcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->executeJob(Lcom/xiaomi/push/service/XMPushService$Job;)V

    .line 699
    return-void
.end method

.method private static sendAppAbsentAck(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;Ljava/lang/String;)V
    .locals 2
    .param p0, "pushService"    # Lcom/xiaomi/push/service/XMPushService;
    .param p1, "container"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .param p2, "realTargetPackage"    # Ljava/lang/String;

    .prologue
    .line 751
    new-instance v0, Lcom/xiaomi/push/service/MIPushEventProcessor$5;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/xiaomi/push/service/MIPushEventProcessor$5;-><init>(ILcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->executeJob(Lcom/xiaomi/push/service/XMPushService$Job;)V

    .line 771
    return-void
.end method

.method private static sendAppNotInstallNotification(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V
    .locals 2
    .param p0, "pushService"    # Lcom/xiaomi/push/service/XMPushService;
    .param p1, "container"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .prologue
    .line 566
    new-instance v0, Lcom/xiaomi/push/service/MIPushEventProcessor$1;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0, p1}, Lcom/xiaomi/push/service/MIPushEventProcessor$1;-><init>(ILcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->executeJob(Lcom/xiaomi/push/service/XMPushService$Job;)V

    .line 585
    return-void
.end method

.method private static sendErrorAck(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "pushService"    # Lcom/xiaomi/push/service/XMPushService;
    .param p1, "container"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .param p2, "error"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 775
    new-instance v0, Lcom/xiaomi/push/service/MIPushEventProcessor$6;

    const/4 v1, 0x4

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/push/service/MIPushEventProcessor$6;-><init>(ILcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->executeJob(Lcom/xiaomi/push/service/XMPushService$Job;)V

    .line 796
    return-void
.end method

.method public static sendGeoAck(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;ZZZ)V
    .locals 6
    .param p0, "pushService"    # Lcom/xiaomi/push/service/XMPushService;
    .param p1, "container"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .param p2, "isGeoReceived"    # Z
    .param p3, "isGeoShowed"    # Z
    .param p4, "isGeoPassed"    # Z

    .prologue
    .line 809
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/push/service/MIPushEventProcessor;->sendGeoAck(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;ZZZZ)V

    .line 810
    return-void
.end method

.method public static sendGeoAck(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;ZZZZ)V
    .locals 8
    .param p0, "pushService"    # Lcom/xiaomi/push/service/XMPushService;
    .param p1, "container"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .param p2, "isGeoReceived"    # Z
    .param p3, "isGeoShowed"    # Z
    .param p4, "isGeoPassed"    # Z
    .param p5, "isGeoUnauthorized"    # Z

    .prologue
    .line 814
    new-instance v0, Lcom/xiaomi/push/service/MIPushEventProcessor$7;

    const/4 v1, 0x4

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/push/service/MIPushEventProcessor$7;-><init>(ILcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;ZZZZ)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->executeJob(Lcom/xiaomi/push/service/XMPushService$Job;)V

    .line 839
    return-void
.end method

.method private static sendMIUINewAdsAckMessage(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V
    .locals 2
    .param p0, "pushService"    # Lcom/xiaomi/push/service/XMPushService;
    .param p1, "container"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .prologue
    .line 727
    new-instance v0, Lcom/xiaomi/push/service/MIPushEventProcessor$4;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0, p1}, Lcom/xiaomi/push/service/MIPushEventProcessor$4;-><init>(ILcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->executeJob(Lcom/xiaomi/push/service/XMPushService$Job;)V

    .line 747
    return-void
.end method

.method private static sendMIUIOldAdsAckMessage(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V
    .locals 2
    .param p0, "pushService"    # Lcom/xiaomi/push/service/XMPushService;
    .param p1, "container"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .prologue
    .line 703
    new-instance v0, Lcom/xiaomi/push/service/MIPushEventProcessor$3;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0, p1}, Lcom/xiaomi/push/service/MIPushEventProcessor$3;-><init>(ILcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->executeJob(Lcom/xiaomi/push/service/XMPushService$Job;)V

    .line 723
    return-void
.end method

.method public static shouldGeoLocalCheck(Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)Z
    .locals 3
    .param p0, "metaInfo"    # Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    .prologue
    const/4 v1, 0x0

    .line 906
    if-nez p0, :cond_1

    .line 914
    :cond_0
    :goto_0
    return v1

    .line 909
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v0

    .line 910
    .local v0, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 914
    const-string v2, "1"

    const-string v1, "__geo_local_check"

    .line 915
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 914
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0
.end method

.method private static shouldSendBroadcast(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)Z
    .locals 9
    .param p0, "pushService"    # Lcom/xiaomi/push/service/XMPushService;
    .param p1, "realTargetPackage"    # Ljava/lang/String;
    .param p2, "container"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .param p3, "metaInfo"    # Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    .prologue
    .line 526
    const/4 v5, 0x1

    .line 527
    .local v5, "sendBroadcast":Z
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 528
    invoke-virtual {p3}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v6

    const-string v7, "__check_alive"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 529
    invoke-virtual {p3}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v6

    const-string v7, "__awake"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 530
    new-instance v4, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    invoke-direct {v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;-><init>()V

    .line 531
    .local v4, "notification":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    invoke-virtual {p2}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getAppid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setAppId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 532
    invoke-virtual {v4, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setPackageName(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 533
    sget-object v6, Lcom/xiaomi/xmpush/thrift/NotificationType;->AwakeSystemApp:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v6, v6, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setType(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 534
    invoke-virtual {p3}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 535
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v4, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    .line 536
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils;->isAppRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 537
    .local v1, "appRunning":Z
    iget-object v6, v4, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    const-string v7, "app_running"

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    if-nez v1, :cond_0

    .line 541
    invoke-virtual {p3}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v6

    const-string v7, "__awake"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 542
    .local v2, "awake":Z
    iget-object v6, v4, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    const-string v7, "awaked"

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    if-nez v2, :cond_0

    .line 544
    const/4 v5, 0x0

    .line 549
    .end local v2    # "awake":Z
    :cond_0
    invoke-virtual {p2}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getAppid()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/xiaomi/xmpush/thrift/ActionType;->Notification:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 548
    invoke-static {v6, v7, v4, v8}, Lcom/xiaomi/push/service/MIPushHelper;->generateRequestContainer(Ljava/lang/String;Ljava/lang/String;Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    move-result-object v0

    .line 551
    .local v0, "actionContainer":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    :try_start_0
    invoke-static {p0, v0}, Lcom/xiaomi/push/service/MIPushHelper;->sendPacket(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V
    :try_end_0
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    .end local v0    # "actionContainer":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .end local v1    # "appRunning":Z
    .end local v4    # "notification":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    :cond_1
    :goto_0
    return v5

    .line 552
    .restart local v0    # "actionContainer":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .restart local v1    # "appRunning":Z
    .restart local v4    # "notification":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    :catch_0
    move-exception v3

    .line 553
    .local v3, "e":Lcom/xiaomi/smack/XMPPException;
    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static verifyGeoMessage(Ljava/util/Map;)Z
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
    .local p0, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 594
    if-nez p0, :cond_1

    .line 601
    :cond_0
    :goto_0
    return v0

    .line 598
    :cond_1
    const-string v1, "__geo_ids"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 601
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public processChannelOpenResult(Landroid/content/Context;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;ZILjava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loginInfo"    # Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    .param p3, "succeeded"    # Z
    .param p4, "reason"    # I
    .param p5, "msg"    # Ljava/lang/String;

    .prologue
    .line 46
    if-nez p3, :cond_0

    .line 47
    invoke-static {p1}, Lcom/xiaomi/push/service/MIPushAccountUtils;->getMIPushAccount(Landroid/content/Context;)Lcom/xiaomi/push/service/MIPushAccount;

    move-result-object v1

    .line 48
    .local v1, "pushAccount":Lcom/xiaomi/push/service/MIPushAccount;
    if-eqz v1, :cond_0

    const-string/jumbo v2, "token-expired"

    invoke-virtual {v2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    :try_start_0
    iget-object v2, v1, Lcom/xiaomi/push/service/MIPushAccount;->packageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/push/service/MIPushAccount;->appId:Ljava/lang/String;

    iget-object v4, v1, Lcom/xiaomi/push/service/MIPushAccount;->appToken:Ljava/lang/String;

    .line 51
    invoke-static {p1, v2, v3, v4}, Lcom/xiaomi/push/service/MIPushAccountUtils;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/MIPushAccount;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 59
    .end local v1    # "pushAccount":Lcom/xiaomi/push/service/MIPushAccount;
    :cond_0
    :goto_0
    return-void

    .line 52
    .restart local v1    # "pushAccount":Lcom/xiaomi/push/service/MIPushAccount;
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 54
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 55
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public processNewPacket(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/slim/Blob;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)V
    .locals 4
    .param p1, "pushService"    # Lcom/xiaomi/push/service/XMPushService;
    .param p2, "blob"    # Lcom/xiaomi/slim/Blob;
    .param p3, "loginInfo"    # Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    .prologue
    .line 83
    :try_start_0
    iget-object v2, p3, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->security:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/xiaomi/slim/Blob;->getDecryptedPayload(Ljava/lang/String;)[B

    move-result-object v0

    .line 84
    .local v0, "decryptedContent":[B
    invoke-virtual {p2}, Lcom/xiaomi/slim/Blob;->getSerializedSize()I

    move-result v2

    int-to-long v2, v2

    invoke-static {p1, v0, v2, v3}, Lcom/xiaomi/push/service/MIPushEventProcessor;->processMIPushMessage(Lcom/xiaomi/push/service/XMPushService;[BJ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v0    # "decryptedContent":[B
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public processNewPacket(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/packet/Packet;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)V
    .locals 8
    .param p1, "pushService"    # Lcom/xiaomi/push/service/XMPushService;
    .param p2, "packet"    # Lcom/xiaomi/smack/packet/Packet;
    .param p3, "loginInfo"    # Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    .prologue
    .line 63
    instance-of v5, p2, Lcom/xiaomi/smack/packet/Message;

    if-eqz v5, :cond_1

    move-object v4, p2

    .line 64
    check-cast v4, Lcom/xiaomi/smack/packet/Message;

    .line 65
    .local v4, "miMessage":Lcom/xiaomi/smack/packet/Message;
    const-string v5, "s"

    invoke-virtual {v4, v5}, Lcom/xiaomi/smack/packet/Message;->getExtension(Ljava/lang/String;)Lcom/xiaomi/smack/packet/CommonPacketExtension;

    move-result-object v2

    .line 66
    .local v2, "extension":Lcom/xiaomi/smack/packet/CommonPacketExtension;
    if-eqz v2, :cond_0

    .line 68
    :try_start_0
    iget-object v5, p3, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->security:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/xiaomi/smack/packet/Message;->getPacketID()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaomi/push/service/RC4Cryption;->generateKeyForRC4(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    .line 69
    .local v3, "key":[B
    invoke-virtual {v2}, Lcom/xiaomi/smack/packet/CommonPacketExtension;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/xiaomi/push/service/RC4Cryption;->decrypt([BLjava/lang/String;)[B

    move-result-object v0

    .line 70
    .local v0, "decryptedContent":[B
    invoke-virtual {p2}, Lcom/xiaomi/smack/packet/Packet;->toXML()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/smack/util/TrafficUtils;->getTrafficFlow(Ljava/lang/String;)I

    move-result v5

    int-to-long v6, v5

    invoke-static {p1, v0, v6, v7}, Lcom/xiaomi/push/service/MIPushEventProcessor;->processMIPushMessage(Lcom/xiaomi/push/service/XMPushService;[BJ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v0    # "decryptedContent":[B
    .end local v2    # "extension":Lcom/xiaomi/smack/packet/CommonPacketExtension;
    .end local v3    # "key":[B
    .end local v4    # "miMessage":Lcom/xiaomi/smack/packet/Message;
    :cond_0
    :goto_0
    return-void

    .line 71
    .restart local v2    # "extension":Lcom/xiaomi/smack/packet/CommonPacketExtension;
    .restart local v4    # "miMessage":Lcom/xiaomi/smack/packet/Message;
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 76
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v2    # "extension":Lcom/xiaomi/smack/packet/CommonPacketExtension;
    .end local v4    # "miMessage":Lcom/xiaomi/smack/packet/Message;
    :cond_1
    const-string v5, "not a mipush message"

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method
