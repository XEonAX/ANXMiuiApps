.class public Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;
.super Ljava/lang/Object;
.source "PushClientReportHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/service/clientReport/PushClientReportHelper$Uploader;
    }
.end annotation


# static fields
.field private static mUploader:Lcom/xiaomi/push/service/clientReport/PushClientReportHelper$Uploader;

.field private static notificationTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/xmpush/thrift/NotificationType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->notificationTypeMap:Ljava/util/Map;

    return-void
.end method

.method public static changeOrdinalToCode(Ljava/lang/Enum;)I
    .locals 2
    .param p0, "x"    # Ljava/lang/Enum;

    .prologue
    .line 235
    const/4 v0, -0x1

    .line 236
    .local v0, "result":I
    if-eqz p0, :cond_0

    .line 237
    instance-of v1, p0, Lcom/xiaomi/xmpush/thrift/ActionType;

    if-eqz v1, :cond_1

    .line 238
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    add-int/lit16 v0, v1, 0x3e9

    .line 245
    :cond_0
    :goto_0
    return v0

    .line 239
    :cond_1
    instance-of v1, p0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    if-eqz v1, :cond_2

    .line 240
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    add-int/lit16 v0, v1, 0x7d1

    goto :goto_0

    .line 241
    :cond_2
    instance-of v1, p0, Lcom/xiaomi/push/service/xmpush/Command;

    if-eqz v1, :cond_0

    .line 242
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    add-int/lit16 v0, v1, 0xbb9

    goto :goto_0
.end method

.method public static changeValueToCode(I)I
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 117
    const/4 v0, -0x1

    .line 118
    .local v0, "result":I
    if-lez p0, :cond_0

    .line 119
    add-int/lit16 v0, p0, 0x3e8

    .line 121
    :cond_0
    return v0
.end method

