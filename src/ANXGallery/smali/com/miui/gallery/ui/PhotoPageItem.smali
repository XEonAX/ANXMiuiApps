.class public abstract Lcom/miui/gallery/ui/PhotoPageItem;
.super Landroid/widget/RelativeLayout;
.source "PhotoPageItem.java"

# interfaces
.implements Lcom/miui/gallery/util/photoview/TrimMemoryCallback;
.implements Lcom/miui/gallery/widget/slip/ISlipAnimView;
.implements Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;,
        Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;,
        Lcom/miui/gallery/ui/PhotoPageItem$PhotoDisplayer;,
        Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;,
        Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;,
        Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;,
        Lcom/miui/gallery/ui/PhotoPageItem$AbsPhotoRectAwareManager;,
        Lcom/miui/gallery/ui/PhotoPageItem$InitTask;,
        Lcom/miui/gallery/ui/PhotoPageItem$ImageLoadFinishListener;
    }
.end annotation


# static fields
.field private static sDisplayImageOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

.field private static sMenuBarHeight:I

.field private static sStatusBarHeight:I

.field private static sStrokeColor:I


# instance fields
.field private isActionBarVisible:Z

.field private isAnimEntering:Z

.field private isAnimExiting:Z

.field private isCacheImageLoading:Z

.field private isInitialized:Z

.field private isPaused:Z

.field private isSelected:Z

.field private mCacheItem:Lcom/miui/gallery/model/ImageLoadParams;

.field protected mCheckManager:Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;

.field protected mDataItem:Lcom/miui/gallery/model/BaseDataItem;

.field protected mDownloadManager:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

.field protected mEmptyView:Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;

.field private mExternalCacheLoadCallback:Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

.field private mExternalImageLoadCallback:Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

.field private mInitTask:Landroid/os/AsyncTask;

.field private mInternalCacheLoadCallback:Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

.field private mInternalImageLoadCallback:Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

.field private mMemoryTrimFlags:I

.field protected mPhotoPageInteractionListener:Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageInteractionListener;

.field protected mPhotoView:Luk/co/senab/photoview/PhotoView;

.field private mTrimMemoryCallback:Lcom/miui/gallery/util/photoview/TrimMemoryCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 116
    sput v0, Lcom/miui/gallery/ui/PhotoPageItem;->sMenuBarHeight:I

    .line 117
    sput v0, Lcom/miui/gallery/ui/PhotoPageItem;->sStatusBarHeight:I

    .line 134
    const/high16 v0, -0x80000000

    sput v0, Lcom/miui/gallery/ui/PhotoPageItem;->sStrokeColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 137
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mInitTask:Landroid/os/AsyncTask;

    .line 138
    sget-object v0, Lcom/miui/gallery/ui/PhotoPageItem;->sDisplayImageOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    sget-object v1, Lcom/miui/gallery/Config$BigPhotoConfig;->BIG_PHOTO_DISPLAY_IMAGE_OPTIONS_DEFAULT:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 140
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 141
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->handler(Landroid/os/Handler;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/ui/PhotoPageItem$PhotoDisplayer;

    invoke-direct {v1, v2}, Lcom/miui/gallery/ui/PhotoPageItem$PhotoDisplayer;-><init>(Lcom/miui/gallery/ui/PhotoPageItem$1;)V

    .line 142
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/ui/PhotoPageItem;->sDisplayImageOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 144
    :cond_0
    sget v0, Lcom/miui/gallery/ui/PhotoPageItem;->sStrokeColor:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10011f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/miui/gallery/ui/PhotoPageItem;->sStrokeColor:I

    .line 147
    :cond_1
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/PhotoPageItem;)Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageItem;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mExternalImageLoadCallback:Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/PhotoPageItem;)Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageItem;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mExternalCacheLoadCallback:Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

    return-object v0
.end method

