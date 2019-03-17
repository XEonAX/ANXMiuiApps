.class public Lcom/xiaomi/push/service/clientReport/PushClientReportManager;
.super Ljava/lang/Object;
.source "PushClientReportManager.java"


# static fields
.field private static volatile sInstance:Lcom/xiaomi/push/service/clientReport/PushClientReportManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method private collectData(Lcom/xiaomi/clientreport/data/BaseClientReport;)V
    .locals 1
    .param p1, "data"    # Lcom/xiaomi/clientreport/data/BaseClientReport;

    .prologue
    .line 259
    instance-of v0, p1, Lcom/xiaomi/clientreport/data/PerfClientReport;

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/xiaomi/clientreport/data/PerfClientReport;

    .end local p1    # "data":Lcom/xiaomi/clientreport/data/BaseClientReport;
    invoke-static {v0, p1}, Lcom/xiaomi/clientreport/manager/ClientReportClient;->reportPerf(Landroid/content/Context;Lcom/xiaomi/clientreport/data/PerfClientReport;)V

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 261
    .restart local p1    # "data":Lcom/xiaomi/clientreport/data/BaseClientReport;
    :cond_1
    instance-of v0, p1, Lcom/xiaomi/clientreport/data/EventClientReport;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/xiaomi/clientreport/data/EventClientReport;

    .end local p1    # "data":Lcom/xiaomi/clientreport/data/BaseClientReport;
    invoke-static {v0, p1}, Lcom/xiaomi/clientreport/manager/ClientReportClient;->reportEvent(Landroid/content/Context;Lcom/xiaomi/clientreport/data/EventClientReport;)V

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    sget-object v0, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->sInstance:Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    if-nez v0, :cond_1

    .line 28
    const-class v1, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->sInstance:Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->sInstance:Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    .line 32
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_1
    sget-object v0, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->sInstance:Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public reportEvent(Ljava/lang/String;Landroid/content/Intent;ILjava/lang/String;)V
    .locals 9
    .param p1, "appPkg"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "eventType"    # I
    .param p4, "content"    # Ljava/lang/String;

    .prologue
    .line 124
    if-nez p2, :cond_0

    .line 129
    :goto_0
    return-void

    .line 125
    :cond_0
    const-string v1, "messageId"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, "eventId":Ljava/lang/String;
    const-string v1, "eventMessageType"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 127
    .local v0, "type":I
    invoke-static {v0}, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->getInterfaceIdByType(I)Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, "interfaceId":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    move v5, p3

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V

    goto :goto_0
.end method

