.class public Lcom/xiaomi/mipush/sdk/MessageHandleService;
.super Lcom/xiaomi/mipush/sdk/BaseService;
.source "MessageHandleService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mipush/sdk/MessageHandleService$MessageHandleJob;
    }
.end annotation


# static fields
.field private static jobQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/xiaomi/mipush/sdk/MessageHandleService$MessageHandleJob;",
            ">;"
        }
    .end annotation
.end field

.field private static sPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/xiaomi/mipush/sdk/MessageHandleService;->jobQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 30
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0xf

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/xiaomi/mipush/sdk/MessageHandleService;->sPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/BaseService;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/MessageHandleService;->processJob(Landroid/content/Context;)V

    return-void
.end method

.method public static addJob(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MessageHandleService$MessageHandleJob;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "job"    # Lcom/xiaomi/mipush/sdk/MessageHandleService$MessageHandleJob;

    .prologue
    .line 49
    if-eqz p1, :cond_0

    .line 50
    sget-object v0, Lcom/xiaomi/mipush/sdk/MessageHandleService;->jobQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/MessageHandleService;->scheduleJob(Landroid/content/Context;)V

    .line 52
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/MessageHandleService;->startService(Landroid/content/Context;)V

    .line 55
    :cond_0
    return-void
.end method

.method protected static onHandleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "service"    # Landroid/content/Context;
    .param p1, "jobIntent"    # Landroid/content/Intent;

    .prologue
    .line 74
    if-nez p1, :cond_0

    .line 78
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/MessageHandleService;->scheduleJob(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static processJob(Landroid/content/Context;)V
    .locals 18
    .param p0, "service"    # Landroid/content/Context;

    .prologue
    .line 82
    :try_start_0
    sget-object v13, Lcom/xiaomi/mipush/sdk/MessageHandleService;->jobQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v13}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaomi/mipush/sdk/MessageHandleService$MessageHandleJob;

    .line 83
    .local v6, "job":Lcom/xiaomi/mipush/sdk/MessageHandleService$MessageHandleJob;
    if-nez v6, :cond_1

    .line 167
    .end local v6    # "job":Lcom/xiaomi/mipush/sdk/MessageHandleService$MessageHandleJob;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 87
    .restart local v6    # "job":Lcom/xiaomi/mipush/sdk/MessageHandleService$MessageHandleJob;
    :cond_1
    invoke-virtual {v6}, Lcom/xiaomi/mipush/sdk/MessageHandleService$MessageHandleJob;->getReceiver()Lcom/xiaomi/mipush/sdk/PushMessageReceiver;

    move-result-object v12

    .line 88
    .local v12, "receiver":Lcom/xiaomi/mipush/sdk/PushMessageReceiver;
    invoke-virtual {v6}, Lcom/xiaomi/mipush/sdk/MessageHandleService$MessageHandleJob;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 89
    .local v5, "intent":Landroid/content/Intent;
    const-string v13, "message_type"

    const/4 v14, 0x1

    invoke-virtual {v5, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 90
    .local v8, "messageType":I
    packed-switch v8, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 109
    :pswitch_2
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushMessageProcessor;

    move-result-object v13

    invoke-virtual {v13, v5}, Lcom/xiaomi/mipush/sdk/PushMessageProcessor;->processIntent(Landroid/content/Intent;)Lcom/xiaomi/mipush/sdk/PushMessageHandler$PushMessageInterface;

    move-result-object v7

    .line 110
    .local v7, "message":Lcom/xiaomi/mipush/sdk/PushMessageHandler$PushMessageInterface;
    const-string v13, "eventMessageType"

    const/4 v14, -0x1

    invoke-virtual {v5, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 111
    .local v10, "msgType":I
    if-eqz v7, :cond_0

    .line 112
    instance-of v13, v7, Lcom/xiaomi/mipush/sdk/MiPushMessage;

    if-eqz v13, :cond_6

    .line 113
    move-object v0, v7

    check-cast v0, Lcom/xiaomi/mipush/sdk/MiPushMessage;

    move-object v9, v0

    .line 114
    .local v9, "miPushMessage":Lcom/xiaomi/mipush/sdk/MiPushMessage;
    invoke-virtual {v9}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->isArrivedMessage()Z

    move-result v13

    if-nez v13, :cond_2

    .line 115
    move-object/from16 v0, p0

    invoke-virtual {v12, v0, v9}, Lcom/xiaomi/mipush/sdk/PushMessageReceiver;->onReceiveMessage(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V

    .line 117
    :cond_2
    invoke-virtual {v9}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getPassThrough()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    .line 119
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v13

    .line 120
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x7d4

    const-string v16, "call passThrough callBack"

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v5, v15, v0}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent(Ljava/lang/String;Landroid/content/Intent;ILjava/lang/String;)V

    .line 121
    move-object/from16 v0, p0

    invoke-virtual {v12, v0, v9}, Lcom/xiaomi/mipush/sdk/PushMessageReceiver;->onReceivePassThroughMessage(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "job":Lcom/xiaomi/mipush/sdk/MessageHandleService$MessageHandleJob;
    .end local v7    # "message":Lcom/xiaomi/mipush/sdk/PushMessageHandler$PushMessageInterface;
    .end local v8    # "messageType":I
    .end local v9    # "miPushMessage":Lcom/xiaomi/mipush/sdk/MiPushMessage;
    .end local v10    # "msgType":I
    .end local v12    # "receiver":Lcom/xiaomi/mipush/sdk/PushMessageReceiver;
    :catch_0
    move-exception v3

    .line 165
    .local v3, "e":Ljava/lang/RuntimeException;
    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 96
    .end local v3    # "e":Ljava/lang/RuntimeException;
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v6    # "job":Lcom/xiaomi/mipush/sdk/MessageHandleService$MessageHandleJob;
    .restart local v8    # "messageType":I
    .restart local v12    # "receiver":Lcom/xiaomi/mipush/sdk/PushMessageReceiver;
    :pswitch_3
    :try_start_1
    const-string v13, "key_command"

    .line 97
    invoke-virtual {v5, v13}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    .line 98
    .local v2, "commandMessage":Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;
    move-object/from16 v0, p0

    invoke-virtual {v12, v0, v2}, Lcom/xiaomi/mipush/sdk/PushMessageReceiver;->onCommandResult(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V

    .line 99
    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getCommand()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lcom/xiaomi/push/service/xmpush/Command;->COMMAND_REGISTER:Lcom/xiaomi/push/service/xmpush/Command;

    iget-object v14, v14, Lcom/xiaomi/push/service/xmpush/Command;->value:Ljava/lang/String;

    invoke-static {v13, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 100
    move-object/from16 v0, p0

    invoke-virtual {v12, v0, v2}, Lcom/xiaomi/mipush/sdk/PushMessageReceiver;->onReceiveRegisterResult(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V

    .line 102
    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getResultCode()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_0

    .line 103
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/mipush/sdk/AssemblePushHelper;->registerAssemblePush(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 123
    .end local v2    # "commandMessage":Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;
    .restart local v7    # "message":Lcom/xiaomi/mipush/sdk/PushMessageHandler$PushMessageInterface;
    .restart local v9    # "miPushMessage":Lcom/xiaomi/mipush/sdk/MiPushMessage;
    .restart local v10    # "msgType":I
    :cond_3
    invoke-virtual {v9}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->isNotified()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 124
    const/16 v13, 0x3e8

    if-ne v10, v13, :cond_4

    .line 125
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v13

    .line 126
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x3ef

    const-string v16, "call notification callBack"

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v5, v15, v0}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent(Ljava/lang/String;Landroid/content/Intent;ILjava/lang/String;)V

    .line 132
    :goto_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "begin execute onNotificationMessageClicked from\u3000"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 133
    move-object/from16 v0, p0

    invoke-virtual {v12, v0, v9}, Lcom/xiaomi/mipush/sdk/PushMessageReceiver;->onNotificationMessageClicked(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V

    goto/16 :goto_0

    .line 128
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v13

    .line 129
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0xbbf

    const-string v16, "call business callBack"

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v5, v15, v0}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent(Ljava/lang/String;Landroid/content/Intent;ILjava/lang/String;)V

    goto :goto_1

    .line 135
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v12, v0, v9}, Lcom/xiaomi/mipush/sdk/PushMessageReceiver;->onNotificationMessageArrived(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V

    goto/16 :goto_0

    .line 138
    .end local v9    # "miPushMessage":Lcom/xiaomi/mipush/sdk/MiPushMessage;
    :cond_6
    instance-of v13, v7, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    if-eqz v13, :cond_0

    .line 139
    move-object v0, v7

    check-cast v0, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-object v2, v0

    .line 140
    .restart local v2    # "commandMessage":Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;
    move-object/from16 v0, p0

    invoke-virtual {v12, v0, v2}, Lcom/xiaomi/mipush/sdk/PushMessageReceiver;->onCommandResult(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V

    .line 141
    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getCommand()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lcom/xiaomi/push/service/xmpush/Command;->COMMAND_REGISTER:Lcom/xiaomi/push/service/xmpush/Command;

    iget-object v14, v14, Lcom/xiaomi/push/service/xmpush/Command;->value:Ljava/lang/String;

    invoke-static {v13, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 142
    move-object/from16 v0, p0

    invoke-virtual {v12, v0, v2}, Lcom/xiaomi/mipush/sdk/PushMessageReceiver;->onReceiveRegisterResult(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V

    .line 144
    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getResultCode()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_0

    .line 145
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/mipush/sdk/AssemblePushHelper;->registerAssemblePush(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 153
    .end local v2    # "commandMessage":Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;
    .end local v7    # "message":Lcom/xiaomi/mipush/sdk/PushMessageHandler$PushMessageInterface;
    .end local v10    # "msgType":I
    :pswitch_4
    const-string v13, "error_type"

    invoke-virtual {v5, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 154
    .local v4, "errorType":Ljava/lang/String;
    const-string v13, "error_lack_of_permission"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 155
    const-string v13, "error_message"

    invoke-virtual {v5, v13}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 156
    .local v11, "permissions":[Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 157
    move-object/from16 v0, p0

    invoke-virtual {v12, v0, v11}, Lcom/xiaomi/mipush/sdk/PushMessageReceiver;->onRequirePermissions(Landroid/content/Context;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static scheduleJob(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    sget-object v0, Lcom/xiaomi/mipush/sdk/MessageHandleService;->sPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    sget-object v0, Lcom/xiaomi/mipush/sdk/MessageHandleService;->sPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/mipush/sdk/MessageHandleService$2;

    invoke-direct {v1, p0}, Lcom/xiaomi/mipush/sdk/MessageHandleService$2;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 67
    :cond_0
    return-void
.end method

.method public static startService(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 34
    .local v0, "awakeIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/xiaomi/mipush/sdk/MessageHandleService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 35
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/mipush/sdk/MessageHandleService$1;

    invoke-direct {v2, p0, v0}, Lcom/xiaomi/mipush/sdk/MessageHandleService$1;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->addOneShootJob(Ljava/lang/Runnable;)V

    .line 46
    return-void
.end method


# virtual methods
.method protected hasJob()Z
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/xiaomi/mipush/sdk/MessageHandleService;->jobQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/mipush/sdk/MessageHandleService;->jobQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

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
    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "jobIntent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 176
    invoke-super {p0, p1, p2}, Lcom/xiaomi/mipush/sdk/BaseService;->onStart(Landroid/content/Intent;I)V

    .line 178
    return-void
.end method
