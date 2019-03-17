.class public Lcom/xiaomi/clientreport/job/ReadAndSendJob;
.super Ljava/lang/Object;
.source "ReadAndSendJob.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mReadAndSender:Lcom/xiaomi/clientreport/processor/IDataSend;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 32
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/clientreport/job/ReadAndSendJob;->mReadAndSender:Lcom/xiaomi/clientreport/processor/IDataSend;

    if-eqz v1, :cond_0

    .line 33
    iget-object v1, p0, Lcom/xiaomi/clientreport/job/ReadAndSendJob;->mReadAndSender:Lcom/xiaomi/clientreport/processor/IDataSend;

    invoke-interface {v1}, Lcom/xiaomi/clientreport/processor/IDataSend;->readAndSend()V

    .line 35
    :cond_0
    const-string v1, "begin read and send perf / event"

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lcom/xiaomi/clientreport/job/ReadAndSendJob;->mReadAndSender:Lcom/xiaomi/clientreport/processor/IDataSend;

    instance-of v1, v1, Lcom/xiaomi/clientreport/processor/IEventProcessor;

    if-eqz v1, :cond_2

    .line 37
    iget-object v1, p0, Lcom/xiaomi/clientreport/job/ReadAndSendJob;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/clientreport/util/SPManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/clientreport/util/SPManager;

    move-result-object v1

    const-string/jumbo v2, "sp_client_report_status"

    const-string v3, "event_last_upload_time"

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 37
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/xiaomi/clientreport/util/SPManager;->setLongValue(Ljava/lang/String;Ljava/lang/String;J)V

    .line 46
    :cond_1
    :goto_0
    return-void

    .line 39
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/clientreport/job/ReadAndSendJob;->mReadAndSender:Lcom/xiaomi/clientreport/processor/IDataSend;

    instance-of v1, v1, Lcom/xiaomi/clientreport/processor/IPerfProcessor;

    if-eqz v1, :cond_1

    .line 40
    iget-object v1, p0, Lcom/xiaomi/clientreport/job/ReadAndSendJob;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/clientreport/util/SPManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/clientreport/util/SPManager;

    move-result-object v1

    const-string/jumbo v2, "sp_client_report_status"

    const-string v3, "perf_last_upload_time"

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 40
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/xiaomi/clientreport/util/SPManager;->setLongValue(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/xiaomi/clientreport/job/ReadAndSendJob;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method

.method public setReadAndSender(Lcom/xiaomi/clientreport/processor/IDataSend;)V
    .locals 0
    .param p1, "readAndSender"    # Lcom/xiaomi/clientreport/processor/IDataSend;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/xiaomi/clientreport/job/ReadAndSendJob;->mReadAndSender:Lcom/xiaomi/clientreport/processor/IDataSend;

    .line 23
    return-void
.end method
