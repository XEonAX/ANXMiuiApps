.class public Lcom/xiaomi/mipush/sdk/PushContainerHelper;
.super Ljava/lang/Object;
.source "PushContainerHelper.java"


# direct methods
.method private static createRespMessageFromAction(Lcom/xiaomi/xmpush/thrift/ActionType;Z)Lorg/apache/thrift/TBase;
    .locals 3
    .param p0, "act"    # Lcom/xiaomi/xmpush/thrift/ActionType;
    .param p1, "isRequest"    # Z

    .prologue
    .line 126
    sget-object v1, Lcom/xiaomi/mipush/sdk/PushContainerHelper$1;->$SwitchMap$com$xiaomi$xmpush$thrift$ActionType:[I

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ActionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 155
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 128
    :pswitch_0
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;-><init>()V

    goto :goto_0

    .line 130
    :pswitch_1
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;-><init>()V

    goto :goto_0

    .line 132
    :pswitch_2
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;-><init>()V

    goto :goto_0

    .line 134
    :pswitch_3
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;-><init>()V

    goto :goto_0

    .line 136
    :pswitch_4
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;-><init>()V

    goto :goto_0

    .line 138
    :pswitch_5
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;-><init>()V

    goto :goto_0

    .line 140
    :pswitch_6
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;-><init>()V

    goto :goto_0

    .line 142
    :pswitch_7
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;-><init>()V

    goto :goto_0

    .line 144
    :pswitch_8
    if-eqz p1, :cond_0

    .line 145
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;-><init>()V

    goto :goto_0

    .line 147
    :cond_0
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;-><init>()V

    .line 148
    .local v0, "ackNotification":Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->setErrorCodeIsSet(Z)V

    goto :goto_0

    .line 152
    .end local v0    # "ackNotification":Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;
    :pswitch_9
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;-><init>()V

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected static generateRequestContainer(Landroid/content/Context;Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "action"    # Lcom/xiaomi/xmpush/thrift/ActionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/thrift/TBase",
            "<TT;*>;>(",
            "Landroid/content/Context;",
            "TT;",
            "Lcom/xiaomi/xmpush/thrift/ActionType;",
            ")",
            "Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "message":Lorg/apache/thrift/TBase;, "TT;"
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->Registration:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 34
    invoke-virtual {p2, v0}, Lcom/xiaomi/xmpush/thrift/ActionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    .line 35
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getAppID()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 33
    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/PushContainerHelper;->generateRequestContainer(Landroid/content/Context;Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    move-result-object v0

    return-object v0

    .line 34
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected static generateRequestContainer(Landroid/content/Context;Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "action"    # Lcom/xiaomi/xmpush/thrift/ActionType;
    .param p3, "encrypt"    # Z
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "appId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/thrift/TBase",
            "<TT;*>;>(",
            "Landroid/content/Context;",
            "TT;",
            "Lcom/xiaomi/xmpush/thrift/ActionType;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;"
        }
    .end annotation

    .prologue
    .local p1, "message":Lorg/apache/thrift/TBase;, "TT;"
    const/4 v6, 0x0

    .line 49
    .line 50
    invoke-static {p1}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->convertThriftObjectToBytes(Lorg/apache/thrift/TBase;)[B

    move-result-object v3

    .line 51
    .local v3, "msgbytes":[B
    if-nez v3, :cond_0

    .line 52
    const-string v7, "invoke convertThriftObjectToBytes method, return null."

    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    move-object v0, v6

    .line 83
    :goto_0
    return-object v0

    .line 55
    :cond_0
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;-><init>()V

    .line 57
    .local v0, "container":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    if-eqz p3, :cond_2

    .line 58
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v7

    .line 59
    invoke-virtual {v7}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getRegSecret()Ljava/lang/String;

    move-result-object v4

    .line 60
    .local v4, "regSecret":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 61
    const-string v7, "regSecret is empty, return null"

    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    move-object v0, v6

    .line 62
    goto :goto_0

    .line 64
    :cond_1
    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/string/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v2

    .line 67
    .local v2, "keyBytes":[B
    :try_start_0
    invoke-static {v2, v3}, Lcom/xiaomi/channel/commonutils/android/DataCryptUtils;->mipushEncrypt([B[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 73
    .end local v2    # "keyBytes":[B
    .end local v4    # "regSecret":Ljava/lang/String;
    :cond_2
    :goto_1
    new-instance v5, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-direct {v5}, Lcom/xiaomi/xmpush/thrift/Target;-><init>()V

    .line 74
    .local v5, "target":Lcom/xiaomi/xmpush/thrift/Target;
    const-wide/16 v6, 0x5

    iput-wide v6, v5, Lcom/xiaomi/xmpush/thrift/Target;->channelId:J

    .line 75
    const-string v6, "fakeid"

    iput-object v6, v5, Lcom/xiaomi/xmpush/thrift/Target;->userId:Ljava/lang/String;

    .line 76
    invoke-virtual {v0, v5}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->setTarget(Lcom/xiaomi/xmpush/thrift/Target;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 77
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->setPushAction(Ljava/nio/ByteBuffer;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 78
    invoke-virtual {v0, p2}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->setAction(Lcom/xiaomi/xmpush/thrift/ActionType;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 79
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->setIsRequest(Z)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 80
    invoke-virtual {v0, p4}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->setPackageName(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 81
    invoke-virtual {v0, p3}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->setEncryptAction(Z)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 82
    invoke-virtual {v0, p5}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->setAppid(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    goto :goto_0

    .line 68
    .end local v5    # "target":Lcom/xiaomi/xmpush/thrift/Target;
    .restart local v2    # "keyBytes":[B
    .restart local v4    # "regSecret":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "encryption error. "

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getResponseMessageBodyFromContainer(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Lorg/apache/thrift/TBase;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "container"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;,
            Lcom/xiaomi/mipush/sdk/DecryptException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isEncryptAction()Z

    move-result v1

    .line 90
    .local v1, "encrypted":Z
    if-eqz v1, :cond_1

    .line 91
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v5

    .line 92
    invoke-virtual {v5}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getRegSecret()Ljava/lang/String;

    move-result-object v5

    .line 91
    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/string/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v2

    .line 94
    .local v2, "keyBytes":[B
    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPushAction()[B

    move-result-object v5

    invoke-static {v2, v5}, Lcom/xiaomi/channel/commonutils/android/DataCryptUtils;->mipushDecrypt([B[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 101
    .end local v2    # "keyBytes":[B
    .local v3, "oriMsgBytes":[B
    :goto_0
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getAction()Lcom/xiaomi/xmpush/thrift/ActionType;

    move-result-object v5

    iget-boolean v6, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isRequest:Z

    invoke-static {v5, v6}, Lcom/xiaomi/mipush/sdk/PushContainerHelper;->createRespMessageFromAction(Lcom/xiaomi/xmpush/thrift/ActionType;Z)Lorg/apache/thrift/TBase;

    move-result-object v4

    .line 102
    .local v4, "packet":Lorg/apache/thrift/TBase;
    if-eqz v4, :cond_0

    .line 103
    invoke-static {v4, v3}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->convertByteArrayToThriftObject(Lorg/apache/thrift/TBase;[B)V

    .line 106
    :cond_0
    return-object v4

    .line 95
    .end local v3    # "oriMsgBytes":[B
    .end local v4    # "packet":Lorg/apache/thrift/TBase;
    .restart local v2    # "keyBytes":[B
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Lcom/xiaomi/mipush/sdk/DecryptException;

    const-string/jumbo v6, "the aes decrypt failed."

    invoke-direct {v5, v6, v0}, Lcom/xiaomi/mipush/sdk/DecryptException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 99
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "keyBytes":[B
    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPushAction()[B

    move-result-object v3

    .restart local v3    # "oriMsgBytes":[B
    goto :goto_0
.end method
