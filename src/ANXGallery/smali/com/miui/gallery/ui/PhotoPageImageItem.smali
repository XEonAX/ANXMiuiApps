.class public Lcom/miui/gallery/ui/PhotoPageImageItem;
.super Lcom/miui/gallery/ui/PhotoPageItem;
.source "PhotoPageImageItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;,
        Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;,
        Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;,
        Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;,
        Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;,
        Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;,
        Lcom/miui/gallery/ui/PhotoPageImageItem$ImageDownloadManager;
    }
.end annotation


# static fields
.field private static final DEBUG_ENABLE:Z

.field private static sBitmapRecycleCallback:Lcom/miui/gallery/util/photoview/BitmapRecycleCallback;


# instance fields
.field private mAutoRenderer:Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;

.field private mEchoManager:Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;

.field private mHigherDefinitionManager:Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;

.field private mImageProcessingManager:Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;

.field private mIsImageFirstDisplay:Z

.field private volatile mIsSupportRegion:Z

.field private mMaxScale:F

.field private mMotionPhotoManager:Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;

.field private mRegionManager:Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 108
    const-string v0, "PhotoPageImageItem"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/miui/gallery/ui/PhotoPageImageItem;->DEBUG_ENABLE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x1

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mIsImageFirstDisplay:Z

    .line 105
    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mIsSupportRegion:Z

    .line 106
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mMaxScale:F

    .line 112
    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/ui/PhotoPageImageItem;)Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mEchoManager:Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/miui/gallery/ui/PhotoPageImageItem;)Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mHigherDefinitionManager:Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/gallery/ui/PhotoPageImageItem;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mIsSupportRegion:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/miui/gallery/ui/PhotoPageImageItem;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mIsSupportRegion:Z

    return p1
.end method

.method static synthetic access$1500()Lcom/miui/gallery/util/photoview/BitmapRecycleCallback;
    .locals 1

    .prologue
    .line 92
    invoke-static {}, Lcom/miui/gallery/ui/PhotoPageImageItem;->getBitmapRecycleCallback()Lcom/miui/gallery/util/photoview/BitmapRecycleCallback;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/miui/gallery/ui/PhotoPageImageItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem;->releaseRenderer()V

    return-void
.end method

.method static synthetic access$1900(Lcom/miui/gallery/ui/PhotoPageImageItem;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem;->isRenderable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000()Z
    .locals 1

    .prologue
    .line 92
    sget-boolean v0, Lcom/miui/gallery/ui/PhotoPageImageItem;->DEBUG_ENABLE:Z

    return v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/ui/PhotoPageImageItem;)Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mAutoRenderer:Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;

    return-object v0
.end method

.method static synthetic access$802(Lcom/miui/gallery/ui/PhotoPageImageItem;Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;)Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem;
    .param p1, "x1"    # Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mAutoRenderer:Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;

    return-object p1
.end method

.method static synthetic access$900(Lcom/miui/gallery/ui/PhotoPageImageItem;)Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mRegionManager:Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;

    return-object v0
.end method

