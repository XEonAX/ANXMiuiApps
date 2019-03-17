.class public Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;
.super Ljava/lang/Object;
.source "XmPushThriftSerializeUtils.java"


# direct methods
.method public static convertByteArrayToThriftObject(Lorg/apache/thrift/TBase;[B)V
    .locals 4
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/thrift/TBase",
            "<TT;*>;>(TT;[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .local p0, "thriftObj":Lorg/apache/thrift/TBase;, "TT;"
    const/4 v3, 0x1

    .line 57
    if-nez p1, :cond_0

    .line 58
    new-instance v1, Lorg/apache/thrift/TException;

    const-string/jumbo v2, "the message byte is empty."

    invoke-direct {v1, v2}, Lorg/apache/thrift/TException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_0
    new-instance v0, Lorg/apache/thrift/TDeserializer;

    new-instance v1, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol$Factory;

    array-length v2, p1

    invoke-direct {v1, v3, v3, v2}, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol$Factory;-><init>(ZZI)V

    invoke-direct {v0, v1}, Lorg/apache/thrift/TDeserializer;-><init>(Lorg/apache/thrift/protocol/TProtocolFactory;)V

    .line 61
    .local v0, "deserizlizer":Lorg/apache/thrift/TDeserializer;
    invoke-virtual {v0, p0, p1}, Lorg/apache/thrift/TDeserializer;->deserialize(Lorg/apache/thrift/TBase;[B)V

    .line 62
    return-void
.end method

.method public static convertThriftObjectToBytes(Lorg/apache/thrift/TBase;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/thrift/TBase",
            "<TT;*>;>(TT;)[B"
        }
    .end annotation

    .prologue
    .local p0, "thriftObj":Lorg/apache/thrift/TBase;, "TT;"
    const/4 v2, 0x0

    .line 35
    if-nez p0, :cond_0

    .line 45
    :goto_0
    return-object v2

    .line 40
    :cond_0
    :try_start_0
    new-instance v1, Lorg/apache/thrift/TSerializer;

    new-instance v3, Lorg/apache/thrift/protocol/TBinaryProtocol$Factory;

    invoke-direct {v3}, Lorg/apache/thrift/protocol/TBinaryProtocol$Factory;-><init>()V

    invoke-direct {v1, v3}, Lorg/apache/thrift/TSerializer;-><init>(Lorg/apache/thrift/protocol/TProtocolFactory;)V

    .line 41
    .local v1, "serializer":Lorg/apache/thrift/TSerializer;
    invoke-virtual {v1, p0}, Lorg/apache/thrift/TSerializer;->serialize(Lorg/apache/thrift/TBase;)[B
    :try_end_0
    .catch Lorg/apache/thrift/TException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 42
    .end local v1    # "serializer":Lorg/apache/thrift/TSerializer;
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Lorg/apache/thrift/TException;
    const-string v3, "convertThriftObjectToBytes catch TException."

    invoke-static {v3, v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getDeviceStatus(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)S
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "container"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .prologue
    const/4 v3, 0x0

    .line 65
    iget-object v0, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    .line 66
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 67
    .local v1, "result":I
    invoke-static {p0, v0}, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils;->getAppNotificationOp(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils$AppNotificationOp;->getValue()I

    move-result v2

    add-int/2addr v1, v2

    .line 68
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/misc/MobileStatusUtils;->isCharging(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    :goto_0
    add-int/2addr v1, v2

    .line 69
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/misc/MobileStatusUtils;->isScreenLocked(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x8

    :goto_1
    add-int/2addr v1, v2

    .line 70
    invoke-static {p0, p1}, Lcom/xiaomi/push/service/TypedShieldHelper;->isShield(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v3, 0x10

    :cond_0
    add-int/2addr v1, v3

    .line 72
    int-to-short v2, v1

    return v2

    :cond_1
    move v2, v3

    .line 68
    goto :goto_0

    :cond_2
    move v2, v3

    .line 69
    goto :goto_1
.end method

.method public static getGeoMsgStatus(ZZZ)S
    .locals 3
    .param p0, "isReceive"    # Z
    .param p1, "isShow"    # Z
    .param p2, "isPassed"    # Z

    .prologue
    const/4 v1, 0x0

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "result":I
    if-eqz p0, :cond_1

    const/4 v2, 0x4

    :goto_0
    add-int/2addr v0, v2

    .line 78
    if-eqz p1, :cond_2

    const/4 v2, 0x2

    :goto_1
    add-int/2addr v0, v2

    .line 79
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    .line 80
    int-to-short v1, v0

    return v1

    :cond_1
    move v2, v1

    .line 77
    goto :goto_0

    :cond_2
    move v2, v1

    .line 78
    goto :goto_1
.end method
