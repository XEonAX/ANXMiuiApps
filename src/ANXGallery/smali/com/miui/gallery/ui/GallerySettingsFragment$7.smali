.class Lcom/miui/gallery/ui/GallerySettingsFragment$7;
.super Ljava/lang/Object;
.source "GallerySettingsFragment.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/GallerySettingsFragment;->switchAutoDownload(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/threadpool/ThreadPool$Job",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/GallerySettingsFragment;

.field final synthetic val$isAutoDownload:Z


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/GallerySettingsFragment;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/GallerySettingsFragment;

    .prologue
    .line 552
    iput-object p1, p0, Lcom/miui/gallery/ui/GallerySettingsFragment$7;->this$0:Lcom/miui/gallery/ui/GallerySettingsFragment;

    iput-boolean p2, p0, Lcom/miui/gallery/ui/GallerySettingsFragment$7;->val$isAutoDownload:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkValidTask(Z)Z
    .locals 1
    .param p1, "isAutoDownload"    # Z

    .prologue
    .line 555
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->isAutoDownload()Z

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 6
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    const/4 v1, 0x0

    .line 560
    iget-boolean v2, p0, Lcom/miui/gallery/ui/GallerySettingsFragment$7;->val$isAutoDownload:Z

    invoke-direct {p0, v2}, Lcom/miui/gallery/ui/GallerySettingsFragment$7;->checkValidTask(Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 561
    const-string v2, "GallerySettingsFragment"

    const-string v3, "invalid switch download task, old %s, new %s"

    iget-boolean v4, p0, Lcom/miui/gallery/ui/GallerySettingsFragment$7;->val$isAutoDownload:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->isAutoDownload()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 575
    :cond_0
    :goto_0
    return-object v1

    .line 564
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/ui/GallerySettingsFragment$7;->this$0:Lcom/miui/gallery/ui/GallerySettingsFragment;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/GallerySettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/gallery/ui/GallerySettingsFragment$7;->this$0:Lcom/miui/gallery/ui/GallerySettingsFragment;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/GallerySettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 565
    .local v0, "context":Landroid/content/Context;
    :goto_1
    if-eqz v0, :cond_0

    .line 566
    iget-boolean v2, p0, Lcom/miui/gallery/ui/GallerySettingsFragment$7;->val$isAutoDownload:Z

    if-eqz v2, :cond_3

    .line 567
    invoke-static {v0}, Lcom/miui/gallery/cloud/download/BatchDownloadUtil;->cleanDownloadedMark(Landroid/content/Context;)V

    .line 568
    iget-boolean v2, p0, Lcom/miui/gallery/ui/GallerySettingsFragment$7;->val$isAutoDownload:Z

    invoke-direct {p0, v2}, Lcom/miui/gallery/ui/GallerySettingsFragment$7;->checkValidTask(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->canAutoDownload()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 569
    invoke-static {}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->getInstance()Lcom/miui/gallery/cloud/download/BatchDownloadManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->startBatchDownload(Landroid/content/Context;Z)V

    goto :goto_0

    .end local v0    # "context":Landroid/content/Context;
    :cond_2
    move-object v0, v1

    .line 564
    goto :goto_1

    .line 572
    .restart local v0    # "context":Landroid/content/Context;
    :cond_3
    invoke-static {}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->getInstance()Lcom/miui/gallery/cloud/download/BatchDownloadManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->stopBatchDownload(Landroid/content/Context;)V

    goto :goto_0
.end method
