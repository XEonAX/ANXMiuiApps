.class Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;
.super Ljava/lang/Object;
.source "PhotoPageImageItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageImageItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExtraPhotoEchoManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager$EchoTask;,
        Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager$EchoListener;
    }
.end annotation


# instance fields
.field private mEchoTask:Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager$EchoTask;

.field private mLoadingView:Landroid/view/View;

.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageImageItem;)V
    .locals 0

    .prologue
    .line 640
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 642
    return-void
.end method

.method static synthetic access$2000(Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;

    .prologue
    .line 635
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;->hideLoading()V

    return-void
.end method

.method static synthetic access$2100(Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;

    .prologue
    .line 635
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;->showLoading()V

    return-void
.end method

.method private hideLoading()V
    .locals 2

    .prologue
    .line 693
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;->mLoadingView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;->mLoadingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;->mLoadingView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 696
    :cond_0
    return-void
.end method

.method private isExtraImage()Z
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needEcho()Z
    .locals 2

    .prologue
    .line 657
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageImageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v1}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/StorageUtils;->getRelativePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/cloud/DownloadPathHelper;->isShareFolderRelativePath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showLoading()V
    .locals 2

    .prologue
    .line 686
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;->ensureInflated()V

    .line 687
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;->mLoadingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;->mLoadingView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 690
    :cond_0
    return-void
.end method

.method private tryEcho()V
    .locals 2

    .prologue
    .line 676
    invoke-static {}, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->getInstance()Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/extraphoto/sdk/ExtraPhotoWrapper;->isExtraCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;->isExtraImage()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;->needEcho()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 677
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;->mEchoTask:Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager$EchoTask;

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;->mEchoTask:Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager$EchoTask;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager$EchoTask;->cancel()V

    .line 680
    :cond_0
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager$EchoTask;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageImageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v1}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager$EchoTask;-><init>(Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;->mEchoTask:Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager$EchoTask;

    .line 681
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;->mEchoTask:Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager$EchoTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager$EchoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 683
    :cond_1
    return-void
.end method


# virtual methods
.method protected ensureInflated()V
    .locals 3

    .prologue
    .line 645
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;->mLoadingView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 646
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    const v2, 0x7f120240

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/PhotoPageImageItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 647
    .local v0, "stub":Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;->mLoadingView:Landroid/view/View;

    .line 649
    .end local v0    # "stub":Landroid/view/ViewStub;
    :cond_0
    return-void
.end method

.method public onSelected()V
    .locals 0

    .prologue
    .line 661
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;->tryEcho()V

    .line 662
    return-void
.end method

.method public onUnSelected()V
    .locals 0

    .prologue
    .line 665
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;->release()V

    .line 666
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;->mEchoTask:Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager$EchoTask;

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;->mEchoTask:Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager$EchoTask;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager$EchoTask;->cancel()V

    .line 672
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;->hideLoading()V

    .line 673
    return-void
.end method
