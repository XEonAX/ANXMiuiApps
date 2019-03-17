.class public Lcom/miui/gallery/discovery/FileHandleServiceCheckJob;
.super Lcom/miui/gallery/discovery/AbstractJob;
.source "FileHandleServiceCheckJob.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/miui/gallery/discovery/AbstractJob;-><init>()V

    return-void
.end method


# virtual methods
.method public execJob()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/provider/cloudmanager/FileHandleService;->checkUnhandledMedias(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x0

    return-object v0
.end method

.method public getJobInfo(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/app/job/JobInfo;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 23
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    iget v2, p0, Lcom/miui/gallery/discovery/FileHandleServiceCheckJob;->mJobId:I

    invoke-direct {v1, v2, p2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v2, 0x1

    .line 24
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    const-wide/32 v2, 0x5265c00

    .line 25
    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 26
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 27
    .local v0, "jobInfo":Landroid/app/job/JobInfo;
    return-object v0
.end method
