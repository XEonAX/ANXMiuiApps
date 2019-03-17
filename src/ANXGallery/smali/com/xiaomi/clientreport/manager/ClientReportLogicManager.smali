.class public Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;
.super Ljava/lang/Object;
.source "ClientReportLogicManager.java"


# static fields
.field private static volatile sInstance:Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;


# instance fields
.field private mConfig:Lcom/xiaomi/clientreport/data/Config;

.field private mContext:Landroid/content/Context;

.field private mEventMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/clientreport/data/BaseClientReport;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEventProcessor:Lcom/xiaomi/clientreport/processor/IEventProcessor;

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mPerfMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/clientreport/data/BaseClientReport;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPerfProcessor:Lcom/xiaomi/clientreport/processor/IPerfProcessor;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mPerfMap:Ljava/util/HashMap;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mEventMap:Ljava/util/HashMap;

    .line 48
    iput-object p1, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;)Lcom/xiaomi/clientreport/processor/IEventProcessor;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mEventProcessor:Lcom/xiaomi/clientreport/processor/IEventProcessor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;)Lcom/xiaomi/clientreport/processor/IPerfProcessor;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mPerfProcessor:Lcom/xiaomi/clientreport/processor/IPerfProcessor;

    return-object v0
.end method

.method private delayRunJob(Ljava/lang/Runnable;I)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delay"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->addOneShootJob(Ljava/lang/Runnable;I)V

    .line 134
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    sget-object v0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->sInstance:Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;

    if-nez v0, :cond_1

    .line 53
    const-class v1, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;

    monitor-enter v1

    .line 54
    :try_start_0
    sget-object v0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->sInstance:Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;

    invoke-direct {v0, p0}, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->sInstance:Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;

    .line 57
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_1
    sget-object v0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->sInstance:Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private startEventUploadJob()V
    .locals 7

    .prologue
    .line 210
    iget-object v3, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/clientreport/util/ClientReportUtil;->checkEventNeedUpload(Landroid/content/Context;)I

    move-result v2

    .line 211
    .local v2, "result":I
    invoke-virtual {p0}, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->getConfig()Lcom/xiaomi/clientreport/data/Config;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/clientreport/data/Config;->getEventUploadFrequency()J

    move-result-wide v4

    long-to-int v0, v4

    .line 212
    .local v0, "frequency":I
    if-ltz v2, :cond_1

    .line 213
    const-class v4, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;

    monitor-enter v4

    .line 214
    :try_start_0
    iget-object v3, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;

    move-result-object v3

    new-instance v5, Lcom/xiaomi/clientreport/job/EventUploadJob;

    iget-object v6, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/xiaomi/clientreport/job/EventUploadJob;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v5, v0, v2}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->addRepeatJob(Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;II)Z

    move-result v1

    .line 216
    .local v1, "putResult":Z
    if-nez v1, :cond_0

    .line 217
    iget-object v3, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;

    move-result-object v3

    const v5, 0x18a16

    invoke-virtual {v3, v5}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->cancelJob(I)Z

    .line 218
    iget-object v3, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;

    move-result-object v3

    new-instance v5, Lcom/xiaomi/clientreport/job/EventUploadJob;

    iget-object v6, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/xiaomi/clientreport/job/EventUploadJob;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v5, v0, v2}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->addRepeatJob(Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;II)Z

    .line 220
    :cond_0
    monitor-exit v4

    .line 222
    .end local v1    # "putResult":Z
    :cond_1
    return-void

    .line 220
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private startPerfUploadJob()V
    .locals 7

    .prologue
    .line 228
    iget-object v3, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/clientreport/util/ClientReportUtil;->checkPerfNeedUpload(Landroid/content/Context;)I

    move-result v2

    .line 229
    .local v2, "result":I
    invoke-virtual {p0}, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->getConfig()Lcom/xiaomi/clientreport/data/Config;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/clientreport/data/Config;->getPerfUploadFrequency()J

    move-result-wide v4

    long-to-int v0, v4

    .line 230
    .local v0, "frequency":I
    if-ltz v2, :cond_1

    .line 231
    const-class v4, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;

    monitor-enter v4

    .line 232
    :try_start_0
    iget-object v3, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;

    move-result-object v3

    new-instance v5, Lcom/xiaomi/clientreport/job/PerfUploadJob;

    iget-object v6, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/xiaomi/clientreport/job/PerfUploadJob;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v5, v0, v2}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->addRepeatJob(Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;II)Z

    move-result v1

    .line 233
    .local v1, "putResult":Z
    if-nez v1, :cond_0

    .line 234
    iget-object v3, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;

    move-result-object v3

    const v5, 0x18a17

    invoke-virtual {v3, v5}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->cancelJob(I)Z

    .line 235
    iget-object v3, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;

    move-result-object v3

    new-instance v5, Lcom/xiaomi/clientreport/job/PerfUploadJob;

    iget-object v6, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/xiaomi/clientreport/job/PerfUploadJob;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v5, v0, v2}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->addRepeatJob(Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;II)Z

    .line 237
    :cond_0
    monitor-exit v4

    .line 239
    .end local v1    # "putResult":Z
    :cond_1
    return-void

    .line 237
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method public declared-synchronized getConfig()Lcom/xiaomi/clientreport/data/Config;
    .locals 1

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mConfig:Lcom/xiaomi/clientreport/data/Config;

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/clientreport/data/Config;->defaultConfig(Landroid/content/Context;)Lcom/xiaomi/clientreport/data/Config;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mConfig:Lcom/xiaomi/clientreport/data/Config;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mConfig:Lcom/xiaomi/clientreport/data/Config;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public init(Lcom/xiaomi/clientreport/data/Config;Lcom/xiaomi/clientreport/processor/IEventProcessor;Lcom/xiaomi/clientreport/processor/IPerfProcessor;)V
    .locals 2
    .param p1, "config"    # Lcom/xiaomi/clientreport/data/Config;
    .param p2, "eventProcessor"    # Lcom/xiaomi/clientreport/processor/IEventProcessor;
    .param p3, "perfProcessor"    # Lcom/xiaomi/clientreport/processor/IPerfProcessor;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mConfig:Lcom/xiaomi/clientreport/data/Config;

    .line 86
    iput-object p2, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mEventProcessor:Lcom/xiaomi/clientreport/processor/IEventProcessor;

    .line 87
    iput-object p3, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mPerfProcessor:Lcom/xiaomi/clientreport/processor/IPerfProcessor;

    .line 88
    iget-object v0, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mEventProcessor:Lcom/xiaomi/clientreport/processor/IEventProcessor;

    iget-object v1, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mEventMap:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/xiaomi/clientreport/processor/IEventProcessor;->setEventMap(Ljava/util/HashMap;)V

    .line 89
    iget-object v0, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mPerfProcessor:Lcom/xiaomi/clientreport/processor/IPerfProcessor;

    iget-object v1, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mPerfMap:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/xiaomi/clientreport/processor/IPerfProcessor;->setPerfMap(Ljava/util/HashMap;)V

    .line 91
    return-void