.method public static changeValueToNotificationType(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/NotificationType;
    .locals 7
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 251
    sget-object v1, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->notificationTypeMap:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 252
    const-class v2, Lcom/xiaomi/xmpush/thrift/NotificationType;

    monitor-enter v2

    .line 253
    :try_start_0
    sget-object v1, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->notificationTypeMap:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 254
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->notificationTypeMap:Ljava/util/Map;

    .line 255
    invoke-static {}, Lcom/xiaomi/xmpush/thrift/NotificationType;->values()[Lcom/xiaomi/xmpush/thrift/NotificationType;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1

    .line 256
    .local v0, "type":Lcom/xiaomi/xmpush/thrift/NotificationType;
    sget-object v5, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->notificationTypeMap:Ljava/util/Map;

    iget-object v6, v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    .end local v0    # "type":Lcom/xiaomi/xmpush/thrift/NotificationType;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    :cond_1
    sget-object v1, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->notificationTypeMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 262
    .restart local v0    # "type":Lcom/xiaomi/xmpush/thrift/NotificationType;
    if-eqz v0, :cond_2

    .end local v0    # "type":Lcom/xiaomi/xmpush/thrift/NotificationType;
    :goto_1
    return-object v0

    .line 259
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 262
    .restart local v0    # "type":Lcom/xiaomi/xmpush/thrift/NotificationType;
    :cond_2
    sget-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->Invalid:Lcom/xiaomi/xmpush/thrift/NotificationType;

    goto :goto_1
.end method

.method public static checkConfigChange(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 201
    invoke-static {p0}, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->getConfig(Landroid/content/Context;)Lcom/xiaomi/clientreport/data/Config;

    move-result-object v0

    .line 202
    .local v0, "config":Lcom/xiaomi/clientreport/data/Config;
    invoke-static {p0, v0}, Lcom/xiaomi/clientreport/manager/ClientReportClient;->updateConfig(Landroid/content/Context;Lcom/xiaomi/clientreport/data/Config;)V

    .line 203
    return-void
.end method

.method public static getConfig(Landroid/content/Context;)Lcom/xiaomi/clientreport/data/Config;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const v7, 0x15180

    const/4 v6, 0x0

    .line 212
    invoke-static {p0}, Lcom/xiaomi/push/service/OnlineConfig;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/OnlineConfig;

    move-result-object v4

    sget-object v5, Lcom/xiaomi/xmpush/thrift/ConfigKey;->PerfUploadSwitch:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v5

    invoke-virtual {v4, v5, v6}, Lcom/xiaomi/push/service/OnlineConfig;->getBooleanValue(IZ)Z

    move-result v2

    .line 214
    .local v2, "isPerfOpen":Z
    invoke-static {p0}, Lcom/xiaomi/push/service/OnlineConfig;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/OnlineConfig;

    move-result-object v4

    sget-object v5, Lcom/xiaomi/xmpush/thrift/ConfigKey;->EventUploadSwitch:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v5

    invoke-virtual {v4, v5, v6}, Lcom/xiaomi/push/service/OnlineConfig;->getBooleanValue(IZ)Z

    move-result v1

    .line 216
    .local v1, "isEventOpen":Z
    invoke-static {p0}, Lcom/xiaomi/push/service/OnlineConfig;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/OnlineConfig;

    move-result-object v4

    sget-object v5, Lcom/xiaomi/xmpush/thrift/ConfigKey;->PerfUploadFrequency:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v5

    invoke-virtual {v4, v5, v7}, Lcom/xiaomi/push/service/OnlineConfig;->getIntValue(II)I

    move-result v3

    .line 218
    .local v3, "perfFrequency":I
    invoke-static {p0}, Lcom/xiaomi/push/service/OnlineConfig;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/OnlineConfig;

    move-result-object v4

    sget-object v5, Lcom/xiaomi/xmpush/thrift/ConfigKey;->EventUploadFrequency:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v5

    invoke-virtual {v4, v5, v7}, Lcom/xiaomi/push/service/OnlineConfig;->getIntValue(II)I

    move-result v0

    .line 220
    .local v0, "eventFrequency":I
    invoke-static {}, Lcom/xiaomi/clientreport/data/Config;->getBuilder()Lcom/xiaomi/clientreport/data/Config$Builder;

    move-result-object v4

    .line 221
    invoke-virtual {v4, v1}, Lcom/xiaomi/clientreport/data/Config$Builder;->setEventUploadSwitchOpen(Z)Lcom/xiaomi/clientreport/data/Config$Builder;

    move-result-object v4

    int-to-long v6, v0

    .line 222
    invoke-virtual {v4, v6, v7}, Lcom/xiaomi/clientreport/data/Config$Builder;->setEventUploadFrequency(J)Lcom/xiaomi/clientreport/data/Config$Builder;

    move-result-object v4

    .line 223
    invoke-virtual {v4, v2}, Lcom/xiaomi/clientreport/data/Config$Builder;->setPerfUploadSwitchOpen(Z)Lcom/xiaomi/clientreport/data/Config$Builder;

    move-result-object v4

    int-to-long v6, v3

    .line 224
    invoke-virtual {v4, v6, v7}, Lcom/xiaomi/clientreport/data/Config$Builder;->setPerfUploadFrequency(J)Lcom/xiaomi/clientreport/data/Config$Builder;

    move-result-object v4

    .line 225
    invoke-virtual {v4, p0}, Lcom/xiaomi/clientreport/data/Config$Builder;->build(Landroid/content/Context;)Lcom/xiaomi/clientreport/data/Config;

    move-result-object v4

    .line 220
    return-object v4
.end method

.method public static getInterfaceIdByType(I)Ljava/lang/String;
    .locals 1
    .param p0, "eventMessageType"    # I

    .prologue
    .line 99
    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    .line 100
    const-string v0, "E100000"

    .line 106
    :goto_0
    return-object v0

    .line 101
    :cond_0
    const/16 v0, 0xbb8

    if-ne p0, v0, :cond_1

    .line 102
    const-string v0, "E100002"

    goto :goto_0

    .line 103
    :cond_1
    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_2

    .line 104
    const-string v0, "E100001"

    goto :goto_0

    .line 106
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public static initEventPerfLogic(Landroid/content/Context;Lcom/xiaomi/clientreport/data/Config;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/xiaomi/clientreport/data/Config;

    .prologue
    .line 192
    new-instance v0, Lcom/xiaomi/push/service/clientReport/MIPushEventDataProcessor;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/clientReport/MIPushEventDataProcessor;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/xiaomi/push/service/clientReport/MIPushPerfDataProcessor;

    invoke-direct {v1, p0}, Lcom/xiaomi/push/service/clientReport/MIPushPerfDataProcessor;-><init>(Landroid/content/Context;)V

    invoke-static {p0, p1, v0, v1}, Lcom/xiaomi/clientreport/manager/ClientReportClient;->init(Landroid/content/Context;Lcom/xiaomi/clientreport/data/Config;Lcom/xiaomi/clientreport/processor/IEventProcessor;Lcom/xiaomi/clientreport/processor/IPerfProcessor;)V

    .line 193
    return-void
.end method

.method public static isInXmsf(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newEvent(Ljava/lang/String;)Lcom/xiaomi/clientreport/data/EventClientReport;
    .locals 2
    .param p0, "interfaceId"    # Ljava/lang/String;

    .prologue
    .line 60
    new-instance v0, Lcom/xiaomi/clientreport/data/EventClientReport;

    invoke-direct {v0}, Lcom/xiaomi/clientreport/data/EventClientReport;-><init>()V

    .line 61
    .local v0, "report":Lcom/xiaomi/clientreport/data/EventClientReport;
    const/16 v1, 0x3e8

    iput v1, v0, Lcom/xiaomi/clientreport/data/EventClientReport;->production:I

    .line 62
    const/16 v1, 0x3e9

    iput v1, v0, Lcom/xiaomi/clientreport/data/EventClientReport;->reportType:I

    .line 63
    iput-object p0, v0, Lcom/xiaomi/clientreport/data/EventClientReport;->clientInterfaceId:Ljava/lang/String;

    .line 64
    return-object v0
.end method

.method public static newPerf()Lcom/xiaomi/clientreport/data/PerfClientReport;
    .locals 2

    .prologue
    const/16 v1, 0x3e8

    .line 68
    new-instance v0, Lcom/xiaomi/clientreport/data/PerfClientReport;

    invoke-direct {v0}, Lcom/xiaomi/clientreport/data/PerfClientReport;-><init>()V

    .line 69
    .local v0, "report":Lcom/xiaomi/clientreport/data/PerfClientReport;
    iput v1, v0, Lcom/xiaomi/clientreport/data/PerfClientReport;->production:I

    .line 70
    iput v1, v0, Lcom/xiaomi/clientreport/data/PerfClientReport;->reportType:I

    .line 71
    const-string v1, "P100000"

    iput-object v1, v0, Lcom/xiaomi/clientreport/data/PerfClientReport;->clientInterfaceId:Ljava/lang/String;

    .line 72
    return-object v0
.end method

.method public static reportEvent2Object(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lcom/xiaomi/clientreport/data/EventClientReport;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "interfaceId"    # Ljava/lang/String;
    .param p2, "eventId"    # Ljava/lang/String;
    .param p3, "eventType"    # I
    .param p4, "eventTime"    # J
    .param p6, "eventContent"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-static {p1}, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->newEvent(Ljava/lang/String;)Lcom/xiaomi/clientreport/data/EventClientReport;

    move-result-object v0

    .line 77
    .local v0, "eventClientReport":Lcom/xiaomi/clientreport/data/EventClientReport;
    iput-object p2, v0, Lcom/xiaomi/clientreport/data/EventClientReport;->eventId:Ljava/lang/String;

    .line 78
    iput p3, v0, Lcom/xiaomi/clientreport/data/EventClientReport;->eventType:I

    .line 79
    iput-wide p4, v0, Lcom/xiaomi/clientreport/data/EventClientReport;->eventTime:J

    .line 80
    iput-object p6, v0, Lcom/xiaomi/clientreport/data/EventClientReport;->eventContent:Ljava/lang/String;

    .line 81
    return-object v0
.end method

.method public static reportPerf2Object(Landroid/content/Context;IJJ)Lcom/xiaomi/clientreport/data/PerfClientReport;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "code"    # I
    .param p2, "perfCounts"    # J
    .param p4, "perfLatencies"    # J

    .prologue
    .line 85
    invoke-static {}, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->newPerf()Lcom/xiaomi/clientreport/data/PerfClientReport;

    move-result-object v0

    .line 86
    .local v0, "perfClientReport":Lcom/xiaomi/clientreport/data/PerfClientReport;
    iput p1, v0, Lcom/xiaomi/clientreport/data/PerfClientReport;->code:I

    .line 87
    iput-wide p2, v0, Lcom/xiaomi/clientreport/data/PerfClientReport;->perfCounts:J

    .line 88
    iput-wide p4, v0, Lcom/xiaomi/clientreport/data/PerfClientReport;->perfLatencies:J

    .line 89
    return-object v0
.end method

.method private static sendByTinyData(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->isInXmsf(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/xiaomi/push/service/TinyDataStorage;->cacheTinyData(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;)V

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    sget-object v0, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->mUploader:Lcom/xiaomi/push/service/clientReport/PushClientReportHelper$Uploader;

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->mUploader:Lcom/xiaomi/push/service/clientReport/PushClientReportHelper$Uploader;

    invoke-interface {v0, p0, p1}, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper$Uploader;->uploader(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;)V

    goto :goto_0
.end method

.method public static sendData(Landroid/content/Context;Ljava/util/List;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 148
    .local v0, "data":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->wrapperData(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    move-result-object v3

    .line 149
    .local v3, "item":Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;
    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/xiaomi/push/service/TinyDataHelper;->verify(Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;Z)Z

    move-result v2

    .line 150
    .local v2, "isValid":Z
    if-eqz v2, :cond_2

    .line 151
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "is not valid..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 157
    .end local v0    # "data":Ljava/lang/String;
    .end local v2    # "isValid":Z
    .end local v3    # "item":Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;
    :catch_0
    move-exception v1

    .line 158
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 154
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "data":Ljava/lang/String;
    .restart local v2    # "isValid":Z
    .restart local v3    # "item":Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;
    :cond_2
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "send event/perf data item id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 155
    invoke-static {p0, v3}, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->sendByTinyData(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static setUploader(Lcom/xiaomi/push/service/clientReport/PushClientReportHelper$Uploader;)V
    .locals 0
    .param p0, "uploader"    # Lcom/xiaomi/push/service/clientReport/PushClientReportHelper$Uploader;

    .prologue
    .line 38
    sput-object p0, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->mUploader:Lcom/xiaomi/push/service/clientReport/PushClientReportHelper$Uploader;

    .line 39
    return-void
.end method

.method public static wrapperData(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 171
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 183
    :goto_0
    return-object v0

    .line 172
    :cond_0
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;-><init>()V

    .line 173
    .local v0, "clientUploadDataItem":Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;
    const-string v1, "category_client_report_data"

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setCategory(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 174
    const-string v1, "push_sdk_channel"

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setChannel(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 175
    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setCounter(J)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 176
    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setData(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 177
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setFromSdk(Z)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setTimestamp(J)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setPkgName(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 180
    const-string v1, "com.xiaomi.xmsf"

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setSourcePackage(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 181
    invoke-static {}, Lcom/xiaomi/push/service/TinyDataHelper;->nextTinyDataItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 182
    const-string v1, "quality_support"

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setName(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    goto :goto_0
.end method
