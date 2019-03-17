.class public Lcom/miui/gallery/ui/AlbumPageListNormalItem;
.super Lcom/miui/gallery/ui/AlbumPageListItemBase;
.source "AlbumPageListNormalItem.java"


# instance fields
.field private mAlbumCover:Landroid/widget/ImageView;

.field private mAlbumCoverContainer:Landroid/view/View;

.field protected mAlbumIndicatorContainer:Landroid/view/View;

.field protected mAlbumTypeIndicator:Landroid/view/View;

.field private mAutoUploadedInfo:Landroid/view/View;

.field private mHiddenMask:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/AlbumPageListItemBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method


# virtual methods
.method public adjustAlbumCoverContainerPadding(ZZ)V
    .locals 7
    .param p1, "isSectionStartItem"    # Z
    .param p2, "isSectionEndItem"    # Z

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 41
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0b0089

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 42
    .local v0, "basePadding":I
    iget-object v4, p0, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->mAlbumCoverContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->mAlbumCoverContainer:Landroid/view/View;

    .line 43
    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v5

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    mul-int/2addr v1, v0

    iget-object v6, p0, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->mAlbumCoverContainer:Landroid/view/View;

    .line 45
    invoke-virtual {v6}, Landroid/view/View;->getPaddingEnd()I

    move-result v6

    if-eqz p2, :cond_1

    :goto_1
    mul-int/2addr v2, v0

    .line 42
    invoke-virtual {v4, v5, v1, v6, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 48
    return-void

    :cond_0
    move v1, v3

    .line 43
    goto :goto_0

    :cond_1
    move v2, v3

    .line 45
    goto :goto_1
.end method

.method public bindForceTopIcon(Z)V
    .locals 4
    .param p1, "forceTopItem"    # Z

    .prologue
    const/4 v3, 0x0

    .line 75
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/AlbumPageListItemBase;->bindForceTopIcon(Z)V

    .line 76
    if-eqz p1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->mAutoUploadedInfo:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->mForceTop:Landroid/widget/TextView;

    .line 79
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 78
    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 83
    :cond_0
    return-void
.end method

.method public bindHiddenMask(Z)V
    .locals 2
    .param p1, "isHidden"    # Z

    .prologue
    .line 70
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->mHiddenMask:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 71
    return-void

    .line 70
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
    .locals 6
    .param p1, "localPath"    # Ljava/lang/String;
    .param p2, "downloadUri"    # Landroid/net/Uri;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 51
    sget-object v2, Lcom/miui/gallery/sdk/download/DownloadType;->MICRO:Lcom/miui/gallery/sdk/download/DownloadType;

    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->mAlbumCover:Landroid/widget/ImageView;

    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v0

    iget-object v5, v0, Lcom/miui/gallery/Config$ThumbConfig;->sMicroTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-object v0, p1

    move-object v1, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/util/BindImageHelper;->bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)V

    .line 52
    return-void
.end method

.method public bindIndicator(ZZZZZ)V
    .locals 4
    .param p1, "isRecent"    # Z
    .param p2, "isVideo"    # Z
    .param p3, "isFavorites"    # Z
    .param p4, "enableAutoUpload"    # Z
    .param p5, "isInPickMode"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 55
    if-eqz p1, :cond_3

    .line 56
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->mAlbumTypeIndicator:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    const v3, 0x7f0202e4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 62
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->mAlbumTypeIndicator:Landroid/view/View;

    if-nez p2, :cond_1

    if-nez p1, :cond_1

    if-eqz p3, :cond_5

    :cond_1
    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 64
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->mAlbumIndicatorContainer:Landroid/view/View;

    if-nez p2, :cond_2

    if-nez p1, :cond_2

    if-eqz p3, :cond_6

    :cond_2
    move v0, v2

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->mAutoUploadedInfo:Landroid/view/View;

    if-nez p5, :cond_7

    if-nez p4, :cond_7

    .line 66
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/util/SyncUtil;->existXiaomiAccount(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 65
    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 67
    return-void

    .line 57
    :cond_3
    if-eqz p2, :cond_4

    .line 58
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->mAlbumTypeIndicator:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    const v3, 0x7f0202e8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 59
    :cond_4
    if-eqz p3, :cond_0

    .line 60
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->mAlbumTypeIndicator:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    const v3, 0x7f0202e1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 62
    goto :goto_1

    :cond_6
    move v0, v1

    .line 64
    goto :goto_2

    :cond_7
    move v2, v1

    .line 66
    goto :goto_3
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Lcom/miui/gallery/ui/AlbumPageListItemBase;->onFinishInflate()V

    .line 32
    const v0, 0x7f1200a8

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->mAlbumCover:Landroid/widget/ImageView;

    .line 33
    const v0, 0x7f1200b3

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->mAlbumIndicatorContainer:Landroid/view/View;

    .line 34
    const v0, 0x7f1200b4

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->mAlbumTypeIndicator:Landroid/view/View;

    .line 35
    const v0, 0x7f1200b6

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->mHiddenMask:Landroid/view/View;

    .line 36
    const v0, 0x7f1200b5

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->mAutoUploadedInfo:Landroid/view/View;

    .line 37
    const v0, 0x7f1200b2

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumPageListNormalItem;->mAlbumCoverContainer:Landroid/view/View;

    .line 38
    return-void
.end method
