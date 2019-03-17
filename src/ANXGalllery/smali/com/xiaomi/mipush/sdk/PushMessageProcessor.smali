.class public Lcom/xiaomi/mipush/sdk/PushMessageProcessor;
.super Ljava/lang/Object;
.source "PushMessageProcessor.java"


# static fields
.field private static lock:Ljava/lang/Object;

.field private static mCachedMsgIds:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/xiaomi/mipush/sdk/PushMessageProcessor;


# instance fields
.field private sAppContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sInstance:Lcom/xiaomi/mipush/sdk/PushMessageProcessor;

    .line 915
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    .line 89
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 90
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    .line 92
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/mipush/sdk/PushMessageProcessor;Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/mipush/sdk/PushMessageProcessor;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sendUploadLogIntent(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V

    return-void
.end method

.method private ackMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V
    .locals 6
    .param p1, "container"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .prologue
    .line 887
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getMetaInfo()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v1

    .line 888
    .local v1, "metaInfo":Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;-><init>()V

    .line 889
    .local v0, "ackMessage":Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getAppid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->setAppId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    .line 890
    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->setId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    .line 891
    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getMessageTs()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->setMessageTs(J)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    .line 892
    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 893
    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->setTopic(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    .line 895
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->getDeviceStatus(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)S

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->setDeviceStatus(S)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    .line 896
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/xmpush/thrift/ActionType;->AckMessage:Lcom/xiaomi/xmpush/thrift/ActionType;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getMetaInfo()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v5

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sendMessage(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZLcom/xiaomi/xmpush/thrift/PushMetaInfo;)V

    .line 897
    return-void
.end method

.method private ackMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V
    .locals 4
    .param p1, "sendMsg"    # Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;
    .param p2, "container"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .prologue
    .line 900
    invoke-virtual {p2}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getMetaInfo()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v1

    .line 901
    .local v1, "metaInfo":Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;-><init>()V

    .line 902
    .local v0, "ackMessage":Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->setAppId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    .line 903
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->setId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    .line 904
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->getMessage()Lcom/xiaomi/xmpush/thrift/PushMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/PushMessage;->getCreateAt()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->setMessageTs(J)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    .line 905
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 906
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->setTopic(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    .line 908
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->getAliasName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 909
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->getAliasName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->setAliasName(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    .line 911
    :cond_1
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->getDeviceStatus(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)S

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->setDeviceStatus(S)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    .line 912
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/xmpush/thrift/ActionType;->AckMessage:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-virtual {v2, v0, v3, v1}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sendMessage(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)V

    .line 913
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushMessageProcessor;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    sget-object v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sInstance:Lcom/xiaomi/mipush/sdk/PushMessageProcessor;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;

    invoke-direct {v0, p0}, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sInstance:Lcom/xiaomi/mipush/sdk/PushMessageProcessor;

    .line 84
    :cond_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sInstance:Lcom/xiaomi/mipush/sdk/PushMessageProcessor;

    return-object v0
.end method

.method public static getNotificationMessageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Landroid/content/Intent;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
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
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 955
    .local p2, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    const-string v14, "notify_effect"

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 956
    :cond_0
    const/4 v3, 0x0

    .line 1029
    :cond_1
    :goto_0
    return-object v3

    .line 958
    :cond_2
    const-string v14, "notify_effect"

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 959
    .local v11, "typeId":Ljava/lang/String;
    const/4 v5, -0x1

    .line 960
    .local v5, "intentFlag":I
    const-string v14, "intent_flag"

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 962
    .local v6, "intentFlagStr":Ljava/lang/String;
    :try_start_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 963
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 968
    :cond_3
    :goto_1
    const/4 v3, 0x0

    .line 969
    .local v3, "intent":Landroid/content/Intent;
    sget-object v14, Lcom/xiaomi/push/service/PushConstants;->NOTIFICATION_CLICK_DEFAULT:Ljava/lang/String;

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 972
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 1013
    :cond_4
    :goto_2
    if-eqz v3, :cond_6

    .line 1014
    if-ltz v5, :cond_5

    .line 1015
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1017
    :cond_5
    const/high16 v14, 0x10000000

    invoke-virtual {v3, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1019
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const/high16 v15, 0x10000

    invoke-virtual {v14, v3, v15}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v9

    .line 1021
    .local v9, "rinfo":Landroid/content/pm/ResolveInfo;
    if-nez v9, :cond_1

    .line 1029
    .end local v9    # "rinfo":Landroid/content/pm/ResolveInfo;
    :cond_6
    :goto_3
    const/4 v3, 0x0

    goto :goto_0

    .line 965
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 966
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cause by intent_flag: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 973
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v2

    .line 974
    .local v2, "e":Ljava/lang/Exception;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cause: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 976
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7
    sget-object v14, Lcom/xiaomi/push/service/PushConstants;->NOTIFICATION_CLICK_INTENT:Ljava/lang/String;

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 977
    const-string v14, "intent_uri"

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 978
    const-string v14, "intent_uri"

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 979
    .local v7, "intentStr":Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 981
    const/4 v14, 0x1

    :try_start_3
    invoke-static {v7, v14}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 982
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 983
    :catch_2
    move-exception v2

    .line 984
    .local v2, "e":Ljava/net/URISyntaxException;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cause: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 987
    .end local v2    # "e":Ljava/net/URISyntaxException;
    .end local v7    # "intentStr":Ljava/lang/String;
    :cond_8
    const-string v14, "class_name"

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 988
    const-string v14, "class_name"

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 989
    .local v1, "className":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 990
    .restart local v3    # "intent":Landroid/content/Intent;
    new-instance v14, Landroid/content/ComponentName;

    move-object/from16 v0, p1

    invoke-direct {v14, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 992
    .end local v1    # "className":Ljava/lang/String;
    :cond_9
    sget-object v14, Lcom/xiaomi/push/service/PushConstants;->NOTIFICATION_CLICK_WEB_PAGE:Ljava/lang/String;

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 994
    const-string/jumbo v14, "web_uri"

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 995
    .local v12, "uri":Ljava/lang/String;
    if-eqz v12, :cond_4

    .line 996
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 997
    .local v10, "tmp":Ljava/lang/String;
    const-string v14, "http://"

    invoke-virtual {v10, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_a

    const-string v14, "https://"

    invoke-virtual {v10, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 998
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "http://"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1001
    :cond_a
    :try_start_4
    new-instance v13, Ljava/net/URL;

    invoke-direct {v13, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1002
    .local v13, "url":Ljava/net/URL;
    invoke-virtual {v13}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v8

    .line 1003
    .local v8, "protocol":Ljava/lang/String;
    const-string v14, "http"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b

    const-string v14, "https"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1004
    :cond_b
    new-instance v4, Landroid/content/Intent;

    const-string v14, "android.intent.action.VIEW"

    invoke-direct {v4, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1005
    .end local v3    # "intent":Landroid/content/Intent;
    .local v4, "intent":Landroid/content/Intent;
    :try_start_5
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_5

    move-object v3, v4

    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    goto/16 :goto_2

    .line 1007
    .end local v8    # "protocol":Ljava/lang/String;
    .end local v13    # "url":Ljava/net/URL;
    :catch_3
    move-exception v2

    .line 1008
    .local v2, "e":Ljava/net/MalformedURLException;
    :goto_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cause: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1024
    .end local v2    # "e":Ljava/net/MalformedURLException;
    .end local v10    # "tmp":Ljava/lang/String;
    .end local v12    # "uri":Ljava/lang/String;
    :catch_4
    move-exception v2

    .line 1025
    .local v2, "e":Ljava/lang/Exception;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cause: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1007
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v8    # "protocol":Ljava/lang/String;
    .restart local v10    # "tmp":Ljava/lang/String;
    .restart local v12    # "uri":Ljava/lang/String;
    .restart local v13    # "url":Ljava/net/URL;
    :catch_5
    move-exception v2

    move-object v3, v4

    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    goto :goto_4
.end method

.method private static isDuplicateMessage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dupKey"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 918
    sget-object v8, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->lock:Ljava/lang/Object;

    monitor-enter v8

    .line 919
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 920
    .local v5, "sp":Landroid/content/SharedPreferences;
    sget-object v7, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->mCachedMsgIds:Ljava/util/Queue;

    if-nez v7, :cond_0

    .line 921
    const-string v7, "pref_msg_ids"

    const-string v9, ""

    invoke-interface {v5, v7, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 922
    .local v0, "dupKeys":Ljava/lang/String;
    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 923
    .local v3, "keys":[Ljava/lang/String;
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    sput-object v7, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->mCachedMsgIds:Ljava/util/Queue;

    .line 924
    array-length v9, v3

    move v7, v6

    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v2, v3, v7

    .line 925
    .local v2, "key":Ljava/lang/String;
    sget-object v10, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->mCachedMsgIds:Ljava/util/Queue;

    invoke-interface {v10, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 924
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 928
    .end local v0    # "dupKeys":Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keys":[Ljava/lang/String;
    :cond_0
    sget-object v7, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->mCachedMsgIds:Ljava/util/Queue;

    invoke-interface {v7, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 929
    const/4 v6, 0x1

    monitor-exit v8

    .line 939
    :goto_1
    return v6

    .line 931
    :cond_1
    sget-object v7, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->mCachedMsgIds:Ljava/util/Queue;

    invoke-interface {v7, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 932
    sget-object v7, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->mCachedMsgIds:Ljava/util/Queue;

    invoke-interface {v7}, Ljava/util/Queue;->size()I

    move-result v7

    const/16 v9, 0x19

    if-le v7, v9, :cond_2

    .line 933
    sget-object v7, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->mCachedMsgIds:Ljava/util/Queue;

    invoke-interface {v7}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 935
    :cond_2
    sget-object v7, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->mCachedMsgIds:Ljava/util/Queue;

    const-string v9, ","

    invoke-static {v7, v9}, Lcom/xiaomi/channel/commonutils/string/XMStringUtils;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 936
    .local v4, "newDupKeys":Ljava/lang/String;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 937
    .local v1, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v7, "pref_msg_ids"

    invoke-interface {v1, v7, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 938
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/android/SharedPrefsCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 939
    monitor-exit v8

    goto :goto_1

    .line 940
    .end local v1    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "newDupKeys":Ljava/lang/String;
    .end local v5    # "sp":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method private isHybridMsg(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z
    .locals 5
    .param p1, "message"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .prologue
    const/4 v2, 0x0

    .line 1037
    const-string v3, "com.miui.hybrid"

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "com.miui.hybrid.loader"

    .line 1038
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1050
    :cond_0
    :goto_0
    return v2

    .line 1041
    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getMetaInfo()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 v1, 0x0

    .line 1042
    .local v1, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    if-eqz v1, :cond_0

    .line 1045
    const-string v3, "push_server_action"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1046
    .local v0, "action":Ljava/lang/String;
    const-string v3, "hybrid_message"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "platform_message"

    .line 1047
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1048
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 1041
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getMetaInfo()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v1

    goto :goto_1
.end method

.method private processMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;Z[BLjava/lang/String;I)Lcom/xiaomi/mipush/sdk/PushMessageHandler$PushMessageInterface;
    .locals 52
    .param p1, "container"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .param p2, "hasNotified"    # Z
    .param p3, "decryptedContent"    # [B
    .param p4, "msgId"    # Ljava/lang/String;
    .param p5, "msgType"    # I

    .prologue
    .line 299
    const/16 v30, 0x0

    .line 302
    .local v30, "message":Lorg/apache/thrift/TBase;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v6, v0}, Lcom/xiaomi/mipush/sdk/PushContainerHelper;->getResponseMessageBodyFromContainer(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Lorg/apache/thrift/TBase;

    move-result-object v30

    .line 303
    if-nez v30, :cond_0

    .line 304
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "receiving an un-recognized message. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->action:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p5 .. p5}, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->getInterfaceIdByType(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "receiving an un-recognized message."

    move-object/from16 v0, p4

    invoke-virtual {v6, v7, v8, v0, v9}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent4ERROR(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/xiaomi/mipush/sdk/DecryptException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/thrift/TException; {:try_start_0 .. :try_end_0} :catch_1

    .line 307
    const/16 v21, 0x0

    .line 773
    :goto_0
    return-object v21

    .line 311
    :catch_0
    move-exception v26

    .line 312
    .local v26, "e":Lcom/xiaomi/mipush/sdk/DecryptException;
    invoke-static/range {v26 .. v26}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 313
    invoke-direct/range {p0 .. p1}, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->reportDecryptFail(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V

    .line 314
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p5 .. p5}, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->getInterfaceIdByType(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p4

    move-object/from16 v1, v26

    invoke-virtual {v6, v7, v8, v0, v1}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent4ERROR(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 316
    const/16 v21, 0x0

    goto :goto_0

    .line 317
    .end local v26    # "e":Lcom/xiaomi/mipush/sdk/DecryptException;
    :catch_1
    move-exception v26

    .line 318
    .local v26, "e":Lorg/apache/thrift/TException;
    invoke-static/range {v26 .. v26}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 319
    const-string v6, "receive a message which action string is not valid. is the reg expired?"

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p5 .. p5}, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->getInterfaceIdByType(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p4

    move-object/from16 v1, v26

    invoke-virtual {v6, v7, v8, v0, v1}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent4ERROR(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 322
    const/16 v21, 0x0

    goto :goto_0

    .line 324
    .end local v26    # "e":Lorg/apache/thrift/TException;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getAction()Lcom/xiaomi/xmpush/thrift/ActionType;

    move-result-object v14

    .line 325
    .local v14, "action":Lcom/xiaomi/xmpush/thrift/ActionType;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processing a message, action="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 326
    sget-object v6, Lcom/xiaomi/mipush/sdk/PushMessageProcessor$2;->$SwitchMap$com$xiaomi$xmpush$thrift$ActionType:[I

    invoke-virtual {v14}, Lcom/xiaomi/xmpush/thrift/ActionType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 773
    :cond_1
    :goto_1
    const/16 v21, 0x0

    goto :goto_0

    :pswitch_0
    move-object/from16 v39, v30

    .line 328
    check-cast v39, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;

    .line 329
    .local v39, "regResult":Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v6

    iget-object v0, v6, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->appRegRequestId:Ljava/lang/String;

    move-object/from16 v40, v0

    .line 332
    .local v40, "requestId":Ljava/lang/String;
    invoke-static/range {v40 .. v40}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual/range {v39 .. v39}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->getId()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v40

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 333
    :cond_2
    const-string v6, "bad Registration result:"

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 334
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 337
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v6

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->appRegRequestId:Ljava/lang/String;

    .line 338
    move-object/from16 v0, v39

    iget-wide v6, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->errorCode:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    .line 340
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v6

    move-object/from16 v0, v39

    iget-object v7, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->regId:Ljava/lang/String;

    move-object/from16 v0, v39

    iget-object v8, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->regSecret:Ljava/lang/String;

    move-object/from16 v0, v39

    iget-object v9, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->region:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->putRegIDAndSecret(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :cond_4
    const/4 v5, 0x0

    .line 343
    .local v5, "cmdArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, v39

    iget-object v6, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->regId:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 344
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "cmdArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .restart local v5    # "cmdArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, v39

    iget-object v6, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->regId:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_5
    sget-object v6, Lcom/xiaomi/push/service/xmpush/Command;->COMMAND_REGISTER:Lcom/xiaomi/push/service/xmpush/Command;

    iget-object v4, v6, Lcom/xiaomi/push/service/xmpush/Command;->value:Ljava/lang/String;

    move-object/from16 v0, v39

    iget-wide v6, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->errorCode:J

    move-object/from16 v0, v39

    iget-object v8, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->reason:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/xiaomi/mipush/sdk/PushMessageHelper;->generateCommandMessage(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v21

    .line 350
    .local v21, "commandMessage":Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->processPendRequest()V

    goto/16 :goto_0

    .end local v5    # "cmdArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "commandMessage":Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;
    .end local v39    # "regResult":Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;
    .end local v40    # "requestId":Ljava/lang/String;
    :pswitch_1
    move-object/from16 v48, v30

    .line 354
    check-cast v48, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;

    .line 355
    .local v48, "unregResult":Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;
    move-object/from16 v0, v48

    iget-wide v6, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->errorCode:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_6

    .line 356
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->clear()V

    .line 357
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/MiPushClient;->clearExtras(Landroid/content/Context;)V

    .line 359
    :cond_6
    invoke-static {}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->removeAllPushCallbackClass()V

    goto/16 :goto_1

    .line 365
    .end local v48    # "unregResult":Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->isPaused()Z

    move-result v6

    if-eqz v6, :cond_7

    if-nez p2, :cond_7

    .line 366
    const-string v6, "receive a message in pause state. drop it"

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 367
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p5 .. p5}, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->getInterfaceIdByType(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "receive a message in pause state. drop it"

    move-object/from16 v0, p4

    invoke-virtual {v6, v7, v8, v0, v9}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent4NeedDrop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const/16 v21, 0x0

    goto/16 :goto_0

    :cond_7
    move-object/from16 v41, v30

    .line 371
    check-cast v41, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    .line 372
    .local v41, "sendMsg":Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;
    invoke-virtual/range {v41 .. v41}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->getMessage()Lcom/xiaomi/xmpush/thrift/PushMessage;

    move-result-object v15

    .line 373
    .local v15, "actualMsg":Lcom/xiaomi/xmpush/thrift/PushMessage;
    if-nez v15, :cond_8

    .line 374
    const-string v6, "receive an empty message without push content, drop it"

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p5 .. p5}, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->getInterfaceIdByType(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "receive an empty message without push content, drop it"

    move-object/from16 v0, p4

    invoke-virtual {v6, v7, v8, v0, v9}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent4ERROR(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 381
    :cond_8
    if-eqz p2, :cond_9

    .line 382
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isBusinessMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 383
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-virtual {v15}, Lcom/xiaomi/xmpush/thrift/PushMessage;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getMetaInfo()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    invoke-virtual {v15}, Lcom/xiaomi/xmpush/thrift/PushMessage;->getAppId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v7, v8, v9, v10}, Lcom/xiaomi/mipush/sdk/MiPushClient;->reportIgnoreRegMessageClicked(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    :cond_9
    :goto_2
    if-nez p2, :cond_a

    .line 391
    invoke-virtual/range {v41 .. v41}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->getAliasName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    .line 392
    invoke-virtual/range {v41 .. v41}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->getAliasName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaomi/mipush/sdk/MiPushClient;->aliasSetTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_10

    .line 393
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-virtual/range {v41 .. v41}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->getAliasName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaomi/mipush/sdk/MiPushClient;->addAlias(Landroid/content/Context;Ljava/lang/String;)V

    .line 400
    :cond_a
    :goto_3
    const/16 v38, 0x0

    .line 401
    .local v38, "pushMessage":Lcom/xiaomi/mipush/sdk/MiPushMessage;
    const/16 v29, 0x0

    .line 402
    .local v29, "key":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    if-eqz v6, :cond_b

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 403
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    iget-object v6, v6, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->extra:Ljava/util/Map;

    const-string v7, "jobkey"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    .end local v29    # "key":Ljava/lang/String;
    check-cast v29, Ljava/lang/String;

    .line 405
    .restart local v29    # "key":Ljava/lang/String;
    :cond_b
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 406
    invoke-virtual {v15}, Lcom/xiaomi/xmpush/thrift/PushMessage;->getId()Ljava/lang/String;

    move-result-object v29

    .line 408
    :cond_c
    if-nez p2, :cond_11

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    move-object/from16 v0, v29

    invoke-static {v6, v0}, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->isDuplicateMessage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 409
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "drop a duplicate message, key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 410
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p5 .. p5}, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->getInterfaceIdByType(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "drop a duplicate message, key="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v6, v7, v8, v0, v9}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent4DUPMD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getMetaInfo()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v6

    if-nez v6, :cond_e

    if-nez p2, :cond_e

    .line 477
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->ackMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V

    :cond_e
    move-object/from16 v21, v38

    .line 480
    goto/16 :goto_0

    .line 385
    .end local v29    # "key":Ljava/lang/String;
    .end local v38    # "pushMessage":Lcom/xiaomi/mipush/sdk/MiPushMessage;
    :cond_f
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-virtual {v15}, Lcom/xiaomi/xmpush/thrift/PushMessage;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getMetaInfo()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v8

    invoke-virtual {v15}, Lcom/xiaomi/xmpush/thrift/PushMessage;->getAppId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcom/xiaomi/mipush/sdk/MiPushClient;->reportMessageClicked(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 394
    :cond_10
    invoke-virtual/range {v41 .. v41}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->getTopic()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    .line 395
    invoke-virtual/range {v41 .. v41}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->getTopic()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaomi/mipush/sdk/MiPushClient;->topicSubscribedTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_a

    .line 396
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-virtual/range {v41 .. v41}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->getTopic()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaomi/mipush/sdk/MiPushClient;->addTopic(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 413
    .restart local v29    # "key":Ljava/lang/String;
    .restart local v38    # "pushMessage":Lcom/xiaomi/mipush/sdk/MiPushMessage;
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getMetaInfo()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v6

    move-object/from16 v0, v41

    move/from16 v1, p2

    invoke-static {v0, v6, v1}, Lcom/xiaomi/mipush/sdk/PushMessageHelper;->generateMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;Z)Lcom/xiaomi/mipush/sdk/MiPushMessage;

    move-result-object v38

    .line 415
    invoke-virtual/range {v38 .. v38}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getPassThrough()I

    move-result v6

    if-nez v6, :cond_12

    if-nez p2, :cond_12

    .line 416
    invoke-virtual/range {v38 .. v38}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getExtra()Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isNotifyForeground(Ljava/util/Map;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 417
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v6, v0, v1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->notifyPushMessage(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;[B)Lcom/xiaomi/push/service/MIPushNotificationHelper$NotifyPushMessageInfo;

    .line 418
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 420
    :cond_12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "receive a message, msgid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v15}, Lcom/xiaomi/xmpush/thrift/PushMessage;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", jobkey="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 421
    if-eqz p2, :cond_d

    invoke-virtual/range {v38 .. v38}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getExtra()Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 422
    invoke-virtual/range {v38 .. v38}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getExtra()Ljava/util/Map;

    move-result-object v6

    const-string v7, "notify_effect"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 423
    invoke-virtual/range {v38 .. v38}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getExtra()Ljava/util/Map;

    move-result-object v27

    .line 424
    .local v27, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "notify_effect"

    move-object/from16 v0, v27

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/String;

    .line 426
    .local v46, "typeId":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isBusinessMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 427
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-static {v6, v7, v0}, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->getNotificationMessageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Landroid/content/Intent;

    move-result-object v28

    .line 428
    .local v28, "intent":Landroid/content/Intent;
    const-string v6, "eventMessageType"

    move-object/from16 v0, v28

    move/from16 v1, p5

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 429
    const-string v6, "messageId"

    move-object/from16 v0, v28

    move-object/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    if-nez v28, :cond_13

    .line 431
    const-string v6, "Getting Intent fail from ignore reg message. "

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 432
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p5 .. p5}, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->getInterfaceIdByType(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Getting Intent fail from ignore reg message."

    move-object/from16 v0, p4

    invoke-virtual {v6, v7, v8, v0, v9}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent4ERROR(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 436
    :cond_13
    invoke-virtual {v15}, Lcom/xiaomi/xmpush/thrift/PushMessage;->getPayload()Ljava/lang/String;

    move-result-object v37

    .line 437
    .local v37, "payload":Ljava/lang/String;
    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 438
    const-string v6, "payload"

    move-object/from16 v0, v28

    move-object/from16 v1, v37

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    :cond_14
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 441
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    .line 442
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p5 .. p5}, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->getInterfaceIdByType(I)Ljava/lang/String;

    move-result-object v8

    const/16 v10, 0xbbe

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "business message is clicked typeId "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v46

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v9, p4

    invoke-virtual/range {v6 .. v11}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 471
    .end local v37    # "payload":Ljava/lang/String;
    :cond_15
    :goto_4
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 447
    .end local v28    # "intent":Landroid/content/Intent;
    :cond_16
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v27

    invoke-static {v6, v7, v0}, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->getNotificationMessageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Landroid/content/Intent;

    move-result-object v28

    .line 448
    .restart local v28    # "intent":Landroid/content/Intent;
    if-eqz v28, :cond_15

    .line 449
    sget-object v6, Lcom/xiaomi/push/service/PushConstants;->NOTIFICATION_CLICK_WEB_PAGE:Ljava/lang/String;

    move-object/from16 v0, v46

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    .line 450
    const-string v6, "key_message"

    move-object/from16 v0, v28

    move-object/from16 v1, v38

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 451
    const-string v6, "eventMessageType"

    move-object/from16 v0, v28

    move/from16 v1, p5

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 452
    const-string v6, "messageId"

    move-object/from16 v0, v28

    move-object/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    :cond_17
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 457
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    .line 458
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p5 .. p5}, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->getInterfaceIdByType(I)Ljava/lang/String;

    move-result-object v8

    const/16 v10, 0x3ee

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "notification message is clicked typeId "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v46

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v9, p4

    invoke-virtual/range {v6 .. v11}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 463
    sget-object v6, Lcom/xiaomi/push/service/PushConstants;->NOTIFICATION_CLICK_WEB_PAGE:Ljava/lang/String;

    move-object/from16 v0, v46

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 464
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    .line 465
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p5 .. p5}, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->getInterfaceIdByType(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "try open web page typeId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v46

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v6, v7, v8, v0, v9}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent4NeedDrop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .end local v15    # "actualMsg":Lcom/xiaomi/xmpush/thrift/PushMessage;
    .end local v27    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v28    # "intent":Landroid/content/Intent;
    .end local v29    # "key":Ljava/lang/String;
    .end local v38    # "pushMessage":Lcom/xiaomi/mipush/sdk/MiPushMessage;
    .end local v41    # "sendMsg":Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;
    .end local v46    # "typeId":Ljava/lang/String;
    :pswitch_3
    move-object/from16 v43, v30

    .line 483
    check-cast v43, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;

    .line 484
    .local v43, "subResult":Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;
    move-object/from16 v0, v43

    iget-wide v6, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->errorCode:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_18

    .line 485
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-virtual/range {v43 .. v43}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->getTopic()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaomi/mipush/sdk/MiPushClient;->addTopic(Landroid/content/Context;Ljava/lang/String;)V

    .line 487
    :cond_18
    const/4 v5, 0x0

    .line 488
    .restart local v5    # "cmdArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {v43 .. v43}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->getTopic()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_19

    .line 489
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "cmdArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 490
    .restart local v5    # "cmdArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {v43 .. v43}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->getTopic()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    :cond_19
    sget-object v6, Lcom/xiaomi/push/service/xmpush/Command;->COMMAND_SUBSCRIBE_TOPIC:Lcom/xiaomi/push/service/xmpush/Command;

    iget-object v4, v6, Lcom/xiaomi/push/service/xmpush/Command;->value:Ljava/lang/String;

    move-object/from16 v0, v43

    iget-wide v6, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->errorCode:J

    move-object/from16 v0, v43

    iget-object v8, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->reason:Ljava/lang/String;

    .line 494
    invoke-virtual/range {v43 .. v43}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;->getCategory()Ljava/lang/String;

    move-result-object v9

    .line 492
    invoke-static/range {v4 .. v9}, Lcom/xiaomi/mipush/sdk/PushMessageHelper;->generateCommandMessage(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v21

    .line 495
    .restart local v21    # "commandMessage":Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;
    goto/16 :goto_0

    .end local v5    # "cmdArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "commandMessage":Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;
    .end local v43    # "subResult":Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;
    :pswitch_4
    move-object/from16 v49, v30

    .line 498
    check-cast v49, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;

    .line 499
    .local v49, "unsubResult":Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;
    move-object/from16 v0, v49

    iget-wide v6, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->errorCode:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1a

    .line 500
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-virtual/range {v49 .. v49}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->getTopic()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaomi/mipush/sdk/MiPushClient;->removeTopic(Landroid/content/Context;Ljava/lang/String;)V

    .line 502
    :cond_1a
    const/4 v5, 0x0

    .line 503
    .restart local v5    # "cmdArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {v49 .. v49}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->getTopic()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1b

    .line 504
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "cmdArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 505
    .restart local v5    # "cmdArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {v49 .. v49}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->getTopic()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    :cond_1b
    sget-object v6, Lcom/xiaomi/push/service/xmpush/Command;->COMMAND_UNSUBSCRIBE_TOPIC:Lcom/xiaomi/push/service/xmpush/Command;

    iget-object v4, v6, Lcom/xiaomi/push/service/xmpush/Command;->value:Ljava/lang/String;

    move-object/from16 v0, v49

    iget-wide v6, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->errorCode:J

    move-object/from16 v0, v49

    iget-object v8, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->reason:Ljava/lang/String;

    .line 509
    invoke-virtual/range {v49 .. v49}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;->getCategory()Ljava/lang/String;

    move-result-object v9

    .line 507
    invoke-static/range {v4 .. v9}, Lcom/xiaomi/mipush/sdk/PushMessageHelper;->generateCommandMessage(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v21

    .line 510
    .restart local v21    # "commandMessage":Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;
    goto/16 :goto_0

    .line 514
    .end local v5    # "cmdArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "commandMessage":Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;
    .end local v49    # "unsubResult":Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    sget-object v8, Lcom/xiaomi/xmpush/thrift/ActionType;->Command:Lcom/xiaomi/xmpush/thrift/ActionType;

    move-object/from16 v0, p3

    array-length v9, v0

    move-object/from16 v0, v30

    invoke-static {v6, v7, v0, v8, v9}, Lcom/xiaomi/push/clientreport/PerfMessageHelper;->collectPerfData(Ljava/lang/String;Landroid/content/Context;Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;I)V

    move-object/from16 v22, v30

    .line 515
    check-cast v22, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;

    .line 516
    .local v22, "commandResult":Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;
    invoke-virtual/range {v22 .. v22}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->getCmdName()Ljava/lang/String;

    move-result-object v4

    .line 517
    .local v4, "configName":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->getCmdArgs()Ljava/util/List;

    move-result-object v5

    .line 518
    .restart local v5    # "cmdArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, v22

    iget-wide v6, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->errorCode:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1c

    .line 519
    sget-object v6, Lcom/xiaomi/push/service/xmpush/Command;->COMMAND_SET_ACCEPT_TIME:Lcom/xiaomi/push/service/xmpush/Command;

    iget-object v6, v6, Lcom/xiaomi/push/service/xmpush/Command;->value:Ljava/lang/String;

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1e

    if-eqz v5, :cond_1e

    .line 520
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_1e

    .line 521
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v8, v6, v7}, Lcom/xiaomi/mipush/sdk/MiPushClient;->addAcceptTime(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string v6, "00:00"

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    const-string v6, "00:00"

    const/4 v7, 0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 523
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->setPaused(Z)V

    .line 527
    :goto_5
    const-string v6, "GMT+08"

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v5}, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->getTimeForTimeZone(Ljava/util/TimeZone;Ljava/util/TimeZone;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 547
    :cond_1c
    :goto_6
    move-object/from16 v0, v22

    iget-wide v6, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->errorCode:J

    move-object/from16 v0, v22

    iget-object v8, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->reason:Ljava/lang/String;

    .line 548
    invoke-virtual/range {v22 .. v22}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->getCategory()Ljava/lang/String;

    move-result-object v9

    .line 547
    invoke-static/range {v4 .. v9}, Lcom/xiaomi/mipush/sdk/PushMessageHelper;->generateCommandMessage(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v21

    .line 549
    .restart local v21    # "commandMessage":Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;
    goto/16 :goto_0

    .line 525
    .end local v21    # "commandMessage":Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->setPaused(Z)V

    goto :goto_5

    .line 528
    :cond_1e
    sget-object v6, Lcom/xiaomi/push/service/xmpush/Command;->COMMAND_SET_ALIAS:Lcom/xiaomi/push/service/xmpush/Command;

    iget-object v6, v6, Lcom/xiaomi/push/service/xmpush/Command;->value:Ljava/lang/String;

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1f

    if-eqz v5, :cond_1f

    .line 529
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1f

    .line 530
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/xiaomi/mipush/sdk/MiPushClient;->addAlias(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_6

    .line 531
    :cond_1f
    sget-object v6, Lcom/xiaomi/push/service/xmpush/Command;->COMMAND_UNSET_ALIAS:Lcom/xiaomi/push/service/xmpush/Command;

    iget-object v6, v6, Lcom/xiaomi/push/service/xmpush/Command;->value:Ljava/lang/String;

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_20

    if-eqz v5, :cond_20

    .line 532
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_20

    .line 533
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/xiaomi/mipush/sdk/MiPushClient;->removeAlias(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_6

    .line 534
    :cond_20
    sget-object v6, Lcom/xiaomi/push/service/xmpush/Command;->COMMAND_SET_ACCOUNT:Lcom/xiaomi/push/service/xmpush/Command;

    iget-object v6, v6, Lcom/xiaomi/push/service/xmpush/Command;->value:Ljava/lang/String;

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_21

    if-eqz v5, :cond_21

    .line 535
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_21

    .line 536
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/xiaomi/mipush/sdk/MiPushClient;->addAccount(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 537
    :cond_21
    sget-object v6, Lcom/xiaomi/push/service/xmpush/Command;->COMMAND_UNSET_ACCOUNT:Lcom/xiaomi/push/service/xmpush/Command;

    iget-object v6, v6, Lcom/xiaomi/push/service/xmpush/Command;->value:Ljava/lang/String;

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_22

    if-eqz v5, :cond_22

    .line 538
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_22

    .line 539
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/xiaomi/mipush/sdk/MiPushClient;->removeAccount(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 540
    :cond_22
    sget-object v6, Lcom/xiaomi/push/service/xmpush/Command;->COMMAND_CHK_VDEVID:Lcom/xiaomi/push/service/xmpush/Command;

    iget-object v6, v6, Lcom/xiaomi/push/service/xmpush/Command;->value:Ljava/lang/String;

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 541
    if-eqz v5, :cond_23

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_23

    .line 542
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->updateVirtDevId(Landroid/content/Context;Ljava/lang/String;)V

    .line 544
    :cond_23
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 553
    .end local v4    # "configName":Ljava/lang/String;
    .end local v5    # "cmdArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "commandResult":Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    sget-object v8, Lcom/xiaomi/xmpush/thrift/ActionType;->Notification:Lcom/xiaomi/xmpush/thrift/ActionType;

    move-object/from16 v0, p3

    array-length v9, v0

    move-object/from16 v0, v30

    invoke-static {v6, v7, v0, v8, v9}, Lcom/xiaomi/push/clientreport/PerfMessageHelper;->collectPerfData(Ljava/lang/String;Landroid/content/Context;Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;I)V

    .line 554
    move-object/from16 v0, v30

    instance-of v6, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;

    if-eqz v6, :cond_30

    move-object/from16 v13, v30

    .line 555
    check-cast v13, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;

    .line 556
    .local v13, "ackNotification":Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;
    invoke-virtual {v13}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->getId()Ljava/lang/String;

    move-result-object v31

    .line 557
    .local v31, "messageId":Ljava/lang/String;
    sget-object v6, Lcom/xiaomi/xmpush/thrift/NotificationType;->DisablePushMessage:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v6, v6, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    iget-object v7, v13, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 558
    iget-wide v6, v13, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->errorCode:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_25

    .line 559
    const-class v7, Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    monitor-enter v7

    .line 560
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->isMessageOperating(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 561
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->removeOperateMessage(Ljava/lang/String;)V

    .line 563
    const-string/jumbo v6, "syncing"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    move-result-object v8

    sget-object v9, Lcom/xiaomi/mipush/sdk/RetryType;->DISABLE_PUSH:Lcom/xiaomi/mipush/sdk/RetryType;

    invoke-virtual {v8, v9}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getSyncStatus(Lcom/xiaomi/mipush/sdk/RetryType;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 564
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    move-result-object v6

    sget-object v8, Lcom/xiaomi/mipush/sdk/RetryType;->DISABLE_PUSH:Lcom/xiaomi/mipush/sdk/RetryType;

    const-string/jumbo v9, "synced"

    invoke-virtual {v6, v8, v9}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->putSyncStatus(Lcom/xiaomi/mipush/sdk/RetryType;Ljava/lang/String;)V

    .line 566
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/MiPushClient;->clearNotification(Landroid/content/Context;)V

    .line 567
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/MiPushClient;->clearLocalNotificationType(Landroid/content/Context;)V

    .line 568
    invoke-static {}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->removeAllPushCallbackClass()V

    .line 570
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->closePush()V

    .line 573
    :cond_24
    monitor-exit v7

    goto/16 :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 575
    :cond_25
    const-string/jumbo v6, "syncing"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    move-result-object v7

    sget-object v8, Lcom/xiaomi/mipush/sdk/RetryType;->DISABLE_PUSH:Lcom/xiaomi/mipush/sdk/RetryType;

    invoke-virtual {v7, v8}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getSyncStatus(Lcom/xiaomi/mipush/sdk/RetryType;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 576
    const-class v7, Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    monitor-enter v7

    .line 577
    :try_start_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->isMessageOperating(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 578
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getRetryCount(Ljava/lang/String;)I

    move-result v24

    .line 579
    .local v24, "count":I
    const/16 v6, 0xa

    move/from16 v0, v24

    if-ge v0, v6, :cond_27

    .line 580
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->increaseRetryCount(Ljava/lang/String;)V

    .line 582
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;

    move-result-object v6

    const/4 v8, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v6, v8, v0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sendPushEnableDisableMessage(ZLjava/lang/String;)V

    .line 587
    .end local v24    # "count":I
    :cond_26
    :goto_7
    monitor-exit v7

    goto/16 :goto_1

    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .line 584
    .restart local v24    # "count":I
    :cond_27
    :try_start_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->removeOperateMessage(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_7

    .line 589
    .end local v24    # "count":I
    :cond_28
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->removeOperateMessage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 592
    :cond_29
    sget-object v6, Lcom/xiaomi/xmpush/thrift/NotificationType;->EnablePushMessage:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v6, v6, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    iget-object v7, v13, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 593
    iget-wide v6, v13, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->errorCode:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_2b

    .line 594
    const-class v7, Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    monitor-enter v7

    .line 595
    :try_start_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->isMessageOperating(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 596
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->removeOperateMessage(Ljava/lang/String;)V

    .line 597
    const-string/jumbo v6, "syncing"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    move-result-object v8

    sget-object v9, Lcom/xiaomi/mipush/sdk/RetryType;->ENABLE_PUSH:Lcom/xiaomi/mipush/sdk/RetryType;

    invoke-virtual {v8, v9}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getSyncStatus(Lcom/xiaomi/mipush/sdk/RetryType;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 598
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    move-result-object v6

    sget-object v8, Lcom/xiaomi/mipush/sdk/RetryType;->ENABLE_PUSH:Lcom/xiaomi/mipush/sdk/RetryType;

    const-string/jumbo v9, "synced"

    invoke-virtual {v6, v8, v9}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->putSyncStatus(Lcom/xiaomi/mipush/sdk/RetryType;Ljava/lang/String;)V

    .line 601
    :cond_2a
    monitor-exit v7

    goto/16 :goto_1

    :catchall_2
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v6

    .line 603
    :cond_2b
    const-string/jumbo v6, "syncing"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    move-result-object v7

    sget-object v8, Lcom/xiaomi/mipush/sdk/RetryType;->ENABLE_PUSH:Lcom/xiaomi/mipush/sdk/RetryType;

    invoke-virtual {v7, v8}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getSyncStatus(Lcom/xiaomi/mipush/sdk/RetryType;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 604
    const-class v7, Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    monitor-enter v7

    .line 605
    :try_start_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->isMessageOperating(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 606
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getRetryCount(Ljava/lang/String;)I

    move-result v24

    .line 607
    .restart local v24    # "count":I
    const/16 v6, 0xa

    move/from16 v0, v24

    if-ge v0, v6, :cond_2d

    .line 608
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->increaseRetryCount(Ljava/lang/String;)V

    .line 610
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;

    move-result-object v6

    const/4 v8, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v6, v8, v0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sendPushEnableDisableMessage(ZLjava/lang/String;)V

    .line 615
    .end local v24    # "count":I
    :cond_2c
    :goto_8
    monitor-exit v7

    goto/16 :goto_1

    :catchall_3
    move-exception v6

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v6

    .line 612
    .restart local v24    # "count":I
    :cond_2d
    :try_start_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->removeOperateMessage(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_8

    .line 617
    .end local v24    # "count":I
    :cond_2e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->removeOperateMessage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 620
    :cond_2f
    sget-object v6, Lcom/xiaomi/xmpush/thrift/NotificationType;->ThirdPartyRegUpdate:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v6, v6, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    iget-object v7, v13, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 621
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->processSendTokenAckNotification(Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;)V

    goto/16 :goto_1

    .line 623
    .end local v13    # "ackNotification":Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;
    .end local v31    # "messageId":Ljava/lang/String;
    :cond_30
    move-object/from16 v0, v30

    instance-of v6, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    if-eqz v6, :cond_1

    move-object/from16 v32, v30

    .line 624
    check-cast v32, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 625
    .local v32, "notification":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    const-string v6, "registration id expired"

    move-object/from16 v0, v32

    iget-object v7, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 627
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/MiPushClient;->getAllAlias(Landroid/content/Context;)Ljava/util/List;

    move-result-object v17

    .line 628
    .local v17, "allAlias":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/MiPushClient;->getAllTopic(Landroid/content/Context;)Ljava/util/List;

    move-result-object v18

    .line 629
    .local v18, "allTopic":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/MiPushClient;->getAllUserAccount(Landroid/content/Context;)Ljava/util/List;

    move-result-object v19

    .line 630
    .local v19, "allUserAccount":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/MiPushClient;->getAcceptTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 633
    .local v12, "acceptTime":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    sget-object v7, Lcom/xiaomi/xmpush/thrift/RegistrationReason;->RegIdExpired:Lcom/xiaomi/xmpush/thrift/RegistrationReason;

    invoke-static {v6, v7}, Lcom/xiaomi/mipush/sdk/MiPushClient;->reInitialize(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/RegistrationReason;)V

    .line 636
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_31

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 637
    .local v16, "alias":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-static {v7, v0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->removeAlias(Landroid/content/Context;Ljava/lang/String;)V

    .line 638
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    const/4 v8, 0x0

    move-object/from16 v0, v16

    invoke-static {v7, v0, v8}, Lcom/xiaomi/mipush/sdk/MiPushClient;->setAlias(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 640
    .end local v16    # "alias":Ljava/lang/String;
    :cond_31
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_32

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Ljava/lang/String;

    .line 641
    .local v45, "topic":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    move-object/from16 v0, v45

    invoke-static {v7, v0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->removeTopic(Landroid/content/Context;Ljava/lang/String;)V

    .line 642
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    const/4 v8, 0x0

    move-object/from16 v0, v45

    invoke-static {v7, v0, v8}, Lcom/xiaomi/mipush/sdk/MiPushClient;->subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 644
    .end local v45    # "topic":Ljava/lang/String;
    :cond_32
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_33

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Ljava/lang/String;

    .line 645
    .local v51, "userAccount":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    move-object/from16 v0, v51

    invoke-static {v7, v0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->removeAccount(Landroid/content/Context;Ljava/lang/String;)V

    .line 646
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    const/4 v8, 0x0

    move-object/from16 v0, v51

    invoke-static {v7, v0, v8}, Lcom/xiaomi/mipush/sdk/MiPushClient;->setUserAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 648
    .end local v51    # "userAccount":Ljava/lang/String;
    :cond_33
    const-string v6, ","

    invoke-virtual {v12, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v42

    .line 649
    .local v42, "splitAcceptTime":[Ljava/lang/String;
    move-object/from16 v0, v42

    array-length v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 650
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/MiPushClient;->removeAcceptTime(Landroid/content/Context;)V

    .line 651
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    const/4 v7, 0x0

    aget-object v7, v42, v7

    const/4 v8, 0x1

    aget-object v8, v42, v8

    invoke-static {v6, v7, v8}, Lcom/xiaomi/mipush/sdk/MiPushClient;->addAcceptTime(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 653
    .end local v12    # "acceptTime":Ljava/lang/String;
    .end local v17    # "allAlias":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "allTopic":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "allUserAccount":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v42    # "splitAcceptTime":[Ljava/lang/String;
    :cond_34
    const-string v6, "client_info_update_ok"

    move-object/from16 v0, v32

    iget-object v7, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 655
    invoke-virtual/range {v32 .. v32}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getExtra()Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual/range {v32 .. v32}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getExtra()Ljava/util/Map;

    move-result-object v6

    const-string v7, "app_version"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 656
    invoke-virtual/range {v32 .. v32}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getExtra()Ljava/util/Map;

    move-result-object v6

    const-string v7, "app_version"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/lang/String;

    .line 657
    .local v50, "updatedVersion":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v6

    move-object/from16 v0, v50

    invoke-virtual {v6, v0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->updateVersionName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 659
    .end local v50    # "updatedVersion":Ljava/lang/String;
    :cond_35
    sget-object v6, Lcom/xiaomi/xmpush/thrift/NotificationType;->AwakeApp:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v6, v6, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    move-object/from16 v0, v32

    iget-object v7, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 660
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isEncryptAction()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 661
    invoke-virtual/range {v32 .. v32}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getExtra()Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual/range {v32 .. v32}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getExtra()Ljava/util/Map;

    move-result-object v6

    const-string v7, "awake_info"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 662
    invoke-virtual/range {v32 .. v32}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getExtra()Ljava/util/Map;

    move-result-object v6

    const-string v7, "awake_info"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 663
    .local v20, "awakeInfo":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getAppID()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    .line 664
    invoke-static {v8}, Lcom/xiaomi/push/service/OnlineConfig;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/OnlineConfig;

    move-result-object v8

    sget-object v9, Lcom/xiaomi/xmpush/thrift/ConfigKey;->AwakeInfoUploadWaySwitch:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    .line 665
    invoke-virtual {v9}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/xiaomi/push/service/OnlineConfig;->getIntValue(II)I

    move-result v8

    .line 663
    move-object/from16 v0, v20

    invoke-static {v6, v7, v8, v0}, Lcom/xiaomi/mipush/sdk/AwakeHelper;->doAwAppLogic(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 669
    .end local v20    # "awakeInfo":Ljava/lang/String;
    :cond_36
    sget-object v6, Lcom/xiaomi/xmpush/thrift/NotificationType;->NormalClientConfigUpdate:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v6, v6, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    move-object/from16 v0, v32

    iget-object v7, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 670
    new-instance v23, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;

    invoke-direct/range {v23 .. v23}, Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;-><init>()V

    .line 673
    .local v23, "configMessage":Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;
    :try_start_7
    invoke-virtual/range {v32 .. v32}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getBinaryExtra()[B

    move-result-object v6

    move-object/from16 v0, v23

    invoke-static {v0, v6}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->convertByteArrayToThriftObject(Lorg/apache/thrift/TBase;[B)V

    .line 675
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/push/service/OnlineConfig;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/OnlineConfig;

    move-result-object v35

    .line 676
    .local v35, "onlineConfig":Lcom/xiaomi/push/service/OnlineConfig;
    move-object/from16 v0, v35

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/OnlineConfigHelper;->updateNormalConfigs(Lcom/xiaomi/push/service/OnlineConfig;Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;)V

    .line 677
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/AssemblePushHelper;->registerAssemblePush(Landroid/content/Context;)V

    .line 678
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/push/service/awake/module/AwakeManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/awake/module/AwakeManager;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/xiaomi/push/service/OnlineConfig;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/OnlineConfig;

    move-result-object v7

    sget-object v8, Lcom/xiaomi/xmpush/thrift/ConfigKey;->AwakeInfoUploadWaySwitch:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    .line 679
    invoke-virtual {v8}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/xiaomi/push/service/OnlineConfig;->getIntValue(II)I

    move-result v7

    .line 678
    invoke-virtual {v6, v7}, Lcom/xiaomi/push/service/awake/module/AwakeManager;->setOnLineCmd(I)V

    .line 680
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->checkConfigChange(Landroid/content/Context;)V
    :try_end_7
    .catch Lorg/apache/thrift/TException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_1

    .line 681
    .end local v35    # "onlineConfig":Lcom/xiaomi/push/service/OnlineConfig;
    :catch_2
    move-exception v26

    .line 682
    .restart local v26    # "e":Lorg/apache/thrift/TException;
    invoke-static/range {v26 .. v26}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 684
    .end local v23    # "configMessage":Lcom/xiaomi/xmpush/thrift/XmPushActionNormalConfig;
    .end local v26    # "e":Lorg/apache/thrift/TException;
    :cond_37
    sget-object v6, Lcom/xiaomi/xmpush/thrift/NotificationType;->CustomClientConfigUpdate:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v6, v6, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    move-object/from16 v0, v32

    iget-object v7, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 685
    new-instance v23, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;

    invoke-direct/range {v23 .. v23}, Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;-><init>()V

    .line 688
    .local v23, "configMessage":Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;
    :try_start_8
    invoke-virtual/range {v32 .. v32}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getBinaryExtra()[B

    move-result-object v6

    move-object/from16 v0, v23

    invoke-static {v0, v6}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->convertByteArrayToThriftObject(Lorg/apache/thrift/TBase;[B)V

    .line 690
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/push/service/OnlineConfig;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/OnlineConfig;

    move-result-object v35

    .line 691
    .restart local v35    # "onlineConfig":Lcom/xiaomi/push/service/OnlineConfig;
    move-object/from16 v0, v35

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/OnlineConfigHelper;->updateCustomConfigs(Lcom/xiaomi/push/service/OnlineConfig;Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;)V

    .line 692
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/AssemblePushHelper;->registerAssemblePush(Landroid/content/Context;)V

    .line 693
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/push/service/awake/module/AwakeManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/awake/module/AwakeManager;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/xiaomi/push/service/OnlineConfig;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/OnlineConfig;

    move-result-object v7

    sget-object v8, Lcom/xiaomi/xmpush/thrift/ConfigKey;->AwakeInfoUploadWaySwitch:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    .line 694
    invoke-virtual {v8}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/xiaomi/push/service/OnlineConfig;->getIntValue(II)I

    move-result v7

    .line 693
    invoke-virtual {v6, v7}, Lcom/xiaomi/push/service/awake/module/AwakeManager;->setOnLineCmd(I)V

    .line 695
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->checkConfigChange(Landroid/content/Context;)V
    :try_end_8
    .catch Lorg/apache/thrift/TException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_1

    .line 696
    .end local v35    # "onlineConfig":Lcom/xiaomi/push/service/OnlineConfig;
    :catch_3
    move-exception v26

    .line 697
    .restart local v26    # "e":Lorg/apache/thrift/TException;
    invoke-static/range {v26 .. v26}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 699
    .end local v23    # "configMessage":Lcom/xiaomi/xmpush/thrift/XmPushActionCustomConfig;
    .end local v26    # "e":Lorg/apache/thrift/TException;
    :cond_38
    sget-object v6, Lcom/xiaomi/xmpush/thrift/NotificationType;->SyncInfoResult:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v6, v6, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    move-object/from16 v0, v32

    iget-object v7, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 700
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    move-object/from16 v0, v32

    invoke-static {v6, v0}, Lcom/xiaomi/mipush/sdk/SyncInfoHelper;->saveInfo(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;)V

    goto/16 :goto_1

    .line 701
    :cond_39
    sget-object v6, Lcom/xiaomi/xmpush/thrift/NotificationType;->ForceSync:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v6, v6, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    move-object/from16 v0, v32

    iget-object v7, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 702
    const-string v6, "receive force sync notification"

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 703
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/xiaomi/mipush/sdk/SyncInfoHelper;->doSyncInfoAsync(Landroid/content/Context;Z)V

    goto/16 :goto_1

    .line 704
    :cond_3a
    sget-object v6, Lcom/xiaomi/xmpush/thrift/NotificationType;->GeoRegsiter:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v6, v6, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    move-object/from16 v0, v32

    iget-object v7, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 706
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;

    move-result-object v6

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;->processGeoFenceRegistration(Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;)V

    goto/16 :goto_1

    .line 707
    :cond_3b
    sget-object v6, Lcom/xiaomi/xmpush/thrift/NotificationType;->GeoUnregsiter:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v6, v6, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    move-object/from16 v0, v32

    iget-object v7, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 709
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;

    move-result-object v6

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;->processGeoFenceUnregistration(Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;)V

    goto/16 :goto_1

    .line 710
    :cond_3c
    sget-object v6, Lcom/xiaomi/xmpush/thrift/NotificationType;->GeoSync:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v6, v6, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    move-object/from16 v0, v32

    iget-object v7, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 712
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;

    move-result-object v6

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;->syncGeoFencing(Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;)V

    goto/16 :goto_1

    .line 713
    :cond_3d
    sget-object v6, Lcom/xiaomi/xmpush/thrift/NotificationType;->CancelPushMessage:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v6, v6, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    move-object/from16 v0, v32

    iget-object v7, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 714
    const-string v34, ""

    .line 715
    .local v34, "notifyIdStr":Ljava/lang/String;
    const/16 v33, -0x2

    .line 716
    .local v33, "notifyId":I
    invoke-virtual/range {v32 .. v32}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getExtra()Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 717
    invoke-virtual/range {v32 .. v32}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getExtra()Ljava/util/Map;

    move-result-object v6

    sget-object v7, Lcom/xiaomi/push/service/PushConstants;->PUSH_NOTIFY_ID:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 718
    invoke-virtual/range {v32 .. v32}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getExtra()Ljava/util/Map;

    move-result-object v6

    sget-object v7, Lcom/xiaomi/push/service/PushConstants;->PUSH_NOTIFY_ID:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    .end local v34    # "notifyIdStr":Ljava/lang/String;
    check-cast v34, Ljava/lang/String;

    .line 719
    .restart local v34    # "notifyIdStr":Ljava/lang/String;
    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3e

    .line 721
    :try_start_9
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_4

    move-result v33

    .line 728
    :cond_3e
    :goto_c
    const/4 v6, -0x1

    move/from16 v0, v33

    if-lt v0, v6, :cond_3f

    .line 729
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    move/from16 v0, v33

    invoke-static {v6, v0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->clearNotification(Landroid/content/Context;I)V

    goto/16 :goto_1

    .line 722
    :catch_4
    move-exception v26

    .line 723
    .local v26, "e":Ljava/lang/NumberFormatException;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 724
    const/16 v33, -0x2

    goto :goto_c

    .line 731
    .end local v26    # "e":Ljava/lang/NumberFormatException;
    :cond_3f
    const-string v44, ""

    .line 732
    .local v44, "title":Ljava/lang/String;
    const-string v25, ""

    .line 733
    .local v25, "description":Ljava/lang/String;
    invoke-virtual/range {v32 .. v32}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getExtra()Ljava/util/Map;

    move-result-object v6

    sget-object v7, Lcom/xiaomi/push/service/PushConstants;->PUSH_TITLE:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 734
    invoke-virtual/range {v32 .. v32}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getExtra()Ljava/util/Map;

    move-result-object v6

    sget-object v7, Lcom/xiaomi/push/service/PushConstants;->PUSH_TITLE:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    .end local v44    # "title":Ljava/lang/String;
    check-cast v44, Ljava/lang/String;

    .line 736
    .restart local v44    # "title":Ljava/lang/String;
    :cond_40
    invoke-virtual/range {v32 .. v32}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getExtra()Ljava/util/Map;

    move-result-object v6

    sget-object v7, Lcom/xiaomi/push/service/PushConstants;->PUSH_DESCRIPTION:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 737
    invoke-virtual/range {v32 .. v32}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getExtra()Ljava/util/Map;

    move-result-object v6

    sget-object v7, Lcom/xiaomi/push/service/PushConstants;->PUSH_DESCRIPTION:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    .end local v25    # "description":Ljava/lang/String;
    check-cast v25, Ljava/lang/String;

    .line 739
    .restart local v25    # "description":Ljava/lang/String;
    :cond_41
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    move-object/from16 v0, v44

    move-object/from16 v1, v25

    invoke-static {v6, v0, v1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->clearNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 742
    .end local v25    # "description":Ljava/lang/String;
    .end local v33    # "notifyId":I
    .end local v34    # "notifyIdStr":Ljava/lang/String;
    .end local v44    # "title":Ljava/lang/String;
    :cond_42
    sget-object v6, Lcom/xiaomi/xmpush/thrift/NotificationType;->HybridRegisterResult:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v6, v6, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    move-object/from16 v0, v32

    iget-object v7, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_43

    .line 744
    :try_start_a
    new-instance v39, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;

    invoke-direct/range {v39 .. v39}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;-><init>()V

    .line 745
    .restart local v39    # "regResult":Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;
    invoke-virtual/range {v32 .. v32}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getBinaryExtra()[B

    move-result-object v6

    move-object/from16 v0, v39

    invoke-static {v0, v6}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->convertByteArrayToThriftObject(Lorg/apache/thrift/TBase;[B)V

    .line 746
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    move-object/from16 v0, v39

    invoke-static {v6, v0}, Lcom/xiaomi/mipush/sdk/MiPushClient4Hybrid;->onReceiveRegisterResult(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;)V
    :try_end_a
    .catch Lorg/apache/thrift/TException; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_1

    .line 747
    .end local v39    # "regResult":Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;
    :catch_5
    move-exception v26

    .line 748
    .local v26, "e":Lorg/apache/thrift/TException;
    invoke-static/range {v26 .. v26}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 750
    .end local v26    # "e":Lorg/apache/thrift/TException;
    :cond_43
    sget-object v6, Lcom/xiaomi/xmpush/thrift/NotificationType;->HybridUnregisterResult:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v6, v6, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    move-object/from16 v0, v32

    iget-object v7, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 752
    :try_start_b
    new-instance v47, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;

    invoke-direct/range {v47 .. v47}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;-><init>()V

    .line 753
    .local v47, "unRegResult":Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;
    invoke-virtual/range {v32 .. v32}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getBinaryExtra()[B

    move-result-object v6

    move-object/from16 v0, v47

    invoke-static {v0, v6}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->convertByteArrayToThriftObject(Lorg/apache/thrift/TBase;[B)V

    .line 754
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    move-object/from16 v0, v47

    invoke-static {v6, v0}, Lcom/xiaomi/mipush/sdk/MiPushClient4Hybrid;->onReceiveUnregisterResult(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;)V
    :try_end_b
    .catch Lorg/apache/thrift/TException; {:try_start_b .. :try_end_b} :catch_6

    goto/16 :goto_1

    .line 755
    .end local v47    # "unRegResult":Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;
    :catch_6
    move-exception v26

    .line 756
    .restart local v26    # "e":Lorg/apache/thrift/TException;
    invoke-static/range {v26 .. v26}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 758
    .end local v26    # "e":Lorg/apache/thrift/TException;
    :cond_44
    sget-object v6, Lcom/xiaomi/xmpush/thrift/NotificationType;->PushLogUpload:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v6, v6, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    move-object/from16 v0, v32

    iget-object v7, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 759
    invoke-virtual/range {v32 .. v32}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getExtra()Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual/range {v32 .. v32}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getExtra()Ljava/util/Map;

    move-result-object v6

    const-string v7, "packages"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 760
    invoke-virtual/range {v32 .. v32}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getExtra()Ljava/util/Map;

    move-result-object v6

    const-string v7, "packages"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v36

    .line 761
    .local v36, "packageNames":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.xiaomi.xmsf"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_45

    .line 762
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/xiaomi/mipush/sdk/Logger;->uploadLogFile(Landroid/content/Context;Z)V

    .line 763
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v6, v1}, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->uploadAppLog(Landroid/content/Context;[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 765
    :cond_45
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/xiaomi/mipush/sdk/Logger;->uploadLogFile(Landroid/content/Context;Z)V

    goto/16 :goto_1

    .line 326
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private processMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;[B)Lcom/xiaomi/mipush/sdk/PushMessageHandler$PushMessageInterface;
    .locals 9
    .param p1, "container"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .param p2, "decryptedContent"    # [B

    .prologue
    const/4 v5, 0x0

    .line 253
    const/4 v4, 0x0

    .line 255
    .local v4, "message":Lorg/apache/thrift/TBase;
    :try_start_0
    iget-object v7, p0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v7, p1}, Lcom/xiaomi/mipush/sdk/PushContainerHelper;->getResponseMessageBodyFromContainer(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Lorg/apache/thrift/TBase;

    move-result-object v4

    .line 256
    if-nez v4, :cond_0

    .line 257
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "message arrived: receiving an un-recognized message. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->action:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/xiaomi/mipush/sdk/DecryptException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/thrift/TException; {:try_start_0 .. :try_end_0} :catch_1

    .line 291
    :goto_0
    return-object v5

    .line 262
    :catch_0
    move-exception v2

    .line 263
    .local v2, "e":Lcom/xiaomi/mipush/sdk/DecryptException;
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 264
    const-string v7, "message arrived: receive a message but decrypt failed. report when click."

    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 266
    .end local v2    # "e":Lcom/xiaomi/mipush/sdk/DecryptException;
    :catch_1
    move-exception v2

    .line 267
    .local v2, "e":Lorg/apache/thrift/TException;
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 268
    const-string v7, "message arrived: receive a message which action string is not valid. is the reg expired?"

    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 271
    .end local v2    # "e":Lorg/apache/thrift/TException;
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getAction()Lcom/xiaomi/xmpush/thrift/ActionType;

    move-result-object v0

    .line 272
    .local v0, "action":Lcom/xiaomi/xmpush/thrift/ActionType;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "message arrived: processing an arrived message, action="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 273
    sget-object v7, Lcom/xiaomi/mipush/sdk/PushMessageProcessor$2;->$SwitchMap$com$xiaomi$xmpush$thrift$ActionType:[I

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/ActionType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move-object v6, v4

    .line 275
    check-cast v6, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    .line 276
    .local v6, "sendMsg":Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;
    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->getMessage()Lcom/xiaomi/xmpush/thrift/PushMessage;

    move-result-object v1

    .line 277
    .local v1, "actualMsg":Lcom/xiaomi/xmpush/thrift/PushMessage;
    if-nez v1, :cond_1

    .line 278
    const-string v7, "message arrived: receive an empty message without push content, drop it"

    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 281
    :cond_1
    const/4 v3, 0x0

    .line 282
    .local v3, "key":Ljava/lang/String;
    iget-object v7, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    if-eqz v7, :cond_2

    iget-object v7, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    invoke-virtual {v7}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 283
    iget-object v7, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    iget-object v7, v7, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->extra:Ljava/util/Map;

    const-string v8, "jobkey"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "key":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 285
    .restart local v3    # "key":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getMetaInfo()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/xiaomi/mipush/sdk/PushMessageHelper;->generateMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;Z)Lcom/xiaomi/mipush/sdk/MiPushMessage;

    move-result-object v5

    .line 286
    .local v5, "pushMessage":Lcom/xiaomi/mipush/sdk/MiPushMessage;
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->setArrivedMessage(Z)V

    .line 287
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "message arrived: receive a message, msgid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/PushMessage;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", jobkey="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 273
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private processSendTokenAckNotification(Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;)V
    .locals 6
    .param p1, "ackNotification"    # Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;

    .prologue
    .line 820
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ASSEMBLE_PUSH : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 821
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->getId()Ljava/lang/String;

    move-result-object v1

    .line 822
    .local v1, "messageId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->getExtra()Ljava/util/Map;

    move-result-object v0

    .line 823
    .local v0, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 824
    const-string v3, "RegInfo"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 825
    .local v2, "regInfo":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 826
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "brand:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/xiaomi/mipush/sdk/PhoneBrand;->FCM:Lcom/xiaomi/mipush/sdk/PhoneBrand;

    invoke-virtual {v4}, Lcom/xiaomi/mipush/sdk/PhoneBrand;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 828
    const-string v3, "ASSEMBLE_PUSH : receive fcm token sync ack"

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 829
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    sget-object v4, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_FCM:Lcom/xiaomi/mipush/sdk/AssemblePush;

    invoke-static {v3, v4, v2}, Lcom/xiaomi/mipush/sdk/AssemblePushHelper;->saveAssemblePushTokenAfterAck(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/AssemblePush;Ljava/lang/String;)V

    .line 830
    iget-wide v4, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->errorCode:J

    sget-object v3, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_FCM:Lcom/xiaomi/mipush/sdk/AssemblePush;

    invoke-direct {p0, v1, v4, v5, v3}, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->processSingleTokenACK(Ljava/lang/String;JLcom/xiaomi/mipush/sdk/AssemblePush;)V

    .line 844
    .end local v2    # "regInfo":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 831
    .restart local v2    # "regInfo":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "brand:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/xiaomi/mipush/sdk/PhoneBrand;->HUAWEI:Lcom/xiaomi/mipush/sdk/PhoneBrand;

    invoke-virtual {v4}, Lcom/xiaomi/mipush/sdk/PhoneBrand;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 833
    const-string v3, "ASSEMBLE_PUSH : receive hw token sync ack"

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 834
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    sget-object v4, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_HUAWEI:Lcom/xiaomi/mipush/sdk/AssemblePush;

    invoke-static {v3, v4, v2}, Lcom/xiaomi/mipush/sdk/AssemblePushHelper;->saveAssemblePushTokenAfterAck(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/AssemblePush;Ljava/lang/String;)V

    .line 835
    iget-wide v4, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->errorCode:J

    sget-object v3, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_HUAWEI:Lcom/xiaomi/mipush/sdk/AssemblePush;

    invoke-direct {p0, v1, v4, v5, v3}, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->processSingleTokenACK(Ljava/lang/String;JLcom/xiaomi/mipush/sdk/AssemblePush;)V

    goto :goto_0

    .line 836
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "brand:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/xiaomi/mipush/sdk/PhoneBrand;->OPPO:Lcom/xiaomi/mipush/sdk/PhoneBrand;

    invoke-virtual {v4}, Lcom/xiaomi/mipush/sdk/PhoneBrand;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 838
    const-string v3, "ASSEMBLE_PUSH : receive COS token sync ack"

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 839
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    sget-object v4, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_COS:Lcom/xiaomi/mipush/sdk/AssemblePush;

    invoke-static {v3, v4, v2}, Lcom/xiaomi/mipush/sdk/AssemblePushHelper;->saveAssemblePushTokenAfterAck(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/AssemblePush;Ljava/lang/String;)V

    .line 840
    iget-wide v4, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->errorCode:J

    sget-object v3, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_COS:Lcom/xiaomi/mipush/sdk/AssemblePush;

    invoke-direct {p0, v1, v4, v5, v3}, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->processSingleTokenACK(Ljava/lang/String;JLcom/xiaomi/mipush/sdk/AssemblePush;)V

    goto :goto_0
.end method

.method private processSingleTokenACK(Ljava/lang/String;JLcom/xiaomi/mipush/sdk/AssemblePush;)V
    .locals 6
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "errorCode"    # J
    .param p4, "type"    # Lcom/xiaomi/mipush/sdk/AssemblePush;

    .prologue
    .line 783
    invoke-static {p4}, Lcom/xiaomi/mipush/sdk/AssemblePushInfoHelper;->getRetryType(Lcom/xiaomi/mipush/sdk/AssemblePush;)Lcom/xiaomi/mipush/sdk/RetryType;

    move-result-object v1

    .line 784
    .local v1, "retryType":Lcom/xiaomi/mipush/sdk/RetryType;
    if-nez v1, :cond_0

    .line 813
    :goto_0
    return-void

    .line 787
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-nez v2, :cond_2

    .line 788
    const-class v3, Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    monitor-enter v3

    .line 789
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->isMessageOperating(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 790
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->removeOperateMessage(Ljava/lang/String;)V

    .line 791
    const-string/jumbo v2, "syncing"

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getSyncStatus(Lcom/xiaomi/mipush/sdk/RetryType;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 792
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    move-result-object v2

    const-string/jumbo v4, "synced"

    invoke-virtual {v2, v1, v4}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->putSyncStatus(Lcom/xiaomi/mipush/sdk/RetryType;Ljava/lang/String;)V

    .line 795
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 797
    :cond_2
    const-string/jumbo v2, "syncing"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getSyncStatus(Lcom/xiaomi/mipush/sdk/RetryType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 798
    const-class v3, Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    monitor-enter v3

    .line 799
    :try_start_1
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->isMessageOperating(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 800
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getRetryCount(Ljava/lang/String;)I

    move-result v0

    .line 801
    .local v0, "count":I
    const/16 v2, 0xa

    if-ge v0, v2, :cond_4

    .line 802
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->increaseRetryCount(Ljava/lang/String;)V

    .line 803
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;

    move-result-object v2

    invoke-virtual {v2, p1, v1, p4}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sendAssemblePushTokenCommon(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/RetryType;Lcom/xiaomi/mipush/sdk/AssemblePush;)V

    .line 808
    .end local v0    # "count":I
    :cond_3
    :goto_1
    monitor-exit v3

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 805
    .restart local v0    # "count":I
    :cond_4
    :try_start_2
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->removeOperateMessage(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 810
    .end local v0    # "count":I
    :cond_5
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->removeOperateMessage(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private reportDecryptFail(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V
    .locals 5
    .param p1, "container"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .prologue
    const/4 v4, 0x0

    .line 876
    const-string v1, "receive a message but decrypt failed. report now."

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 877
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getMetaInfo()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->id:Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;-><init>(Ljava/lang/String;Z)V

    .line 878
    .local v0, "reportMessage":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    sget-object v1, Lcom/xiaomi/xmpush/thrift/NotificationType;->DecryptMessageFail:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v1, v1, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setType(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 879
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getAppid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setAppId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 880
    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setPackageName(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 881
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    .line 882
    iget-object v1, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    const-string v2, "regid"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/MiPushClient;->getRegId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->Notification:Lcom/xiaomi/xmpush/thrift/ActionType;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v4, v3}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sendMessage(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZLcom/xiaomi/xmpush/thrift/PushMetaInfo;)V

    .line 884
    return-void
.end method

.method private sendUploadLogIntent(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 1080
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 1081
    .local v1, "serviceInfos":[Landroid/content/pm/ServiceInfo;
    if-eqz v1, :cond_0

    .line 1082
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 1083
    .local v0, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-boolean v5, v0, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz v5, :cond_1

    iget-boolean v5, v0, Landroid/content/pm/ServiceInfo;->enabled:Z

    if-eqz v5, :cond_1

    const-string v5, "com.xiaomi.mipush.sdk.PushMessageHandler"

    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 1084
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1085
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1089
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1090
    .local v2, "serviceIntent":Landroid/content/Intent;
    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1091
    const-string v3, "com.xiaomi.mipush.sdk.SYNC_LOG"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1092
    invoke-static {p1, v2}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->addJob(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1099
    .end local v0    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v2    # "serviceIntent":Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 1082
    .restart local v0    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1093
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private tryToReinitialize()V
    .locals 10

    .prologue
    .line 866
    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    const-string v6, "mipush_extra"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 867
    .local v4, "sp":Landroid/content/SharedPreferences;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 868
    .local v0, "current":J
    const-string v5, "last_reinitialize"

    const-wide/16 v6, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 869
    .local v2, "last":J
    sub-long v6, v0, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/32 v8, 0x1b7740

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    .line 870
    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    sget-object v6, Lcom/xiaomi/xmpush/thrift/RegistrationReason;->PackageUnregistered:Lcom/xiaomi/xmpush/thrift/RegistrationReason;

    invoke-static {v5, v6}, Lcom/xiaomi/mipush/sdk/MiPushClient;->reInitialize(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/RegistrationReason;)V

    .line 871
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "last_reinitialize"

    invoke-interface {v5, v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 873
    :cond_0
    return-void
.end method

.method private uploadAppLog(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageNames"    # [Ljava/lang/String;

    .prologue
    .line 1054
    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mipush/sdk/PushMessageProcessor$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaomi/mipush/sdk/PushMessageProcessor$1;-><init>(Lcom/xiaomi/mipush/sdk/PushMessageProcessor;[Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->addOneShootJob(Ljava/lang/Runnable;)V

    .line 1077
    return-void
.end method


# virtual methods
.method public getTimeForTimeZone(Ljava/util/TimeZone;Ljava/util/TimeZone;Ljava/util/List;)Ljava/util/List;
    .locals 24
    .param p1, "standTimeZone"    # Ljava/util/TimeZone;
    .param p2, "currentTimeZone"    # Ljava/util/TimeZone;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TimeZone;",
            "Ljava/util/TimeZone;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 847
    .local p3, "cmdArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 861
    .end local p3    # "cmdArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-object p3

    .line 850
    .restart local p3    # "cmdArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const-wide/16 v4, 0x5a0

    .line 851
    .local v4, "dayMin":J
    invoke-virtual/range {p1 .. p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v20

    sub-int v3, v3, v20

    div-int/lit16 v3, v3, 0x3e8

    div-int/lit8 v3, v3, 0x3c

    int-to-long v12, v3

    .line 852
    .local v12, "standDiff":J
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v20, ":"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/16 v20, 0x0

    aget-object v3, v3, v20

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 853
    .local v14, "startHour":J
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v20, ":"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/16 v20, 0x1

    aget-object v3, v3, v20

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 854
    .local v16, "startMin":J
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v20, ":"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/16 v20, 0x0

    aget-object v3, v3, v20

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 855
    .local v6, "endHour":J
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v20, ":"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/16 v20, 0x1

    aget-object v3, v3, v20

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 856
    .local v8, "endMin":J
    const-wide/16 v20, 0x3c

    mul-long v20, v20, v14

    add-long v20, v20, v16

    sub-long v20, v20, v12

    add-long v20, v20, v4

    rem-long v18, v20, v4

    .line 857
    .local v18, "startTime":J
    const-wide/16 v20, 0x3c

    mul-long v20, v20, v6

    add-long v20, v20, v8

    sub-long v20, v20, v12

    add-long v20, v20, v4

    rem-long v10, v20, v4

    .line 858
    .local v10, "endTime":J
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 859
    .local v2, "arguments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "%1$02d:%2$02d"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-wide/16 v22, 0x3c

    div-long v22, v18, v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-wide/16 v22, 0x3c

    rem-long v22, v18, v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 860
    const-string v3, "%1$02d:%2$02d"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-wide/16 v22, 0x3c

    div-long v22, v10, v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-wide/16 v22, 0x3c

    rem-long v22, v10, v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 p3, v2

    .line 861
    goto/16 :goto_0
.end method

.method public processIntent(Landroid/content/Intent;)Lcom/xiaomi/mipush/sdk/PushMessageHandler$PushMessageInterface;
    .locals 19
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 95
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 96
    .local v8, "action":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "receive an intent from server, action="

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 97
    const-string v2, "mrt"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 99
    .local v13, "receiveTime":Ljava/lang/String;
    if-nez v13, :cond_0

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    .line 102
    :cond_0
    const-string v2, "com.xiaomi.mipush.RECEIVE_MESSAGE"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 104
    const-string v2, "mipush_payload"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    .line 105
    .local v5, "msgBytes":[B
    const-string v2, "mipush_notified"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 106
    .local v4, "hasNotified":Z
    const-string v2, "messageId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 107
    .local v6, "msgId":Ljava/lang/String;
    const-string v2, "eventMessageType"

    const/4 v14, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 109
    .local v7, "msgType":I
    if-nez v5, :cond_1

    .line 110
    const-string v2, "receiving an empty message, drop"

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    .line 111
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "receiving an empty message, drop"

    move-object/from16 v0, p1

    invoke-virtual {v2, v14, v0, v15}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent4ERROR(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    .line 112
    const/4 v9, 0x0

    .line 245
    .end local v4    # "hasNotified":Z
    .end local v5    # "msgBytes":[B
    .end local v6    # "msgId":Ljava/lang/String;
    .end local v7    # "msgType":I
    :goto_0
    return-object v9

    .line 114
    .restart local v4    # "hasNotified":Z
    .restart local v5    # "msgBytes":[B
    .restart local v6    # "msgId":Ljava/lang/String;
    .restart local v7    # "msgType":I
    :cond_1
    new-instance v3, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    invoke-direct {v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;-><init>()V

    .line 116
    .local v3, "message":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    :try_start_0
    invoke-static {v3, v5}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->convertByteArrayToThriftObject(Lorg/apache/thrift/TBase;[B)V

    .line 118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v11

    .line 119
    .local v11, "infoHolder":Lcom/xiaomi/mipush/sdk/AppInfoHolder;
    invoke-virtual {v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getMetaInfo()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v12

    .line 120
    .local v12, "metaInfo":Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    invoke-virtual {v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getAction()Lcom/xiaomi/xmpush/thrift/ActionType;

    move-result-object v2

    sget-object v14, Lcom/xiaomi/xmpush/thrift/ActionType;->SendMessage:Lcom/xiaomi/xmpush/thrift/ActionType;

    if-ne v2, v14, :cond_2

    if-eqz v12, :cond_2

    .line 121
    invoke-virtual {v11}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->isPaused()Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v4, :cond_2

    .line 123
    const-string v2, "mrt"

    invoke-virtual {v12, v2, v13}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->putToExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v2, "mat"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v2, v14}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->putToExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->isHybridMsg(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 127
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->ackMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V

    .line 138
    :cond_2
    :goto_1
    invoke-virtual {v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getAction()Lcom/xiaomi/xmpush/thrift/ActionType;

    move-result-object v2

    sget-object v14, Lcom/xiaomi/xmpush/thrift/ActionType;->SendMessage:Lcom/xiaomi/xmpush/thrift/ActionType;

    if-ne v2, v14, :cond_8

    .line 139
    invoke-virtual {v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isEncryptAction()Z

    move-result v2

    if-nez v2, :cond_8

    .line 140
    invoke-static {v3}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isBusinessMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 141
    const-string v14, "drop an un-encrypted messages. %1$s, %2$s"

    const/4 v2, 0x2

    new-array v15, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 143
    invoke-virtual {v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v2

    const/16 v16, 0x1

    if-eqz v12, :cond_5

    .line 144
    invoke-virtual {v12}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v2

    :goto_2
    aput-object v2, v15, v16

    .line 141
    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "drop an un-encrypted messages. %1$s, %2$s"

    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/4 v2, 0x0

    .line 147
    invoke-virtual {v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v17, v2

    const/16 v18, 0x1

    if-eqz v12, :cond_6

    .line 148
    invoke-virtual {v12}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v2

    :goto_3
    aput-object v2, v17, v18

    .line 145
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v14, v15, v0, v2}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent4ERROR(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    .line 149
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 129
    :cond_3
    const-string/jumbo v2, "this is a mina\'s message, ack later"

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->i(Ljava/lang/String;)V

    .line 130
    const-string v2, "__hybrid_message_ts"

    .line 131
    invoke-virtual {v12}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getMessageTs()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    .line 130
    invoke-virtual {v12, v2, v14}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->putToExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v2, "__hybrid_device_status"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    .line 133
    invoke-static {v14, v3}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->getDeviceStatus(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)S

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    .line 132
    invoke-virtual {v12, v2, v14}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->putToExtra(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/thrift/TException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 192
    .end local v11    # "infoHolder":Lcom/xiaomi/mipush/sdk/AppInfoHolder;
    .end local v12    # "metaInfo":Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    :catch_0
    move-exception v10

    .line 193
    .local v10, "e":Lorg/apache/thrift/TException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v2, v14, v0, v10}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent4ERROR(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/Throwable;)V

    .line 194
    invoke-static {v10}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 245
    .end local v3    # "message":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .end local v4    # "hasNotified":Z
    .end local v5    # "msgBytes":[B
    .end local v6    # "msgId":Ljava/lang/String;
    .end local v7    # "msgType":I
    .end local v10    # "e":Lorg/apache/thrift/TException;
    :cond_4
    :goto_4
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 144
    .restart local v3    # "message":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .restart local v4    # "hasNotified":Z
    .restart local v5    # "msgBytes":[B
    .restart local v6    # "msgId":Ljava/lang/String;
    .restart local v7    # "msgType":I
    .restart local v11    # "infoHolder":Lcom/xiaomi/mipush/sdk/AppInfoHolder;
    .restart local v12    # "metaInfo":Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    :cond_5
    :try_start_1
    const-string v2, ""

    goto/16 :goto_2

    .line 148
    :cond_6
    const-string v2, ""

    goto :goto_3

    .line 152
    :cond_7
    if-eqz v4, :cond_9

    .line 153
    invoke-virtual {v12}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 154
    invoke-virtual {v12}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getExtra()Ljava/util/Map;

    move-result-object v2

    const-string v14, "notify_effect"

    invoke-interface {v2, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 171
    :cond_8
    invoke-virtual {v11}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->appRegistered()Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, v3, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->action:Lcom/xiaomi/xmpush/thrift/ActionType;

    sget-object v14, Lcom/xiaomi/xmpush/thrift/ActionType;->Registration:Lcom/xiaomi/xmpush/thrift/ActionType;

    if-eq v2, v14, :cond_c

    .line 172
    invoke-static {v3}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isBusinessMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v2, p0

    .line 173
    invoke-direct/range {v2 .. v7}, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->processMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;Z[BLjava/lang/String;I)Lcom/xiaomi/mipush/sdk/PushMessageHandler$PushMessageInterface;

    move-result-object v9

    goto/16 :goto_0

    .line 158
    :cond_9
    const-string v2, "drop an un-encrypted messages. %1$s, %2$s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 160
    invoke-virtual {v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 161
    invoke-virtual {v12}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    .line 158
    invoke-static {v2, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "drop an un-encrypted messages. %1$s, %2$s"

    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/4 v2, 0x0

    .line 164
    invoke-virtual {v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v17, v2

    const/16 v18, 0x1

    if-eqz v12, :cond_a

    .line 165
    invoke-virtual {v12}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->getId()Ljava/lang/String;

    move-result-object v2

    :goto_5
    aput-object v2, v17, v18

    .line 162
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v14, v15, v0, v2}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent4ERROR(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    .line 166
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 165
    :cond_a
    const-string v2, ""

    goto :goto_5

    .line 175
    :cond_b
    const-string v2, "receive message without registration. need re-register!"

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    .line 176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "receive message without registration. need re-register!"

    move-object/from16 v0, p1

    invoke-virtual {v2, v14, v0, v15}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent4ERROR(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    .line 177
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->tryToReinitialize()V
    :try_end_1
    .catch Lorg/apache/thrift/TException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    .line 195
    .end local v11    # "infoHolder":Lcom/xiaomi/mipush/sdk/AppInfoHolder;
    .end local v12    # "metaInfo":Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    :catch_1
    move-exception v10

    .line 196
    .local v10, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v2, v14, v0, v10}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent4ERROR(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/Throwable;)V

    .line 197
    invoke-static {v10}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 180
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v11    # "infoHolder":Lcom/xiaomi/mipush/sdk/AppInfoHolder;
    .restart local v12    # "metaInfo":Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    :cond_c
    :try_start_2
    invoke-virtual {v11}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->appRegistered()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v11}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->invalidated()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 181
    iget-object v2, v3, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->action:Lcom/xiaomi/xmpush/thrift/ActionType;

    sget-object v14, Lcom/xiaomi/xmpush/thrift/ActionType;->UnRegistration:Lcom/xiaomi/xmpush/thrift/ActionType;

    if-ne v2, v14, :cond_d

    .line 182
    invoke-virtual {v11}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->clear()V

    .line 183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->clearExtras(Landroid/content/Context;)V

    .line 184
    invoke-static {}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->removeAllPushCallbackClass()V

    goto/16 :goto_4

    .line 186
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->unregisterPush(Landroid/content/Context;)V

    goto/16 :goto_4

    :cond_e
    move-object/from16 v2, p0

    .line 189
    invoke-direct/range {v2 .. v7}, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->processMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;Z[BLjava/lang/String;I)Lcom/xiaomi/mipush/sdk/PushMessageHandler$PushMessageInterface;
    :try_end_2
    .catch Lorg/apache/thrift/TException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v9

    goto/16 :goto_0

    .line 199
    .end local v3    # "message":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .end local v4    # "hasNotified":Z
    .end local v5    # "msgBytes":[B
    .end local v6    # "msgId":Ljava/lang/String;
    .end local v7    # "msgType":I
    .end local v11    # "infoHolder":Lcom/xiaomi/mipush/sdk/AppInfoHolder;
    .end local v12    # "metaInfo":Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    :cond_f
    const-string v2, "com.xiaomi.mipush.ERROR"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 200
    new-instance v9, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    invoke-direct {v9}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;-><init>()V

    .line 202
    .local v9, "command":Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;
    new-instance v3, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    invoke-direct {v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;-><init>()V

    .line 204
    .restart local v3    # "message":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    :try_start_3
    const-string v2, "mipush_payload"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    .line 205
    .restart local v5    # "msgBytes":[B
    if-eqz v5, :cond_10

    .line 206
    invoke-static {v3, v5}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->convertByteArrayToThriftObject(Lorg/apache/thrift/TBase;[B)V
    :try_end_3
    .catch Lorg/apache/thrift/TException; {:try_start_3 .. :try_end_3} :catch_4

    .line 211
    .end local v5    # "msgBytes":[B
    :cond_10
    :goto_6
    invoke-virtual {v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getAction()Lcom/xiaomi/xmpush/thrift/ActionType;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->setCommand(Ljava/lang/String;)V

    .line 212
    const-string v2, "mipush_error_code"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    int-to-long v14, v2

    invoke-virtual {v9, v14, v15}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->setResultCode(J)V

    .line 213
    const-string v2, "mipush_error_msg"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->setReason(Ljava/lang/String;)V

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "receive a error message. code = "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v14, "mipush_error_code"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v14, ", msg= "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v14, "mipush_error_msg"

    .line 215
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 214
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 217
    .end local v3    # "message":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .end local v9    # "command":Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;
    :cond_11
    const-string v2, "com.xiaomi.mipush.MESSAGE_ARRIVED"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 218
    const-string v2, "mipush_payload"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    .line 219
    .restart local v5    # "msgBytes":[B
    if-nez v5, :cond_12

    .line 220
    const-string v2, "message arrived: receiving an empty message, drop"

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    .line 221
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 223
    :cond_12
    new-instance v3, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    invoke-direct {v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;-><init>()V

    .line 225
    .restart local v3    # "message":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    :try_start_4
    invoke-static {v3, v5}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->convertByteArrayToThriftObject(Lorg/apache/thrift/TBase;[B)V

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->sAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v11

    .line 228
    .restart local v11    # "infoHolder":Lcom/xiaomi/mipush/sdk/AppInfoHolder;
    invoke-static {v3}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->isBusinessMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 229
    const-string v2, "message arrived: receive ignore reg message, ignore!"

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/apache/thrift/TException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_4

    .line 239
    .end local v11    # "infoHolder":Lcom/xiaomi/mipush/sdk/AppInfoHolder;
    :catch_2
    move-exception v10

    .line 240
    .local v10, "e":Lorg/apache/thrift/TException;
    invoke-static {v10}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 230
    .end local v10    # "e":Lorg/apache/thrift/TException;
    .restart local v11    # "infoHolder":Lcom/xiaomi/mipush/sdk/AppInfoHolder;
    :cond_13
    :try_start_5
    invoke-virtual {v11}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->appRegistered()Z

    move-result v2

    if-nez v2, :cond_14

    .line 231
    const-string v2, "message arrived: receive message without registration. need unregister or re-register!"

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/apache/thrift/TException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_4

    .line 241
    .end local v11    # "infoHolder":Lcom/xiaomi/mipush/sdk/AppInfoHolder;
    :catch_3
    move-exception v10

    .line 242
    .local v10, "e":Ljava/lang/Exception;
    invoke-static {v10}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 233
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v11    # "infoHolder":Lcom/xiaomi/mipush/sdk/AppInfoHolder;
    :cond_14
    :try_start_6
    invoke-virtual {v11}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->appRegistered()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v11}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->invalidated()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 234
    const-string v2, "message arrived: app info is invalidated"

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 236
    :cond_15
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->processMessage(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;[B)Lcom/xiaomi/mipush/sdk/PushMessageHandler$PushMessageInterface;
    :try_end_6
    .catch Lorg/apache/thrift/TException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-result-object v9

    goto/16 :goto_0

    .line 208
    .end local v5    # "msgBytes":[B
    .end local v11    # "infoHolder":Lcom/xiaomi/mipush/sdk/AppInfoHolder;
    .restart local v9    # "command":Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;
    :catch_4
    move-exception v2

    goto/16 :goto_6
.end method
