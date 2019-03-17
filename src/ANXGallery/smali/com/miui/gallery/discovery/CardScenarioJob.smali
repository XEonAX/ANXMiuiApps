.class public Lcom/miui/gallery/discovery/CardScenarioJob;
.super Lcom/miui/gallery/discovery/AbstractJob;
.source "CardScenarioJob.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/miui/gallery/discovery/AbstractJob;-><init>()V

    return-void
.end method


# virtual methods
.method public execJob()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-static {}, Lcom/miui/gallery/card/CardManager;->getInstance()Lcom/miui/gallery/card/CardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/card/CardManager;->triggerScenarios()V

    .line 13
    const/4 v0, 0x0

    return-object v0
.end method

.method public getJobInfo(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/app/job/JobInfo;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cn"    # Landroid/content/ComponentName;

    .prologue
    const/4 v3, 0x0

    .line 19
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    iget v2, p0, Lcom/miui/gallery/discovery/CardScenarioJob;->mJobId:I

    invoke-direct {v1, v2, p2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 20
    invoke-virtual {v1, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 21
    invoke-virtual {v1, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    const-wide/32 v2, 0x5265c00

    .line 22
    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 23
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 24
    .local v0, "jobInfo":Landroid/app/job/JobInfo;
    return-object v0
.end method
