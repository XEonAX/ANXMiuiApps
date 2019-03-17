.class public Lcom/xiaomi/mipush/sdk/PushMessageHelper;
.super Ljava/lang/Object;
.source "PushMessageHelper.java"


# static fields
.field private static pushMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput v0, Lcom/xiaomi/mipush/sdk/PushMessageHelper;->pushMode:I

    return-void
.end method

.method public static generateCommandMessage(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;
    .locals 2
    .param p0, "command"    # Ljava/lang/String;
    .param p2, "resultCode"    # J
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "commandArguments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    invoke-direct {v0}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;-><init>()V

    .line 113
    .local v0, "commandResult":Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;
    invoke-virtual {v0, p0}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->setCommand(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0, p1}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->setCommandArguments(Ljava/util/List;)V

    .line 115
    invoke-virtual {v0, p2, p3}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->setResultCode(J)V

    .line 116
    invoke-virtual {v0, p4}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->setReason(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0, p5}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->setCategory(Ljava/lang/String;)V

    .line 118
    return-object v0
.end method

.method public static generateMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;Z)Lcom/xiaomi/mipush/sdk/MiPushMessage;
    .locals 2
    .param p0, "msg"    # Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;
    .param p1, "metaInfo"    # Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    .param p2, "hasNotified"    # Z

    .prologue
    .line 122
    new-instance v0, Lcom/xiaomi/mipush/sdk/MiPushMessage;

    invoke-direct {v0}, Lcom/xiaomi/mipush/sdk/MiPushMessage;-><init>()V

    .line 123
    .local v0, "message":Lcom/xiaomi/mipush/sdk/MiPushMessage;
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->setMessageId(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->getAliasName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 125
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->setMessageType(I)V

    .line 126
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->getAliasName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->setAlias(Ljava/lang/String;)V

    .line 136
    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->setCategory(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->getMessage()Lcom/xiaomi/xmpush/thrift/PushMessage;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->getMessage()Lcom/xiaomi/xmpush/thrift/PushMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->getPayload()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->setContent(Ljava/lang/String;)V

    .line 139
    :cond_0
    if-eqz p1, :cond_3

    .line 140
    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->setMessageId(Ljava/lang/String;)V

    .line 143
    :cond_1
    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getTopic()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 144
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getTopic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->setTopic(Ljava/lang/String;)V

    .line 146
    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->setDescription(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->setTitle(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getNotifyType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->setNotifyType(I)V

    .line 149
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getNotifyId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->setNotifyId(I)V

    .line 150
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getPassThrough()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->setPassThrough(I)V

    .line 151
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->setExtra(Ljava/util/Map;)V

    .line 153
    :cond_3
    invoke-virtual {v0, p2}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->setNotified(Z)V

    .line 154
    return-object v0

    .line 127
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->getTopic()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 128
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->setMessageType(I)V

    .line 129
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->getTopic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->setTopic(Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->getUserAccount()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 131
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->setMessageType(I)V

    .line 132
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->getUserAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->setUserAccount(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 134
    :cond_6
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->setMessageType(I)V

    goto/16 :goto_0
.end method

.method public static getPushMode(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    sget v0, Lcom/xiaomi/mipush/sdk/PushMessageHelper;->pushMode:I

    if-nez v0, :cond_0

    .line 59
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/PushMessageHelper;->isUseCallbackPushMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/PushMessageHelper;->setPushMode(I)V

    .line 65
    :cond_0
    :goto_0
    sget v0, Lcom/xiaomi/mipush/sdk/PushMessageHelper;->pushMode:I

    return v0

    .line 62
    :cond_1
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/PushMessageHelper;->setPushMode(I)V

    goto :goto_0
.end method

.method private static isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 49
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v4, 0x20

    :try_start_0
    invoke-virtual {v1, p1, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 51
    .local v2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    .line 53
    .end local v2    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    return v3

    .line 51
    .restart local v2    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 52
    .end local v2    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static isUseCallbackPushMode(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.mipush.RECEIVE_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.xiaomi.mipush.sdk.PushServiceReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/PushMessageHelper;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method public static sendCommandMessageBroadcast(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "commandMessage"    # Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    .prologue
    .line 94
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.mipush.RECEIVE_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string v1, "message_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    const-string v1, "key_command"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 99
    new-instance v1, Lcom/xiaomi/mipush/sdk/PushServiceReceiver;

    invoke-direct {v1}, Lcom/xiaomi/mipush/sdk/PushServiceReceiver;-><init>()V

    invoke-virtual {v1, p0, v0}, Lcom/xiaomi/mipush/sdk/PushServiceReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 100
    return-void
.end method

.method private static setPushMode(I)V
    .locals 0
    .param p0, "newMode"    # I

    .prologue
    .line 74
    sput p0, Lcom/xiaomi/mipush/sdk/PushMessageHelper;->pushMode:I

    .line 75
    return-void
.end method
