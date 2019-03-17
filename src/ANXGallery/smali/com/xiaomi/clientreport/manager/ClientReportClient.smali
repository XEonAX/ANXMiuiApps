.class public Lcom/xiaomi/clientreport/manager/ClientReportClient;
.super Ljava/lang/Object;
.source "ClientReportClient.java"


# direct methods
.method public static init(Landroid/content/Context;Lcom/xiaomi/clientreport/data/Config;Lcom/xiaomi/clientreport/processor/IEventProcessor;Lcom/xiaomi/clientreport/processor/IPerfProcessor;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/xiaomi/clientreport/data/Config;
    .param p2, "eventProcessor"    # Lcom/xiaomi/clientreport/processor/IEventProcessor;
    .param p3, "perfProcessor"    # Lcom/xiaomi/clientreport/processor/IPerfProcessor;

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init in process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pid :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " threadId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 55
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 56
    invoke-static {p0}, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->init(Lcom/xiaomi/clientreport/data/Config;Lcom/xiaomi/clientreport/processor/IEventProcessor;Lcom/xiaomi/clientreport/processor/IPerfProcessor;)V

    .line 57
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils;->isAppMainProc(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "init in process\u3000start scheduleJob"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 59
    invoke-static {p0}, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->startScheduleJob()V

    .line 61
    :cond_0
    return-void
.end method

.method public static reportEvent(Landroid/content/Context;Lcom/xiaomi/clientreport/data/EventClientReport;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clientReport"    # Lcom/xiaomi/clientreport/data/EventClientReport;

    .prologue
    .line 85
    if-eqz p1, :cond_0

    .line 86
    invoke-static {p0}, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->writeEvent(Lcom/xiaomi/clientreport/data/EventClientReport;)V

    .line 88
    :cond_0
    return-void
.end method

.method public static reportPerf(Landroid/content/Context;Lcom/xiaomi/clientreport/data/PerfClientReport;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clientReport"    # Lcom/xiaomi/clientreport/data/PerfClientReport;

    .prologue
    .line 97
    if-eqz p1, :cond_0

    .line 98
    invoke-static {p0}, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->writePerf(Lcom/xiaomi/clientreport/data/PerfClientReport;)V

    .line 100
    :cond_0
    return-void
.end method

.method public static updateConfig(Landroid/content/Context;Lcom/xiaomi/clientreport/data/Config;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/xiaomi/clientreport/data/Config;

    .prologue
    .line 71
    if-nez p1, :cond_0

    .line 76
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/clientreport/data/Config;->isEventUploadSwitchOpen()Z

    move-result v2

    .line 73
    invoke-virtual {p1}, Lcom/xiaomi/clientreport/data/Config;->isPerfUploadSwitchOpen()Z

    move-result v3

    .line 74
    invoke-virtual {p1}, Lcom/xiaomi/clientreport/data/Config;->getEventUploadFrequency()J

    move-result-wide v4

    .line 75
    invoke-virtual {p1}, Lcom/xiaomi/clientreport/data/Config;->getPerfUploadFrequency()J

    move-result-wide v6

    .line 72
    invoke-virtual/range {v1 .. v7}, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->updateConfig(ZZJJ)V

    goto :goto_0
.end method
