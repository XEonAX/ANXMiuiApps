.class public Lcom/xiaomi/mipush/sdk/PushMessageHandler;
.super Lcom/xiaomi/mipush/sdk/BaseService;
.source "PushMessageHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mipush/sdk/PushMessageHandler$PushMessageInterface;
    }
.end annotation


# static fields
.field private static sCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static sPool:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->sCallbacks:Ljava/util/List;

    .line 31
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0xf

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->sPool:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/BaseService;-><init>()V

    return-void
.end method

.method public static addJob(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "job"    # Landroid/content/Intent;

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addjob PushMessageHandler "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 46
    if-eqz p1, :cond_0

    .line 47
    invoke-static {p0, p1}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->scheduleJob(Landroid/content/Context;Landroid/content/Intent;)V

    .line 48
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->startService(Landroid/content/Context;)V

    .line 50
    :cond_0
    return-void
.end method

.method protected static addPushCallbackClass(Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;)V
    .locals 2
    .param p0, "callback"    # Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;

    .prologue
    .line 64
    sget-object v1, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->sCallbacks:Ljava/util/List;

    monitor-enter v1

    .line 65
    :try_start_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->sCallbacks:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    sget-object v0, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->sCallbacks:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_0
    monitor-exit v1

    .line 69
    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static handleNewMessage(Landroid/content/Context;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pushMessageReceiverIntent"    # Landroid/content/Intent;
    .param p2, "targetRI"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 159
    :try_start_0
    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 160
    .local v0, "className":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/mipush/sdk/PushMessageReceiver;

    .line 161
    .local v2, "receiver":Lcom/xiaomi/mipush/sdk/PushMessageReceiver;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/xiaomi/mipush/sdk/MessageHandleService$MessageHandleJob;

    invoke-direct {v5, p1, v2}, Lcom/xiaomi/mipush/sdk/MessageHandleService$MessageHandleJob;-><init>(Landroid/content/Intent;Lcom/xiaomi/mipush/sdk/PushMessageReceiver;)V

    invoke-static {v4, v5}, Lcom/xiaomi/mipush/sdk/MessageHandleService;->addJob(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MessageHandleService$MessageHandleJob;)V

    .line 162
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/xiaomi/mipush/sdk/MessageHandleService;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 163
    .local v1, "jobIntent":Landroid/content/Intent;
    invoke-static {p0, v1}, Lcom/xiaomi/mipush/sdk/MessageHandleService;->onHandleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "jobIntent":Landroid/content/Intent;
    .end local v2    # "receiver":Lcom/xiaomi/mipush/sdk/PushMessageReceiver;
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v3

    .line 165
    .local v3, "throwable":Ljava/lang/Throwable;
    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static isCallbackEmpty()Z
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->sCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected static isCategoryMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "msgCategory"    # Ljava/lang/String;
    .param p1, "callbackCategory"    # Ljava/lang/String;

    .prologue
    .line 268
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static onCommandResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "resultCode"    # J
    .param p5, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 258
    .local p6, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v6, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->sCallbacks:Ljava/util/List;

    monitor-enter v6

    .line 259
    :try_start_0
    sget-object v1, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->sCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;

    .line 260
    .local v0, "callback":Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;
    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->isCategoryMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p2

    move-wide v2, p3

    move-object v4, p5

    move-object v5, p6

    .line 261
    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;->onCommandResult(Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 264
    .end local v0    # "callback":Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;
    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    return-void
.end method

.method protected static onHandleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 86
    :try_start_0
    const-string v11, "com.xiaomi.mipush.sdk.WAKEUP"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 87
    const/4 v11, 0x0

    invoke-static {p0, p1, v11}, Lcom/xiaomi/mipush/sdk/AwakeHelper;->doAWork(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;)V

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    const-string v11, "com.xiaomi.mipush.SEND_TINYDATA"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 89
    new-instance v2, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    invoke-direct {v2}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;-><init>()V

    .line 90
    .local v2, "item":Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;
    const-string v11, "mipush_payload"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    .line 91
    .local v4, "payload":[B
    invoke-static {v2, v4}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->convertByteArrayToThriftObject(Lorg/apache/thrift/TBase;[B)V

    .line 92
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PushMessageHandler.onHandleIntent "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 93
    invoke-static {p0, v2}, Lcom/xiaomi/mipush/sdk/MiTinyDataClient;->upload(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    .end local v2    # "item":Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;
    .end local v4    # "payload":[B
    :catch_0
    move-exception v10

    .line 142
    .local v10, "th":Ljava/lang/Throwable;
    invoke-static {v10}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 143
    invoke-static {p0}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v11

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, p1, v10}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent4ERROR(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 94
    .end local v10    # "th":Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    const-string v11, "com.xiaomi.mipush.sdk.HYBRID_NOTIFICATION_CLICK"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 95
    const-string v11, "mipush_payload"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/mipush/sdk/MiPushMessage;

    .line 96
    .local v3, "message":Lcom/xiaomi/mipush/sdk/MiPushMessage;
    const-string v11, "mipush_hybrid_app_pkg"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "appPackage":Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/xiaomi/mipush/sdk/MiPushClient;->reportMessageClicked(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V

    .line 98
    invoke-static {p0, v0, v3}, Lcom/xiaomi/mipush/sdk/MiPushClient4Hybrid;->onNotificationMessageClicked(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V

    goto :goto_0

    .line 99
    .end local v0    # "appPackage":Ljava/lang/String;
    .end local v3    # "message":Lcom/xiaomi/mipush/sdk/MiPushMessage;
    :cond_3
    const/4 v11, 0x1

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/PushMessageHelper;->getPushMode(Landroid/content/Context;)I

    move-result v12

    if-ne v11, v12, :cond_5

    .line 100
    invoke-static {}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->isCallbackEmpty()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 101
    const-string v11, "receive a message before application calling initialize"

    invoke-static {v11}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_4
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushMessageProcessor;

    move-result-object v11

    invoke-virtual {v11, p1}, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->processIntent(Landroid/content/Intent;)Lcom/xiaomi/mipush/sdk/PushMessageHandler$PushMessageInterface;

    move-result-object v3

    .line 105
    .local v3, "message":Lcom/xiaomi/mipush/sdk/PushMessageHandler$PushMessageInterface;
    if-eqz v3, :cond_0

    .line 106
    invoke-static {p0, v3}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->processMessageForCallback(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/PushMessageHandler$PushMessageInterface;)V

    goto/16 :goto_0

    .line 108
    .end local v3    # "message":Lcom/xiaomi/mipush/sdk/PushMessageHandler$PushMessageInterface;
    :cond_5
    const-string v11, "com.xiaomi.mipush.sdk.SYNC_LOG"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 110
    const/4 v11, 0x0

    invoke-static {p0, v11}, Lcom/xiaomi/mipush/sdk/Logger;->uploadLogFile(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 113
    :cond_6
    new-instance v6, Landroid/content/Intent;

    const-string v11, "com.xiaomi.mipush.RECEIVE_MESSAGE"

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .local v6, "pushMessageReceiverIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    invoke-virtual {v6, p1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .line 119
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/16 v11, 0x20

    :try_start_2
    invoke-virtual {v5, v6, v11}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 121
    .local v7, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v9, 0x0

    .line 122
    .local v9, "targetRI":Landroid/content/pm/ResolveInfo;
    if-eqz v7, :cond_8

    .line 123
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 124
    .local v8, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v12, :cond_7

    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    const-class v12, Lcom/xiaomi/mipush/sdk/PushMessageReceiver;

    iget-object v13, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 125
    move-object v9, v8

    .line 130
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_8
    if-eqz v9, :cond_9

    .line 131
    invoke-static {p0, v6, v9}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->handleNewMessage(Landroid/content/Context;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 136
    .end local v7    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v9    # "targetRI":Landroid/content/pm/ResolveInfo;
    :catch_1
    move-exception v1

    .line 137
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 138
    invoke-static {p0}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v11

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, p1, v1}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent4ERROR(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 133
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v7    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v9    # "targetRI":Landroid/content/pm/ResolveInfo;
    :cond_9
    :try_start_4
    const-string v11, "cannot find the receiver to handler this message, check your manifest"

    invoke-static {v11}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    .line 134
    invoke-static {p0}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v11

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "cannot find the receiver to handler this message, check your manifest"

    invoke-virtual {v11, v12, p1, v13}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent4ERROR(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0
.end method

.method public static onInitializeResult(JLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "resultCode"    # J
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "regID"    # Ljava/lang/String;

    .prologue
    .line 229
    sget-object v2, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->sCallbacks:Ljava/util/List;

    monitor-enter v2

    .line 230
    :try_start_0
    sget-object v1, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->sCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;

    .line 231
    .local v0, "callback":Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;->onInitializeResult(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 233
    .end local v0    # "callback":Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    return-void
.end method

.method public static onReceiveMessage(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Lcom/xiaomi/mipush/sdk/MiPushMessage;

    .prologue
    .line 218
    sget-object v2, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->sCallbacks:Ljava/util/List;

    monitor-enter v2

    .line 219
    :try_start_0
    sget-object v1, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->sCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;

    .line 220
    .local v0, "callback":Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;
    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;->getCategory()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->isCategoryMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 221
    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getTopic()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->isNotified()Z

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;->onReceiveMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 222
    invoke-virtual {v0, p1}, Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;->onReceiveMessage(Lcom/xiaomi/mipush/sdk/MiPushMessage;)V

    goto :goto_0

    .line 225
    .end local v0    # "callback":Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    return-void
.end method

.method protected static onSubscribeResult(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "resultCode"    # J
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "topic"    # Ljava/lang/String;

    .prologue
    .line 237
    sget-object v2, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->sCallbacks:Ljava/util/List;

    monitor-enter v2

    .line 238
    :try_start_0
    sget-object v1, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->sCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;

    .line 239
    .local v0, "callback":Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;
    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->isCategoryMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 240
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;->onSubscribeResult(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 243
    .end local v0    # "callback":Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    return-void
.end method

.method protected static onUnsubscribeResult(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "resultCode"    # J
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "topic"    # Ljava/lang/String;

    .prologue
    .line 247
    sget-object v2, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->sCallbacks:Ljava/util/List;

    monitor-enter v2

    .line 248
    :try_start_0
    sget-object v1, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->sCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;

    .line 249
    .local v0, "callback":Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;
    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->isCategoryMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 250
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;->onUnsubscribeResult(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 253
    .end local v0    # "callback":Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    return-void
.end method

.method public static processMessageForCallback(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/PushMessageHandler$PushMessageInterface;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Lcom/xiaomi/mipush/sdk/PushMessageHandler$PushMessageInterface;

    .prologue
    const/4 v12, 0x0

    const/4 v2, 0x0

    .line 190
    instance-of v1, p1, Lcom/xiaomi/mipush/sdk/MiPushMessage;

    if-eqz v1, :cond_1

    move-object v11, p1

    .line 191
    check-cast v11, Lcom/xiaomi/mipush/sdk/MiPushMessage;

    .line 192
    .local v11, "miPushMessage":Lcom/xiaomi/mipush/sdk/MiPushMessage;
    invoke-static {p0, v11}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->onReceiveMessage(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V

    .line 215
    .end local v11    # "miPushMessage":Lcom/xiaomi/mipush/sdk/MiPushMessage;
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    if-eqz v1, :cond_0

    move-object v10, p1

    .line 194
    check-cast v10, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    .line 195
    .local v10, "commandMessage":Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;
    invoke-virtual {v10}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getCommand()Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, "command":Ljava/lang/String;
    sget-object v1, Lcom/xiaomi/push/service/xmpush/Command;->COMMAND_REGISTER:Lcom/xiaomi/push/service/xmpush/Command;

    iget-object v1, v1, Lcom/xiaomi/push/service/xmpush/Command;->value:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 197
    invoke-virtual {v10}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getCommandArguments()Ljava/util/List;

    move-result-object v0

    .line 198
    .local v0, "arguments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v12, v1

    .line 199
    .local v12, "regID":Ljava/lang/String;
    :cond_2
    invoke-virtual {v10}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getResultCode()J

    move-result-wide v4

    invoke-virtual {v10}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5, v1, v12}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->onInitializeResult(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 200
    .end local v0    # "arguments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "regID":Ljava/lang/String;
    :cond_3
    sget-object v1, Lcom/xiaomi/push/service/xmpush/Command;->COMMAND_SET_ALIAS:Lcom/xiaomi/push/service/xmpush/Command;

    iget-object v1, v1, Lcom/xiaomi/push/service/xmpush/Command;->value:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/xiaomi/push/service/xmpush/Command;->COMMAND_UNSET_ALIAS:Lcom/xiaomi/push/service/xmpush/Command;

    iget-object v1, v1, Lcom/xiaomi/push/service/xmpush/Command;->value:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/xiaomi/push/service/xmpush/Command;->COMMAND_SET_ACCEPT_TIME:Lcom/xiaomi/push/service/xmpush/Command;

    iget-object v1, v1, Lcom/xiaomi/push/service/xmpush/Command;->value:Ljava/lang/String;

    .line 201
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 202
    :cond_4
    invoke-virtual {v10}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getResultCode()J

    move-result-wide v4

    invoke-virtual {v10}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getReason()Ljava/lang/String;

    move-result-object v6

    .line 203
    invoke-virtual {v10}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getCommandArguments()Ljava/util/List;

    move-result-object v7

    move-object v1, p0

    .line 202
    invoke-static/range {v1 .. v7}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->onCommandResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 204
    :cond_5
    sget-object v1, Lcom/xiaomi/push/service/xmpush/Command;->COMMAND_SUBSCRIBE_TOPIC:Lcom/xiaomi/push/service/xmpush/Command;

    iget-object v1, v1, Lcom/xiaomi/push/service/xmpush/Command;->value:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 205
    invoke-virtual {v10}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getCommandArguments()Ljava/util/List;

    move-result-object v0

    .line 206
    .restart local v0    # "arguments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v9, v1

    .line 207
    .local v9, "topic":Ljava/lang/String;
    :goto_1
    invoke-virtual {v10}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getCategory()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getResultCode()J

    move-result-wide v6

    invoke-virtual {v10}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getReason()Ljava/lang/String;

    move-result-object v8

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->onSubscribeResult(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v9    # "topic":Ljava/lang/String;
    :cond_6
    move-object v9, v12

    .line 206
    goto :goto_1

    .line 208
    .end local v0    # "arguments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    sget-object v1, Lcom/xiaomi/push/service/xmpush/Command;->COMMAND_UNSUBSCRIBE_TOPIC:Lcom/xiaomi/push/service/xmpush/Command;

    iget-object v1, v1, Lcom/xiaomi/push/service/xmpush/Command;->value:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    invoke-virtual {v10}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getCommandArguments()Ljava/util/List;

    move-result-object v0

    .line 210
    .restart local v0    # "arguments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v9, v1

    .line 211
    .restart local v9    # "topic":Ljava/lang/String;
    :goto_2
    invoke-virtual {v10}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getCategory()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getResultCode()J

    move-result-wide v6

    invoke-virtual {v10}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getReason()Ljava/lang/String;

    move-result-object v8

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->onUnsubscribeResult(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v9    # "topic":Ljava/lang/String;
    :cond_8
    move-object v9, v12

    .line 210
    goto :goto_2
.end method

.method protected static removeAllPushCallbackClass()V
    .locals 2

    .prologue
    .line 78
    sget-object v1, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->sCallbacks:Ljava/util/List;

    monitor-enter v1

    .line 79
    :try_start_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->sCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 80
    monitor-exit v1

    .line 81
    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static scheduleJob(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 53
    if-eqz p1, :cond_0

    sget-object v0, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->sPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    sget-object v0, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->sPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/xiaomi/mipush/sdk/PushMessageHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/mipush/sdk/PushMessageHandler$1;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 61
    :cond_0
    return-void
.end method

.method public static startService(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 35
    .local v0, "awakeIntent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/xiaomi/mipush/sdk/PushMessageHandler;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 37
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v1

    .line 39
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected hasJob()Z
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->sPool:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->sPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->sPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 186
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 175
    invoke-super {p0, p1, p2}, Lcom/xiaomi/mipush/sdk/BaseService;->onStart(Landroid/content/Intent;I)V

    .line 176
    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->scheduleJob(Landroid/content/Context;Landroid/content/Intent;)V

    .line 177
    return-void
.end method
