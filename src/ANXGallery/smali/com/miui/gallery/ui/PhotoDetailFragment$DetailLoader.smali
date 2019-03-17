.class Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoader;
.super Landroid/content/AsyncTaskLoader;
.source "PhotoDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DetailLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/miui/gallery/model/PhotoDetailInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mDataItem:Lcom/miui/gallery/model/BaseDataItem;

.field private mDetailInfo:Lcom/miui/gallery/model/PhotoDetailInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 594
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 595
    iput-object p2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoader;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    .line 596
    return-void
.end method


# virtual methods
.method public loadInBackground()Lcom/miui/gallery/model/PhotoDetailInfo;
    .locals 6

    .prologue
    .line 600
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoader;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    if-eqz v3, :cond_0

    .line 601
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoader;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoader;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/gallery/model/BaseDataItem;->getDetailInfo(Landroid/content/Context;)Lcom/miui/gallery/model/PhotoDetailInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoader;->mDetailInfo:Lcom/miui/gallery/model/PhotoDetailInfo;

    .line 602
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoader;->mDetailInfo:Lcom/miui/gallery/model/PhotoDetailInfo;

    const/16 v4, 0xc8

    invoke-virtual {v3, v4}, Lcom/miui/gallery/model/PhotoDetailInfo;->getDetail(I)Ljava/lang/Object;

    move-result-object v1

    .line 603
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 604
    check-cast v2, Ljava/lang/String;

    .line 605
    .local v2, "path":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoader;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/miui/gallery/util/StorageUtils;->getPathForDisplay(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, "displayPath":Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoader;->mDetailInfo:Lcom/miui/gallery/model/PhotoDetailInfo;

    const/16 v4, 0xc9

    invoke-virtual {v3, v4, v0}, Lcom/miui/gallery/model/PhotoDetailInfo;->addDetail(ILjava/lang/Object;)V

    .line 607
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoader;->mDetailInfo:Lcom/miui/gallery/model/PhotoDetailInfo;

    const/16 v4, 0x6d

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoader;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/miui/gallery/util/StorageUtils;->isInExternalStorage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/miui/gallery/model/PhotoDetailInfo;->addDetail(ILjava/lang/Object;)V

    .line 610
    .end local v0    # "displayPath":Ljava/lang/String;
    .end local v1    # "obj":Ljava/lang/Object;
    .end local v2    # "path":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoader;->mDetailInfo:Lcom/miui/gallery/model/PhotoDetailInfo;

    return-object v3
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 588
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoader;->loadInBackground()Lcom/miui/gallery/model/PhotoDetailInfo;

    move-result-object v0

    return-object v0
.end method

.method protected final onReset()V
    .locals 1

    .prologue
    .line 630
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 631
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoader;->onStopLoading()V

    .line 632
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoader;->mDetailInfo:Lcom/miui/gallery/model/PhotoDetailInfo;

    if-eqz v0, :cond_0

    .line 633
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoader;->mDetailInfo:Lcom/miui/gallery/model/PhotoDetailInfo;

    .line 635
    :cond_0
    return-void
.end method

.method protected final onStartLoading()V
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoader;->mDetailInfo:Lcom/miui/gallery/model/PhotoDetailInfo;

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoader;->mDetailInfo:Lcom/miui/gallery/model/PhotoDetailInfo;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoader;->deliverResult(Ljava/lang/Object;)V

    .line 618
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoader;->mDetailInfo:Lcom/miui/gallery/model/PhotoDetailInfo;

    if-nez v0, :cond_2

    .line 619
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoader;->forceLoad()V

    .line 621
    :cond_2
    return-void
.end method

.method protected final onStopLoading()V
    .locals 0

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoader;->cancelLoad()Z

    .line 626
    return-void
.end method
