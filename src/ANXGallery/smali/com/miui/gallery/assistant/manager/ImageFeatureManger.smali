.class public Lcom/miui/gallery/assistant/manager/ImageFeatureManger;
.super Ljava/lang/Object;
.source "ImageFeatureManger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;,
        Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFeatureMangerHolder;
    }
.end annotation


# static fields
.field private static sIsSupportImageFeatureSelection:Z

.field private static final sWhiteList:[Ljava/lang/String;


# instance fields
.field private volatile mHasMoreImageToProcess:Z

.field private final mImageDeleteRunnable:Ljava/lang/Runnable;

.field private final mImageFeatureReusedBitCache:Lcom/miui/gallery/assistant/manager/ImageFeatureReusedBitCache;

.field private final mImageFileInfoQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mIsCaculating:Z

.field private volatile mProcessingCount:I

.field private final mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 71
    const/16 v2, 0x15

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "dipper"

    aput-object v3, v2, v1

    const-string/jumbo v3, "ursa"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, "jason"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "wayne"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "platina"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "chiron"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "sagit"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "polaris"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "perseus"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "equuleus"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "sirius"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "comet"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "lavender"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "capricorn"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "lithium"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "natrium"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "scorpio"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "gemini"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "cepheus"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "davinci"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "grus"

    aput-object v4, v2, v3

    sput-object v2, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->sWhiteList:[Ljava/lang/String;

    .line 96
    sput-boolean v1, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->sIsSupportImageFeatureSelection:Z

    .line 97
    sget-object v2, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->sWhiteList:[Ljava/lang/String;

    array-length v3, v2

    .local v0, "product":Ljava/lang/String;
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 98
    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 99
    sput-boolean v5, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->sIsSupportImageFeatureSelection:Z

    .line 97
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    :cond_1
    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v8, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-boolean v8, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mHasMoreImageToProcess:Z

    .line 127
    new-instance v0, Lcom/miui/gallery/assistant/manager/ImageFeatureReusedBitCache;

    invoke-direct {v0}, Lcom/miui/gallery/assistant/manager/ImageFeatureReusedBitCache;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mImageFeatureReusedBitCache:Lcom/miui/gallery/assistant/manager/ImageFeatureReusedBitCache;

    .line 128
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mImageFileInfoQueue:Ljava/util/Queue;

    .line 129
    iput v8, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mProcessingCount:I

    .line 130
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x2

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 133
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 134
    iput-boolean v8, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mIsCaculating:Z

    .line 135
    new-instance v0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$1;-><init>(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;)V

    iput-object v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mImageDeleteRunnable:Ljava/lang/Runnable;

    .line 141
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/assistant/manager/ImageFeatureManger$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/assistant/manager/ImageFeatureManger$1;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->schedule()V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/assistant/manager/ImageFeatureManger;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->recycleBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->deleteImageFromCard()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->deleteImagesFromCard()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->scheduleNewImages()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/assistant/manager/ImageFeatureManger;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->markCaculateState(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mHasMoreImageToProcess:Z

    return v0
.end method

.method static synthetic access$602(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/assistant/manager/ImageFeatureManger;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mHasMoreImageToProcess:Z

    return p1
.end method

.method static synthetic access$700(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;Ljava/util/List;Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/assistant/manager/ImageFeatureManger;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->calculateImageGroupAndSaveAsyncInternal(Ljava/util/List;Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;)V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/assistant/manager/ImageFeatureManger;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->getScaledBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$910(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;)I
    .locals 2
    .param p0, "x0"    # Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    .prologue
    .line 64
    iget v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mProcessingCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mProcessingCount:I

    return v0
.end method

.method private calculateImageGroupAndSaveAsyncInternal(Ljava/util/List;Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;)V
    .locals 2
    .param p2, "listener"    # Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;",
            "Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 550
    .local p1, "images":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-static {p1}, Lcom/miui/gallery/card/CardUtil;->bindImageFeatures(Ljava/util/List;)V

    .line 551
    const/4 v0, 0x1

    new-instance v1, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$8;

    invoke-direct {v1, p0, p2}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$8;-><init>(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->calculateClusterGroupAsync(Ljava/util/List;ZLcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;)V

    .line 578
    return-void
.end method

.method private calculateImageGroupWithAlgorithmAsync(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;Ljava/util/List;Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;)V
    .locals 17
    .param p1, "priority"    # Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;
    .param p3, "listener"    # Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;",
            "Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 480
    .local p2, "images":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-static/range {p2 .. p2}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 481
    const-string v3, "ImageFeatureManger"

    const-string v4, "Calculate imageGroup with algorithm async,image count:%d"

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 482
    const/4 v3, 0x1

    new-array v14, v3, [I

    const/4 v3, 0x0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    aput v4, v14, v3

    .line 483
    .local v14, "imageCount":[I
    new-instance v12, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$7;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v12, v0, v14, v1, v2}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$7;-><init>(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;[ILjava/util/List;Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;)V

    .line 508
    .local v12, "newListener":Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;, "Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener<Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    .line 509
    .local v15, "mediaFeatureItem":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    const/4 v11, 0x0

    .line 510
    .local v11, "algorithmFlag":I
    invoke-virtual {v15}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getImageFeature()Lcom/miui/gallery/assistant/model/ImageFeature;

    move-result-object v3

    if-nez v3, :cond_2

    .line 511
    sget v11, Lcom/miui/gallery/assistant/algorithm/Algorithm;->FLAG_ALL:I

    .line 520
    :cond_1
    if-eqz v11, :cond_4

    .line 521
    invoke-virtual {v15}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getImagePath()Ljava/lang/String;

    move-result-object v10

    .line 522
    .local v10, "path":Ljava/lang/String;
    invoke-virtual {v15}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getId()J

    move-result-wide v5

    .line 523
    invoke-virtual {v15}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getSha1()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getDateTime()J

    move-result-wide v8

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 522
    invoke-direct/range {v3 .. v12}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->handleImageFileWithAlgorithmAsync(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;JLjava/lang/String;JLjava/lang/String;ILcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;)V

    .line 530
    .end local v10    # "path":Ljava/lang/String;
    :goto_1
    const/4 v3, 0x0

    aget v3, v14, v3

    if-gtz v3, :cond_0

    .line 531
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->calculateImageGroupAndSaveAsyncInternal(Ljava/util/List;Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;)V

    goto :goto_0

    .line 514
    :cond_2
    sget-object v4, Lcom/miui/gallery/assistant/algorithm/Algorithm;->FLAG_ALL_ARRAY:[I

    array-length v5, v4

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v5, :cond_1

    aget v13, v4, v3

    .line 515
    .local v13, "flag":I
    invoke-virtual {v15}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getImageFeature()Lcom/miui/gallery/assistant/model/ImageFeature;

    move-result-object v6

    invoke-virtual {v6, v13}, Lcom/miui/gallery/assistant/model/ImageFeature;->isFeatureDone(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 516
    invoke-static {v11, v13}, Lcom/miui/gallery/util/assistant/FlagUtil;->setFlag(II)I

    move-result v11

    .line 514
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 527
    .end local v13    # "flag":I
    :cond_4
    const/4 v3, 0x0

    aget v4, v14, v3

    add-int/lit8 v4, v4, -0x1

    aput v4, v14, v3

    goto :goto_1

    .line 535
    .end local v11    # "algorithmFlag":I
    .end local v12    # "newListener":Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;, "Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener<Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;>;"
    .end local v14    # "imageCount":[I
    .end local v15    # "mediaFeatureItem":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    :cond_5
    if-eqz p3, :cond_6

    .line 536
    invoke-interface/range {p3 .. p3}, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;->onCancel()V

    .line 539
    :cond_6
    return-void
.end method

.method private createImagesDeleteRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 165
    new-instance v0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$2;-><init>(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;)V

    return-object v0
.end method

.method private createNewImageCalculateRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 257
    new-instance v0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$3;-><init>(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;)V

    return-object v0
.end method

.method private deleteImageFromCard()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {p0}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->createImagesDeleteRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 162
    return-void
.end method

.method private declared-synchronized deleteImagesFromCard()V
    .locals 11

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    const-string v2, "imageId>0 AND version=2 AND imageType=2"

    .line 180
    .local v2, "selection":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    const-class v1, Lcom/miui/gallery/assistant/model/ImageFeature;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/dao/GalleryEntityManager;->query(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 182
    .local v7, "images":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/ImageFeature;>;"
    invoke-static {v7}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 203
    :goto_0
    monitor-exit p0

    return-void

    .line 186
    :cond_0
    :try_start_1
    const-string v0, "ImageFeatureManger"

    const-string v1, "Delete %d images,search them in cards"

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 188
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 189
    .local v8, "sha1s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/assistant/model/ImageFeature;

    .line 190
    .local v6, "imageFeature":Lcom/miui/gallery/assistant/model/ImageFeature;
    invoke-virtual {v6}, Lcom/miui/gallery/assistant/model/ImageFeature;->getSha1()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 177
    .end local v2    # "selection":Ljava/lang/String;
    .end local v6    # "imageFeature":Lcom/miui/gallery/assistant/model/ImageFeature;
    .end local v7    # "images":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/ImageFeature;>;"
    .end local v8    # "sha1s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 193
    .restart local v2    # "selection":Ljava/lang/String;
    .restart local v7    # "images":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/ImageFeature;>;"
    .restart local v8    # "sha1s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :try_start_2
    invoke-static {v8}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    invoke-static {}, Lcom/miui/gallery/card/CardManager;->getInstance()Lcom/miui/gallery/card/CardManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/miui/gallery/card/CardManager;->onDeleteImages(Ljava/util/List;)V

    .line 197
    :cond_2
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 198
    .local v10, "values":Landroid/content/ContentValues;
    const-string v0, "imageType"

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 199
    const-string v0, "%s IN (\'%s\')"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "sha1"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const-string v4, "\',\'"

    .line 201
    invoke-static {v4, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 199
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 202
    .local v9, "updateSelection":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    const-class v1, Lcom/miui/gallery/assistant/model/ImageFeature;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v10, v9, v3}, Lcom/miui/gallery/dao/GalleryEntityManager;->update(Ljava/lang/Class;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private ensureImagePath(Lcom/miui/gallery/assistant/model/MediaFeatureItem;)Z
    .locals 10
    .param p1, "mediaFeatureItem"    # Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    .prologue
    const/4 v4, 0x1

    .line 365
    invoke-virtual {p1}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getImagePath()Ljava/lang/String;

    move-result-object v1

    .line 367
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 368
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 369
    .local v2, "start":J
    sget-object v5, Lcom/miui/gallery/sdk/download/DownloadType;->MICRO:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-static {p1, v5, v4}, Lcom/miui/gallery/assistant/process/BaseImageTask;->getImageFilePath(Lcom/miui/gallery/assistant/model/MediaFeatureItem;Lcom/miui/gallery/sdk/download/DownloadType;Z)Lcom/miui/gallery/threadpool/Future;

    move-result-object v0

    .line 370
    .local v0, "future":Lcom/miui/gallery/threadpool/Future;
    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "path":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 371
    .restart local v1    # "path":Ljava/lang/String;
    const-string v5, "ImageFeatureManger"

    const-string v6, "get micro thumb image using time:%d ms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 373
    .end local v0    # "future":Lcom/miui/gallery/threadpool/Future;
    .end local v2    # "start":J
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static filterNearByImages(Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "nearByImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    const-wide/16 v10, 0x0

    .line 390
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 391
    .local v6, "mediaFeatureItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-static {p0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 392
    const-wide/16 v4, 0x0

    .line 393
    .local v4, "lastGroupId":J
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    .line 394
    .local v3, "mediaFeatureItem":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    invoke-virtual {v3}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getImageFeature()Lcom/miui/gallery/assistant/model/ImageFeature;

    move-result-object v2

    .line 395
    .local v2, "imageFeature":Lcom/miui/gallery/assistant/model/ImageFeature;
    if-nez v2, :cond_0

    .line 396
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 398
    :cond_0
    invoke-virtual {v2}, Lcom/miui/gallery/assistant/model/ImageFeature;->getClusterGroupId()J

    move-result-wide v0

    .line 399
    .local v0, "groupId":J
    cmp-long v8, v0, v10

    if-nez v8, :cond_1

    .line 400
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 402
    :cond_1
    cmp-long v8, v4, v10

    if-nez v8, :cond_2

    .line 403
    move-wide v4, v0

    .line 404
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 405
    :cond_2
    cmp-long v8, v4, v0

    if-nez v8, :cond_3

    .line 406
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 414
    .end local v0    # "groupId":J
    .end local v2    # "imageFeature":Lcom/miui/gallery/assistant/model/ImageFeature;
    .end local v3    # "mediaFeatureItem":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    .end local v4    # "lastGroupId":J
    :cond_3
    return-object v6
.end method

.method private getBatchImageAlgorithmRequest(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;JLjava/lang/String;JLandroid/graphics/Bitmap;I)Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;
    .locals 9
    .param p1, "priority"    # Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;
    .param p2, "imageId"    # J
    .param p4, "sha1"    # Ljava/lang/String;
    .param p5, "imageDateTime"    # J
    .param p7, "bitmap"    # Landroid/graphics/Bitmap;
    .param p8, "algorithmFlags"    # I

    .prologue
    .line 685
    if-eqz p7, :cond_0

    .line 686
    new-instance v0, Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-wide v5, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;-><init>(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;JLjava/lang/String;JLandroid/graphics/Bitmap;I)V

    .line 688
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/miui/gallery/assistant/manager/ImageFeatureManger;
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFeatureMangerHolder;->access$100()Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    move-result-object v0

    return-object v0
.end method

.method private getScaledBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/16 v5, 0xe0

    .line 695
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v3

    .line 718
    :goto_0
    return-object v0

    .line 699
    :cond_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 700
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 701
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 702
    const/4 v0, 0x0

    .line 704
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 706
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lt v4, v5, :cond_1

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ge v4, v5, :cond_2

    :cond_1
    move-object v0, v3

    .line 707
    goto :goto_0

    .line 709
    :cond_2
    const/16 v3, 0x190

    const/16 v4, 0x190

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/assistant/ImageUtil;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 711
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 712
    iget-object v3, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mImageFeatureReusedBitCache:Lcom/miui/gallery/assistant/manager/ImageFeatureReusedBitCache;

    invoke-virtual {v3, v2}, Lcom/miui/gallery/assistant/manager/ImageFeatureReusedBitCache;->get(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 714
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 715
    :catch_0
    move-exception v1

    .line 716
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "ImageFeatureManger"

    invoke-static {v3, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getUnProcessedImages(Ljava/util/List;I)Ljava/util/List;
    .locals 11
    .param p2, "imageCountOnce"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    .local p1, "recentImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 337
    .local v10, "toProcessedImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 339
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    .line 341
    .local v9, "mediaFeatureItem":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v6, v0, :cond_3

    invoke-virtual {v9}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->isSelectionFeatureDone()Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, v6, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    invoke-virtual {v0}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->isSelectionFeatureDone()Z

    move-result v0

    if-nez v0, :cond_3

    .line 342
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_0
    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, p2, :cond_5

    .line 353
    .end local v6    # "i":I
    .end local v9    # "mediaFeatureItem":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    :cond_1
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "itemIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 354
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    .line 355
    .local v7, "item":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    invoke-direct {p0, v7}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->ensureImagePath(Lcom/miui/gallery/assistant/model/MediaFeatureItem;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 356
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 343
    .end local v7    # "item":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    .end local v8    # "itemIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    .restart local v6    # "i":I
    .restart local v9    # "mediaFeatureItem":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    :cond_3
    invoke-virtual {v9}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->isSelectionFeatureDone()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 344
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    invoke-virtual {v0}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getDateTime()J

    move-result-wide v0

    invoke-virtual {v9}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getDateTime()J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/card/scenario/DateUtils;->withinTime(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    :cond_4
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 338
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 360
    .end local v6    # "i":I
    .end local v9    # "mediaFeatureItem":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    .restart local v8    # "itemIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    :cond_6
    return-object v10
.end method

.method private handleImageFileWithAlgorithmAsync(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;JLjava/lang/String;JLjava/lang/String;ILcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;)V
    .locals 12
    .param p1, "priority"    # Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;
    .param p2, "imageId"    # J
    .param p4, "sha1"    # Ljava/lang/String;
    .param p5, "imageDateTime"    # J
    .param p7, "path"    # Ljava/lang/String;
    .param p8, "algorithmFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;",
            "J",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener",
            "<",
            "Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 466
    .local p9, "listener":Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;, "Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener<Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;>;"
    const-string v0, "ImageFeatureManger"

    const-string v1, "handle Image %d With Algorithm Async"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 467
    iget-object v10, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mImageFileInfoQueue:Ljava/util/Queue;

    new-instance v0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;-><init>(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;JLjava/lang/String;JLjava/lang/String;ILcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;)V

    invoke-interface {v10, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 468
    invoke-direct {p0}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->schedule()V

    .line 469
    return-void
.end method

.method public static isImageFeatureSelectionEnable()Z
    .locals 1

    .prologue
    .line 149
    sget-boolean v0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->sIsSupportImageFeatureSelection:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/gallery/util/BuildUtil;->isPad()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/miui/os/Rom;->IS_MIUI:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isImageFeatureSelectionVisiable()Z
    .locals 1

    .prologue
    .line 153
    sget-boolean v0, Lcom/miui/os/Rom;->IS_STABLE:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStoryFunctionEnable()Z
    .locals 1

    .prologue
    .line 157
    invoke-static {}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->isImageFeatureSelectionEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/gallery/util/BuildUtil;->isInternational()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/gallery/util/BuildUtil;->isPad()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private markCaculateState(Z)Z
    .locals 3
    .param p1, "isCaculating"    # Z

    .prologue
    .line 377
    const-string v0, "ImageFeatureManger"

    const-string v1, "New image Caculating : %b"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 378
    iput-boolean p1, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mIsCaculating:Z

    .line 379
    iget-boolean v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mIsCaculating:Z

    return v0
.end method

.method public static queryNearByMediaItems(J)Ljava/util/List;
    .locals 8
    .param p0, "time"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 424
    const-string v0, "%s < %s AND %s > %s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v4, "mixedDateTime"

    aput-object v4, v1, v2

    const/4 v2, 0x1

    .line 426
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const-string v4, "mixedDateTime"

    aput-object v4, v1, v2

    const/4 v2, 0x3

    const-wide/32 v4, 0x36ee80

    sub-long v4, p0, v4

    .line 428
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    .line 424
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 430
    .local v3, "selection":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "mixedDateTime DESC"

    new-instance v6, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$6;

    invoke-direct {v6}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$6;-><init>()V

    .line 429
    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private recycleBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 593
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mImageFeatureReusedBitCache:Lcom/miui/gallery/assistant/manager/ImageFeatureReusedBitCache;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/assistant/manager/ImageFeatureReusedBitCache;->put(Landroid/graphics/Bitmap;)V

    .line 594
    return-void
.end method

.method private schedule()V
    .locals 3

    .prologue
    .line 631
    iget v1, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mProcessingCount:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 632
    iget-object v1, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mImageFileInfoQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;

    .line 633
    .local v0, "imageFileInfo":Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;
    if-eqz v0, :cond_0

    .line 634
    iget v1, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mProcessingCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mProcessingCount:I

    .line 635
    iget-object v1, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9;

    invoke-direct {v2, p0, v0}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9;-><init>(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 680
    .end local v0    # "imageFileInfo":Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;
    :cond_0
    return-void
.end method

.method private scheduleNewImages()V
    .locals 12

    .prologue
    const/16 v3, 0xc8

    const/16 v11, 0x1e

    const/4 v10, 0x0

    .line 266
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->isAppProcessInForeground(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->getPowerCanSync()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    const-string v0, "ImageFeatureManger"

    const-string v1, "Status meet,trigger new image feature calculation"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    new-instance v7, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$4;

    invoke-direct {v7, p0}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$4;-><init>(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;)V

    .line 294
    .local v7, "listener":Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;
    const-string v0, "ImageFeatureManger"

    const-string v1, "Start process recent %d images for image selection"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 295
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    .line 296
    invoke-static {v1, v3}, Lcom/miui/gallery/util/UriUtil;->appendLimit(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->PROJECTION:[Ljava/lang/String;

    sget-object v3, Lcom/miui/gallery/card/scenario/ScenarioConstants;->ALL_IMAGE_BASE_SELECTION:Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "mixedDateTime DESC"

    new-instance v6, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$5;

    invoke-direct {v6, p0}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$5;-><init>(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;)V

    .line 295
    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 311
    .local v8, "recentImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-static {v8}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    invoke-static {v8}, Lcom/miui/gallery/card/CardUtil;->bindImageFeatures(Ljava/util/List;)V

    .line 314
    invoke-direct {p0, v8, v11}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->getUnProcessedImages(Ljava/util/List;I)Ljava/util/List;

    move-result-object v9

    .line 315
    .local v9, "toProcessingImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-static {v9}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v11, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mHasMoreImageToProcess:Z

    .line 317
    sget-object v0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;->PRIORITY_NORMAL:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;

    invoke-direct {p0, v0, v9, v7}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->calculateImageGroupWithAlgorithmAsync(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;Ljava/util/List;Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;)V

    .line 325
    .end local v7    # "listener":Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;
    .end local v8    # "recentImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    .end local v9    # "toProcessingImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    :goto_1
    return-void

    .restart local v7    # "listener":Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;
    .restart local v8    # "recentImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    .restart local v9    # "toProcessingImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    :cond_0
    move v0, v10

    .line 316
    goto :goto_0

    .line 324
    .end local v7    # "listener":Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;
    .end local v8    # "recentImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    .end local v9    # "toProcessingImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    :cond_1
    invoke-direct {p0, v10}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->markCaculateState(Z)Z

    goto :goto_1
.end method


# virtual methods
.method public calculateClusterGroupAsync(Ljava/util/List;ZLcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;)V
    .locals 2
    .param p2, "saveRuslt"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;Z",
            "Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener",
            "<",
            "Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 455
    .local p1, "mediaFeatureItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    .local p3, "listener":Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;, "Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener<Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;>;"
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 456
    new-instance v0, Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest;

    sget-object v1, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;->PRIORITY_NORMAL:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;

    invoke-direct {v0, v1, p1, p2}, Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest;-><init>(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;Ljava/util/List;Z)V

    .line 458
    .local v0, "clusterGroupRequest":Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest;
    invoke-virtual {v0, p3}, Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest;->setMainThreadListener(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;)V

    .line 459
    invoke-virtual {v0}, Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest;->execute()V

    .line 461
    .end local v0    # "clusterGroupRequest":Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest;
    :cond_0
    return-void
.end method

.method public calculateClusterGroupSync(Ljava/util/List;Z)Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;
    .locals 3
    .param p2, "saveRuslt"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;Z)",
            "Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;"
        }
    .end annotation

    .prologue
    .line 445
    .local p1, "mediaFeatureItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 446
    new-instance v0, Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest;

    sget-object v1, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;->PRIORITY_NORMAL:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;

    invoke-direct {v0, v1, p1, p2}, Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest;-><init>(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;Ljava/util/List;Z)V

    .line 448
    .local v0, "clusterGroupRequest":Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest;
    invoke-virtual {v0}, Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest;->executeSync()Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;

    .line 450
    .end local v0    # "clusterGroupRequest":Lcom/miui/gallery/assistant/manager/request/ClusterGroupRequest;
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;-><init>(I)V

    goto :goto_0
.end method

.method public handleImageFileWithAlgorithmSync(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;JLjava/lang/String;JLjava/lang/String;I)Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;
    .locals 12
    .param p1, "priority"    # Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;
    .param p2, "imageId"    # J
    .param p4, "sha1"    # Ljava/lang/String;
    .param p5, "imageDateTime"    # J
    .param p7, "path"    # Ljava/lang/String;
    .param p8, "algorithmFlags"    # I

    .prologue
    .line 583
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 584
    move-object/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->getScaledBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .local v8, "bitmap":Landroid/graphics/Bitmap;
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move/from16 v9, p8

    .line 585
    invoke-virtual/range {v1 .. v9}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->handleImageWithAlgorithmSync(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;JLjava/lang/String;JLandroid/graphics/Bitmap;I)Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;

    move-result-object v10

    .line 586
    .local v10, "result":Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;
    invoke-direct {p0, v8}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 589
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v10    # "result":Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;
    :goto_0
    return-object v10

    :cond_0
    new-instance v10, Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;

    const/4 v1, 0x3

    invoke-direct {v10, v1, p2, p3}, Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;-><init>(IJ)V

    goto :goto_0
.end method

.method public handleImageWithAlgorithmAsync(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;JLjava/lang/String;JLandroid/graphics/Bitmap;ILcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;)V
    .locals 1
    .param p1, "priority"    # Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;
    .param p2, "imageId"    # J
    .param p4, "sha1"    # Ljava/lang/String;
    .param p5, "imageDateTime"    # J
    .param p7, "bitmap"    # Landroid/graphics/Bitmap;
    .param p8, "algorithmFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;",
            "J",
            "Ljava/lang/String;",
            "J",
            "Landroid/graphics/Bitmap;",
            "I",
            "Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener",
            "<",
            "Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 618
    .line 619
    .local p9, "listener":Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;, "Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener<Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;>;"
    invoke-direct/range {p0 .. p8}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->getBatchImageAlgorithmRequest(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;JLjava/lang/String;JLandroid/graphics/Bitmap;I)Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;

    move-result-object v0

    .line 620
    .local v0, "batchImageAlgorithmRequest":Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;
    if-eqz v0, :cond_1

    .line 621
    invoke-virtual {v0, p9}, Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;->setMainThreadListener(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;)V

    .line 622
    invoke-virtual {v0}, Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;->execute()V

    .line 628
    :cond_0
    :goto_0
    return-void

    .line 624
    :cond_1
    if-eqz p9, :cond_0

    .line 625
    invoke-interface {p9}, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;->onCancel()V

    goto :goto_0
.end method

.method public handleImageWithAlgorithmSync(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;JLjava/lang/String;JLandroid/graphics/Bitmap;I)Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;
    .locals 4
    .param p1, "priority"    # Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;
    .param p2, "imageId"    # J
    .param p4, "sha1"    # Ljava/lang/String;
    .param p5, "imageDateTime"    # J
    .param p7, "bitmap"    # Landroid/graphics/Bitmap;
    .param p8, "algorithmFlags"    # I

    .prologue
    .line 599
    .line 600
    invoke-direct/range {p0 .. p8}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->getBatchImageAlgorithmRequest(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;JLjava/lang/String;JLandroid/graphics/Bitmap;I)Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;

    move-result-object v0

    .line 601
    .local v0, "batchImageAlgorithmRequest":Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;
    if-eqz v0, :cond_0

    .line 602
    invoke-virtual {v0}, Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;->executeSync()Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;

    .line 604
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p2, p3}, Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;-><init>(IJ)V

    goto :goto_0
.end method

.method public onImageDelete(J)V
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 232
    invoke-static {}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->getInstance()Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->onImageDelete(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    const-string v0, "ImageFeatureManger"

    const-string v1, "Image %s delete or add to secret, delete them in cards"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 235
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getWorkHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mImageDeleteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 236
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getWorkHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mImageDeleteRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/CompatHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 238
    :cond_0
    return-void
.end method

.method public onImageDelete(Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 207
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 208
    .local v2, "imageId":J
    invoke-virtual {p0, v2, v3}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->onImageDelete(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .end local v2    # "imageId":J
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "ImageFeatureManger"

    invoke-static {v1, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public triggerNewImageCalculation()V
    .locals 2

    .prologue
    .line 244
    invoke-static {}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->isImageFeatureSelectionEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-static {}, Lcom/miui/gallery/assistant/library/LibraryManager;->getInstance()Lcom/miui/gallery/assistant/library/LibraryManager;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/assistant/library/LibraryConstants;->sImageFeatureSelectionLibraries:[Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/assistant/library/LibraryManager;->isLibrarysExist([Ljava/lang/Long;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 246
    :cond_0
    const-string v0, "ImageFeatureManger"

    const-string v1, "ImageFeature Selection Disable or Libraries not exist"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_1
    :goto_0
    return-void

    .line 250
    :cond_2
    iget-boolean v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mIsCaculating:Z

    if-nez v0, :cond_1

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mIsCaculating:Z

    .line 252
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {p0}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->createNewImageCalculateRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
