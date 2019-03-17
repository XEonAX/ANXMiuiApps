.class Lcom/miui/gallery/cloud/jobs/SyncJobService$JobTask;
.super Lcom/miui/gallery/cloud/taskmanager/Task;
.source "SyncJobService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/jobs/SyncJobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JobTask"
.end annotation


# instance fields
.field private mParameters:Landroid/app/job/JobParameters;

.field final synthetic this$0:Lcom/miui/gallery/cloud/jobs/SyncJobService;


# direct methods
.method constructor <init>(Lcom/miui/gallery/cloud/jobs/SyncJobService;Landroid/app/job/JobParameters;)V
    .locals 0
    .param p2, "parameters"    # Landroid/app/job/JobParameters;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/miui/gallery/cloud/jobs/SyncJobService$JobTask;->this$0:Lcom/miui/gallery/cloud/jobs/SyncJobService;

    invoke-direct {p0}, Lcom/miui/gallery/cloud/taskmanager/Task;-><init>()V

    .line 136
    iput-object p2, p0, Lcom/miui/gallery/cloud/jobs/SyncJobService$JobTask;->mParameters:Landroid/app/job/JobParameters;

    .line 137
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/miui/gallery/cloud/taskmanager/Task;)I
    .locals 1
    .param p1, "another"    # Lcom/miui/gallery/cloud/taskmanager/Task;

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 171
    if-eqz p1, :cond_2

    instance-of v2, p1, Lcom/miui/gallery/cloud/jobs/SyncJobService$JobTask;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 172
    check-cast v0, Lcom/miui/gallery/cloud/jobs/SyncJobService$JobTask;

    .line 173
    .local v0, "another":Lcom/miui/gallery/cloud/jobs/SyncJobService$JobTask;
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/jobs/SyncJobService$JobTask;->getParameters()Landroid/app/job/JobParameters;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/jobs/SyncJobService$JobTask;->getParameters()Landroid/app/job/JobParameters;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/jobs/SyncJobService$JobTask;->getParameters()Landroid/app/job/JobParameters;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/jobs/SyncJobService$JobTask;->getParameters()Landroid/app/job/JobParameters;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 175
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/jobs/SyncJobService$JobTask;->getParameters()Landroid/app/job/JobParameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/jobs/SyncJobService$JobTask;->getParameters()Landroid/app/job/JobParameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v3

    if-ne v2, v3, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 177
    .end local v0    # "another":Lcom/miui/gallery/cloud/jobs/SyncJobService$JobTask;
    :cond_2
    return v1
.end method

.method public getParameters()Landroid/app/job/JobParameters;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/miui/gallery/cloud/jobs/SyncJobService$JobTask;->mParameters:Landroid/app/job/JobParameters;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/miui/gallery/cloud/jobs/SyncJobService$JobTask;->mParameters:Landroid/app/job/JobParameters;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/cloud/jobs/SyncJobService$JobTask;->mParameters:Landroid/app/job/JobParameters;

    invoke-virtual {v0}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    goto :goto_0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 9
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 150
    const/4 v1, 0x0

    .line 151
    .local v1, "result":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 153
    .local v0, "job":Lcom/miui/gallery/cloud/jobs/AbsSyncJob;
    :try_start_0
    iget-object v2, p0, Lcom/miui/gallery/cloud/jobs/SyncJobService$JobTask;->mParameters:Landroid/app/job/JobParameters;

    if-eqz v2, :cond_0

    .line 154
    iget-object v2, p0, Lcom/miui/gallery/cloud/jobs/SyncJobService$JobTask;->mParameters:Landroid/app/job/JobParameters;

    invoke-virtual {v2}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    invoke-static {v2}, Lcom/miui/gallery/cloud/jobs/SyncJobService$JobFactory;->createJob(I)Lcom/miui/gallery/cloud/jobs/AbsSyncJob;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Lcom/miui/gallery/cloud/jobs/AbsSyncJob;->execute()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 160
    .end local v1    # "result":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/cloud/jobs/SyncJobService$JobTask;->this$0:Lcom/miui/gallery/cloud/jobs/SyncJobService;

    iget-object v3, p0, Lcom/miui/gallery/cloud/jobs/SyncJobService$JobTask;->mParameters:Landroid/app/job/JobParameters;

    invoke-virtual {v2, v3, v8}, Lcom/miui/gallery/cloud/jobs/SyncJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 161
    if-eqz v0, :cond_1

    .line 162
    const-string v2, "Sync"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "sync_job_%s"

    new-array v5, v6, [Ljava/lang/Object;

    .line 163
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 162
    invoke-static {v2, v3}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_1
    return-object v1

    .line 160
    .restart local v1    # "result":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/miui/gallery/cloud/jobs/SyncJobService$JobTask;->this$0:Lcom/miui/gallery/cloud/jobs/SyncJobService;

    iget-object v4, p0, Lcom/miui/gallery/cloud/jobs/SyncJobService$JobTask;->mParameters:Landroid/app/job/JobParameters;

    invoke-virtual {v3, v4, v8}, Lcom/miui/gallery/cloud/jobs/SyncJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 161
    if-eqz v0, :cond_2

    .line 162
    const-string v3, "Sync"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "sync_job_%s"

    new-array v6, v6, [Ljava/lang/Object;

    .line 163
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 162
    invoke-static {v3, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    throw v2
.end method
