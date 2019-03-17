.class Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$SearchAlbumViewHolder;
.super Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$BaseViewHolder;
.source "AlbumPageHeaderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchAlbumViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 356
    invoke-direct {p0, p1}, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 357
    return-void
.end method

.method private bindServerCover(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cover"    # Ljava/lang/String;
    .param p3, "imageView"    # Landroid/widget/ImageView;
    .param p4, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 381
    invoke-static {}, Lcom/miui/gallery/search/core/display/icon/IconImageLoader;->getInstance()Lcom/miui/gallery/search/core/display/icon/IconImageLoader;

    move-result-object v0

    .line 382
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/sdk/download/DownloadType;->MICRO:Lcom/miui/gallery/sdk/download/DownloadType;

    .line 383
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v1

    iget-object v6, v1, Lcom/miui/gallery/Config$ThumbConfig;->sMicroTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    .line 381
    invoke-virtual/range {v0 .. v6}, Lcom/miui/gallery/search/core/display/icon/IconImageLoader;->displayImage(Landroid/content/Context;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)V

    .line 385
    return-void
.end method


# virtual methods
.method protected doBindCover(Landroid/content/Context;Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "album"    # Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;
    .param p3, "builder"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .prologue
    .line 361
    move-object v4, p2

    check-cast v4, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$SearchAlbum;

    iget-object v1, v4, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$SearchAlbum;->mCoverUris:Ljava/util/ArrayList;

    .line 362
    .local v1, "coverUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 363
    iget-object v4, p0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$SearchAlbumViewHolder;->mDefaultAlbumCover:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 364
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$SearchAlbumViewHolder;->setCoversVisibility(I)V

    .line 365
    const/4 v2, 0x0

    .line 366
    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    const/4 v4, 0x3

    if-ge v2, v4, :cond_0

    .line 367
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 368
    .local v0, "coverUri":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$SearchAlbumViewHolder;->getAlbumCoverByIdx(I)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v5

    invoke-direct {p0, p1, v0, v4, v5}, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$SearchAlbumViewHolder;->bindServerCover(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 366
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 370
    .end local v0    # "coverUri":Ljava/lang/String;
    :cond_0
    sget-object v4, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$SearchAlbumViewHolder;->sAlbumCovers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 371
    move v3, v2

    .local v3, "j":I
    :goto_1
    sget-object v4, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$SearchAlbumViewHolder;->sAlbumCovers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 372
    invoke-virtual {p0, v3}, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$SearchAlbumViewHolder;->getAlbumCoverByIdx(I)Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x7f0201aa

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 371
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 376
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_1
    iget v4, p2, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;->mDefaultCoverRes:I

    invoke-virtual {p0, v4}, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$SearchAlbumViewHolder;->bindDefaultCover(I)V

    .line 378
    :cond_2
    return-void
.end method