.method static synthetic access$402(Lcom/miui/gallery/ui/PhotoPageItem;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageItem;
    .param p1, "x1"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isAnimEntering:Z

    return p1
.end method

.method static synthetic access$500(Lcom/miui/gallery/ui/PhotoPageItem;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageItem;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->canDoSelected()Z

    move-result v0

    return v0
.end method

.method private canDoSelected()Z
    .locals 6

    .prologue
    .line 569
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->isPagerSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->isAnimEntering()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 570
    .local v0, "can":Z
    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->isPagerSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 571
    const-string v1, "PhotoPageItem"

    const-string v2, "canDoSelected %s, isAnimEntering %s, isInitialized %s"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->isAnimEntering()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->isInitialized()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 573
    :cond_0
    return v0

    .line 569
    .end local v0    # "can":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private displayCacheImage(Lcom/miui/gallery/model/ImageLoadParams;Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
    .locals 8
    .param p1, "item"    # Lcom/miui/gallery/model/ImageLoadParams;
    .param p2, "builder"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .param p3, "listener"    # Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    .prologue
    .line 182
    invoke-virtual {p1}, Lcom/miui/gallery/model/ImageLoadParams;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, "uri":Ljava/lang/String;
    invoke-static {v1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->ofUri(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    move-result-object v0

    sget-object v2, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->UNKNOWN:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    if-ne v0, v2, :cond_0

    .line 184
    sget-object v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-virtual {p1, v1}, Lcom/miui/gallery/model/ImageLoadParams;->setPath(Ljava/lang/String;)V

    .line 187
    :cond_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    new-instance v2, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;Z)V

    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageItem;->getCacheDisplayImageOptions(Lcom/miui/gallery/model/ImageLoadParams;Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    .line 190
    invoke-virtual {p1}, Lcom/miui/gallery/model/ImageLoadParams;->getTargetSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/miui/gallery/model/ImageLoadParams;->getRegionRectF()Landroid/graphics/RectF;

    move-result-object v7

    move-object v5, p3

    .line 187
    invoke-virtual/range {v0 .. v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Landroid/graphics/RectF;)V

    .line 191
    return-void
.end method

.method private executeInitTask()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 398
    iput-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isInitialized:Z

    .line 399
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mInitTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mInitTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 402
    :cond_0
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageItem$InitTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/ui/PhotoPageItem$InitTask;-><init>(Lcom/miui/gallery/ui/PhotoPageItem;Lcom/miui/gallery/ui/PhotoPageItem$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/ui/PhotoPageItem$InitTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mInitTask:Landroid/os/AsyncTask;

    .line 403
    return-void
.end method

.method private getCacheImageLoadingListener()Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mInternalCacheLoadCallback:Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageItem$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageItem$2;-><init>(Lcom/miui/gallery/ui/PhotoPageItem;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mInternalCacheLoadCallback:Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

    .line 248
    :cond_0
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageItem$ImageLoadFinishListener;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mInternalCacheLoadCallback:Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

    invoke-direct {v0, v1}, Lcom/miui/gallery/ui/PhotoPageItem$ImageLoadFinishListener;-><init>(Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;)V

    return-object v0
.end method

.method private getImageLoadingListener()Lcom/miui/gallery/ui/PhotoPageItem$ImageLoadFinishListener;
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mInternalImageLoadCallback:Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageItem$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageItem$1;-><init>(Lcom/miui/gallery/ui/PhotoPageItem;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mInternalImageLoadCallback:Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

    .line 227
    :cond_0
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageItem$ImageLoadFinishListener;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mInternalImageLoadCallback:Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

    invoke-direct {v0, v1}, Lcom/miui/gallery/ui/PhotoPageItem$ImageLoadFinishListener;-><init>(Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;)V

    return-object v0
.end method

.method private isPathValidate(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 472
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onActionModeChanged(Z)V
    .locals 3
    .param p1, "inAction"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1513
    if-eqz p1, :cond_0

    .line 1514
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v0, v1}, Luk/co/senab/photoview/PhotoView;->setZoomable(Z)V

    .line 1515
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    sget v1, Lcom/miui/gallery/ui/PhotoPageItem;->sStrokeColor:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Luk/co/senab/photoview/PhotoView;->setStroke(II)V

    .line 1523
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDownloadManager:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->onActionModeChanged(Z)V

    .line 1524
    return-void

    .line 1517
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v0, v1, v1}, Luk/co/senab/photoview/PhotoView;->setStroke(II)V

    .line 1518
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1519
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/PhotoPageItem;->displayImage(Lcom/miui/gallery/model/BaseDataItem;)V

    .line 1521
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->updateFeatures()V

    goto :goto_0
.end method


# virtual methods
.method public addOnMatrixChangeListener(Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V
    .locals 1
    .param p1, "listener"    # Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    .prologue
    .line 646
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoView;->addOnMatrixChangeListener(Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V

    .line 647
    return-void
.end method

.method public animEnter(Lcom/miui/gallery/util/photoview/ItemViewInfo;Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;)V
    .locals 2
    .param p1, "enterInfo"    # Lcom/miui/gallery/util/photoview/ItemViewInfo;
    .param p2, "listener"    # Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;

    .prologue
    .line 668
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageItem$3;

    invoke-direct {v0, p0, p2}, Lcom/miui/gallery/ui/PhotoPageItem$3;-><init>(Lcom/miui/gallery/ui/PhotoPageItem;Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;)V

    .line 678
    .local v0, "tempListener":Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isAnimEntering:Z

    .line 679
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v1, p1, v0}, Luk/co/senab/photoview/PhotoView;->animEnter(Lcom/miui/gallery/util/photoview/ItemViewInfo;Luk/co/senab/photoview/PhotoViewAttacher$TransitionListener;)V

    .line 680
    return-void
.end method

.method public animExit(Lcom/miui/gallery/util/photoview/ItemViewInfo;Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;)V
    .locals 1
    .param p1, "exitInfo"    # Lcom/miui/gallery/util/photoview/ItemViewInfo;
    .param p2, "listener"    # Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;

    .prologue
    .line 683
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isAnimExiting:Z

    .line 684
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v0, p1, p2}, Luk/co/senab/photoview/PhotoView;->animExit(Lcom/miui/gallery/util/photoview/ItemViewInfo;Luk/co/senab/photoview/PhotoViewAttacher$TransitionListener;)V

    .line 685
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDownloadManager:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->release()V

    .line 686
    return-void
.end method

.method protected createCheckManager()Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;
    .locals 1

    .prologue
    .line 510
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;-><init>(Lcom/miui/gallery/ui/PhotoPageItem;)V

    return-object v0
.end method

.method protected createDownloadManager()Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;
    .locals 1

    .prologue
    .line 840
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;-><init>(Lcom/miui/gallery/ui/PhotoPageItem;)V

    return-object v0
.end method

.method protected final displayImage(Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 7
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    const/4 v5, 0x0

    .line 378
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mMemoryTrimFlags:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isCacheImageLoading:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->isMediaInProcessing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    const/4 v6, 0x0

    .line 380
    .local v6, "isMicro":Z
    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v1

    .line 381
    .local v1, "uri":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/PhotoPageItem;->isPathValidate(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 382
    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getThumnailPath()Ljava/lang/String;

    move-result-object v1

    .line 384
    :cond_2
    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/PhotoPageItem;->isPathValidate(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 385
    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getMicroPath()Ljava/lang/String;

    move-result-object v1

    .line 386
    const/4 v6, 0x1

    .line 388
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez v6, :cond_4

    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/PhotoPageItem;->isPathValidate(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    :cond_4
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 390
    sget-object v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 392
    :cond_5
    invoke-virtual {p0, v6}, Lcom/miui/gallery/ui/PhotoPageItem;->getDisplayImageOptions(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    if-nez v6, :cond_6

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->isMediaInProcessing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 393
    :cond_6
    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getMicroImageSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v3

    :goto_1
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->getImageLoadingListener()Lcom/miui/gallery/ui/PhotoPageItem$ImageLoadFinishListener;

    move-result-object v4

    move-object v0, p0

    .line 392
    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/ui/PhotoPageItem;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    goto :goto_0

    :cond_7
    move-object v3, v5

    .line 393
    goto :goto_1
.end method

.method protected displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p3, "imageSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p4, "loadingListener"    # Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;
    .param p5, "progressListener"    # Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;

    .prologue
    .line 444
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    new-instance v2, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-direct {v2, v1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    .line 445
    return-void
.end method

.method protected doOnMatrixChanged(Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 611
    return-void
.end method

.method protected doOnSelected(ZZZ)V
    .locals 4
    .param p1, "resumed"    # Z
    .param p2, "enter"    # Z
    .param p3, "init"    # Z

    .prologue
    .line 577
    const-string v0, "PhotoPageItem"

    const-string v1, "doOnSelected pos: %s, resumed: %s"

    const v2, 0x7f120022

    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/PhotoPageItem;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 578
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mCheckManager:Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->inAction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDownloadManager:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->onUnSelected()V

    .line 583
    :goto_0
    return-void

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDownloadManager:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->onSelected()V

    goto :goto_0
.end method

.method protected doOnUnSelected(Z)V
    .locals 1
    .param p1, "paused"    # Z

    .prologue
    .line 594
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDownloadManager:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->onUnSelected()V

    .line 595
    return-void
.end method

.method public downloadOrigin()V
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDownloadManager:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->downloadOrigin()V

    .line 661
    :cond_0
    return-void
.end method

.method public finishActionMode()V
    .locals 1

    .prologue
    .line 1506
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mCheckManager:Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->inAction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1507
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mCheckManager:Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->endCheck()V

    .line 1508
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageItem;->onActionModeChanged(Z)V

    .line 1510
    :cond_0
    return-void
.end method

.method protected getActionBarHeight()I
    .locals 5

    .prologue
    .line 1841
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoPageInteractionListener:Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageInteractionListener;

    invoke-interface {v2}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageInteractionListener;->getActionBarHeight()I

    move-result v0

    .line 1842
    .local v0, "actionBarHeight":I
    if-lez v0, :cond_0

    move v1, v0

    .line 1849
    .end local v0    # "actionBarHeight":I
    .local v1, "actionBarHeight":I
    :goto_0
    return v1

    .line 1845
    .end local v1    # "actionBarHeight":I
    .restart local v0    # "actionBarHeight":I
    :cond_0
    sget v2, Lcom/miui/gallery/ui/PhotoPageItem;->sStatusBarHeight:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 1846
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    sput v2, Lcom/miui/gallery/ui/PhotoPageItem;->sStatusBarHeight:I

    .line 1848
    :cond_1
    sget v2, Lcom/miui/gallery/ui/PhotoPageItem;->sStatusBarHeight:I

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0042

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int v0, v2, v3

    move v1, v0

    .line 1849
    .end local v0    # "actionBarHeight":I
    .restart local v1    # "actionBarHeight":I
    goto :goto_0
.end method

.method protected getCacheDisplayImageOptions(Lcom/miui/gallery/model/ImageLoadParams;Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 4
    .param p1, "item"    # Lcom/miui/gallery/model/ImageLoadParams;
    .param p2, "builder"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .prologue
    .line 194
    invoke-virtual {p1}, Lcom/miui/gallery/model/ImageLoadParams;->isSecret()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p1}, Lcom/miui/gallery/model/ImageLoadParams;->getSecretKey()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->secretKey([B)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 197
    :cond_0
    invoke-virtual {p1}, Lcom/miui/gallery/model/ImageLoadParams;->getFileLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 198
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerFileLength(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/gallery/model/ImageLoadParams;->getFileLength()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->fileLength(J)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 202
    :goto_0
    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    return-object v0

    .line 200
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerFileLength(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    goto :goto_0
.end method

.method public getCacheItem()Lcom/miui/gallery/model/ImageLoadParams;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mCacheItem:Lcom/miui/gallery/model/ImageLoadParams;

    return-object v0
.end method

.method protected getContentDescriptionForTalkBack()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1860
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    if-eqz v0, :cond_1

    .line 1861
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->isInActionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mCheckManager:Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;

    if-eqz v0, :cond_0

    .line 1862
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mCheckManager:Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->getContentDescription()Ljava/lang/String;

    move-result-object v0

    .line 1866
    :goto_0
    return-object v0

    .line 1864
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/model/BaseDataItem;->getContentDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1866
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDataItem()Lcom/miui/gallery/model/BaseDataItem;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    return-object v0
.end method

.method protected getDisplayImageOptions(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 8
    .param p1, "loadThumbnail"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 448
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v1}, Lcom/miui/gallery/model/BaseDataItem;->isSecret()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 449
    sget-object v1, Lcom/miui/gallery/ui/PhotoPageItem;->sDisplayImageOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v4}, Lcom/miui/gallery/model/BaseDataItem;->getSecretKey()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->secretKey([B)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 450
    sget-object v1, Lcom/miui/gallery/ui/PhotoPageItem;->sDisplayImageOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheBigPhoto(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 455
    :goto_0
    sget-object v1, Lcom/miui/gallery/ui/PhotoPageItem;->sDisplayImageOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v1, p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->loadThumbnail(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 456
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v1}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 457
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v1}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->ofUri(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    move-result-object v0

    .line 458
    .local v0, "scheme":Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
    sget-object v1, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->UNKNOWN:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    if-eq v0, v1, :cond_0

    .line 459
    sget-object v1, Lcom/miui/gallery/ui/PhotoPageItem;->sDisplayImageOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheBigPhoto(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 462
    .end local v0    # "scheme":Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v1}, Lcom/miui/gallery/model/BaseDataItem;->getSize()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_3

    .line 463
    sget-object v1, Lcom/miui/gallery/ui/PhotoPageItem;->sDisplayImageOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v3}, Lcom/miui/gallery/model/BaseDataItem;->getSize()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->fileLength(J)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 464
    sget-object v1, Lcom/miui/gallery/ui/PhotoPageItem;->sDisplayImageOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerFileLength(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 468
    :goto_1
    sget-object v1, Lcom/miui/gallery/ui/PhotoPageItem;->sDisplayImageOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v1

    return-object v1

    .line 452
    :cond_1
    sget-object v1, Lcom/miui/gallery/ui/PhotoPageItem;->sDisplayImageOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->secretKey([B)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 453
    sget-object v4, Lcom/miui/gallery/ui/PhotoPageItem;->sDisplayImageOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    if-nez p1, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheBigPhoto(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_2

    .line 466
    :cond_3
    sget-object v1, Lcom/miui/gallery/ui/PhotoPageItem;->sDisplayImageOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerFileLength(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    goto :goto_1
.end method

.method protected getMenuBarHeight()I
    .locals 2

    .prologue
    .line 1853
    sget v0, Lcom/miui/gallery/ui/PhotoPageItem;->sMenuBarHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1854
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoPageInteractionListener:Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageInteractionListener;

    invoke-interface {v0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageInteractionListener;->getMenuBarHeight()I

    move-result v0

    sput v0, Lcom/miui/gallery/ui/PhotoPageItem;->sMenuBarHeight:I

    .line 1856
    :cond_0
    sget v0, Lcom/miui/gallery/ui/PhotoPageItem;->sMenuBarHeight:I

    invoke-static {p0}, Lcom/miui/gallery/compat/view/ViewCompat;->getSystemWindowInsetBottom(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getProcessingMedia()Lcom/miui/gallery/provider/ProcessingMedia;
    .locals 1

    .prologue
    .line 1541
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrimMemoryCallback()Lcom/miui/gallery/util/photoview/TrimMemoryCallback;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mTrimMemoryCallback:Lcom/miui/gallery/util/photoview/TrimMemoryCallback;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 1816
    const/4 v0, 0x0

    return v0
.end method

.method protected final isActionBarVisible()Z
    .locals 1

    .prologue
    .line 1837
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isActionBarVisible:Z

    return v0
.end method

.method protected isAnimEntering()Z
    .locals 1

    .prologue
    .line 551
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isAnimEntering:Z

    return v0
.end method

.method protected isAnimExiting()Z
    .locals 1

    .prologue
    .line 555
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isAnimExiting:Z

    return v0
.end method

.method protected isInActionMode()Z
    .locals 1

    .prologue
    .line 1527
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mCheckManager:Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->inAction()Z

    move-result v0

    return v0
.end method

.method protected isInitialized()Z
    .locals 1

    .prologue
    .line 547
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isInitialized:Z

    return v0
.end method

.method protected isMediaInProcessing()Z
    .locals 1

    .prologue
    .line 1545
    const/4 v0, 0x0

    return v0
.end method

.method protected isPagerSelected()Z
    .locals 1

    .prologue
    .line 626
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isSelected:Z

    return v0
.end method

.method protected isPaused()Z
    .locals 1

    .prologue
    .line 622
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isPaused:Z

    return v0
.end method

.method public loadCacheImage(Lcom/miui/gallery/model/ImageLoadParams;)V
    .locals 3
    .param p1, "item"    # Lcom/miui/gallery/model/ImageLoadParams;

    .prologue
    const/4 v2, 0x1

    .line 172
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v1}, Luk/co/senab/photoview/PhotoView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    .line 173
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 174
    .local v0, "builder":Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    sget-object v1, Lcom/miui/gallery/Config$ThumbConfig;->THUMBNAIL_DISPLAY_IMAGE_OPTIONS_DEFAULT:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 175
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->loadFromMemoryOnly(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 176
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 177
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/ui/PhotoPageItem;->displayCacheImage(Lcom/miui/gallery/model/ImageLoadParams;Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 179
    .end local v0    # "builder":Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    :cond_0
    return-void
.end method

.method public onActionBarVisibleChanged(Ljava/lang/Boolean;I)V
    .locals 4
    .param p1, "visible"    # Ljava/lang/Boolean;
    .param p2, "actionBarHeight"    # I

    .prologue
    .line 1820
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isActionBarVisible:Z

    .line 1821
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDownloadManager:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v2}, Luk/co/senab/photoview/PhotoView;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->adjustLocation(ZLandroid/graphics/RectF;Z)V

    .line 1822
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1834
    return-void
.end method

.method public onActivityTransition()V
    .locals 0

    .prologue
    .line 1830
    return-void
.end method

.method protected onCacheImageLoadFinish(Z)V
    .locals 1
    .param p1, "cancelled"    # Z

    .prologue
    .line 342
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isCacheImageLoading:Z

    .line 343
    if-nez p1, :cond_0

    .line 344
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/PhotoPageItem;->swapItem(Lcom/miui/gallery/model/BaseDataItem;)V

    .line 346
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1826
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1827
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDownloadManager:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->isActionBarVisible()Z

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v2}, Luk/co/senab/photoview/PhotoView;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->adjustLocation(ZLandroid/graphics/RectF;Z)V

    .line 1828
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 515
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->cancelDisplayTask(Landroid/widget/ImageView;)V

    .line 516
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->recycleBitmap()V

    .line 517
    invoke-virtual {p0, p0}, Lcom/miui/gallery/ui/PhotoPageItem;->removeOnMatrixChangeListener(Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V

    .line 518
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDownloadManager:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->release()V

    .line 519
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mCheckManager:Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->endCheck()V

    .line 520
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mInitTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mInitTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 522
    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mInitTask:Landroid/os/AsyncTask;

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mEmptyView:Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;->setVisible(Z)V

    .line 527
    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mCacheItem:Lcom/miui/gallery/model/ImageLoadParams;

    .line 528
    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    .line 529
    invoke-virtual {p0, v3}, Lcom/miui/gallery/ui/PhotoPageItem;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 530
    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoPageInteractionListener:Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageInteractionListener;

    .line 531
    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mInternalCacheLoadCallback:Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

    .line 532
    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mInternalImageLoadCallback:Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

    .line 533
    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mExternalCacheLoadCallback:Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

    .line 534
    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mExternalImageLoadCallback:Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

    .line 535
    iput-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isSelected:Z

    .line 536
    iput-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isInitialized:Z

    .line 537
    iput-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isActionBarVisible:Z

    .line 538
    iput-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isAnimEntering:Z

    .line 539
    iput-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isAnimExiting:Z

    .line 540
    iput-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isCacheImageLoading:Z

    .line 541
    iput v2, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mMemoryTrimFlags:I

    .line 542
    iput-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isPaused:Z

    .line 543
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 544
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 502
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 503
    const v0, 0x7f12023e

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/PhotoPageItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Luk/co/senab/photoview/PhotoView;

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    .line 504
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->createDownloadManager()Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDownloadManager:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    .line 505
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->createCheckManager()Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mCheckManager:Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;

    .line 506
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;-><init>(Lcom/miui/gallery/ui/PhotoPageItem;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mEmptyView:Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;

    .line 507
    return-void
.end method

.method protected onImageLoadFinish(Lcom/miui/gallery/error/core/ErrorCode;)V
    .locals 5
    .param p1, "code"    # Lcom/miui/gallery/error/core/ErrorCode;

    .prologue
    .line 319
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v3}, Luk/co/senab/photoview/PhotoView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_3

    .line 320
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 321
    .local v1, "res":Landroid/content/res/Resources;
    const/4 v2, 0x0

    .line 322
    .local v2, "ss":Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 323
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_1

    sget-object v3, Lcom/miui/gallery/error/core/ErrorCode;->NO_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    if-eq p1, v3, :cond_1

    .line 324
    sget-object v3, Lcom/miui/gallery/error/core/ErrorCode;->DECODE_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    if-ne p1, v3, :cond_2

    .line 325
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v3}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 326
    :cond_0
    const v3, 0x7f0c0193

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 333
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mEmptyView:Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;

    invoke-virtual {v3, v2}, Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;->setTip(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mEmptyView:Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;

    invoke-virtual {v3, v0}, Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 335
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mEmptyView:Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;->setVisible(Z)V

    .line 339
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "ss":Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 329
    .restart local v0    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "res":Landroid/content/res/Resources;
    .restart local v2    # "ss":Ljava/lang/CharSequence;
    :cond_2
    const v3, 0x7f0c0194

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 330
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02018c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 337
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "ss":Ljava/lang/CharSequence;
    :cond_3
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mEmptyView:Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;->setVisible(Z)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1808
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 1809
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mCheckManager:Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->inAction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1810
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mCheckManager:Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v1}, Luk/co/senab/photoview/PhotoView;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->access$2300(Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;Landroid/graphics/RectF;)V

    .line 1812
    :cond_0
    return-void
.end method

.method public final onMatrixChanged(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->isAnimEntering()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->isAnimExiting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDownloadManager:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->onMatrixChanged(Landroid/graphics/RectF;)V

    .line 605
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mCheckManager:Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->onMatrixChanged(Landroid/graphics/RectF;)V

    .line 606
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem;->doOnMatrixChanged(Landroid/graphics/RectF;)V

    .line 608
    :cond_0
    return-void
.end method

.method protected onPageScrollDragging()V
    .locals 0

    .prologue
    .line 597
    return-void
.end method

.method protected onPageScrollIdle()V
    .locals 0

    .prologue
    .line 599
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 618
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isPaused:Z

    .line 619
    return-void
.end method

.method protected onPostInitialized()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 406
    iput-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isInitialized:Z

    .line 407
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->canDoSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {p0, v1, v1, v2}, Lcom/miui/gallery/ui/PhotoPageItem;->doOnSelected(ZZZ)V

    .line 410
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 614
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isPaused:Z

    .line 615
    return-void
.end method

.method public final onSelected(Z)V
    .locals 2
    .param p1, "resumed"    # Z

    .prologue
    const/4 v1, 0x0

    .line 559
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isSelected:Z

    if-nez v0, :cond_1

    .line 560
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isSelected:Z

    .line 561
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->canDoSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    invoke-virtual {p0, p1, v1, v1}, Lcom/miui/gallery/ui/PhotoPageItem;->doOnSelected(ZZZ)V

    .line 564
    :cond_0
    invoke-virtual {p0, p0}, Lcom/miui/gallery/ui/PhotoPageItem;->addOnMatrixChangeListener(Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V

    .line 566
    :cond_1
    return-void
.end method

.method public onSlipping(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 1532
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->isPagerSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1533
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mCheckManager:Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->onAlphaChanged(F)V

    .line 1535
    :cond_0
    return-void
.end method

.method public onStopTrimMemory(I)V
    .locals 6
    .param p1, "flag"    # I

    .prologue
    .line 264
    const-string v0, "PhotoPageItem"

    const-string v1, "onStopTrimMemory flag: %d, before: %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mMemoryTrimFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 265
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mMemoryTrimFlags:I

    and-int/2addr v0, p1

    if-lez v0, :cond_0

    .line 266
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mMemoryTrimFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mMemoryTrimFlags:I

    .line 267
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mMemoryTrimFlags:I

    if-nez v0, :cond_0

    .line 268
    const-string v1, "PhotoPageItem"

    const-string v2, "reloadData: %s"

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->getKey()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 269
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->refreshItem()V

    .line 272
    :cond_0
    return-void

    .line 268
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onTrimMemory(I)V
    .locals 6
    .param p1, "flag"    # I

    .prologue
    .line 253
    const-string v0, "PhotoPageItem"

    const-string v1, "onTrimMemory flag: %d, before: %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mMemoryTrimFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 254
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mMemoryTrimFlags:I

    if-nez v0, :cond_0

    .line 255
    const-string v1, "PhotoPageItem"

    const-string/jumbo v2, "trimMemory: %s"

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->getKey()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 256
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->cancelDisplayTask(Landroid/widget/ImageView;)V

    .line 257
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->recycleBitmap()V

    .line 259
    :cond_0
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mMemoryTrimFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mMemoryTrimFlags:I

    .line 260
    return-void

    .line 255
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final onUnSelected(Z)V
    .locals 1
    .param p1, "paused"    # Z

    .prologue
    .line 586
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isSelected:Z

    if-eqz v0, :cond_0

    .line 587
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isSelected:Z

    .line 588
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem;->doOnUnSelected(Z)V

    .line 589
    invoke-virtual {p0, p0}, Lcom/miui/gallery/ui/PhotoPageItem;->removeOnMatrixChangeListener(Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V

    .line 591
    :cond_0
    return-void
.end method

.method protected recycleBitmap()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 480
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v4}, Luk/co/senab/photoview/PhotoView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 481
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1

    .line 482
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v4, v8}, Luk/co/senab/photoview/PhotoView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 483
    instance-of v4, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_1

    .line 485
    const/4 v2, 0x0

    .line 486
    .local v2, "cachedBitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mCacheItem:Lcom/miui/gallery/model/ImageLoadParams;

    if-eqz v4, :cond_0

    .line 487
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mCacheItem:Lcom/miui/gallery/model/ImageLoadParams;

    .line 488
    invoke-virtual {v5}, Lcom/miui/gallery/model/ImageLoadParams;->getPath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mCacheItem:Lcom/miui/gallery/model/ImageLoadParams;

    invoke-virtual {v6}, Lcom/miui/gallery/model/ImageLoadParams;->getTargetSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v6

    sget-object v7, Lcom/miui/gallery/Config$ThumbConfig;->THUMBNAIL_DISPLAY_IMAGE_OPTIONS_DEFAULT:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 487
    invoke-virtual {v4, v5, v6, v8, v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadFromMemoryCache(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_0
    move-object v1, v3

    .line 491
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 492
    .local v1, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 493
    .local v0, "bit":Landroid/graphics/Bitmap;
    if-eq v2, v0, :cond_1

    .line 494
    invoke-static {}, Lcom/miui/gallery/util/uil/PhotoReusedBitCache;->getInstance()Lcom/miui/gallery/util/uil/PhotoReusedBitCache;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/miui/gallery/util/uil/PhotoReusedBitCache;->put(Landroid/graphics/Bitmap;)V

    .line 498
    .end local v0    # "bit":Landroid/graphics/Bitmap;
    .end local v1    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v2    # "cachedBitmap":Landroid/graphics/Bitmap;
    :cond_1
    return-void
.end method

.method public refreshItem()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/PhotoPageItem;->swapItem(Lcom/miui/gallery/model/BaseDataItem;)V

    .line 358
    return-void
.end method

.method public removeOnMatrixChangeListener(Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V
    .locals 1
    .param p1, "listener"    # Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    .prologue
    .line 650
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoView;->removeOnMatrixChangeListener(Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V

    .line 651
    return-void
.end method

.method public setCacheItem(Lcom/miui/gallery/model/ImageLoadParams;Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;)V
    .locals 3
    .param p1, "item"    # Lcom/miui/gallery/model/ImageLoadParams;
    .param p2, "listener"    # Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

    .prologue
    const/4 v2, 0x1

    .line 158
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mCacheItem:Lcom/miui/gallery/model/ImageLoadParams;

    .line 159
    if-eqz p1, :cond_0

    .line 160
    iput-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isCacheImageLoading:Z

    .line 161
    iput-object p2, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mExternalCacheLoadCallback:Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

    .line 162
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 163
    .local v0, "builder":Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    sget-object v1, Lcom/miui/gallery/Config$ThumbConfig;->THUMBNAIL_DISPLAY_IMAGE_OPTIONS_DEFAULT:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 164
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->syncLoadFromThumbCache(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 165
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 166
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->getCacheImageLoadingListener()Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/ui/PhotoPageItem;->displayCacheImage(Lcom/miui/gallery/model/ImageLoadParams;Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 168
    .end local v0    # "builder":Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    :cond_0
    return-void
.end method

.method public setCloudImageLoadingListener(Lcom/miui/gallery/util/uil/CloudImageLoadingListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    .prologue
    .line 664
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDownloadManager:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->setCloudImageLoadingListener(Lcom/miui/gallery/util/uil/CloudImageLoadingListener;)V

    .line 665
    return-void
.end method

.method public setOnBackgroundAlphaChangedListener(Luk/co/senab/photoview/PhotoViewAttacher$OnBackgroundAlphaChangedListener;)V
    .locals 1
    .param p1, "listener"    # Luk/co/senab/photoview/PhotoViewAttacher$OnBackgroundAlphaChangedListener;

    .prologue
    .line 654
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoView;->setOnBackgroundAlphaChangedListener(Luk/co/senab/photoview/PhotoViewAttacher$OnBackgroundAlphaChangedListener;)V

    .line 655
    return-void
.end method

.method public setOnExitListener(Luk/co/senab/photoview/PhotoViewAttacher$OnExitListener;)V
    .locals 1
    .param p1, "listener"    # Luk/co/senab/photoview/PhotoViewAttacher$OnExitListener;

    .prologue
    .line 638
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoView;->setOnExitListener(Luk/co/senab/photoview/PhotoViewAttacher$OnExitListener;)V

    .line 639
    return-void
.end method

.method public setOnImageLoadFinishListener(Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

    .prologue
    .line 630
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mExternalImageLoadCallback:Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

    .line 631
    return-void
.end method

.method public setOnScaleChangeListener(Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;)V
    .locals 1
    .param p1, "listener"    # Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;

    .prologue
    .line 642
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoView;->setOnScaleChangeListener(Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;)V

    .line 643
    return-void
.end method

.method public setOnViewTapListener(Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;)V
    .locals 1
    .param p1, "listener"    # Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;

    .prologue
    .line 634
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoView;->setOnViewTapListener(Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;)V

    .line 635
    return-void
.end method

.method public setPhotoPageCallback(Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageInteractionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageInteractionListener;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoPageInteractionListener:Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageInteractionListener;

    .line 151
    return-void
.end method

.method public setProcessingMedia(Lcom/miui/gallery/provider/ProcessingMedia;)V
    .locals 0
    .param p1, "processingMedia"    # Lcom/miui/gallery/provider/ProcessingMedia;

    .prologue
    .line 1538
    return-void
.end method

.method public setTrimMemoryCallback(Lcom/miui/gallery/util/photoview/TrimMemoryCallback;)V
    .locals 0
    .param p1, "trimMemoryCallback"    # Lcom/miui/gallery/util/photoview/TrimMemoryCallback;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mTrimMemoryCallback:Lcom/miui/gallery/util/photoview/TrimMemoryCallback;

    .line 211
    return-void
.end method

.method public startActionMode(Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;)V
    .locals 5
    .param p1, "originInterface"    # Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;
    .param p2, "selectInterface"    # Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;
    .param p3, "renderInterface"    # Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    .prologue
    const/4 v1, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1497
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mCheckManager:Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->inAction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1498
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mCheckManager:Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;

    new-array v1, v1, [Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    aput-object p1, v1, v3

    aput-object p2, v1, v2

    aput-object p3, v1, v4

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->refreshCheck([Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;)V

    .line 1503
    :goto_0
    return-void

    .line 1500
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mCheckManager:Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;

    new-array v1, v1, [Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    aput-object p1, v1, v3

    aput-object p2, v1, v2

    aput-object p3, v1, v4

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->startCheck([Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;)V

    .line 1501
    invoke-direct {p0, v2}, Lcom/miui/gallery/ui/PhotoPageItem;->onActionModeChanged(Z)V

    goto :goto_0
.end method

.method public swapItem(Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 1
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 361
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {p1, v0}, Lcom/miui/gallery/model/BaseDataItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 363
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->recycleBitmap()V

    .line 365
    :cond_1
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    .line 366
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->isCacheImageLoading:Z

    if-eqz v0, :cond_2

    .line 374
    :goto_0
    return-void

    .line 369
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    if-eqz v0, :cond_3

    .line 370
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->executeInitTask()V

    .line 371
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->getContentDescriptionForTalkBack()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/PhotoPageItem;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 373
    :cond_3
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->updateFeatures()V

    goto :goto_0
.end method

.method protected updateFeatures()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 349
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    if-eqz v1, :cond_0

    .line 350
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v1}, Lcom/miui/gallery/model/BaseDataItem;->isVideo()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Luk/co/senab/photoview/PhotoView;->setZoomable(Z)V

    .line 351
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v1}, Lcom/miui/gallery/model/BaseDataItem;->isGif()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v1}, Lcom/miui/gallery/model/BaseDataItem;->isVideo()Z

    move-result v1

    if-nez v1, :cond_2

    move v0, v2

    .line 352
    .local v0, "rotatable":Z
    :goto_1
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v1, v0}, Luk/co/senab/photoview/PhotoView;->setRotatable(Z)V

    .line 354
    .end local v0    # "rotatable":Z
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 350
    goto :goto_0

    :cond_2
    move v0, v3

    .line 351
    goto :goto_1
.end method