.end method

.method public sendEvent()V
    .locals 2

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->getConfig()Lcom/xiaomi/clientreport/data/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/clientreport/data/Config;->isEventUploadSwitchOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    new-instance v0, Lcom/xiaomi/clientreport/job/ReadAndSendJob;

    invoke-direct {v0}, Lcom/xiaomi/clientreport/job/ReadAndSendJob;-><init>()V

    .line 188
    .local v0, "readAndSendJob":Lcom/xiaomi/clientreport/job/ReadAndSendJob;
    iget-object v1, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xiaomi/clientreport/job/ReadAndSendJob;->setContext(Landroid/content/Context;)V

    .line 189
    iget-object v1, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mEventProcessor:Lcom/xiaomi/clientreport/processor/IEventProcessor;

    invoke-virtual {v0, v1}, Lcom/xiaomi/clientreport/job/ReadAndSendJob;->setReadAndSender(Lcom/xiaomi/clientreport/processor/IDataSend;)V

    .line 190
    iget-object v1, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 192
    .end local v0    # "readAndSendJob":Lcom/xiaomi/clientreport/job/ReadAndSendJob;
    :cond_0
    return-void
.end method

.method public sendPerf()V
    .locals 2

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->getConfig()Lcom/xiaomi/clientreport/data/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/clientreport/data/Config;->isPerfUploadSwitchOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    new-instance v0, Lcom/xiaomi/clientreport/job/ReadAndSendJob;

    invoke-direct {v0}, Lcom/xiaomi/clientreport/job/ReadAndSendJob;-><init>()V

    .line 200
    .local v0, "readAndSendJob":Lcom/xiaomi/clientreport/job/ReadAndSendJob;
    iget-object v1, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mPerfProcessor:Lcom/xiaomi/clientreport/processor/IPerfProcessor;

    invoke-virtual {v0, v1}, Lcom/xiaomi/clientreport/job/ReadAndSendJob;->setReadAndSender(Lcom/xiaomi/clientreport/processor/IDataSend;)V

    .line 201
    iget-object v1, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xiaomi/clientreport/job/ReadAndSendJob;->setContext(Landroid/content/Context;)V

    .line 202
    iget-object v1, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 204
    .end local v0    # "readAndSendJob":Lcom/xiaomi/clientreport/job/ReadAndSendJob;
    :cond_0
    return-void
.end method

