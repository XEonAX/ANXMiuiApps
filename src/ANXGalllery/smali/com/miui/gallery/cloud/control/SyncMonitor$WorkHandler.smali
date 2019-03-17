.class final Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;
.super Landroid/os/Handler;
.source "SyncMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/control/SyncMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WorkHandler"
.end annotation


# static fields
.field private static TRAFFIC_STEP_INIT:I

.field private static sBackgroundStartTime:J

.field private static sIsFirstBackground:Z

.field private static sLastCheckTime:J

.field private static sSyncStartTime:J

.field private static sSyncThrowable:Ljava/lang/Throwable;

.field private static sTrafficSteps:I

.field private static sUploadInfoAnalyzer:Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 117
    sput v1, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->TRAFFIC_STEP_INIT:I

    .line 122
    sget v0, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->TRAFFIC_STEP_INIT:I

    sput v0, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->sTrafficSteps:I

    .line 127
    sput-boolean v1, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->sIsFirstBackground:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 136
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 137
    return-void
.end method

.method private static check()V
    .locals 26

    .prologue
    .line 313
    const-string v20, "SyncMonitor"

    const-string v21, "check"

    invoke-static/range {v20 .. v21}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v4

    .line 317
    .local v4, "context":Landroid/content/Context;
    invoke-static {}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->getInstance()Lcom/miui/gallery/cloud/syncstate/SyncStateManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->getSyncType()Lcom/miui/gallery/cloud/syncstate/SyncType;

    move-result-object v11

    .line 318
    .local v11, "syncType":Lcom/miui/gallery/cloud/syncstate/SyncType;
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Lcom/miui/gallery/cloud/syncstate/SyncType;->isForce()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 319
    const-string v20, "SyncMonitor"

    const-string/jumbo v21, "sync type %s, ignore monitor"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v11}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    invoke-static {}, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->needMonitorTraffic()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 324
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isActiveNetworkMetered()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 325
    invoke-static {}, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->getAnalyzer()Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;->getUploadTraffic()J

    move-result-wide v18

    .line 326
    .local v18, "traffic":J
    sget v20, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->sTrafficSteps:I

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-static {}, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->getTrafficStepValue()J

    move-result-wide v22

    mul-long v20, v20, v22

    cmp-long v20, v18, v20

    if-lez v20, :cond_2

    .line 328
    const-string v20, "SyncMonitor"

    const-string/jumbo v21, "upload traffic %s"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 329
    sget v20, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->sTrafficSteps:I

    add-int/lit8 v20, v20, 0x1

    sput v20, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->sTrafficSteps:I

    .line 334
    .end local v18    # "traffic":J
    :cond_2
    invoke-static {}, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->needMonitorSyncTime()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 335
    invoke-static {}, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->getSyncUpperLimitTime()J

    move-result-wide v14

    .line 336
    .local v14, "syncUpperTime":J
    const-wide/16 v20, 0x0

    cmp-long v20, v14, v20

    if-lez v20, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sget-wide v22, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->sSyncStartTime:J

    sub-long v20, v20, v22

    cmp-long v20, v20, v14

    if-lez v20, :cond_3

    .line 338
    const-string v20, "SyncMonitor"

    const-string/jumbo v21, "sync time has reached upper limit"

    invoke-static/range {v20 .. v21}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    .end local v14    # "syncUpperTime":J
    :cond_3
    invoke-static {}, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->needMonitorBackground()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 352
    invoke-static {v4}, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->isCharging(Landroid/content/Context;)Z

    move-result v20

    if-nez v20, :cond_b

    .line 353
    invoke-static {v4}, Lcom/miui/gallery/util/MiscUtil;->isAppProcessInForeground(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 354
    sget-wide v20, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->sBackgroundStartTime:J

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-lez v20, :cond_0

    .line 355
    const-string v20, "SyncMonitor"

    const-string v21, "monitor app focused, reset background start time"

    invoke-static/range {v20 .. v21}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-wide/16 v20, 0x0

    sput-wide v20, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->sBackgroundStartTime:J

    goto/16 :goto_0

    .line 359
    :cond_4
    sget-boolean v20, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->sIsFirstBackground:Z

    if-eqz v20, :cond_5

    .line 360
    const/16 v20, 0x0

    sput-boolean v20, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->sIsFirstBackground:Z

    .line 361
    invoke-static {}, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->statSyncInBackground()V

    .line 363
    :cond_5
    const-string v20, "SyncMonitor"

    const-string/jumbo v21, "sync type %s, app not in foreground"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v11}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 365
    sget-wide v20, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->sBackgroundStartTime:J

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-nez v20, :cond_6

    .line 366
    const-string v20, "SyncMonitor"

    const-string v21, "monitor process changes to background"

    invoke-static/range {v20 .. v21}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sput-wide v20, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->sBackgroundStartTime:J

    goto/16 :goto_0

    .line 371
    :cond_6
    invoke-static {}, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->getBackgroundBufferTime()J

    move-result-wide v2

    .line 372
    .local v2, "bufferTime":J
    const-wide/16 v20, 0x0

    cmp-long v20, v2, v20

    if-ltz v20, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sget-wide v22, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->sBackgroundStartTime:J

    sub-long v20, v20, v22

    cmp-long v20, v20, v2

    if-gez v20, :cond_8

    .line 373
    :cond_7
    const-string v20, "SyncMonitor"

    const-string v21, "monitor background in buffer time %s"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 376
    :cond_8
    invoke-static {}, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->getBackgroundUpperLimitTime()J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-gez v20, :cond_9

    .line 377
    const-string v20, "SyncMonitor"

    const-string v21, "monitor background in upper limit time %s"

    invoke-static {}, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->getBackgroundUpperLimitTime()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 381
    :cond_9
    invoke-static {v4}, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil;->getDirtySize(Landroid/content/Context;)[J

    move-result-object v10

    .line 382
    .local v10, "size":[J
    const/16 v20, 0x0

    aget-wide v20, v10, v20

    const/16 v22, 0x1

    aget-wide v22, v10, v22

    add-long v16, v20, v22

    .line 383
    .local v16, "totalSize":J
    invoke-static {}, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->getAnalyzer()Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;->getAvgSpeed()J

    move-result-wide v20

    invoke-static {}, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->getAnalyzer()Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;->getRecentSpeed()J

    move-result-wide v22

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 384
    .local v12, "speed":J
    const-wide/16 v20, 0x0

    cmp-long v20, v12, v20

    if-lez v20, :cond_a

    .line 386
    const/high16 v20, 0x447a0000    # 1000.0f

    move-wide/from16 v0, v16

    long-to-float v0, v0

    move/from16 v21, v0

    mul-float v20, v20, v21

    long-to-float v0, v12

    move/from16 v21, v0

    div-float v20, v20, v21

    move/from16 v0, v20

    float-to-long v6, v0

    .line 387
    .local v6, "predictedTime":J
    const-string v20, "SyncMonitor"

    const-string v21, "need upload size %s, speed %s, predicted time %s"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-static/range {v20 .. v24}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 388
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sget-wide v22, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->sBackgroundStartTime:J

    sub-long v20, v20, v22

    add-long v8, v6, v20

    .line 389
    .local v8, "predictedUpper":J
    const-string v20, "SyncMonitor"

    const-string v21, "predicted upper time %s, limit time %s"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-static {}, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->getBackgroundUpperLimitTime()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-static/range {v20 .. v23}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 391
    invoke-static {}, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->getBackgroundUpperLimitTime()J

    move-result-wide v20

    cmp-long v20, v8, v20

    if-gez v20, :cond_a

    .line 392
    const-string v20, "SyncMonitor"

    const-string v21, "monitor background in upper limit time"

    invoke-static/range {v20 .. v21}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 397
    .end local v6    # "predictedTime":J
    .end local v8    # "predictedUpper":J
    :cond_a
    const-string v20, "SyncMonitor"

    const-string v21, "background sync time has reached upper limit, change sync policy"

    invoke-static/range {v20 .. v21}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-static {v4}, Lcom/miui/gallery/util/SyncUtil;->stopSync(Landroid/content/Context;)V

    .line 399
    new-instance v20, Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    invoke-direct/range {v20 .. v20}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;-><init>()V

    sget-object v21, Lcom/miui/gallery/cloud/syncstate/SyncType;->BACKGROUND:Lcom/miui/gallery/cloud/syncstate/SyncType;

    .line 400
    invoke-virtual/range {v20 .. v21}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->setSyncType(Lcom/miui/gallery/cloud/syncstate/SyncType;)Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    move-result-object v20

    const/16 v21, 0x1

    .line 401
    invoke-virtual/range {v20 .. v21}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->setSyncReason(I)Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    move-result-object v20

    const/16 v21, 0x0

    .line 402
    invoke-virtual/range {v20 .. v21}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->setDelayUpload(Z)Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    move-result-object v20

    .line 403
    invoke-virtual/range {v20 .. v20}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->build()Lcom/miui/gallery/util/SyncUtil$Request;

    move-result-object v5

    .line 404
    .local v5, "request":Lcom/miui/gallery/util/SyncUtil$Request;
    invoke-static {v4, v5}, Lcom/miui/gallery/util/SyncUtil;->requestSync(Landroid/content/Context;Lcom/miui/gallery/util/SyncUtil$Request;)V

    .line 405
    invoke-static {}, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->statPolicyChanged()V

    goto/16 :goto_0

    .line 408
    .end local v2    # "bufferTime":J
    .end local v5    # "request":Lcom/miui/gallery/util/SyncUtil$Request;
    .end local v10    # "size":[J
    .end local v12    # "speed":J
    .end local v16    # "totalSize":J
    :cond_b
    sget-wide v20, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->sBackgroundStartTime:J

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-lez v20, :cond_0

    .line 409
    const-string v20, "SyncMonitor"

    const-string v21, "monitor charging, reset background start time"

    invoke-static/range {v20 .. v21}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-wide/16 v20, 0x0

    sput-wide v20, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->sBackgroundStartTime:J

    goto/16 :goto_0
.end method

.method private static getAnalyzer()Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;
    .locals 1

    .prologue
    .line 252
    sget-object v0, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->sUploadInfoAnalyzer:Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;

    invoke-direct {v0}, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;-><init>()V

    sput-object v0, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->sUploadInfoAnalyzer:Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;

    .line 255
    :cond_0
    sget-object v0, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->sUploadInfoAnalyzer:Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;

    return-object v0
.end method

.method private static getBackgroundBufferTime()J
    .locals 2

    .prologue
    .line 278
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getSyncStrategy()Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->getMonitorBackBufferTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private static getBackgroundUpperLimitTime()J
    .locals 2

    .prologue
    .line 283
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getSyncStrategy()Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->getMonitorBackUpperTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private static getCheckInterval()J
    .locals 2

    .prologue
    .line 268
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getSyncStrategy()Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->getMonitorCheckInterval()J

    move-result-wide v0

    return-wide v0
.end method

.method private static getSyncUpperLimitTime()J
    .locals 2

    .prologue
    .line 288
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getSyncStrategy()Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->getMonitorSyncUpperTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private static getTrafficStepValue()J
    .locals 2

    .prologue
    .line 273
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getSyncStrategy()Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->getMonitorTrafficStep()J

    move-result-wide v0

    return-wide v0
.end method

.method private static isCharging(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 305
    .local v2, "start":J
    const/4 v4, 0x0

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 306
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "status"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 307
    .local v1, "status":I
    const-string v4, "SyncMonitor"

    const-string v5, "judge charging state cost %s"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 308
    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    const/4 v4, 0x5

    if-ne v1, v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static needMonitorBackground()Z
    .locals 1

    .prologue
    .line 296
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getSyncStrategy()Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->isMonitorBackground()Z

    move-result v0

    return v0
.end method

.method private static needMonitorSyncTime()Z
    .locals 1

    .prologue
    .line 300
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getSyncStrategy()Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->isMonitorSyncTime()Z

    move-result v0

    return v0
.end method

.method private static needMonitorTraffic()Z
    .locals 1

    .prologue
    .line 292
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getSyncStrategy()Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->isMonitorTraffic()Z

    move-result v0

    return v0
.end method

.method private static recordAppFocused()V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 189
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    .line 190
    .local v2, "context":Landroid/content/Context;
    invoke-static {}, Lcom/miui/gallery/cloud/AccountCache;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 191
    .local v0, "account":Landroid/accounts/Account;
    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/miui/gallery/util/SyncUtil;->isGalleryCloudSyncable(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 192
    invoke-static {v2}, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil;->isSyncing(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 193
    const-string v7, "com.miui.gallery.cloud.provider"

    invoke-static {v0, v7}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    .line 195
    .local v3, "isPending":Z
    if-nez v3, :cond_2

    .line 197
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sIsFirstSynced()Z

    move-result v7

    if-nez v7, :cond_1

    .line 198
    const-string v6, "SyncMonitor"

    const-string v7, "monitor app focused: %s"

    const-string v8, "no pending & not synced first"

    invoke-static {v6, v7, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 199
    invoke-static {v2}, Lcom/miui/gallery/util/SyncUtil;->requestSync(Landroid/content/Context;)V

    .line 249
    .end local v3    # "isPending":Z
    :cond_0
    :goto_0
    return-void

    .line 203
    .restart local v3    # "isPending":Z
    :cond_1
    invoke-static {v2}, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil;->getDirtyCount(Landroid/content/Context;)Lcom/miui/gallery/cloud/syncstate/DirtyCount;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/gallery/cloud/syncstate/DirtyCount;->getSyncableCount()I

    move-result v7

    if-lez v7, :cond_2

    .line 204
    const-string v7, "SyncMonitor"

    const-string v8, "monitor app focused: %s"

    const-string v9, "no pending & has dirty"

    invoke-static {v7, v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 205
    new-instance v7, Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    invoke-direct {v7}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;-><init>()V

    sget-object v8, Lcom/miui/gallery/cloud/syncstate/SyncType;->NORMAL:Lcom/miui/gallery/cloud/syncstate/SyncType;

    .line 206
    invoke-virtual {v7, v8}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->setSyncType(Lcom/miui/gallery/cloud/syncstate/SyncType;)Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    move-result-object v7

    .line 207
    invoke-virtual {v7, v1}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->setSyncReason(I)Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    move-result-object v7

    .line 208
    invoke-virtual {v7, v6}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->setDelayUpload(Z)Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    move-result-object v6

    .line 209
    invoke-virtual {v6}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->build()Lcom/miui/gallery/util/SyncUtil$Request;

    move-result-object v4

    .line 210
    .local v4, "request":Lcom/miui/gallery/util/SyncUtil$Request;
    invoke-static {v2, v4}, Lcom/miui/gallery/util/SyncUtil;->requestSync(Landroid/content/Context;Lcom/miui/gallery/util/SyncUtil$Request;)V

    goto :goto_0

    .line 215
    .end local v4    # "request":Lcom/miui/gallery/util/SyncUtil$Request;
    :cond_2
    if-eqz v3, :cond_0

    .line 216
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sIsFirstSynced()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 218
    invoke-static {v2}, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil;->getDirtyCount(Landroid/content/Context;)Lcom/miui/gallery/cloud/syncstate/DirtyCount;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/gallery/cloud/syncstate/DirtyCount;->getSyncableCount()I

    move-result v7

    if-lez v7, :cond_3

    .line 219
    invoke-static {}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->getInstance()Lcom/miui/gallery/cloud/syncstate/SyncStateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->getSyncType()Lcom/miui/gallery/cloud/syncstate/SyncType;

    move-result-object v5

    .line 220
    .local v5, "syncType":Lcom/miui/gallery/cloud/syncstate/SyncType;
    invoke-static {v5}, Lcom/miui/gallery/cloud/syncstate/SyncStateInfo;->isBackSyncType(Lcom/miui/gallery/cloud/syncstate/SyncType;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 221
    const-string v7, "SyncMonitor"

    const-string v8, "monitor app focused: %s"

    const-string v9, "pending & has dirty & background -> foreground"

    invoke-static {v7, v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 222
    new-instance v7, Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    invoke-direct {v7}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;-><init>()V

    sget-object v8, Lcom/miui/gallery/cloud/syncstate/SyncType;->NORMAL:Lcom/miui/gallery/cloud/syncstate/SyncType;

    .line 223
    invoke-virtual {v7, v8}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->setSyncType(Lcom/miui/gallery/cloud/syncstate/SyncType;)Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    move-result-object v7

    .line 224
    invoke-virtual {v7, v1}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->setSyncReason(I)Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    move-result-object v7

    .line 225
    invoke-virtual {v7, v6}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->setDelayUpload(Z)Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    move-result-object v6

    .line 226
    invoke-virtual {v6}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->build()Lcom/miui/gallery/util/SyncUtil$Request;

    move-result-object v4

    .line 227
    .restart local v4    # "request":Lcom/miui/gallery/util/SyncUtil$Request;
    invoke-static {v2, v4}, Lcom/miui/gallery/util/SyncUtil;->requestSync(Landroid/content/Context;Lcom/miui/gallery/util/SyncUtil$Request;)V

    goto :goto_0

    .line 236
    .end local v4    # "request":Lcom/miui/gallery/util/SyncUtil$Request;
    .end local v5    # "syncType":Lcom/miui/gallery/cloud/syncstate/SyncType;
    :cond_3
    const-string v7, "com.miui.gallery.cloud.provider"

    invoke-static {v0, v7}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 237
    const-string v7, "com.miui.gallery.cloud.provider"

    invoke-static {v0, v7}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 238
    .local v1, "cancelSuccess":Z
    :goto_1
    const-string v6, "SyncMonitor"

    const-string v7, "cancel pending result %s"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 239
    if-eqz v1, :cond_0

    .line 240
    const-string v6, "SyncMonitor"

    const-string v7, "monitor app focused: %s"

    const-string v8, "pending & no dirty"

    invoke-static {v6, v7, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 241
    invoke-static {v2}, Lcom/miui/gallery/util/SyncUtil;->requestSync(Landroid/content/Context;)V

    goto/16 :goto_0

    .end local v1    # "cancelSuccess":Z
    :cond_4
    move v1, v6

    .line 237
    goto :goto_1
.end method

.method private static recordSyncStart()V
    .locals 2

    .prologue
    .line 161
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->sSyncThrowable:Ljava/lang/Throwable;

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->sSyncStartTime:J

    .line 163
    invoke-static {}, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->statSyncStart()V

    .line 164
    return-void
.end method

.method private static recordSyncStop()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 177
    const-string v0, "SyncMonitor"

    const-string/jumbo v1, "sync time %s"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->sSyncStartTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    sput-wide v6, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->sLastCheckTime:J

    .line 179
    sput-wide v6, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->sSyncStartTime:J

    .line 180
    sget v0, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->TRAFFIC_STEP_INIT:I

    sput v0, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->sTrafficSteps:I

    .line 181
    sput-wide v6, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->sBackgroundStartTime:J

    .line 182
    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->sIsFirstBackground:Z

    .line 183
    sget-object v0, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->sUploadInfoAnalyzer:Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;

    if-eqz v0, :cond_0

    .line 184
    sget-object v0, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->sUploadInfoAnalyzer:Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;

    invoke-static {v0}, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;->access$000(Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;)V

    .line 186
    :cond_0
    return-void
.end method

.method private static recordSyncThrowable(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 173
    sput-object p0, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->sSyncThrowable:Ljava/lang/Throwable;

    .line 174
    return-void
.end method

.method private static recordUploadInfo(Lcom/miui/gallery/cloud/control/SyncMonitor$UploadMonitorInfo;)V
    .locals 1
    .param p0, "info"    # Lcom/miui/gallery/cloud/control/SyncMonitor$UploadMonitorInfo;

    .prologue
    .line 167
    invoke-static {}, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->getAnalyzer()Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;->addUploadInfo(Lcom/miui/gallery/cloud/control/SyncMonitor$UploadMonitorInfo;)V

    .line 169
    invoke-static {}, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->tryCheck()V

    .line 170
    return-void
.end method

.method private static statPolicyChanged()V
    .locals 10

    .prologue
    .line 436
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 437
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil;->getDirtySize(Landroid/content/Context;)[J

    move-result-object v2

    .line 438
    .local v2, "size":[J
    const/4 v3, 0x0

    aget-wide v6, v2, v3

    const/4 v3, 0x1

    aget-wide v8, v2, v3

    add-long v4, v6, v8

    .line 439
    .local v4, "totalSize":J
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 440
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "dirty"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    const-string/jumbo v3, "sync_monitor"

    const-string v6, "monitor_sync_policy_changed_dirty"

    invoke-static {v3, v6, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 442
    return-void
.end method

.method private static statSyncInBackground()V
    .locals 14

    .prologue
    .line 421
    const-string/jumbo v5, "sync_monitor"

    const-string v10, "monitor_sync_in_background"

    invoke-static {v5, v10}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 423
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil;->getDirtySize(Landroid/content/Context;)[J

    move-result-object v4

    .line 424
    .local v4, "size":[J
    const/4 v5, 0x0

    aget-wide v10, v4, v5

    const/4 v5, 0x1

    aget-wide v12, v4, v5

    add-long v8, v10, v12

    .line 425
    .local v8, "totalSize":J
    invoke-static {}, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->getAnalyzer()Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;->getAvgSpeed()J

    move-result-wide v10

    invoke-static {}, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->getAnalyzer()Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;->getRecentSpeed()J

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 426
    .local v6, "speed":J
    const-wide/16 v10, 0x0

    cmp-long v5, v6, v10

    if-lez v5, :cond_0

    .line 428
    const/high16 v5, 0x3f800000    # 1.0f

    long-to-float v10, v8

    mul-float/2addr v5, v10

    long-to-float v10, v6

    div-float/2addr v5, v10

    float-to-long v2, v5

    .line 429
    .local v2, "predictedTime":J
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 430
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "predictedTime"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    const-string/jumbo v5, "sync_monitor"

    const-string v10, "monitor_background_predicted_time"

    invoke-static {v5, v10, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 433
    .end local v1    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "predictedTime":J
    :cond_0
    return-void
.end method

.method private static statSyncStart()V
    .locals 2

    .prologue
    .line 417
    const-string/jumbo v0, "sync_monitor"

    const-string v1, "monitor_sync_start"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    return-void
.end method

.method private static tryCheck()V
    .locals 4

    .prologue
    .line 259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->sLastCheckTime:J

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->getCheckInterval()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 264
    :goto_0
    return-void

    .line 262
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->sLastCheckTime:J

    .line 263
    invoke-static {}, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->check()V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 141
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 158
    :goto_0
    return-void

    .line 143
    :pswitch_0
    invoke-static {}, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->recordSyncStart()V

    goto :goto_0

    .line 146
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadMonitorInfo;

    invoke-static {v0}, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->recordUploadInfo(Lcom/miui/gallery/cloud/control/SyncMonitor$UploadMonitorInfo;)V

    goto :goto_0

    .line 149
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->recordSyncThrowable(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 152
    :pswitch_3
    invoke-static {}, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->recordSyncStop()V

    goto :goto_0

    .line 155
    :pswitch_4
    invoke-static {}, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;->recordAppFocused()V

    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
