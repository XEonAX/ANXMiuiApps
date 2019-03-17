.class public Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;
.super Ljava/lang/Object;
.source "GeoFenceRegMessageProcessor.java"


# static fields
.field private static volatile sInstance:Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "GeoFenceRegMessageProcessor."

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;->TAG:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method

.method private constructRegistedGeoFencing(Z)Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;
    .locals 6
    .param p1, "localCache"    # Z

    .prologue
    .line 244
    new-instance v2, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;

    invoke-direct {v2}, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;-><init>()V

    .line 245
    .local v2, "syncGeoFencings":Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 246
    .local v3, "syncGeoSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/xiaomi/xmpush/thrift/GeoFencing;>;"
    if-eqz p1, :cond_0

    .line 247
    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/push/service/GeoFenceDao;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/GeoFenceDao;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/push/service/GeoFenceDao;->findAllGeoFencing()Ljava/util/ArrayList;

    move-result-object v0

    .line 248
    .local v0, "allRegistedGeoFencing":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/GeoFencing;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/xmpush/thrift/GeoFencing;

    .line 249
    .local v1, "geoFencing":Lcom/xiaomi/xmpush/thrift/GeoFencing;
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 252
    .end local v0    # "allRegistedGeoFencing":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/GeoFencing;>;"
    .end local v1    # "geoFencing":Lcom/xiaomi/xmpush/thrift/GeoFencing;
    :cond_0
    invoke-virtual {v2, v3}, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->setGeoFencings(Ljava/util/Set;)Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;

    .line 253
    return-object v2
.end method

