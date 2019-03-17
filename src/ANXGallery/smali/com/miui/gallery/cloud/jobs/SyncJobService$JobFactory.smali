.class Lcom/miui/gallery/cloud/jobs/SyncJobService$JobFactory;
.super Ljava/lang/Object;
.source "SyncJobService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/jobs/SyncJobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JobFactory"
.end annotation


# direct methods
.method public static createJob(I)Lcom/miui/gallery/cloud/jobs/AbsSyncJob;
    .locals 3
    .param p0, "jobId"    # I

    .prologue
    .line 109
    const/4 v2, 0x0

    .line 110
    .local v2, "jobClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/miui/gallery/cloud/jobs/AbsSyncJob;>;"
    packed-switch p0, :pswitch_data_0

    .line 116
    :goto_0
    if-eqz v2, :cond_0

    .line 118
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/cloud/jobs/AbsSyncJob;

    .line 119
    .local v1, "job":Lcom/miui/gallery/cloud/jobs/AbsSyncJob;
    invoke-virtual {v1, p0}, Lcom/miui/gallery/cloud/jobs/AbsSyncJob;->setJobId(I)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 127
    .end local v1    # "job":Lcom/miui/gallery/cloud/jobs/AbsSyncJob;
    :goto_1
    return-object v1

    .line 112
    :pswitch_0
    const-class v2, Lcom/miui/gallery/cloud/jobs/BackDownloadJob;

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 127
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :cond_0
    :goto_2
    const/4 v1, 0x0

    goto :goto_1

    .line 123
    :catch_1
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    .line 110
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method