.method private static getBitmapRecycleCallback()Lcom/miui/gallery/util/photoview/BitmapRecycleCallback;
    .locals 1

    .prologue
    .line 250
    sget-object v0, Lcom/miui/gallery/ui/PhotoPageImageItem;->sBitmapRecycleCallback:Lcom/miui/gallery/util/photoview/BitmapRecycleCallback;

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageImageItem$1;

    invoke-direct {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/ui/PhotoPageImageItem;->sBitmapRecycleCallback:Lcom/miui/gallery/util/photoview/BitmapRecycleCallback;

    .line 258
    :cond_0
    sget-object v0, Lcom/miui/gallery/ui/PhotoPageImageItem;->sBitmapRecycleCallback:Lcom/miui/gallery/util/photoview/BitmapRecycleCallback;

    return-object v0
.end method

.method private isRenderable()Z
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mAutoRenderer:Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private releaseRenderer()V
    .locals 3

    .prologue
    .line 627
    const-string v1, "PhotoPageImageItem"

    const-string v2, "releasing renderer"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mAutoRenderer:Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;

    if-eqz v1, :cond_0

    .line 629
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mAutoRenderer:Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;

    .line 630
    .local v0, "api":Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mAutoRenderer:Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;

    .line 631
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;->release()V

    .line 633
    .end local v0    # "api":Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;
    :cond_0
    return-void
.end method

.method private statMaxScale()V
    .locals 5

    .prologue
    .line 185
    const-string v2, "photo"

    const-string v3, "photo_item_select_count"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mMaxScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 187
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 188
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "maxScale"

    iget v3, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mMaxScale:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v2}, Lcom/miui/gallery/model/BaseDataItem;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v2}, Luk/co/senab/photoview/PhotoView;->getBaseDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 191
    .local v0, "baseRect":Landroid/graphics/RectF;
    if-eqz v0, :cond_0

    .line 192
    const-string v2, "maxScaleToOrigin"

    iget v3, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mMaxScale:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v4}, Lcom/miui/gallery/model/BaseDataItem;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .end local v0    # "baseRect":Landroid/graphics/RectF;
    :cond_0
    const-string v2, "photo"

    const-string v3, "photo_max_scale"

    invoke-static {v2, v3, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 197
    .end local v1    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method public animExit(Lcom/miui/gallery/util/photoview/ItemViewInfo;Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;)V
    .locals 1
    .param p1, "exitInfo"    # Lcom/miui/gallery/util/photoview/ItemViewInfo;
    .param p2, "listener"    # Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mMotionPhotoManager:Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->onUnSelected()V

    .line 1280
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageItem;->animExit(Lcom/miui/gallery/util/photoview/ItemViewInfo;Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;)V

    .line 1281
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mImageProcessingManager:Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->onUnSelected()V

    .line 1282
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem;->statMaxScale()V

    .line 1283
    return-void
.end method

.method protected createCheckManager()Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;
    .locals 1

    .prologue
    .line 136
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;-><init>(Lcom/miui/gallery/ui/PhotoPageImageItem;)V

    return-object v0
.end method

.method protected createDownloadManager()Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;
    .locals 2

    .prologue
    .line 276
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageDownloadManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageDownloadManager;-><init>(Lcom/miui/gallery/ui/PhotoPageImageItem;Lcom/miui/gallery/ui/PhotoPageImageItem$1;)V

    return-object v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1292
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mMotionPhotoManager:Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mMotionPhotoManager:Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V
    .locals 9
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p3, "imageSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p4, "loadingListener"    # Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;
    .param p5, "progressListener"    # Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;

    .prologue
    const/4 v8, 0x0

    .line 236
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v0, v8}, Luk/co/senab/photoview/PhotoView;->setRegionDecodeEnable(Z)V

    .line 237
    iget-object v7, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mCheckManager:Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;

    check-cast v7, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;

    .line 238
    .local v7, "manager":Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;
    if-eqz v7, :cond_0

    invoke-static {v7}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->access$400(Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 239
    :cond_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    new-instance v2, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-direct {v2, v1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    .line 243
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem;->isPagerSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mIsImageFirstDisplay:Z

    if-nez v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mRegionManager:Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->resetRegionDecoderIfNeeded()V

    .line 246
    :cond_1
    iput-boolean v8, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mIsImageFirstDisplay:Z

    .line 247
    return-void

    .line 241
    :cond_2
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    new-instance v2, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-direct {v2, v1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    iget-object v5, v7, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->mPostLoadListener:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    goto :goto_0
.end method

.method protected doOnMatrixChanged(Landroid/graphics/RectF;)V
    .locals 4
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 1264
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem;->doOnMatrixChanged(Landroid/graphics/RectF;)V

    .line 1265
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mImageProcessingManager:Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->onMatrixChanged(Landroid/graphics/RectF;)V

    .line 1266
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mMotionPhotoManager:Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->onMatrixChanged()V

    .line 1268
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v2}, Luk/co/senab/photoview/PhotoView;->getBaseDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 1269
    .local v0, "baseRect":Landroid/graphics/RectF;
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 1270
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float v1, v2, v3

    .line 1271
    .local v1, "scale":F
    iget v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mMaxScale:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 1272
    iput v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mMaxScale:F

    .line 1275
    .end local v1    # "scale":F
    :cond_0
    return-void
.end method

.method protected doOnSelected(ZZZ)V
    .locals 1
    .param p1, "resumed"    # Z
    .param p2, "enter"    # Z
    .param p3, "init"    # Z

    .prologue
    .line 150
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/ui/PhotoPageItem;->doOnSelected(ZZZ)V

    .line 151
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mRegionManager:Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->onSelected()V

    .line 152
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mEchoManager:Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;->onSelected()V

    .line 153
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mHigherDefinitionManager:Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->onSelected()V

    .line 154
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mImageProcessingManager:Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->onSelected()V

    .line 155
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mMotionPhotoManager:Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->onSelected(ZZZ)V

    .line 156
    return-void
.end method

.method protected doOnUnSelected(Z)V
    .locals 1
    .param p1, "paused"    # Z

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem;->doOnUnSelected(Z)V

    .line 161
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mRegionManager:Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->onUnSelected()V

    .line 162
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mEchoManager:Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;->onUnSelected()V

    .line 163
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mHigherDefinitionManager:Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->onUnSelected()V

    .line 164
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mImageProcessingManager:Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->onUnSelected()V

    .line 165
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mMotionPhotoManager:Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->onUnSelected()V

    .line 166
    if-nez p1, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem;->statMaxScale()V

    .line 168
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mMaxScale:F

    .line 170
    :cond_0
    return-void
.end method

.method protected getCacheDisplayImageOptions(Lcom/miui/gallery/model/ImageLoadParams;Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 3
    .param p1, "item"    # Lcom/miui/gallery/model/ImageLoadParams;
    .param p2, "builder"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .prologue
    .line 211
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageItem;->getCacheDisplayImageOptions(Lcom/miui/gallery/model/ImageLoadParams;Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 212
    .local v0, "options":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    invoke-static {}, Lcom/miui/gallery/util/ProcessingMediaHelper;->getInstance()Lcom/miui/gallery/util/ProcessingMediaHelper;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/gallery/model/ImageLoadParams;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/util/ProcessingMediaHelper;->isMediaInProcessing(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    invoke-static {v0}, Lcom/miui/gallery/Config$ThumbConfig;->appendBlurOptions(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 215
    :cond_0
    return-object v0
.end method

.method protected getDisplayImageOptions(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 3
    .param p1, "loadThumbnail"    # Z

    .prologue
    .line 220
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem;->getDisplayImageOptions(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 221
    .local v0, "options":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    iget-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mIsSupportRegion:Z

    if-nez v1, :cond_0

    .line 222
    new-instance v1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 223
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheBigPhoto(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->NONE_SAFE:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 224
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    .line 225
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 227
    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem;->isMediaInProcessing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 228
    invoke-static {v0}, Lcom/miui/gallery/Config$BigPhotoConfig;->appendBlurOptions(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 230
    :cond_1
    return-object v0
.end method

.method public getProcessingMedia()Lcom/miui/gallery/provider/ProcessingMedia;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mImageProcessingManager:Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mImageProcessingManager:Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->getProcessingMedia()Lcom/miui/gallery/provider/ProcessingMedia;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isMediaInProcessing()Z
    .locals 1

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mImageProcessingManager:Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mImageProcessingManager:Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->access$3300(Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActionBarOperationClick()V
    .locals 1

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mMotionPhotoManager:Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->onActionBarOperationClick()V

    .line 1297
    return-void
.end method

.method public onActionBarVisibleChanged(Ljava/lang/Boolean;I)V
    .locals 4
    .param p1, "visible"    # Ljava/lang/Boolean;
    .param p2, "actionBarHeight"    # I

    .prologue
    .line 1232
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageItem;->onActionBarVisibleChanged(Ljava/lang/Boolean;I)V

    .line 1233
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mHigherDefinitionManager:Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->onActionBarVisibleChanged(Ljava/lang/Boolean;I)V

    .line 1234
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mImageProcessingManager:Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v2}, Luk/co/senab/photoview/PhotoView;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->adjustLocation(ZLandroid/graphics/RectF;Z)V

    .line 1235
    return-void
.end method

.method public onActivityTransition()V
    .locals 1

    .prologue
    .line 1251
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->onActivityTransition()V

    .line 1252
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mMotionPhotoManager:Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->onActivityTransition()V

    .line 1253
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1257
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1258
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mImageProcessingManager:Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem;->isActionBarVisible()Z

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v2}, Luk/co/senab/photoview/PhotoView;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->adjustLocation(ZLandroid/graphics/RectF;Z)V

    .line 1259
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mMotionPhotoManager:Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->onConfigurationChanged()V

    .line 1260
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mRegionManager:Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->access$500(Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;)V

    .line 142
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mEchoManager:Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;->release()V

    .line 143
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mHigherDefinitionManager:Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;->release()V

    .line 144
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mMotionPhotoManager:Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->release()V

    .line 145
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->onDetachedFromWindow()V

    .line 146
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->onFinishInflate()V

    .line 118
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;-><init>(Lcom/miui/gallery/ui/PhotoPageImageItem;Lcom/miui/gallery/ui/PhotoPageImageItem$1;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mRegionManager:Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;

    .line 119
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;-><init>(Lcom/miui/gallery/ui/PhotoPageImageItem;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mEchoManager:Lcom/miui/gallery/ui/PhotoPageImageItem$ExtraPhotoEchoManager;

    .line 120
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;-><init>(Lcom/miui/gallery/ui/PhotoPageImageItem;Lcom/miui/gallery/ui/PhotoPageImageItem$1;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mHigherDefinitionManager:Lcom/miui/gallery/ui/PhotoPageImageItem$HigherDefinitionManager;

    .line 121
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;-><init>(Lcom/miui/gallery/ui/PhotoPageImageItem;Lcom/miui/gallery/ui/PhotoPageImageItem$1;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mImageProcessingManager:Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;

    .line 122
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;-><init>(Lcom/miui/gallery/ui/PhotoPageImageItem;Lcom/miui/gallery/ui/PhotoPageImageItem$1;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mMotionPhotoManager:Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;

    .line 123
    return-void
.end method

.method protected onImageLoadFinish(Lcom/miui/gallery/error/core/ErrorCode;)V
    .locals 3
    .param p1, "code"    # Lcom/miui/gallery/error/core/ErrorCode;

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem;->onImageLoadFinish(Lcom/miui/gallery/error/core/ErrorCode;)V

    .line 129
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mCheckManager:Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;

    check-cast v0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;

    .line 130
    .local v0, "checkManager":Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem;->isMediaInProcessing()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    .line 131
    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;->access$400(Lcom/miui/gallery/ui/PhotoPageImageItem$ImageCheckManager;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 130
    :goto_0
    invoke-virtual {v2, v1}, Luk/co/senab/photoview/PhotoView;->setRegionDecodeEnable(Z)V

    .line 132
    return-void

    .line 131
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onPageScrollDragging()V
    .locals 1

    .prologue
    .line 174
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->onPageScrollDragging()V

    .line 175
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mMotionPhotoManager:Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->onPageScrollDragging()V

    .line 176
    return-void
.end method

.method protected onPageScrollIdle()V
    .locals 1

    .prologue
    .line 180
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->onPageScrollIdle()V

    .line 181
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mMotionPhotoManager:Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->onPageScrollIdle()V

    .line 182
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 1245
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->onPause()V

    .line 1246
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mMotionPhotoManager:Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->onPause()V

    .line 1247
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 1239
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->onResume()V

    .line 1240
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mMotionPhotoManager:Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->onResume()V

    .line 1241
    return-void
.end method

.method public setProcessingMedia(Lcom/miui/gallery/provider/ProcessingMedia;)V
    .locals 1
    .param p1, "processingMedia"    # Lcom/miui/gallery/provider/ProcessingMedia;

    .prologue
    .line 263
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem;->setProcessingMedia(Lcom/miui/gallery/provider/ProcessingMedia;)V

    .line 264
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mImageProcessingManager:Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mImageProcessingManager:Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->setProcessingMedia(Lcom/miui/gallery/provider/ProcessingMedia;)V

    .line 267
    :cond_0
    return-void
.end method

.method public swapItem(Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 2
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    const/4 v1, 0x1

    .line 201
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {p1, v0}, Lcom/miui/gallery/model/BaseDataItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 203
    :cond_0
    iput-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mIsImageFirstDisplay:Z

    .line 204
    iput-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mIsSupportRegion:Z

    .line 206
    :cond_1
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem;->swapItem(Lcom/miui/gallery/model/BaseDataItem;)V

    .line 207
    return-void
.end method