.method private convertGeoFence(Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;Z)Lcom/xiaomi/xmpush/thrift/GeoFencing;
    .locals 4
    .param p1, "notification"    # Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    .param p2, "localCache"    # Z

    .prologue
    const/4 v2, 0x0

    .line 145
    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/push/service/GeoFenceUtils;->checkMetoknlpVersionAbove(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v1, v2

    .line 160
    :goto_0
    return-object v1

    .line 148
    :cond_0
    if-eqz p2, :cond_1

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/push/service/GeoFenceUtils;->verifyGeoChannel(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v1, v2

    .line 149
    goto :goto_0

    .line 153
    :cond_1
    :try_start_0
    new-instance v1, Lcom/xiaomi/xmpush/thrift/GeoFencing;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;-><init>()V

    .line 155
    .local v1, "geoFencing":Lcom/xiaomi/xmpush/thrift/GeoFencing;
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getBinaryExtra()[B

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->convertByteArrayToThriftObject(Lorg/apache/thrift/TBase;[B)V
    :try_end_0
    .catch Lorg/apache/thrift/TException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    .end local v1    # "geoFencing":Lcom/xiaomi/xmpush/thrift/GeoFencing;
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Lorg/apache/thrift/TException;
    invoke-virtual {v0}, Lorg/apache/thrift/TException;->printStackTrace()V

    move-object v1, v2

    .line 160
    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    sget-object v0, Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;->sInstance:Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;

    if-nez v0, :cond_1

    .line 44
    const-class v1, Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;

    monitor-enter v1

    .line 45
    :try_start_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;->sInstance:Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;

    invoke-direct {v0, p0}, Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;->sInstance:Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;

    .line 48
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_1
    sget-object v0, Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;->sInstance:Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private isGeoLocalCache(Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;)Z
    .locals 3
    .param p1, "notification"    # Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .prologue
    .line 273
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getExtra()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;->shouldGeoLocalCache(Ljava/util/Map;)Z

    move-result v1

    .line 274
    .local v1, "shouldLocalCache":Z
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/push/service/GeoFenceUtils;->canLocalCheck(Landroid/content/Context;)Z

    move-result v0

    .line 275
    .local v0, "canLocalCheck":Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static reportGeoAuthorizationNotificaion(Landroid/content/Context;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isEnbale"    # Z

    .prologue
    const/4 v4, 0x0

    .line 203
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    invoke-static {}, Lcom/xiaomi/push/service/PacketHelper;->generatePacketID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;-><init>(Ljava/lang/String;Z)V

    .line 204
    .local v0, "notification":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getAppID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setAppId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 205
    sget-object v1, Lcom/xiaomi/xmpush/thrift/NotificationType;->GeoAuthorized:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v1, v1, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setType(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 206
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    .line 207
    iget-object v1, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    const-string v2, "permission_to_location"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->Notification:Lcom/xiaomi/xmpush/thrift/ActionType;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v4, v3}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sendMessage(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZLcom/xiaomi/xmpush/thrift/PushMetaInfo;)V

    .line 210
    return-void
.end method

.method private reportGeoFencingProcessedResultNotification(Lcom/xiaomi/xmpush/thrift/GeoFencing;ZZ)V
    .locals 6
    .param p1, "geoFencing"    # Lcom/xiaomi/xmpush/thrift/GeoFencing;
    .param p2, "isReg"    # Z
    .param p3, "isUnauthorized"    # Z

    .prologue
    .line 170
    invoke-static {p1}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->convertThriftObjectToBytes(Lorg/apache/thrift/TBase;)[B

    move-result-object v0

    .line 171
    .local v0, "data":[B
    new-instance v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    invoke-static {}, Lcom/xiaomi/push/service/PacketHelper;->generatePacketID()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;-><init>(Ljava/lang/String;Z)V

    .line 172
    .local v1, "geoProcessedNotification":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    if-eqz p2, :cond_1

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->GeoRegsiterResult:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v2, v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setType(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 173
    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setBinaryExtra([B)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 174
    if-eqz p3, :cond_0

    .line 175
    const-string v2, "permission_to_location"

    sget-object v3, Lcom/xiaomi/push/service/PushServiceConstants;->GEO_VALUE_AUTHORIZATION_NOT_GRANT:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->putToExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/xmpush/thrift/ActionType;->Notification:Lcom/xiaomi/xmpush/thrift/ActionType;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sendMessage(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZLcom/xiaomi/xmpush/thrift/PushMetaInfo;)V

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GeoFenceRegMessageProcessor. report geo_fencing id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_2

    const-string v2, "geo_reg"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  isUnauthorized:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 181
    return-void

    .line 172
    :cond_1
    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->GeoUnregsiterResult:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v2, v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    goto :goto_0

    .line 180
    :cond_2
    const-string v2, "geo_unreg"

    goto :goto_1
.end method

.method private reportPackageUninstalledNotification(Lcom/xiaomi/xmpush/thrift/GeoFencing;)V
    .locals 6
    .param p1, "geoFencing"    # Lcom/xiaomi/xmpush/thrift/GeoFencing;

    .prologue
    .line 190
    invoke-static {p1}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->convertThriftObjectToBytes(Lorg/apache/thrift/TBase;)[B

    move-result-object v0

    .line 191
    .local v0, "data":[B
    new-instance v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    invoke-static {}, Lcom/xiaomi/push/service/PacketHelper;->generatePacketID()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;-><init>(Ljava/lang/String;Z)V

    .line 192
    .local v1, "packageUninstalledNotification":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->GeoPackageUninstalled:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v2, v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setType(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 193
    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setBinaryExtra([B)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 195
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/xmpush/thrift/ActionType;->Notification:Lcom/xiaomi/xmpush/thrift/ActionType;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sendMessage(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZLcom/xiaomi/xmpush/thrift/PushMetaInfo;)V

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GeoFenceRegMessageProcessor. report package not exist geo_fencing id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public static shouldGeoLocalCache(Ljava/util/Map;)Z
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
    .line 265
    .local p0, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 266
    const/4 v0, 0x0

    .line 268
    :goto_0
    return v0

    :cond_0
    const-string v1, "1"

    const-string v0, "__geo_local_cache"

    .line 269
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 268
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public processGeoFenceRegistration(Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;)V
    .locals 10
    .param p1, "notification"    # Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 61
    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;->isGeoLocalCache(Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;)Z

    move-result v2

    .line 62
    .local v2, "localCache":Z
    invoke-direct {p0, p1, v2}, Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;->convertGeoFence(Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;Z)Lcom/xiaomi/xmpush/thrift/GeoFencing;

    move-result-object v1

    .line 63
    .local v1, "geoFencing":Lcom/xiaomi/xmpush/thrift/GeoFencing;
    if-nez v1, :cond_1

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GeoFenceRegMessageProcessor. registration convert geofence object failed notification_id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/push/service/GeoFenceUtils;->getGeoEnableSwitch(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 68
    invoke-direct {p0, v1, v8, v8}, Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;->reportGeoFencingProcessedResultNotification(Lcom/xiaomi/xmpush/thrift/GeoFencing;ZZ)V

    goto :goto_0

    .line 72
    :cond_2
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils;->isPkgInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 75
    if-eqz v2, :cond_0

    .line 76
    invoke-direct {p0, v1}, Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;->reportPackageUninstalledNotification(Lcom/xiaomi/xmpush/thrift/GeoFencing;)V

    goto :goto_0

    .line 79
    :cond_3
    if-nez v2, :cond_4

    .line 80
    invoke-direct {p0, v1, v8, v9}, Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;->reportGeoFencingProcessedResultNotification(Lcom/xiaomi/xmpush/thrift/GeoFencing;ZZ)V

    goto :goto_0

    .line 84
    :cond_4
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/push/service/GeoFenceDao;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/GeoFenceDao;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/xiaomi/push/service/GeoFenceDao;->insertGeoFencing(Lcom/xiaomi/xmpush/thrift/GeoFencing;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_5

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GeoFenceRegMessageProcessor. insert a new geofence failed about geo_id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 88
    :cond_5
    new-instance v0, Lcom/xiaomi/mipush/sdk/GeoFenceRegister;

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/xiaomi/mipush/sdk/GeoFenceRegister;-><init>(Landroid/content/Context;)V

    .line 89
    .local v0, "geoFenceRegister":Lcom/xiaomi/mipush/sdk/GeoFenceRegister;
    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/GeoFenceRegister;->registerGeoFencer(Lcom/xiaomi/xmpush/thrift/GeoFencing;)Z

    .line 91
    invoke-direct {p0, v1, v8, v9}, Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;->reportGeoFencingProcessedResultNotification(Lcom/xiaomi/xmpush/thrift/GeoFencing;ZZ)V

    .line 92
    const-string v3, "GeoFenceRegMessageProcessor. receive geo reg notification"

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public processGeoFenceUnregistration(Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;)V
    .locals 6
    .param p1, "notification"    # Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .prologue
    const/4 v5, 0x0

    .line 102
    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;->isGeoLocalCache(Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;)Z

    move-result v2

    .line 103
    .local v2, "localCache":Z
    invoke-direct {p0, p1, v2}, Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;->convertGeoFence(Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;Z)Lcom/xiaomi/xmpush/thrift/GeoFencing;

    move-result-object v1

    .line 104
    .local v1, "geoFencing":Lcom/xiaomi/xmpush/thrift/GeoFencing;
    if-nez v1, :cond_1

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GeoFenceRegMessageProcessor. unregistration convert geofence object failed notification_id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/push/service/GeoFenceUtils;->getGeoEnableSwitch(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 109
    const/4 v3, 0x1

    invoke-direct {p0, v1, v5, v3}, Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;->reportGeoFencingProcessedResultNotification(Lcom/xiaomi/xmpush/thrift/GeoFencing;ZZ)V

    goto :goto_0

    .line 113
    :cond_2
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils;->isPkgInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 116
    if-eqz v2, :cond_0

    .line 117
    invoke-direct {p0, v1}, Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;->reportPackageUninstalledNotification(Lcom/xiaomi/xmpush/thrift/GeoFencing;)V

    goto :goto_0

    .line 120
    :cond_3
    if-nez v2, :cond_4

    .line 121
    invoke-direct {p0, v1, v5, v5}, Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;->reportGeoFencingProcessedResultNotification(Lcom/xiaomi/xmpush/thrift/GeoFencing;ZZ)V

    goto :goto_0

    .line 124
    :cond_4
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/push/service/GeoFenceDao;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/GeoFenceDao;

    move-result-object v3

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/push/service/GeoFenceDao;->deleteGeoFencingByGeoId(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_5

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GeoFenceRegMessageProcessor. delete a geofence about geo_id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " falied"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 127
    :cond_5
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/push/service/GeoFenceMessageDao;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/GeoFenceMessageDao;

    move-result-object v3

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/push/service/GeoFenceMessageDao;->deleteGeoMessageByGeoId(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_6

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GeoFenceRegMessageProcessor. delete all geofence messages about geo_id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 131
    :cond_6
    new-instance v0, Lcom/xiaomi/mipush/sdk/GeoFenceRegister;

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/xiaomi/mipush/sdk/GeoFenceRegister;-><init>(Landroid/content/Context;)V

    .line 132
    .local v0, "geoFenceRegister":Lcom/xiaomi/mipush/sdk/GeoFenceRegister;
    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaomi/mipush/sdk/GeoFenceRegister;->unRegisterGeoFencer(Ljava/lang/String;)V

    .line 134
    invoke-direct {p0, v1, v5, v5}, Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;->reportGeoFencingProcessedResultNotification(Lcom/xiaomi/xmpush/thrift/GeoFencing;ZZ)V

    .line 135
    const-string v3, "GeoFenceRegMessageProcessor. receive geo unreg notification"

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public syncGeoFencing(Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;)V
    .locals 8
    .param p1, "notification"    # Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .prologue
    .line 216
    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/push/service/GeoFenceUtils;->getGeoEnableSwitch(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;->isGeoLocalCache(Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;)Z

    move-result v2

    .line 220
    .local v2, "localCache":Z
    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/push/service/GeoFenceUtils;->checkMetoknlpVersionAbove(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 223
    :cond_2
    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/push/service/GeoFenceUtils;->verifyGeoChannel(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 227
    :cond_3
    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;->mContext:Landroid/content/Context;

    iget-object v5, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->packageName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils;->isPkgInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 230
    invoke-direct {p0, v2}, Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;->constructRegistedGeoFencing(Z)Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;

    move-result-object v3

    .line 231
    .local v3, "syncGeoFencings":Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;
    invoke-static {v3}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->convertThriftObjectToBytes(Lorg/apache/thrift/TBase;)[B

    move-result-object v0

    .line 232
    .local v0, "data":[B
    new-instance v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    const-string v4, "-1"

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;-><init>(Ljava/lang/String;Z)V

    .line 233
    .local v1, "lbsLocationNotification":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    sget-object v4, Lcom/xiaomi/xmpush/thrift/NotificationType;->GeoUpload:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v4, v4, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setType(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 234
    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setBinaryExtra([B)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 236
    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;

    move-result-object v4

    sget-object v5, Lcom/xiaomi/xmpush/thrift/ActionType;->Notification:Lcom/xiaomi/xmpush/thrift/ActionType;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v4, v1, v5, v6, v7}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sendMessage(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZLcom/xiaomi/xmpush/thrift/PushMetaInfo;)V

    .line 237
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GeoFenceRegMessageProcessor. sync_geo_data. geos size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->getGeoFencings()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    goto :goto_0
.end method
