.class public Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter$BaseResourceHolder;
.super Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$BaseHolder;
.source "BaseResourceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BaseResourceHolder"
.end annotation


# instance fields
.field public mDownloadView:Lcom/miui/gallery/movie/ui/view/DownloadView;

.field protected mImageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

.field protected mImageView:Landroid/widget/ImageView;

.field protected mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter;Landroid/view/View;)V
    .locals 2
    .param p1, "this$0"    # Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 45
    .local p0, "this":Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter$BaseResourceHolder;, "Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter<TT;>.BaseResourceHolder;"
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter$BaseResourceHolder;->this$0:Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter;

    .line 46
    invoke-direct {p0, p2}, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$BaseHolder;-><init>(Landroid/view/View;)V

    .line 47
    const v0, 0x7f1201e5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter$BaseResourceHolder;->mTitle:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f1201e1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter$BaseResourceHolder;->mImageView:Landroid/widget/ImageView;

    .line 49
    const v0, 0x7f1201e4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/movie/ui/view/DownloadView;

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter$BaseResourceHolder;->mDownloadView:Lcom/miui/gallery/movie/ui/view/DownloadView;

    .line 50
    new-instance v0, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    iget-object v1, p0, Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter$BaseResourceHolder;->mImageView:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter$BaseResourceHolder;->mImageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    .line 51
    return-void
.end method


# virtual methods
.method public bindView(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 55
    .local p0, "this":Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter$BaseResourceHolder;, "Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter<TT;>.BaseResourceHolder;"
    iget-object v4, p0, Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter$BaseResourceHolder;->this$0:Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter;

    invoke-virtual {v4, p1}, Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter;->getItemData(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/movie/entity/MovieResource;

    .line 56
    .local v1, "info":Lcom/miui/gallery/movie/entity/MovieResource;
    iget-boolean v4, v1, Lcom/miui/gallery/movie/entity/MovieResource;->isPackageAssets:Z

    if-eqz v4, :cond_1

    .line 57
    iget-object v4, p0, Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter$BaseResourceHolder;->mTitle:Landroid/widget/TextView;

    iget v5, v1, Lcom/miui/gallery/movie/entity/MovieResource;->stringId:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 58
    iget-object v4, p0, Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter$BaseResourceHolder;->mImageView:Landroid/widget/ImageView;

    iget v5, v1, Lcom/miui/gallery/movie/entity/MovieResource;->imageId:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 59
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter$BaseResourceHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->cancelDisplayTask(Landroid/widget/ImageView;)V

    .line 70
    :goto_0
    invoke-virtual {v1}, Lcom/miui/gallery/movie/entity/MovieResource;->getDownloadState()I

    move-result v3

    .line 71
    .local v3, "state":I
    iget-object v4, p0, Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter$BaseResourceHolder;->mDownloadView:Lcom/miui/gallery/movie/ui/view/DownloadView;

    invoke-virtual {v4, v3}, Lcom/miui/gallery/movie/ui/view/DownloadView;->setStateImage(I)V

    .line 72
    if-nez v3, :cond_0

    .line 73
    const/16 v4, 0x11

    iput v4, v1, Lcom/miui/gallery/movie/entity/MovieResource;->downloadState:I

    .line 75
    :cond_0
    return-void

    .line 61
    .end local v3    # "state":I
    :cond_1
    invoke-static {}, Lcom/miui/gallery/movie/utils/ImageLoaderUtils;->getNormalDisplayImageOptionsBuilder()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter$BaseResourceHolder;->this$0:Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter;

    invoke-static {v5}, Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter;->access$000(Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter;)[I

    move-result-object v5

    iget-object v6, p0, Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter$BaseResourceHolder;->this$0:Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter;

    invoke-static {v6}, Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter;->access$000(Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter;)[I

    move-result-object v6

    array-length v6, v6

    rem-int v6, p1, v6

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 62
    .local v0, "displayImageOptions":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v4

    iget-object v5, v1, Lcom/miui/gallery/movie/entity/MovieResource;->icon:Ljava/lang/String;

    iget-object v6, p0, Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter$BaseResourceHolder;->mImageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-virtual {v4, v5, v6, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 63
    invoke-virtual {v1}, Lcom/miui/gallery/movie/entity/MovieResource;->getNameId()I

    move-result v2

    .line 64
    .local v2, "nameId":I
    if-eqz v2, :cond_2

    .line 65
    iget-object v4, p0, Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter$BaseResourceHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 67
    :cond_2
    iget-object v4, p0, Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter$BaseResourceHolder;->mTitle:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/miui/gallery/movie/entity/MovieResource;->label:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public bindView(ILjava/lang/Object;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "payload"    # Ljava/lang/Object;

    .prologue
    .line 79
    .local p0, "this":Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter$BaseResourceHolder;, "Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter<TT;>.BaseResourceHolder;"
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$BaseHolder;->bindView(ILjava/lang/Object;)V

    .line 80
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter$BaseResourceHolder;->this$0:Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter;->getItemData(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/movie/entity/MovieResource;

    .line 81
    .local v0, "info":Lcom/miui/gallery/movie/entity/MovieResource;
    invoke-virtual {v0}, Lcom/miui/gallery/movie/entity/MovieResource;->getDownloadState()I

    move-result v1

    .line 82
    .local v1, "state":I
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter$BaseResourceHolder;->mDownloadView:Lcom/miui/gallery/movie/ui/view/DownloadView;

    invoke-virtual {v2, v1}, Lcom/miui/gallery/movie/ui/view/DownloadView;->setStateImage(I)V

    .line 85
    if-nez v1, :cond_0

    .line 86
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter$BaseResourceHolder;->mDownloadView:Lcom/miui/gallery/movie/ui/view/DownloadView;

    new-instance v3, Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter$BaseResourceHolder$1;

    invoke-direct {v3, p0, v0}, Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter$BaseResourceHolder$1;-><init>(Lcom/miui/gallery/movie/ui/adapter/BaseResourceAdapter$BaseResourceHolder;Lcom/miui/gallery/movie/entity/MovieResource;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lcom/miui/gallery/movie/ui/view/DownloadView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    :cond_0
    return-void
.end method
