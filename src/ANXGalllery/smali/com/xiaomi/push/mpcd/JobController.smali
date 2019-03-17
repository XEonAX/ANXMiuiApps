.class public Lcom/xiaomi/push/mpcd/JobController;
.super Ljava/lang/Object;
.source "JobController.java"


# static fields
.field private static volatile instance:Lcom/xiaomi/push/mpcd/JobController;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/xiaomi/push/mpcd/JobController;->context:Landroid/content/Context;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/push/mpcd/JobController;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/push/mpcd/JobController;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/xiaomi/push/mpcd/JobController;->trySchedulerCollectJob()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaomi/push/mpcd/JobController;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    sget-object v0, Lcom/xiaomi/push/mpcd/JobController;->instance:Lcom/xiaomi/push/mpcd/JobController;

    if-nez v0, :cond_1

    .line 47
    const-class v1, Lcom/xiaomi/push/mpcd/JobController;

    monitor-enter v1

    .line 48
    :try_start_0
    sget-object v0, Lcom/xiaomi/push/mpcd/JobController;->instance:Lcom/xiaomi/push/mpcd/JobController;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/xiaomi/push/mpcd/JobController;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/mpcd/JobController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/push/mpcd/JobController;->instance:Lcom/xiaomi/push/mpcd/JobController;

    .line 51
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_1
    sget-object v0, Lcom/xiaomi/push/mpcd/JobController;->instance:Lcom/xiaomi/push/mpcd/JobController;

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private makeSurePeriodNotTooSmall(I)I
    .locals 1
    .param p1, "period"    # I

    .prologue
    .line 270
    const/16 v0, 0x3c

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private scheduleActivityTSJob()Z
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 275
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_0

    .line 278
    :try_start_0
    iget-object v3, p0, Lcom/xiaomi/push/mpcd/JobController;->context:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Application;

    if-eqz v3, :cond_1

    .line 279
    iget-object v0, p0, Lcom/xiaomi/push/mpcd/JobController;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    .line 283
    .local v0, "application":Landroid/app/Application;
    :goto_0
    new-instance v3, Lcom/xiaomi/push/mpcd/ActivityLifecycleCallbacksImpl;

    iget-object v4, p0, Lcom/xiaomi/push/mpcd/JobController;->context:Landroid/content/Context;

    .line 284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/xiaomi/push/mpcd/ActivityLifecycleCallbacksImpl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 283
    invoke-virtual {v0, v3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 285
    const/4 v2, 0x1

    .line 291
    .end local v0    # "application":Landroid/app/Application;
    :cond_0
    :goto_1
    return v2

    .line 281
    :cond_1
    iget-object v3, p0, Lcom/xiaomi/push/mpcd/JobController;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0    # "application":Landroid/app/Application;
    goto :goto_0

    .line 286
    .end local v0    # "application":Landroid/app/Application;
    :catch_0
    move-exception v1

    .line 287
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private trySchedulerCollectJob()V
    .locals 38

    .prologue
    .line 71
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/push/mpcd/JobController;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;

    move-result-object v30

    .line 72
    .local v30, "jobManager":Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/push/mpcd/JobController;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/push/service/OnlineConfig;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/OnlineConfig;

    move-result-object v31

    .line 73
    .local v31, "onlineConfig":Lcom/xiaomi/push/service/OnlineConfig;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/push/mpcd/JobController;->context:Landroid/content/Context;

    const-string v5, "mipush_extra"

    const/4 v12, 0x0

    .line 74
    invoke-virtual {v4, v5, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v32

    .line 78
    .local v32, "sp":Landroid/content/SharedPreferences;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 79
    .local v26, "currTs":J
    const-string v4, "first_try_ts"

    move-object/from16 v0, v32

    move-wide/from16 v1, v26

    invoke-interface {v0, v4, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v28

    .line 80
    .local v28, "firstTryTs":J
    cmp-long v4, v28, v26

    if-nez v4, :cond_0

    .line 81
    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "first_try_ts"

    move-wide/from16 v0, v26

    invoke-interface {v4, v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 83
    :cond_0
    sub-long v4, v26, v28

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v12, 0xa4cb800

    cmp-long v4, v4, v12

    if-gez v4, :cond_2

    .line 264
    :cond_1
    :goto_0
    return-void

    .line 91
    :cond_2
    sget-object v4, Lcom/xiaomi/xmpush/thrift/ConfigKey;->ScreenSizeCollectionSwitch:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    .line 92
    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/push/service/OnlineConfig;->getBooleanValue(IZ)Z

    move-result v7

    .line 94
    .local v7, "screenSizeSwitch":Z
    sget-object v4, Lcom/xiaomi/xmpush/thrift/ConfigKey;->AndroidVnCollectionSwitch:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    .line 95
    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/push/service/OnlineConfig;->getBooleanValue(IZ)Z

    move-result v8

    .line 97
    .local v8, "androidVnSwitch":Z
    sget-object v4, Lcom/xiaomi/xmpush/thrift/ConfigKey;->AndroidVcCollectionSwitch:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    .line 98
    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/push/service/OnlineConfig;->getBooleanValue(IZ)Z

    move-result v9

    .line 100
    .local v9, "androidVcSwitch":Z
    sget-object v4, Lcom/xiaomi/xmpush/thrift/ConfigKey;->AndroidIdCollectionSwitch:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    .line 101
    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/push/service/OnlineConfig;->getBooleanValue(IZ)Z

    move-result v10

    .line 103
    .local v10, "androidIdSwitch":Z
    sget-object v4, Lcom/xiaomi/xmpush/thrift/ConfigKey;->OperatorSwitch:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    .line 104
    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/push/service/OnlineConfig;->getBooleanValue(IZ)Z

    move-result v11

    .line 106
    .local v11, "operatorSwitch":Z
    if-nez v7, :cond_3

    if-nez v8, :cond_3

    if-nez v9, :cond_3

    if-nez v10, :cond_3

    if-eqz v11, :cond_4

    .line 107
    :cond_3
    sget-object v4, Lcom/xiaomi/xmpush/thrift/ConfigKey;->DeviceInfoCollectionFrequency:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v4

    const v5, 0x127500

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/push/service/OnlineConfig;->getIntValue(II)I

    move-result v6

    .line 109
    .local v6, "period":I
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/xiaomi/push/mpcd/JobController;->makeSurePeriodNotTooSmall(I)I

    move-result v6

    .line 110
    new-instance v4, Lcom/xiaomi/push/mpcd/job/DeviceInfoCollectionJob;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xiaomi/push/mpcd/JobController;->context:Landroid/content/Context;

    invoke-direct/range {v4 .. v11}, Lcom/xiaomi/push/mpcd/job/DeviceInfoCollectionJob;-><init>(Landroid/content/Context;IZZZZZ)V

    const/16 v5, 0x1e

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v6, v5}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->addRepeatJob(Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;II)Z

    .line 115
    .end local v6    # "period":I
    :cond_4
    sget-object v4, Lcom/xiaomi/xmpush/thrift/ConfigKey;->MacCollectionSwitch:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    .line 116
    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/push/service/OnlineConfig;->getBooleanValue(IZ)Z

    move-result v15

    .line 118
    .local v15, "macSwitch":Z
    sget-object v4, Lcom/xiaomi/xmpush/thrift/ConfigKey;->IMSICollectionSwitch:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    .line 119
    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/push/service/OnlineConfig;->getBooleanValue(IZ)Z

    move-result v16

    .line 121
    .local v16, "imsiSwitch":Z
    sget-object v4, Lcom/xiaomi/xmpush/thrift/ConfigKey;->IccidCollectionSwitch:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    .line 122
    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/push/service/OnlineConfig;->getBooleanValue(IZ)Z

    move-result v17

    .line 124
    .local v17, "iccidSwitch":Z
    sget-object v4, Lcom/xiaomi/xmpush/thrift/ConfigKey;->DeviceIdSwitch:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    .line 125
    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/push/service/OnlineConfig;->getBooleanValue(IZ)Z

    move-result v18

    .line 127
    .local v18, "deviceIdSwtich":Z
    if-nez v15, :cond_5

    if-nez v16, :cond_5

    if-nez v17, :cond_5

    if-eqz v18, :cond_6

    .line 128
    :cond_5
    sget-object v4, Lcom/xiaomi/xmpush/thrift/ConfigKey;->DeviceBaseInfoCollectionFrequency:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v4

    const v5, 0x127500

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/push/service/OnlineConfig;->getIntValue(II)I

    move-result v6

    .line 130
    .restart local v6    # "period":I
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/xiaomi/push/mpcd/JobController;->makeSurePeriodNotTooSmall(I)I

    move-result v6

    .line 131
    new-instance v12, Lcom/xiaomi/push/mpcd/job/DeviceBaseInfoCollectionJob;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/xiaomi/push/mpcd/JobController;->context:Landroid/content/Context;

    move v14, v6

    invoke-direct/range {v12 .. v18}, Lcom/xiaomi/push/mpcd/job/DeviceBaseInfoCollectionJob;-><init>(Landroid/content/Context;IZZZZ)V

    const/16 v4, 0x1e

    move-object/from16 v0, v30

    invoke-virtual {v0, v12, v6, v4}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->addRepeatJob(Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;II)Z

    .line 136
    .end local v6    # "period":I
    :cond_6
    sget-object v4, Lcom/xiaomi/xmpush/thrift/ConfigKey;->AppInstallListCollectionSwitch:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    .line 137
    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/push/service/OnlineConfig;->getBooleanValue(IZ)Z

    move-result v22

    .line 139
    .local v22, "appInstallListSwitch":Z
    if-eqz v22, :cond_7

    .line 140
    sget-object v4, Lcom/xiaomi/xmpush/thrift/ConfigKey;->AppInstallListCollectionFrequency:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v4

    const v5, 0x15180

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/push/service/OnlineConfig;->getIntValue(II)I

    move-result v6

    .line 142
    .restart local v6    # "period":I
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/xiaomi/push/mpcd/JobController;->makeSurePeriodNotTooSmall(I)I

    move-result v6

    .line 143
    new-instance v4, Lcom/xiaomi/push/mpcd/job/AppListCollectionJob;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xiaomi/push/mpcd/JobController;->context:Landroid/content/Context;

    invoke-direct {v4, v5, v6}, Lcom/xiaomi/push/mpcd/job/AppListCollectionJob;-><init>(Landroid/content/Context;I)V

    const/16 v5, 0x1e

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v6, v5}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->addRepeatJob(Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;II)Z

    .line 147
    .end local v6    # "period":I
    :cond_7
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v4, v5, :cond_8

    .line 148
    sget-object v4, Lcom/xiaomi/xmpush/thrift/ConfigKey;->AppActiveListCollectionSwitch:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    .line 149
    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/push/service/OnlineConfig;->getBooleanValue(IZ)Z

    move-result v21

    .line 151
    .local v21, "appActiveSwitch":Z
    if-eqz v21, :cond_8

    .line 152
    sget-object v4, Lcom/xiaomi/xmpush/thrift/ConfigKey;->AppActiveListCollectionFrequency:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v4

    const/16 v5, 0x384

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/push/service/OnlineConfig;->getIntValue(II)I

    move-result v6

    .line 154
    .restart local v6    # "period":I
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/xiaomi/push/mpcd/JobController;->makeSurePeriodNotTooSmall(I)I

    move-result v6

    .line 155
    new-instance v4, Lcom/xiaomi/push/mpcd/job/AppActiveListCollectionJob;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xiaomi/push/mpcd/JobController;->context:Landroid/content/Context;

    invoke-direct {v4, v5, v6}, Lcom/xiaomi/push/mpcd/job/AppActiveListCollectionJob;-><init>(Landroid/content/Context;I)V

    const/16 v5, 0x1e

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v6, v5}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->addRepeatJob(Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;II)Z

    .line 160
    .end local v6    # "period":I
    .end local v21    # "appActiveSwitch":Z
    :cond_8
    sget-object v4, Lcom/xiaomi/xmpush/thrift/ConfigKey;->StorageCollectionSwitch:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    .line 161
    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/push/service/OnlineConfig;->getBooleanValue(IZ)Z

    move-result v33

    .line 163
    .local v33, "storageSwitch":Z
    if-eqz v33, :cond_9

    .line 164
    sget-object v4, Lcom/xiaomi/xmpush/thrift/ConfigKey;->StorageCollectionFrequency:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v4

    const v5, 0x15180

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/push/service/OnlineConfig;->getIntValue(II)I

    move-result v6

    .line 166
    .restart local v6    # "period":I
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/xiaomi/push/mpcd/JobController;->makeSurePeriodNotTooSmall(I)I

    move-result v6

    .line 167
    new-instance v4, Lcom/xiaomi/push/mpcd/job/StorageCollectionJob;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xiaomi/push/mpcd/JobController;->context:Landroid/content/Context;

    invoke-direct {v4, v5, v6}, Lcom/xiaomi/push/mpcd/job/StorageCollectionJob;-><init>(Landroid/content/Context;I)V

    const/16 v5, 0x1e

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v6, v5}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->addRepeatJob(Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;II)Z

    .line 171
    .end local v6    # "period":I
    :cond_9
    sget-object v4, Lcom/xiaomi/xmpush/thrift/ConfigKey;->BluetoothCollectionSwitch:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    .line 172
    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/push/service/OnlineConfig;->getBooleanValue(IZ)Z

    move-result v24

    .line 174
    .local v24, "bluetoothSwitch":Z
    if-eqz v24, :cond_a

    .line 175
    sget-object v4, Lcom/xiaomi/xmpush/thrift/ConfigKey;->BluetoothCollectionFrequency:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v4

    const/16 v5, 0x2a30

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/push/service/OnlineConfig;->getIntValue(II)I

    move-result v6

    .line 177
    .restart local v6    # "period":I
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/xiaomi/push/mpcd/JobController;->makeSurePeriodNotTooSmall(I)I

    move-result v6

    .line 178
    new-instance v4, Lcom/xiaomi/push/mpcd/job/BluetoothCollectionJob;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xiaomi/push/mpcd/JobController;->context:Landroid/content/Context;

    invoke-direct {v4, v5, v6}, Lcom/xiaomi/push/mpcd/job/BluetoothCollectionJob;-><init>(Landroid/content/Context;I)V

    const/16 v5, 0x1e

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v6, v5}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->addRepeatJob(Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;II)Z

    .line 182
    .end local v6    # "period":I
    :cond_a
    sget-object v4, Lcom/xiaomi/xmpush/thrift/ConfigKey;->AccountCollectionSwitch:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    .line 183
    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/push/service/OnlineConfig;->getBooleanValue(IZ)Z

    move-result v19

    .line 185
    .local v19, "accountSwitch":Z
    if-eqz v19, :cond_b

    .line 186
    sget-object v4, Lcom/xiaomi/xmpush/thrift/ConfigKey;->AccountCollectionFrequency:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v4

    const v5, 0x93a80

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/push/service/OnlineConfig;->getIntValue(II)I

    move-result v6

    .line 188
    .restart local v6    # "period":I
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/xiaomi/push/mpcd/JobController;->makeSurePeriodNotTooSmall(I)I

    move-result v6

    .line 189
    new-instance v4, Lcom/xiaomi/push/mpcd/job/AccountCollectionJob;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xiaomi/push/mpcd/JobController;->context:Landroid/content/Context;

    invoke-direct {v4, v5, v6}, Lcom/xiaomi/push/mpcd/job/AccountCollectionJob;-><init>(Landroid/content/Context;I)V

    const/16 v5, 0x1e

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v6, v5}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->addRepeatJob(Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;II)Z

    .line 193
    .end local v6    # "period":I
    :cond_b
    sget-object v4, Lcom/xiaomi/xmpush/thrift/ConfigKey;->WifiCollectionSwitch:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    .line 194
    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/push/service/OnlineConfig;->getBooleanValue(IZ)Z

    move-result v37

    .line 196
    .local v37, "wifiSwitch":Z
    if-eqz v37, :cond_c

    .line 197
    sget-object v4, Lcom/xiaomi/xmpush/thrift/ConfigKey;->WifiCollectionFrequency:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v4

    const/16 v5, 0x384

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/push/service/OnlineConfig;->getIntValue(II)I

    move-result v6

    .line 199
    .restart local v6    # "period":I
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/xiaomi/push/mpcd/JobController;->makeSurePeriodNotTooSmall(I)I

    move-result v6

    .line 200
    new-instance v4, Lcom/xiaomi/push/mpcd/job/WifiCollectionJob;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xiaomi/push/mpcd/JobController;->context:Landroid/content/Context;

    invoke-direct {v4, v5, v6}, Lcom/xiaomi/push/mpcd/job/WifiCollectionJob;-><init>(Landroid/content/Context;I)V

    const/16 v5, 0x1e

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v6, v5}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->addRepeatJob(Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;II)Z

    .line 204
    .end local v6    # "period":I
    :cond_c
    sget-object v4, Lcom/xiaomi/xmpush/thrift/ConfigKey;->TopAppCollectionSwitch:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    .line 205
    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/push/service/OnlineConfig;->getBooleanValue(IZ)Z

    move-result v34

    .line 207
    .local v34, "topAppSwitch":Z
    if-eqz v34, :cond_d

    .line 208
    sget-object v4, Lcom/xiaomi/xmpush/thrift/ConfigKey;->TopAppCollectionFrequency:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v4

    const/16 v5, 0x12c

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/push/service/OnlineConfig;->getIntValue(II)I

    move-result v6

    .line 210
    .restart local v6    # "period":I
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/xiaomi/push/mpcd/JobController;->makeSurePeriodNotTooSmall(I)I

    move-result v6

    .line 211
    new-instance v4, Lcom/xiaomi/push/mpcd/job/TopAppCollectionJob;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xiaomi/push/mpcd/JobController;->context:Landroid/content/Context;

    invoke-direct {v4, v5, v6}, Lcom/xiaomi/push/mpcd/job/TopAppCollectionJob;-><init>(Landroid/content/Context;I)V

    const/16 v5, 0x1e

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v6, v5}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->addRepeatJob(Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;II)Z

    .line 215
    .end local v6    # "period":I
    :cond_d
    sget-object v4, Lcom/xiaomi/xmpush/thrift/ConfigKey;->BroadcastActionCollectionSwitch:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    .line 216
    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/push/service/OnlineConfig;->getBooleanValue(IZ)Z

    move-result v25

    .line 218
    .local v25, "broadcastActionSwitch":Z
    if-eqz v25, :cond_e

    .line 219
    sget-object v4, Lcom/xiaomi/xmpush/thrift/ConfigKey;->BroadcastActionCollectionFrequency:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v4

    const/16 v5, 0x384

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/push/service/OnlineConfig;->getIntValue(II)I

    move-result v6

    .line 221
    .restart local v6    # "period":I
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/xiaomi/push/mpcd/JobController;->makeSurePeriodNotTooSmall(I)I

    move-result v6

    .line 222
    new-instance v4, Lcom/xiaomi/push/mpcd/job/BroadcastActionCollectionjob;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xiaomi/push/mpcd/JobController;->context:Landroid/content/Context;

    invoke-direct {v4, v5, v6}, Lcom/xiaomi/push/mpcd/job/BroadcastActionCollectionjob;-><init>(Landroid/content/Context;I)V

    const/16 v5, 0x1e

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v6, v5}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->addRepeatJob(Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;II)Z

    .line 226
    .end local v6    # "period":I
    :cond_e
    sget-object v4, Lcom/xiaomi/xmpush/thrift/ConfigKey;->WifiDevicesMacCollectionSwitch:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    .line 227
    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/push/service/OnlineConfig;->getBooleanValue(IZ)Z

    move-result v36

    .line 229
    .local v36, "wifiDevicesMacSwitch":Z
    if-eqz v36, :cond_f

    .line 230
    sget-object v4, Lcom/xiaomi/xmpush/thrift/ConfigKey;->WifiDevicesMacCollectionFrequency:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v4

    const/16 v5, 0x384

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/push/service/OnlineConfig;->getIntValue(II)I

    move-result v6

    .line 232
    .restart local v6    # "period":I
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/xiaomi/push/mpcd/JobController;->makeSurePeriodNotTooSmall(I)I

    move-result v6

    .line 233
    new-instance v4, Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xiaomi/push/mpcd/JobController;->context:Landroid/content/Context;

    invoke-direct {v4, v5, v6}, Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;-><init>(Landroid/content/Context;I)V

    const/16 v5, 0x1e

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v6, v5}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->addRepeatJob(Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;II)Z

    .line 237
    .end local v6    # "period":I
    :cond_f
    sget-object v4, Lcom/xiaomi/xmpush/thrift/ConfigKey;->ActivityTSSwitch:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/push/service/OnlineConfig;->getBooleanValue(IZ)Z

    move-result v20

    .line 239
    .local v20, "activityTSSwitch":Z
    if-eqz v20, :cond_10

    .line 240
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/push/mpcd/JobController;->scheduleActivityTSJob()Z

    .line 244
    :cond_10
    sget-object v4, Lcom/xiaomi/xmpush/thrift/ConfigKey;->UploadSwitch:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    .line 245
    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/push/service/OnlineConfig;->getBooleanValue(IZ)Z

    move-result v35

    .line 246
    .local v35, "uploadSwitch":Z
    if-eqz v35, :cond_11

    .line 247
    sget-object v4, Lcom/xiaomi/xmpush/thrift/ConfigKey;->UploadFrequency:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    .line 248
    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v4

    const v5, 0x15180

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/push/service/OnlineConfig;->getIntValue(II)I

    move-result v6

    .line 250
    .restart local v6    # "period":I
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/xiaomi/push/mpcd/JobController;->makeSurePeriodNotTooSmall(I)I

    move-result v6

    .line 251
    new-instance v4, Lcom/xiaomi/push/mpcd/job/UploadJob;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xiaomi/push/mpcd/JobController;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/xiaomi/push/mpcd/job/UploadJob;-><init>(Landroid/content/Context;)V

    const/16 v5, 0x3c

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v6, v5}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->addRepeatJob(Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;II)Z

    .line 255
    .end local v6    # "period":I
    :cond_11
    sget-object v4, Lcom/xiaomi/xmpush/thrift/ConfigKey;->BatteryCollectionSwitch:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    .line 256
    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/push/service/OnlineConfig;->getBooleanValue(IZ)Z

    move-result v23

    .line 258
    .local v23, "batterySwitch":Z
    if-eqz v23, :cond_1

    .line 259
    sget-object v4, Lcom/xiaomi/xmpush/thrift/ConfigKey;->BatteryCollectionFrequency:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v4

    const/16 v5, 0xe10

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/push/service/OnlineConfig;->getIntValue(II)I

    move-result v6

    .line 261
    .restart local v6    # "period":I
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/xiaomi/push/mpcd/JobController;->makeSurePeriodNotTooSmall(I)I

    move-result v6

    .line 262
    new-instance v4, Lcom/xiaomi/push/mpcd/job/BatteryCollectionJob;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xiaomi/push/mpcd/JobController;->context:Landroid/content/Context;

    invoke-direct {v4, v5, v6}, Lcom/xiaomi/push/mpcd/job/BatteryCollectionJob;-><init>(Landroid/content/Context;I)V

    const/16 v5, 0x1e

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v6, v5}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->addRepeatJob(Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;II)Z

    goto/16 :goto_0
.end method


# virtual methods
.method public schedulerJob()V
    .locals 3

    .prologue
    .line 61
    iget-object v1, p0, Lcom/xiaomi/push/mpcd/JobController;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;

    move-result-object v0

    .line 62
    .local v0, "jobManager":Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;
    new-instance v1, Lcom/xiaomi/push/mpcd/JobController$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/push/mpcd/JobController$1;-><init>(Lcom/xiaomi/push/mpcd/JobController;)V

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->addOneShootJob(Ljava/lang/Runnable;I)V

    .line 68
    return-void
.end method
