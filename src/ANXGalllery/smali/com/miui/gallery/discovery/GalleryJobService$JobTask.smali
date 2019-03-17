.class Lcom/miui/gallery/discovery/GalleryJobService$JobTask;
.super Lmiui/util/async/Task;
.source "GalleryJobService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/discovery/GalleryJobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JobTask"
.end annotation


# instance fields
.field private mJob:Lcom/miui/gallery/discovery/AbstractJob;

.field private mJobParams:Landroid/app/job/JobParameters;

.field final synthetic this$0:Lcom/miui/gallery/discovery/GalleryJobService;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/discovery/GalleryJobService;Landroid/app/job/JobParameters;)V
    .locals 0
    .param p2, "jobParams"    # Landroid/app/job/JobParameters;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/miui/gallery/discovery/GalleryJobService$JobTask;->this$0:Lcom/miui/gallery/discovery/GalleryJobService;

    invoke-direct {p0}, Lmiui/util/async/Task;-><init>()V

    .line 154
    iput-object p2, p0, Lcom/miui/gallery/discovery/GalleryJobService$JobTask;->mJobParams:Landroid/app/job/JobParameters;

    .line 155
    return-void
.end method


# virtual methods
.method public doLoad()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 159
    invoke-static {}, Lcom/miui/gallery/discovery/GalleryJobService;->access$000()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/discovery/GalleryJobService$JobTask;->mJobParams:Landroid/app/job/JobParameters;

    invoke-virtual {v2}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 160
    .local v0, "jobClass":Ljava/lang/Class;
    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/discovery/AbstractJob;

    iput-object v1, p0, Lcom/miui/gallery/discovery/GalleryJobService$JobTask;->mJob:Lcom/miui/gallery/discovery/AbstractJob;

    .line 162
    iget-object v1, p0, Lcom/miui/gallery/discovery/GalleryJobService$JobTask;->mJob:Lcom/miui/gallery/discovery/AbstractJob;

    iget-object v2, p0, Lcom/miui/gallery/discovery/GalleryJobService$JobTask;->mJobParams:Landroid/app/job/JobParameters;

    invoke-virtual {v2}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/discovery/AbstractJob;->setJobId(I)V

    .line 163
    const-string v1, "GalleryJobService"

    const-string v2, "Exec job %d"

    iget-object v3, p0, Lcom/miui/gallery/discovery/GalleryJobService$JobTask;->mJobParams:Landroid/app/job/JobParameters;

    invoke-virtual {v3}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    const-string v1, "JobServiceStarted"

    .line 166
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 167
    invoke-static {}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->generatorCommonParams()Ljava/util/Map;

    move-result-object v3

    .line 164
    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 168
    iget-object v1, p0, Lcom/miui/gallery/discovery/GalleryJobService$JobTask;->mJob:Lcom/miui/gallery/discovery/AbstractJob;

    invoke-virtual {v1}, Lcom/miui/gallery/discovery/AbstractJob;->execJob()Ljava/lang/Object;

    move-result-object v1

    .line 170
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResult(Lmiui/util/async/TaskManager;Ljava/lang/Object;)V
    .locals 6
    .param p1, "tm"    # Lmiui/util/async/TaskManager;
    .param p2, "result"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 175
    invoke-static {}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->generatorCommonParams()Ljava/util/Map;

    move-result-object v1

    .line 176
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_3

    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "result":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    .line 177
    iget-object v2, p0, Lcom/miui/gallery/discovery/GalleryJobService$JobTask;->mJob:Lcom/miui/gallery/discovery/AbstractJob;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/discovery/GalleryJobService$JobTask;->mJob:Lcom/miui/gallery/discovery/AbstractJob;

    invoke-virtual {v2}, Lcom/miui/gallery/discovery/AbstractJob;->needsReschedule()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 178
    .local v0, "needsReschedule":Z
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/discovery/GalleryJobService$JobTask;->this$0:Lcom/miui/gallery/discovery/GalleryJobService;

    iget-object v3, p0, Lcom/miui/gallery/discovery/GalleryJobService$JobTask;->mJobParams:Landroid/app/job/JobParameters;

    invoke-virtual {v2, v3, v0}, Lcom/miui/gallery/discovery/GalleryJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 179
    const-string v2, "GalleryJobService"

    const-string v3, "Job %d failed, rescheduled: %b."

    iget-object v4, p0, Lcom/miui/gallery/discovery/GalleryJobService$JobTask;->mJobParams:Landroid/app/job/JobParameters;

    invoke-virtual {v4}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 180
    const-string v3, "JobServiceFailed"

    iget-object v2, p0, Lcom/miui/gallery/discovery/GalleryJobService$JobTask;->mJob:Lcom/miui/gallery/discovery/AbstractJob;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/gallery/discovery/GalleryJobService$JobTask;->mJob:Lcom/miui/gallery/discovery/AbstractJob;

    .line 182
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 180
    :goto_0
    invoke-static {v3, v2, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 185
    if-eqz v0, :cond_1

    .line 186
    const-string v2, "JobServiceRescheduled"

    iget-object v3, p0, Lcom/miui/gallery/discovery/GalleryJobService$JobTask;->mJob:Lcom/miui/gallery/discovery/AbstractJob;

    .line 188
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 186
    invoke-static {v2, v3, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 201
    .end local v0    # "needsReschedule":Z
    :cond_1
    :goto_1
    return-void

    .line 182
    .restart local v0    # "needsReschedule":Z
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jobId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/miui/gallery/discovery/GalleryJobService$JobTask;->mJobParams:Landroid/app/job/JobParameters;

    invoke-virtual {v4}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 194
    .end local v0    # "needsReschedule":Z
    :cond_3
    iget-object v2, p0, Lcom/miui/gallery/discovery/GalleryJobService$JobTask;->this$0:Lcom/miui/gallery/discovery/GalleryJobService;

    iget-object v3, p0, Lcom/miui/gallery/discovery/GalleryJobService$JobTask;->mJobParams:Landroid/app/job/JobParameters;

    invoke-virtual {v2, v3, v0}, Lcom/miui/gallery/discovery/GalleryJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 195
    const-string v2, "GalleryJobService"

    const-string v3, "Job %d done"

    iget-object v4, p0, Lcom/miui/gallery/discovery/GalleryJobService$JobTask;->mJobParams:Landroid/app/job/JobParameters;

    invoke-virtual {v4}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    const-string v3, "JobServiceDone"

    iget-object v2, p0, Lcom/miui/gallery/discovery/GalleryJobService$JobTask;->mJob:Lcom/miui/gallery/discovery/AbstractJob;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/miui/gallery/discovery/GalleryJobService$JobTask;->mJob:Lcom/miui/gallery/discovery/AbstractJob;

    .line 198
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 196
    :goto_2
    invoke-static {v3, v2, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 198
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jobId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/miui/gallery/discovery/GalleryJobService$JobTask;->mJobParams:Landroid/app/job/JobParameters;

    invoke-virtual {v4}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method