.method public startScheduleJob()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;

    move-result-object v0

    invoke-direct {v0}, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->startEventUploadJob()V

    .line 74
    iget-object v0, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;

    move-result-object v0

    invoke-direct {v0}, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->startPerfUploadJob()V

    .line 75
    return-void
.end method

.method public updateConfig(ZZJJ)V
    .locals 9
    .param p1, "eventOpen"    # Z
    .param p2, "perfOpen"    # Z
    .param p3, "eventFrequency"    # J
    .param p5, "perfFrequency"    # J

    .prologue
    .line 99
    iget-object v1, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mConfig:Lcom/xiaomi/clientreport/data/Config;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mConfig:Lcom/xiaomi/clientreport/data/Config;

    invoke-virtual {v1}, Lcom/xiaomi/clientreport/data/Config;->isEventUploadSwitchOpen()Z

    move-result v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mConfig:Lcom/xiaomi/clientreport/data/Config;

    .line 100
    invoke-virtual {v1}, Lcom/xiaomi/clientreport/data/Config;->isPerfUploadSwitchOpen()Z

    move-result v1

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mConfig:Lcom/xiaomi/clientreport/data/Config;

    .line 101
    invoke-virtual {v1}, Lcom/xiaomi/clientreport/data/Config;->getEventUploadFrequency()J

    move-result-wide v6

    cmp-long v1, p3, v6

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mConfig:Lcom/xiaomi/clientreport/data/Config;

    .line 102
    invoke-virtual {v1}, Lcom/xiaomi/clientreport/data/Config;->getPerfUploadFrequency()J

    move-result-wide v6

    cmp-long v1, p5, v6

    if-eqz v1, :cond_2

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mConfig:Lcom/xiaomi/clientreport/data/Config;

    invoke-virtual {v1}, Lcom/xiaomi/clientreport/data/Config;->getEventUploadFrequency()J

    move-result-wide v2

    .line 104
    .local v2, "oldEventFrequency":J
    iget-object v1, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mConfig:Lcom/xiaomi/clientreport/data/Config;

    invoke-virtual {v1}, Lcom/xiaomi/clientreport/data/Config;->getPerfUploadFrequency()J

    move-result-wide v4

    .line 105
    .local v4, "oldPerfFrequency":J
    invoke-static {}, Lcom/xiaomi/clientreport/data/Config;->getBuilder()Lcom/xiaomi/clientreport/data/Config$Builder;

    move-result-object v1

    iget-object v6, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mContext:Landroid/content/Context;

    .line 106
    invoke-static {v6}, Lcom/xiaomi/clientreport/util/ClientReportUtil;->getEventKeyWithDefault(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/xiaomi/clientreport/data/Config$Builder;->setAESKey(Ljava/lang/String;)Lcom/xiaomi/clientreport/data/Config$Builder;

    move-result-object v1

    iget-object v6, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mConfig:Lcom/xiaomi/clientreport/data/Config;

    .line 107
    invoke-virtual {v6}, Lcom/xiaomi/clientreport/data/Config;->isEventEncrypted()Z

    move-result v6

    invoke-virtual {v1, v6}, Lcom/xiaomi/clientreport/data/Config$Builder;->setEventEncrypted(Z)Lcom/xiaomi/clientreport/data/Config$Builder;

    move-result-object v1

    .line 108
    invoke-virtual {v1, p1}, Lcom/xiaomi/clientreport/data/Config$Builder;->setEventUploadSwitchOpen(Z)Lcom/xiaomi/clientreport/data/Config$Builder;

    move-result-object v1

    .line 109
    invoke-virtual {v1, p3, p4}, Lcom/xiaomi/clientreport/data/Config$Builder;->setEventUploadFrequency(J)Lcom/xiaomi/clientreport/data/Config$Builder;

    move-result-object v1

    .line 110
    invoke-virtual {v1, p2}, Lcom/xiaomi/clientreport/data/Config$Builder;->setPerfUploadSwitchOpen(Z)Lcom/xiaomi/clientreport/data/Config$Builder;

    move-result-object v1

    .line 111
    invoke-virtual {v1, p5, p6}, Lcom/xiaomi/clientreport/data/Config$Builder;->setPerfUploadFrequency(J)Lcom/xiaomi/clientreport/data/Config$Builder;

    move-result-object v1

    iget-object v6, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Lcom/xiaomi/clientreport/data/Config$Builder;->build(Landroid/content/Context;)Lcom/xiaomi/clientreport/data/Config;

    move-result-object v0

    .line 112
    .local v0, "newConfig":Lcom/xiaomi/clientreport/data/Config;
    iput-object v0, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mConfig:Lcom/xiaomi/clientreport/data/Config;

    .line 113
    iget-object v1, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mConfig:Lcom/xiaomi/clientreport/data/Config;

    invoke-virtual {v1}, Lcom/xiaomi/clientreport/data/Config;->isEventUploadSwitchOpen()Z

    move-result v1

    if-nez v1, :cond_3

    .line 114
    iget-object v1, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;

    move-result-object v1

    const v6, 0x18a16

    invoke-virtual {v1, v6}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->cancelJob(I)Z

    .line 121
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mConfig:Lcom/xiaomi/clientreport/data/Config;

    invoke-virtual {v1}, Lcom/xiaomi/clientreport/data/Config;->isPerfUploadSwitchOpen()Z

    move-result v1

    if-nez v1, :cond_4

    .line 122
    iget-object v1, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;

    move-result-object v1

    const v6, 0x18a17

    invoke-virtual {v1, v6}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->cancelJob(I)Z

    .line 130
    .end local v0    # "newConfig":Lcom/xiaomi/clientreport/data/Config;
    .end local v2    # "oldEventFrequency":J
    .end local v4    # "oldPerfFrequency":J
    :cond_2
    :goto_1
    return-void

    .line 116
    .restart local v0    # "newConfig":Lcom/xiaomi/clientreport/data/Config;
    .restart local v2    # "oldEventFrequency":J
    .restart local v4    # "oldPerfFrequency":J
    :cond_3
    invoke-virtual {v0}, Lcom/xiaomi/clientreport/data/Config;->getEventUploadFrequency()J

    move-result-wide v6

    cmp-long v1, v2, v6

    if-eqz v1, :cond_1

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "reset event job "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaomi/clientreport/data/Config;->getEventUploadFrequency()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 118
    invoke-direct {p0}, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->startEventUploadJob()V

    goto :goto_0

    .line 124
    :cond_4
    invoke-virtual {v0}, Lcom/xiaomi/clientreport/data/Config;->getPerfUploadFrequency()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "reset perf job "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaomi/clientreport/data/Config;->getPerfUploadFrequency()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 126
    invoke-direct {p0}, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->startPerfUploadJob()V

    goto :goto_1
.end method

.method public writeEvent(Lcom/xiaomi/clientreport/data/EventClientReport;)V
    .locals 3
    .param p1, "clientReport"    # Lcom/xiaomi/clientreport/data/EventClientReport;

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->getConfig()Lcom/xiaomi/clientreport/data/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/clientreport/data/Config;->isEventUploadSwitchOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    new-instance v0, Lcom/xiaomi/clientreport/job/DataPreProcessJob;

    iget-object v1, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mEventProcessor:Lcom/xiaomi/clientreport/processor/IEventProcessor;

    invoke-direct {v0, v1, p1, v2}, Lcom/xiaomi/clientreport/job/DataPreProcessJob;-><init>(Landroid/content/Context;Lcom/xiaomi/clientreport/data/BaseClientReport;Lcom/xiaomi/clientreport/processor/IWrite;)V

    .line 146
    .local v0, "preProcessJob":Lcom/xiaomi/clientreport/job/DataPreProcessJob;
    iget-object v1, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 149
    new-instance v1, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager$1;-><init>(Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;)V

    const/16 v2, 0x1e

    invoke-direct {p0, v1, v2}, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->delayRunJob(Ljava/lang/Runnable;I)V

    .line 157
    .end local v0    # "preProcessJob":Lcom/xiaomi/clientreport/job/DataPreProcessJob;
    :cond_0
    return-void
.end method

.method public writePerf(Lcom/xiaomi/clientreport/data/PerfClientReport;)V
    .locals 3
    .param p1, "clientReport"    # Lcom/xiaomi/clientreport/data/PerfClientReport;

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->getConfig()Lcom/xiaomi/clientreport/data/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/clientreport/data/Config;->isPerfUploadSwitchOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    new-instance v0, Lcom/xiaomi/clientreport/job/DataPreProcessJob;

    iget-object v1, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mPerfProcessor:Lcom/xiaomi/clientreport/processor/IPerfProcessor;

    invoke-direct {v0, v1, p1, v2}, Lcom/xiaomi/clientreport/job/DataPreProcessJob;-><init>(Landroid/content/Context;Lcom/xiaomi/clientreport/data/BaseClientReport;Lcom/xiaomi/clientreport/processor/IWrite;)V

    .line 169
    .local v0, "preProcessJob":Lcom/xiaomi/clientreport/job/DataPreProcessJob;
    iget-object v1, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 172
    new-instance v1, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager$2;

    invoke-direct {v1, p0}, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager$2;-><init>(Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;)V

    const/16 v2, 0x1e

    invoke-direct {p0, v1, v2}, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->delayRunJob(Ljava/lang/Runnable;I)V

    .line 180
    .end local v0    # "preProcessJob":Lcom/xiaomi/clientreport/job/DataPreProcessJob;
    :cond_0
    return-void
.end method