.method public reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 9
    .param p1, "appPkg"    # Ljava/lang/String;
    .param p2, "interfaceId"    # Ljava/lang/String;
    .param p3, "eventId"    # Ljava/lang/String;
    .param p4, "eventType"    # I
    .param p5, "eventTime"    # J
    .param p7, "eventContent"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->mContext:Landroid/content/Context;

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-wide v4, p5

    move-object/from16 v6, p7

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->reportEvent2Object(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lcom/xiaomi/clientreport/data/EventClientReport;

    move-result-object v7

    .line 77
    .local v7, "data":Lcom/xiaomi/clientreport/data/BaseClientReport;
    invoke-virtual {v7, p1}, Lcom/xiaomi/clientreport/data/BaseClientReport;->setAppPackageName(Ljava/lang/String;)V

    .line 78
    invoke-direct {p0, v7}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->collectData(Lcom/xiaomi/clientreport/data/BaseClientReport;)V

    goto :goto_0
.end method

.method public reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 9
    .param p1, "appPkg"    # Ljava/lang/String;
    .param p2, "interfaceId"    # Ljava/lang/String;
    .param p3, "eventId"    # Ljava/lang/String;
    .param p4, "eventType"    # I
    .param p5, "eventContent"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V

    .line 91
    return-void
.end method

.method public reportEvent4DUPMD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "appPkg"    # Ljava/lang/String;
    .param p2, "interfaceId"    # Ljava/lang/String;
    .param p3, "eventId"    # Ljava/lang/String;
    .param p4, "eventContent"    # Ljava/lang/String;

    .prologue
    .line 198
    const/16 v5, 0xfa2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V

    .line 199
    return-void
.end method

.method public reportEvent4ERROR(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 9
    .param p1, "appPkg"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "eventContent"    # Ljava/lang/String;

    .prologue
    .line 159
    if-nez p2, :cond_0

    .line 164
    :goto_0
    return-void

    .line 160
    :cond_0
    const-string v1, "messageId"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 161
    .local v4, "eventId":Ljava/lang/String;
    const-string v1, "eventMessageType"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 162
    .local v0, "type":I
    invoke-static {v0}, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->getInterfaceIdByType(I)Ljava/lang/String;

    move-result-object v3

    .line 163
    .local v3, "interfaceId":Ljava/lang/String;
    const/16 v5, 0x1389

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    move-object v8, p3

    invoke-virtual/range {v1 .. v8}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V

    goto :goto_0
.end method

.method public reportEvent4ERROR(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/Throwable;)V
    .locals 9
    .param p1, "appPkg"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 184
    if-nez p2, :cond_0

    .line 189
    :goto_0
    return-void

    .line 185
    :cond_0
    const-string v1, "messageId"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 186
    .local v4, "eventId":Ljava/lang/String;
    const-string v1, "eventMessageType"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 187
    .local v0, "type":I
    invoke-static {v0}, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->getInterfaceIdByType(I)Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, "interfaceId":Ljava/lang/String;
    const/16 v5, 0x1389

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V

    goto :goto_0
.end method

.method public reportEvent4ERROR(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "appPkg"    # Ljava/lang/String;
    .param p2, "interfaceId"    # Ljava/lang/String;
    .param p3, "eventId"    # Ljava/lang/String;
    .param p4, "eventContent"    # Ljava/lang/String;

    .prologue
    .line 149
    const/16 v5, 0x1389

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V

    .line 150
    return-void
.end method

.method public reportEvent4ERROR(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9
    .param p1, "appPkg"    # Ljava/lang/String;
    .param p2, "interfaceId"    # Ljava/lang/String;
    .param p3, "eventId"    # Ljava/lang/String;
    .param p4, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 174
    const/16 v5, 0x1389

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v8}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V

    .line 175
    return-void
.end method

.method public reportEvent4NeedDrop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "appPkg"    # Ljava/lang/String;
    .param p2, "interfaceId"    # Ljava/lang/String;
    .param p3, "eventId"    # Ljava/lang/String;
    .param p4, "eventContent"    # Ljava/lang/String;

    .prologue
    .line 138
    const/16 v5, 0x138a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V

    .line 139
    return-void
.end method

.method public reportPerf(Ljava/lang/String;IJJ)V
    .locals 7
    .param p1, "appPkg"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "perfCounts"    # J
    .param p5, "perfLatencies"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 210
    if-ltz p2, :cond_0

    cmp-long v0, p5, v2

    if-ltz v0, :cond_0

    cmp-long v0, p3, v2

    if-gtz v0, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->mContext:Landroid/content/Context;

    move v1, p2

    move-wide v2, p3

    move-wide v4, p5

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->reportPerf2Object(Landroid/content/Context;IJJ)Lcom/xiaomi/clientreport/data/PerfClientReport;

    move-result-object v6

    .line 212
    .local v6, "data":Lcom/xiaomi/clientreport/data/BaseClientReport;
    invoke-virtual {v6, p1}, Lcom/xiaomi/clientreport/data/BaseClientReport;->setAppPackageName(Ljava/lang/String;)V

    .line 213
    invoke-direct {p0, v6}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->collectData(Lcom/xiaomi/clientreport/data/BaseClientReport;)V

    goto :goto_0
.end method
