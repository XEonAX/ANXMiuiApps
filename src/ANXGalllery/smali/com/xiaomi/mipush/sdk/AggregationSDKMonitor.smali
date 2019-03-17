.class public Lcom/xiaomi/mipush/sdk/AggregationSDKMonitor;
.super Ljava/lang/Object;
.source "AggregationSDKMonitor.java"


# static fields
.field public static mRegisterPushCallStack:[Ljava/lang/StackTraceElement;


# direct methods
.method static synthetic access$000(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/AggregationSDKMonitor;->canUploadCallStack(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 21
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/AggregationSDKMonitor;->buildCallStackString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/AggregationSDKMonitor;->updateCallStackUploadTimeStamp(Landroid/content/Context;)V

    return-void
.end method

.method private static buildCallStackString(I)Ljava/lang/String;
    .locals 4
    .param p0, "depth"    # I

    .prologue
    .line 96
    sget-object v2, Lcom/xiaomi/mipush/sdk/AggregationSDKMonitor;->mRegisterPushCallStack:[Ljava/lang/StackTraceElement;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/xiaomi/mipush/sdk/AggregationSDKMonitor;->mRegisterPushCallStack:[Ljava/lang/StackTraceElement;

    array-length v2, v2

    const/4 v3, 0x4

    if-gt v2, v3, :cond_1

    .line 97
    :cond_0
    const-string v2, ""

    .line 108
    :goto_0
    return-object v2

    .line 99
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v0, "callStackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x4

    .local v1, "i":I
    :goto_1
    :try_start_0
    sget-object v2, Lcom/xiaomi/mipush/sdk/AggregationSDKMonitor;->mRegisterPushCallStack:[Ljava/lang/StackTraceElement;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    add-int/lit8 v2, p0, 0x4

    if-ge v1, v2, :cond_2

    .line 103
    sget-object v2, Lcom/xiaomi/mipush/sdk/AggregationSDKMonitor;->mRegisterPushCallStack:[Ljava/lang/StackTraceElement;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 105
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 106
    :catch_0
    move-exception v2

    .line 108
    const-string v2, ""

    goto :goto_0
.end method

.method private static canUploadCallStack(Landroid/content/Context;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 70
    invoke-static {p0}, Lcom/xiaomi/push/service/OnlineConfig;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/OnlineConfig;

    move-result-object v4

    .line 71
    .local v4, "onlineConfig":Lcom/xiaomi/push/service/OnlineConfig;
    sget-object v8, Lcom/xiaomi/xmpush/thrift/ConfigKey;->AggregationSdkMonitorSwitch:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    invoke-virtual {v8}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v8

    invoke-virtual {v4, v8, v7}, Lcom/xiaomi/push/service/OnlineConfig;->getBooleanValue(IZ)Z

    move-result v8

    if-nez v8, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v7

    .line 76
    :cond_1
    const-string v8, "mipush_extra"

    invoke-virtual {p0, v8, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 77
    .local v6, "sp":Landroid/content/SharedPreferences;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 78
    .local v0, "currentTimeStamp":J
    const-string v8, "last_upload_call_stack_timestamp"

    const-wide/16 v10, 0x0

    invoke-interface {v6, v8, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 79
    .local v2, "lastUploadTimeStamp":J
    sget-object v8, Lcom/xiaomi/xmpush/thrift/ConfigKey;->AggregationSdkMonitorFrequency:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    invoke-virtual {v8}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v8

    const v9, 0x15180

    invoke-virtual {v4, v8, v9}, Lcom/xiaomi/push/service/OnlineConfig;->getIntValue(II)I

    move-result v5

    .line 81
    .local v5, "period":I
    const/16 v8, 0x3c

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 82
    sub-long v8, v0, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    int-to-long v10, v5

    cmp-long v8, v8, v10

    if-ltz v8, :cond_0

    .line 85
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public static getRegisterPushCallStack()V
    .locals 2

    .prologue
    .line 38
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    .line 39
    .local v0, "ts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/StackTraceElement;

    sput-object v1, Lcom/xiaomi/mipush/sdk/AggregationSDKMonitor;->mRegisterPushCallStack:[Ljava/lang/StackTraceElement;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static updateCallStackUploadTimeStamp(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    const-string v2, "mipush_extra"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 90
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 91
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "last_upload_call_stack_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 92
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 93
    return-void
.end method

.method public static uploadCallStack(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mipush/sdk/AggregationSDKMonitor$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/mipush/sdk/AggregationSDKMonitor$1;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->addOneShootJob(Ljava/lang/Runnable;I)V

    .line 67
    return-void
.end method
