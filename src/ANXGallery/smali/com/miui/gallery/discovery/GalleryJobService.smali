.class public Lcom/miui/gallery/discovery/GalleryJobService;
.super Landroid/app/job/JobService;
.source "GalleryJobService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/discovery/GalleryJobService$JobTask;
    }
.end annotation


# static fields
.field private static sJobs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/gallery/discovery/GalleryJobService;->sJobs:Ljava/util/Map;

    .line 59
    sget-object v0, Lcom/miui/gallery/discovery/GalleryJobService;->sJobs:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/miui/gallery/discovery/ScanMediaJob;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/miui/gallery/discovery/GalleryJobService;->sJobs:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/miui/gallery/discovery/RecentMediaCleanupJob;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/miui/gallery/discovery/GalleryJobService;->sJobs:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/miui/gallery/discovery/CollectLocationJob;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/miui/gallery/discovery/GalleryJobService;->sJobs:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/miui/gallery/cloudcontrol/FetchCloudControlDataJob;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/miui/gallery/discovery/GalleryJobService;->sJobs:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/miui/gallery/discovery/StatisticsJob;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/miui/gallery/discovery/GalleryJobService;->sJobs:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/miui/gallery/search/statistics/SearchStatReportJob;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/miui/gallery/discovery/GalleryJobService;->sJobs:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/miui/gallery/discovery/RequestSyncJob;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/miui/gallery/discovery/GalleryJobService;->sJobs:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/miui/gallery/discovery/DailyCheckJob;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/miui/gallery/discovery/GalleryJobService;->sJobs:Ljava/util/Map;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/miui/gallery/discovery/FileHandleServiceCheckJob;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/miui/gallery/discovery/GalleryJobService;->sJobs:Ljava/util/Map;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/miui/gallery/discovery/PersistentResponseCleanupJob;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/miui/gallery/discovery/GalleryJobService;->sJobs:Ljava/util/Map;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/miui/gallery/provider/peoplecover/PeopleCoverJob;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/miui/gallery/discovery/GalleryJobService;->sJobs:Ljava/util/Map;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/miui/gallery/discovery/DeleteRecordCleanJob;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/miui/gallery/discovery/GalleryJobService;->sJobs:Ljava/util/Map;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/miui/gallery/discovery/CardScenarioJob;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 149
    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/miui/gallery/discovery/GalleryJobService;->sJobs:Ljava/util/Map;

    return-object v0
.end method

.method public static scheduleJob(Landroid/content/Context;Lcom/miui/gallery/discovery/AbstractJob;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "job"    # Lcom/miui/gallery/discovery/AbstractJob;

    .prologue
    .line 96
    const-string v6, "jobscheduler"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/job/JobScheduler;

    .line 97
    .local v5, "jobScheduler":Landroid/app/job/JobScheduler;
    invoke-virtual {v5}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v4

    .line 98
    .local v4, "jobInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    new-instance v0, Landroid/content/ComponentName;

    const-class v6, Lcom/miui/gallery/discovery/GalleryJobService;

    invoke-direct {v0, p0, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    .local v0, "cn":Landroid/content/ComponentName;
    const/4 v2, 0x0

    .line 102
    .local v2, "isPendingJob":Z
    invoke-virtual {p1, p0, v0}, Lcom/miui/gallery/discovery/AbstractJob;->getJobInfo(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/app/job/JobInfo;

    move-result-object v1

    .line 104
    .local v1, "info":Landroid/app/job/JobInfo;
    invoke-static {v4}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 105
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobInfo;

    .line 106
    .local v3, "jobInfo":Landroid/app/job/JobInfo;
    invoke-virtual {p1, v1, v3}, Lcom/miui/gallery/discovery/AbstractJob;->equals(Landroid/app/job/JobInfo;Landroid/app/job/JobInfo;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 107
    const/4 v2, 0x1

    .line 112
    .end local v3    # "jobInfo":Landroid/app/job/JobInfo;
    :cond_1
    if-eqz v2, :cond_3

    .line 113
    const-string v6, "GalleryJobService"

    const-string v7, "scheduledJob %d"

    invoke-virtual {p1}, Lcom/miui/gallery/discovery/AbstractJob;->getJobId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    :cond_2
    :goto_0
    return-void

    .line 118
    :cond_3
    const-string v6, "GalleryJobService"

    const-string/jumbo v7, "to scheduleJob %d"

    invoke-virtual {p1}, Lcom/miui/gallery/discovery/AbstractJob;->getJobId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    if-nez v1, :cond_4

    .line 120
    invoke-virtual {p1}, Lcom/miui/gallery/discovery/AbstractJob;->getJobId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 121
    const-string v6, "GalleryJobService"

    const-string v7, "cancel Job %d"

    invoke-virtual {p1}, Lcom/miui/gallery/discovery/AbstractJob;->getJobId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 122
    :cond_4
    invoke-virtual {v5, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result v6

    if-lez v6, :cond_2

    .line 123
    const-string v6, "GalleryJobService"

    const-string v7, "scheduleJob %d success"

    invoke-virtual {p1}, Lcom/miui/gallery/discovery/AbstractJob;->getJobId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    const-string v6, "JobServiceScheduled"

    .line 126
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 127
    invoke-static {}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->generatorCommonParams()Ljava/util/Map;

    move-result-object v8

    .line 124
    invoke-static {v6, v7, v8}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static scheduleJobs(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    sget-object v3, Lcom/miui/gallery/discovery/GalleryJobService;->sJobs:Ljava/util/Map;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/miui/gallery/discovery/GalleryJobService;->sJobs:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 93
    :cond_0
    return-void

    .line 80
    :cond_1
    sget-object v3, Lcom/miui/gallery/discovery/GalleryJobService;->sJobs:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 83
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Class;>;"
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/discovery/AbstractJob;

    .line 84
    .local v2, "job":Lcom/miui/gallery/discovery/AbstractJob;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/discovery/AbstractJob;->setJobId(I)V

    .line 86
    invoke-static {p0, v2}, Lcom/miui/gallery/discovery/GalleryJobService;->scheduleJob(Landroid/content/Context;Lcom/miui/gallery/discovery/AbstractJob;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 87
    .end local v2    # "job":Lcom/miui/gallery/discovery/AbstractJob;
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 89
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    .line 140
    invoke-static {}, Lmiui/util/async/TaskManager;->getDefault()Lmiui/util/async/TaskManager;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/discovery/GalleryJobService$JobTask;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/discovery/GalleryJobService$JobTask;-><init>(Lcom/miui/gallery/discovery/GalleryJobService;Landroid/app/job/JobParameters;)V

    invoke-virtual {v0, v1}, Lmiui/util/async/TaskManager;->add(Lmiui/util/async/Task;)V

    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method
