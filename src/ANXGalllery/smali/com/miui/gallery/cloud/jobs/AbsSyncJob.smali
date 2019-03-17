.class public abstract Lcom/miui/gallery/cloud/jobs/AbsSyncJob;
.super Ljava/lang/Object;
.source "AbsSyncJob.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mJobId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    .local p0, "this":Lcom/miui/gallery/cloud/jobs/AbsSyncJob;, "Lcom/miui/gallery/cloud/jobs/AbsSyncJob<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isJobExtrasEquals(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)Z
    .locals 2
    .param p0, "first"    # Landroid/os/PersistableBundle;
    .param p1, "second"    # Landroid/os/PersistableBundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    :cond_0
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/PersistableBundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Landroid/app/job/JobInfo;Landroid/app/job/JobInfo;)Z
    .locals 4
    .param p1, "self"    # Landroid/app/job/JobInfo;
    .param p2, "other"    # Landroid/app/job/JobInfo;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/miui/gallery/cloud/jobs/AbsSyncJob;, "Lcom/miui/gallery/cloud/jobs/AbsSyncJob<TT;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 28
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    invoke-virtual {p2}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 29
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v0

    invoke-virtual {p2}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 30
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 31
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 32
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v0

    invoke-virtual {p2}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 33
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getNetworkType()I

    move-result v0

    invoke-virtual {p2}, Landroid/app/job/JobInfo;->getNetworkType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 34
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result v0

    invoke-virtual {p2}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 35
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    move-result v0

    invoke-virtual {p2}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 39
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    invoke-virtual {p2}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/cloud/jobs/AbsSyncJob;->isJobExtrasEquals(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract execute()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getJobId()I
    .locals 1

    .prologue
    .line 14
    .local p0, "this":Lcom/miui/gallery/cloud/jobs/AbsSyncJob;, "Lcom/miui/gallery/cloud/jobs/AbsSyncJob<TT;>;"
    iget v0, p0, Lcom/miui/gallery/cloud/jobs/AbsSyncJob;->mJobId:I

    return v0
.end method

.method public abstract getJobInfo(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/app/job/JobInfo;
.end method

.method setJobId(I)V
    .locals 0
    .param p1, "jobId"    # I

    .prologue
    .line 18
    .local p0, "this":Lcom/miui/gallery/cloud/jobs/AbsSyncJob;, "Lcom/miui/gallery/cloud/jobs/AbsSyncJob<TT;>;"
    iput p1, p0, Lcom/miui/gallery/cloud/jobs/AbsSyncJob;->mJobId:I

    .line 19
    return-void
.end method
