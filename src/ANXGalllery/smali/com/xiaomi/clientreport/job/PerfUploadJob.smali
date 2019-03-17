.class public Lcom/xiaomi/clientreport/job/PerfUploadJob;
.super Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;
.source "PerfUploadJob.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/xiaomi/clientreport/job/PerfUploadJob;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method


# virtual methods
.method public checkPerfNeedUpload()Z
    .locals 14

    .prologue
    .line 45
    iget-object v8, p0, Lcom/xiaomi/clientreport/job/PerfUploadJob;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->getConfig()Lcom/xiaomi/clientreport/data/Config;

    move-result-object v8

    invoke-virtual {v8}, Lcom/xiaomi/clientreport/data/Config;->isPerfUploadSwitchOpen()Z

    move-result v1

    .line 46
    .local v1, "isOpen":Z
    if-nez v1, :cond_0

    const/4 v6, 0x0

    .line 58
    :goto_0
    return v6

    .line 47
    :cond_0
    iget-object v8, p0, Lcom/xiaomi/clientreport/job/PerfUploadJob;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->getConfig()Lcom/xiaomi/clientreport/data/Config;

    move-result-object v8

    invoke-virtual {v8}, Lcom/xiaomi/clientreport/data/Config;->getPerfUploadFrequency()J

    move-result-wide v8

    long-to-int v0, v8

    .line 48
    .local v0, "frequency":I
    iget-object v8, p0, Lcom/xiaomi/clientreport/job/PerfUploadJob;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/xiaomi/clientreport/util/SPManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/clientreport/util/SPManager;

    move-result-object v8

    const-string/jumbo v9, "sp_client_report_status"

    const-string v10, "perf_last_upload_time"

    const-wide/16 v12, 0x0

    .line 49
    invoke-virtual {v8, v9, v10, v12, v13}, Lcom/xiaomi/clientreport/util/SPManager;->getLongValue(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    .line 51
    .local v2, "lastTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 52
    .local v4, "now":J
    sub-long v8, v4, v2

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    long-to-int v7, v8

    .line 53
    .local v7, "timeDiff":I
    const/4 v6, 0x0

    .line 54
    .local v6, "result":Z
    add-int/lit8 v8, v0, -0x5

    if-lt v7, v8, :cond_1

    .line 55
    const/4 v6, 0x1

    .line 57
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/xiaomi/clientreport/job/PerfUploadJob;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "perf upload result "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getJobId()I
    .locals 1

    .prologue
    .line 28
    const v0, 0x18a17

    return v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 34
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/clientreport/job/PerfUploadJob;->checkPerfNeedUpload()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    iget-object v1, p0, Lcom/xiaomi/clientreport/job/PerfUploadJob;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->sendPerf()V

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/clientreport/job/PerfUploadJob;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "perf  begin upload"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
