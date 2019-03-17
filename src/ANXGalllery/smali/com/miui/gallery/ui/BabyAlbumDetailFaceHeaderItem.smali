.class public Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;
.super Landroid/widget/LinearLayout;
.source "BabyAlbumDetailFaceHeaderItem.java"


# static fields
.field private static sDisplayImageOptionBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

.field private static sDisplayImageOptionsLocalFace:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private static sDisplayImageOptionsNetFace:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;


# instance fields
.field private mAgeCurrent:Landroid/widget/TextView;

.field private mBackground:Landroid/widget/ImageView;

.field private mFace:Landroid/widget/ImageView;

.field private mImageAwareFace:Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method private intialBuilder()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 53
    sget-object v0, Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;->sDisplayImageOptionBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 55
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 56
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 57
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/util/face/PeopleItemBitmapDisplayer;

    invoke-direct {v1, v2}, Lcom/miui/gallery/util/face/PeopleItemBitmapDisplayer;-><init>(Z)V

    .line 58
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 59
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->usingRegionDecoderFace(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    const v1, 0x7f02003b

    .line 60
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;->sDisplayImageOptionBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method public bindHeadFacePic(Ljava/lang/String;Landroid/graphics/RectF;)V
    .locals 8
    .param p1, "facePath"    # Ljava/lang/String;
    .param p2, "faceRegion"    # Landroid/graphics/RectF;

    .prologue
    const/4 v4, 0x0

    .line 78
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    .line 79
    invoke-virtual {v1, p1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;->mImageAwareFace:Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    sget-object v3, Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;->sDisplayImageOptionsLocalFace:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-object v5, v4

    move-object v6, v4

    move-object v7, p2

    .line 78
    invoke-virtual/range {v0 .. v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Landroid/graphics/RectF;)V

    .line 81
    return-void
.end method

.method public bindHeadFacePicFromNet(Ljava/lang/String;Landroid/graphics/RectF;)V
    .locals 8
    .param p1, "faceUrl"    # Ljava/lang/String;
    .param p2, "faceRegion"    # Landroid/graphics/RectF;

    .prologue
    const/4 v4, 0x0

    .line 84
    sget-object v0, Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;->sDisplayImageOptionsNetFace:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    if-nez v0, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;->intialBuilder()V

    .line 86
    sget-object v0, Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;->sDisplayImageOptionBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 87
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;->sDisplayImageOptionsNetFace:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 89
    :cond_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;->mImageAwareFace:Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    sget-object v3, Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;->sDisplayImageOptionsNetFace:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-object v1, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Landroid/graphics/RectF;)V

    .line 91
    return-void
.end method

.method public bindHeaderBackgroundPic(Ljava/lang/String;Landroid/net/Uri;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
    .locals 6
    .param p1, "backgroundImagePath"    # Ljava/lang/String;
    .param p2, "downloadUri"    # Landroid/net/Uri;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 73
    sget-object v2, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL:Lcom/miui/gallery/sdk/download/DownloadType;

    iget-object v3, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;->mBackground:Landroid/widget/ImageView;

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/util/BindImageHelper;->bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)V

    .line 75
    return-void
.end method

.method public getHeadFacePic()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;->mImageAwareFace:Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 40
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 41
    const v0, 0x7f1200ca

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;->mBackground:Landroid/widget/ImageView;

    .line 42
    const v0, 0x7f1200cd

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;->mFace:Landroid/widget/ImageView;

    .line 43
    new-instance v0, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    iget-object v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;->mFace:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;->mImageAwareFace:Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    .line 44
    const v0, 0x7f1200cf

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;->mAgeCurrent:Landroid/widget/TextView;

    .line 45
    sget-object v0, Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;->sDisplayImageOptionsLocalFace:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    if-nez v0, :cond_0

    .line 46
    invoke-direct {p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;->intialBuilder()V

    .line 47
    sget-object v0, Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;->sDisplayImageOptionBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 48
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheThumbnail(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->loadFromMicroCache(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;->sDisplayImageOptionsLocalFace:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 50
    :cond_0
    return-void
.end method

.method public setAge(Ljava/lang/String;)V
    .locals 1
    .param p1, "age"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;->mAgeCurrent:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    return-void
.end method

.method public setOnBackgroundClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method

.method public setOnFaceClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;->mFace:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method
