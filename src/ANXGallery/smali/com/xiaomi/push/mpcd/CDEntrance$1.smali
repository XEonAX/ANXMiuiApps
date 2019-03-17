.class final Lcom/xiaomi/push/mpcd/CDEntrance$1;
.super Ljava/lang/Object;
.source "CDEntrance.java"

# interfaces
.implements Lcom/xiaomi/push/mpcd/IntentHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/push/mpcd/CDEntrance;->getIntentHandler()Lcom/xiaomi/push/mpcd/IntentHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/push/mpcd/CDEntrance$1;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/push/mpcd/CDEntrance$1;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/push/mpcd/CDEntrance$1;->handleIntent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private handleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 56
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, "packageString":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 121
    .end local v4    # "packageString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 60
    .restart local v4    # "packageString":Ljava/lang/String;
    :cond_1
    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 61
    .local v5, "pair":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x2

    if-lt v6, v7, :cond_0

    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 64
    const/4 v6, 0x1

    aget-object v1, v5, v6

    .line 65
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 66
    .local v2, "currentInSecond":J
    invoke-static {p1}, Lcom/xiaomi/push/service/OnlineConfig;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/OnlineConfig;

    move-result-object v6

    sget-object v7, Lcom/xiaomi/xmpush/thrift/ConfigKey;->BroadcastActionCollectionSwitch:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    .line 67
    invoke-virtual {v7}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/xiaomi/push/service/OnlineConfig;->getBooleanValue(IZ)Z

    move-result v0

    .line 70
    .local v0, "broadcastActionSwitch":Z
    const-string v6, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 71
    const/16 v6, 0xc

    .line 72
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v8, 0x1

    .line 71
    invoke-static {p1, v6, v8, v9}, Lcom/xiaomi/channel/commonutils/misc/JobMutualExclusor;->checkPeriodAndRecordWithFileLock(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v0, :cond_0

    .line 76
    sget-object v6, Lcom/xiaomi/push/mpcd/job/BroadcastActionCollectionjob;->mRestartedActions:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 77
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/xiaomi/push/mpcd/job/BroadcastActionCollectionjob;->mRestartedActions:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/xiaomi/push/mpcd/Constants;->ACTION_PACKAGE_RESTARTED:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/xiaomi/push/mpcd/job/BroadcastActionCollectionjob;->mRestartedActions:Ljava/lang/String;

    .line 79
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/xiaomi/push/mpcd/job/BroadcastActionCollectionjob;->mRestartedActions:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/xiaomi/push/mpcd/job/BroadcastActionCollectionjob;->mRestartedActions:Ljava/lang/String;

    goto/16 :goto_0

    .line 119
    .end local v0    # "broadcastActionSwitch":Z
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "currentInSecond":J
    .end local v4    # "packageString":Ljava/lang/String;
    .end local v5    # "pair":[Ljava/lang/String;
    :catch_0
    move-exception v6

    goto/16 :goto_0

    .line 82
    .restart local v0    # "broadcastActionSwitch":Z
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "currentInSecond":J
    .restart local v4    # "packageString":Ljava/lang/String;
    .restart local v5    # "pair":[Ljava/lang/String;
    :cond_3
    const-string v6, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 83
    const/16 v6, 0xc

    .line 84
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v8, 0x1

    .line 83
    invoke-static {p1, v6, v8, v9}, Lcom/xiaomi/channel/commonutils/misc/JobMutualExclusor;->checkPeriodAndRecordWithFileLock(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v0, :cond_0

    .line 88
    sget-object v6, Lcom/xiaomi/push/mpcd/job/BroadcastActionCollectionjob;->mChangedActions:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 89
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/xiaomi/push/mpcd/job/BroadcastActionCollectionjob;->mChangedActions:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/xiaomi/push/mpcd/Constants;->ACTION_PACKAGE_CHANGED:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/xiaomi/push/mpcd/job/BroadcastActionCollectionjob;->mChangedActions:Ljava/lang/String;

    .line 91
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/xiaomi/push/mpcd/job/BroadcastActionCollectionjob;->mChangedActions:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/xiaomi/push/mpcd/job/BroadcastActionCollectionjob;->mChangedActions:Ljava/lang/String;

    goto/16 :goto_0

    .line 94
    :cond_5
    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 95
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "android.intent.extra.REPLACING"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v0, :cond_0

    .line 96
    sget-object v6, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->BroadcastActionAdded:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    .line 97
    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->getValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 96
    invoke-direct {p0, p1, v6, v1}, Lcom/xiaomi/push/mpcd/CDEntrance$1;->writeActionInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 100
    :cond_6
    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 101
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "android.intent.extra.REPLACING"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v0, :cond_0

    .line 102
    sget-object v6, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->BroadcastActionRemoved:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    .line 103
    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->getValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 102
    invoke-direct {p0, p1, v6, v1}, Lcom/xiaomi/push/mpcd/CDEntrance$1;->writeActionInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 106
    :cond_7
    const-string v6, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 107
    if-eqz v0, :cond_0

    .line 108
    sget-object v6, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->BroadcastActionReplaced:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    .line 109
    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->getValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 108
    invoke-direct {p0, p1, v6, v1}, Lcom/xiaomi/push/mpcd/CDEntrance$1;->writeActionInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 112
    :cond_8
    const-string v6, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 113
    if-eqz v0, :cond_0

    .line 114
    sget-object v6, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->BroadcastActionDataCleared:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    .line 115
    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->getValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 114
    invoke-direct {p0, p1, v6, v1}, Lcom/xiaomi/push/mpcd/CDEntrance$1;->writeActionInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method private writeActionInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "broadcastType"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    const/16 v1, 0xc

    .line 137
    :try_start_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x1

    .line 136
    invoke-static {p1, v1, v2, v3}, Lcom/xiaomi/channel/commonutils/misc/JobMutualExclusor;->checkPeriodAndRecordWithFileLock(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    new-instance v0, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;-><init>()V

    .line 142
    .local v0, "collectionItem":Lcom/xiaomi/xmpush/thrift/DataCollectionItem;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->setContent(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/DataCollectionItem;

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->setCollectedAt(J)Lcom/xiaomi/xmpush/thrift/DataCollectionItem;

    .line 144
    sget-object v1, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->BroadcastAction:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->setCollectionType(Lcom/xiaomi/xmpush/thrift/ClientCollectionType;)Lcom/xiaomi/xmpush/thrift/DataCollectionItem;

    .line 145
    invoke-static {p1, v0}, Lcom/xiaomi/push/mpcd/job/CollectionJob;->writeItemToFile(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/DataCollectionItem;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    .end local v0    # "collectionItem":Lcom/xiaomi/xmpush/thrift/DataCollectionItem;
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public handle(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 43
    if-nez p2, :cond_0

    .line 52
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/push/mpcd/CDEntrance$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/push/mpcd/CDEntrance$1$1;-><init>(Lcom/xiaomi/push/mpcd/CDEntrance$1;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->addOneShootJob(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
