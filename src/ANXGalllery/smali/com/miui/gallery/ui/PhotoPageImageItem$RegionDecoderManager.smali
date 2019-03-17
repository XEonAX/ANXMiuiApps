.class Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;
.super Ljava/lang/Object;
.source "PhotoPageImageItem.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageImageItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegionDecoderManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager$RegionReleaseJob;,
        Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager$RegionCreateJob;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/threadpool/FutureListener",
        "<",
        "Lcom/miui/gallery/util/photoview/TileBitProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private mDecoderProvider:Lcom/miui/gallery/util/photoview/TileBitProvider;

.field private mFileKey:Ljava/lang/String;

.field private mRegionCreateFuture:Lcom/miui/gallery/threadpool/Future;

.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/PhotoPageImageItem;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/PhotoPageImageItem;Lcom/miui/gallery/ui/PhotoPageImageItem$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem;
    .param p2, "x1"    # Lcom/miui/gallery/ui/PhotoPageImageItem$1;

    .prologue
    .line 306
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;-><init>(Lcom/miui/gallery/ui/PhotoPageImageItem;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->create()V

    return-void
.end method

.method static synthetic access$1402(Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;Lcom/miui/gallery/util/photoview/TileBitProvider;)Lcom/miui/gallery/util/photoview/TileBitProvider;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;
    .param p1, "x1"    # Lcom/miui/gallery/util/photoview/TileBitProvider;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->mDecoderProvider:Lcom/miui/gallery/util/photoview/TileBitProvider;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->mFileKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;Ljava/lang/String;J)Ljava/lang/String;
    .locals 2
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    .line 306
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->genFileKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->release()V

    return-void
.end method

.method private canSupportRegion()Z
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem;->access$1300(Lcom/miui/gallery/ui/PhotoPageImageItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/FileMimeUtil;->isImageFromMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    .line 367
    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/FileMimeUtil;->isGifFromMimeType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private create()V
    .locals 4

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->release()V

    .line 341
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->canSupportRegion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager$RegionCreateJob;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageImageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    .line 343
    invoke-virtual {v2}, Lcom/miui/gallery/model/BaseDataItem;->getPathDisplayBetter()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v3, v3, Lcom/miui/gallery/ui/PhotoPageImageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v3}, Lcom/miui/gallery/model/BaseDataItem;->getSecretKey()[B

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager$RegionCreateJob;-><init>(Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;Ljava/lang/String;[B)V

    .line 342
    invoke-virtual {v0, v1, p0}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/threadpool/FutureListener;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->mRegionCreateFuture:Lcom/miui/gallery/threadpool/Future;

    .line 346
    :cond_0
    return-void
.end method

.method private genFileKey(Ljava/lang/String;J)Ljava/lang/String;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileSize"    # J

    .prologue
    .line 411
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    const/4 v0, 0x0

    .line 414
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s_%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isFileChanged()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 312
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v4, v4, Lcom/miui/gallery/ui/PhotoPageImageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    if-nez v4, :cond_1

    .line 317
    :cond_0
    :goto_0
    return v1

    .line 315
    :cond_1
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v4, v4, Lcom/miui/gallery/ui/PhotoPageImageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v4}, Lcom/miui/gallery/model/BaseDataItem;->getPathDisplayBetter()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "filePath":Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v4, v4, Lcom/miui/gallery/ui/PhotoPageImageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v4}, Lcom/miui/gallery/model/BaseDataItem;->getDisplayBetterFileSize()J

    move-result-wide v2

    .line 317
    .local v2, "fileSize":J
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->genFileKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->mFileKey:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 349
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->mRegionCreateFuture:Lcom/miui/gallery/threadpool/Future;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->mRegionCreateFuture:Lcom/miui/gallery/threadpool/Future;

    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->cancel()V

    .line 351
    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->mRegionCreateFuture:Lcom/miui/gallery/threadpool/Future;

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->mDecoderProvider:Lcom/miui/gallery/util/photoview/TileBitProvider;

    if-eqz v0, :cond_1

    .line 355
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager$RegionReleaseJob;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->mDecoderProvider:Lcom/miui/gallery/util/photoview/TileBitProvider;

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager$RegionReleaseJob;-><init>(Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;Lcom/miui/gallery/util/photoview/TileBitProvider;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    .line 356
    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->mDecoderProvider:Lcom/miui/gallery/util/photoview/TileBitProvider;

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoView;->releaseTile()V

    .line 359
    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/miui/gallery/threadpool/Future;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/threadpool/Future",
            "<",
            "Lcom/miui/gallery/util/photoview/TileBitProvider;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 372
    .local p1, "future":Lcom/miui/gallery/threadpool/Future;, "Lcom/miui/gallery/threadpool/Future<Lcom/miui/gallery/util/photoview/TileBitProvider;>;"
    invoke-interface {p1}, Lcom/miui/gallery/threadpool/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/util/photoview/TileBitProvider;

    .line 373
    .local v0, "decoderProvider":Lcom/miui/gallery/util/photoview/TileBitProvider;
    if-eqz v0, :cond_0

    .line 374
    invoke-interface {v0}, Lcom/miui/gallery/util/photoview/TileBitProvider;->getImageWidth()I

    move-result v3

    if-lez v3, :cond_1

    .line 375
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/miui/gallery/ui/PhotoPageImageItem;->access$1302(Lcom/miui/gallery/ui/PhotoPageImageItem;Z)Z

    .line 376
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    new-instance v4, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager$2;

    invoke-direct {v4, p0, p1, v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager$2;-><init>(Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;Lcom/miui/gallery/threadpool/Future;Lcom/miui/gallery/util/photoview/TileBitProvider;)V

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/PhotoPageImageItem;->post(Ljava/lang/Runnable;)Z

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/miui/gallery/ui/PhotoPageImageItem;->access$1302(Lcom/miui/gallery/ui/PhotoPageImageItem;Z)Z

    .line 391
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v3, v3, Lcom/miui/gallery/ui/PhotoPageImageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v3, v3, Lcom/miui/gallery/ui/PhotoPageImageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v3}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v1

    .line 392
    .local v1, "originPath":Ljava/lang/String;
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 393
    const-string v3, "PhotoPageImageItem"

    const-string v4, "not support region %s"

    invoke-static {v1}, Lcom/miui/gallery/util/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 394
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v4, v4, Lcom/miui/gallery/ui/PhotoPageImageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->cancelDisplayTask(Landroid/widget/ImageView;)V

    .line 395
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    new-instance v4, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager$3;

    invoke-direct {v4, p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager$3;-><init>(Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;)V

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/PhotoPageImageItem;->post(Ljava/lang/Runnable;)Z

    .line 402
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 403
    .local v2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "type"

    invoke-static {v1}, Lcom/miui/gallery/util/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    const-string v3, "photo"

    const-string v4, "photo_not_support_region"

    invoke-static {v3, v4, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 391
    .end local v1    # "originPath":Ljava/lang/String;
    .end local v2    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onSelected()V
    .locals 0

    .prologue
    .line 336
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->create()V

    .line 337
    return-void
.end method

.method public onUnSelected()V
    .locals 0

    .prologue
    .line 362
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->release()V

    .line 363
    return-void
.end method

.method public resetRegionDecoderIfNeeded()V
    .locals 2

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->isFileChanged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    :goto_0
    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    new-instance v1, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager$1;-><init>(Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoPageImageItem;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
