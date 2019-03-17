.class Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$LocalAlbumViewHolder;
.super Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$BaseViewHolder;
.source "AlbumPageHeaderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalAlbumViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 390
    invoke-direct {p0, p1}, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 391
    return-void
.end method


# virtual methods
.method protected doBindCover(Landroid/content/Context;Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "album"    # Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;
    .param p3, "builder"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .prologue
    .line 395
    move-object v0, p2

    check-cast v0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$LocalAlbum;

    iget-object v7, v0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$LocalAlbum;->mAlbumCovers:Ljava/util/ArrayList;

    .line 396
    .local v7, "covers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/model/BaseAlbumCover;>;"
    invoke-static {v7}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$LocalAlbumViewHolder;->mDefaultAlbumCover:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 398
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$LocalAlbumViewHolder;->setCoversVisibility(I)V

    .line 399
    const/4 v8, 0x0

    .line 400
    .local v8, "i":I
    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_0

    const/4 v0, 0x3

    if-ge v8, v0, :cond_0

    .line 401
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/model/BaseAlbumCover;

    .line 402
    .local v6, "cover":Lcom/miui/gallery/model/BaseAlbumCover;
    iget-wide v0, v6, Lcom/miui/gallery/model/BaseAlbumCover;->coverSize:J

    invoke-static {p3, v0, v1}, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$LocalAlbumViewHolder;->buildDisplayImageOptions(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;J)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v4

    .line 403
    .local v4, "options":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    iget-object v0, v6, Lcom/miui/gallery/model/BaseAlbumCover;->coverPath:Ljava/lang/String;

    iget-wide v2, v6, Lcom/miui/gallery/model/BaseAlbumCover;->coverId:J

    iget v1, v6, Lcom/miui/gallery/model/BaseAlbumCover;->coverSyncState:I

    .line 404
    invoke-static {v2, v3, v1}, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$LocalAlbumViewHolder;->getDownloadUri(JI)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/sdk/download/DownloadType;->MICRO:Lcom/miui/gallery/sdk/download/DownloadType;

    .line 405
    invoke-virtual {p0, v8}, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$LocalAlbumViewHolder;->getAlbumCoverByIdx(I)Landroid/widget/ImageView;

    move-result-object v3

    .line 406
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v5

    iget-object v5, v5, Lcom/miui/gallery/Config$ThumbConfig;->sMicroTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 403
    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/util/BindImageHelper;->bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)V

    .line 400
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 409
    .end local v4    # "options":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .end local v6    # "cover":Lcom/miui/gallery/model/BaseAlbumCover;
    :cond_0
    sget-object v0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$LocalAlbumViewHolder;->sAlbumCovers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_2

    .line 410
    move v9, v8

    .local v9, "j":I
    :goto_1
    sget-object v0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$LocalAlbumViewHolder;->sAlbumCovers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_2

    .line 411
    invoke-virtual {p0, v9}, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$LocalAlbumViewHolder;->getAlbumCoverByIdx(I)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0201aa

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 410
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 415
    .end local v8    # "i":I
    .end local v9    # "j":I
    :cond_1
    iget v0, p2, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;->mDefaultCoverRes:I

    invoke-virtual {p0, v0}, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$LocalAlbumViewHolder;->bindDefaultCover(I)V

    .line 417
    :cond_2
    return-void
.end method
