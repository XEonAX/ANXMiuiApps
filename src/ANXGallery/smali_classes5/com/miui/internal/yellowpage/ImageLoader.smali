.class public Lcom/miui/internal/yellowpage/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;,
        Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;,
        Lcom/miui/internal/yellowpage/ImageLoader$State;
    }
.end annotation


# static fields
.field private static final BITMAP_CACHE_SIZE:I = 0xa00000

.field private static final MESSAGE_REQUEST_LOAD:I = 0x2

.field private static final MESSAGE_REQUEST_LOADED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ImageLoader"

.field private static final THREAD_POOL_COUNT:I = 0x6

.field private static sDisplayHeight:I

.field private static sDisplayWidth:I

.field private static sLoader:Lcom/miui/internal/yellowpage/ImageLoader;


# instance fields
.field private final BITMAP_CACHE_LOCK:Ljava/lang/Object;

.field private final mBitmapCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Lmiui/yellowpage/YellowPageImgLoader$Image;",
            "Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mDefaultBitmapCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mMainThreadHandler:Landroid/os/Handler;

.field private mNetworkAccess:I

.field private volatile mPauseLoading:Z

.field private final mPendingRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lmiui/yellowpage/YellowPageImgLoader$Image;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRequestingImageViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lmiui/yellowpage/YellowPageImgLoader$Image;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->BITMAP_CACHE_LOCK:Ljava/lang/Object;

    .line 105
    new-instance v0, Lcom/miui/internal/yellowpage/ImageLoader$1;

    const/high16 v1, 0xa00000

    invoke-direct {v0, p0, v1}, Lcom/miui/internal/yellowpage/ImageLoader$1;-><init>(Lcom/miui/internal/yellowpage/ImageLoader;I)V

    iput-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mBitmapCache:Landroid/util/LruCache;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mDefaultBitmapCache:Ljava/util/Map;

    .line 113
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mPendingRequests:Ljava/util/Map;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mRequestingImageViews:Ljava/util/Map;

    .line 115
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mMainThreadHandler:Landroid/os/Handler;

    .line 116
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mContext:Landroid/content/Context;

    .line 118
    return-void
.end method

.method static synthetic access$100(Lcom/miui/internal/yellowpage/ImageLoader;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/yellowpage/ImageLoader;

    .line 42
    iget-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->BITMAP_CACHE_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/internal/yellowpage/ImageLoader;)Landroid/util/LruCache;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/yellowpage/ImageLoader;

    .line 42
    iget-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mBitmapCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/internal/yellowpage/ImageLoader;Lmiui/yellowpage/YellowPageImgLoader$Image;Z)[B
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/yellowpage/ImageLoader;
    .param p1, "x1"    # Lmiui/yellowpage/YellowPageImgLoader$Image;
    .param p2, "x2"    # Z

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImage(Lmiui/yellowpage/YellowPageImgLoader$Image;Z)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/internal/yellowpage/ImageLoader;Lmiui/yellowpage/YellowPageImgLoader$Image;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/internal/yellowpage/ImageLoader;
    .param p1, "x1"    # Lmiui/yellowpage/YellowPageImgLoader$Image;
    .param p2, "x2"    # [B

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/yellowpage/ImageLoader;->cacheBitmap(Lmiui/yellowpage/YellowPageImgLoader$Image;[B)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/internal/yellowpage/ImageLoader;Lmiui/yellowpage/YellowPageImgLoader$Image;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/internal/yellowpage/ImageLoader;
    .param p1, "x1"    # Lmiui/yellowpage/YellowPageImgLoader$Image;

    .line 42
    invoke-direct {p0, p1}, Lcom/miui/internal/yellowpage/ImageLoader;->removeFailedImage(Lmiui/yellowpage/YellowPageImgLoader$Image;)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/internal/yellowpage/ImageLoader;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/yellowpage/ImageLoader;

    .line 42
    iget-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static acquireScreenAttr(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 135
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 136
    .local v0, "dm":Landroid/util/DisplayMetrics;
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 137
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 138
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v2, Lcom/miui/internal/yellowpage/ImageLoader;->sDisplayHeight:I

    .line 139
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v2, Lcom/miui/internal/yellowpage/ImageLoader;->sDisplayWidth:I

    .line 140
    return-void
.end method

.method private bindCachedImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;)Lcom/miui/internal/yellowpage/ImageLoader$State;
    .locals 5
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "image"    # Lmiui/yellowpage/YellowPageImgLoader$Image;

    .line 241
    iget-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->BITMAP_CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 242
    :try_start_0
    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v1, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;

    .line 243
    .local v1, "holder":Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mState:Lcom/miui/internal/yellowpage/ImageLoader$State;

    sget-object v3, Lcom/miui/internal/yellowpage/ImageLoader$State;->LOADED:Lcom/miui/internal/yellowpage/ImageLoader$State;

    if-ne v2, v3, :cond_0

    .line 244
    iget-object v2, v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v2}, Lcom/miui/internal/yellowpage/ImageLoader;->bindImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 245
    sget-object v2, Lcom/miui/internal/yellowpage/ImageLoader$State;->LOADED:Lcom/miui/internal/yellowpage/ImageLoader$State;

    monitor-exit v0

    return-object v2

    .line 246
    :cond_0
    if-eqz v1, :cond_1

    .line 247
    iget-object v2, v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mState:Lcom/miui/internal/yellowpage/ImageLoader$State;

    monitor-exit v0

    return-object v2

    .line 249
    :cond_1
    const-string v2, "ImageLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot get image:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmiui/yellowpage/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .end local v1    # "holder":Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    sget-object v0, Lcom/miui/internal/yellowpage/ImageLoader$State;->NEEDED:Lcom/miui/internal/yellowpage/ImageLoader$State;

    return-object v0

    .line 251
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private bindDefaultImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;Landroid/graphics/Bitmap;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "image"    # Lmiui/yellowpage/YellowPageImgLoader$Image;
    .param p3, "defaultBitmap"    # Landroid/graphics/Bitmap;
    .param p4, "defaultResId"    # I

    .line 496
    iget-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mDefaultBitmapCache:Ljava/util/Map;

    invoke-static {p3, p4}, Lcom/miui/internal/yellowpage/ImageLoader;->getDefaultImageKey(Landroid/graphics/Bitmap;I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 497
    .local v0, "cachedDefaultBitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 499
    if-eqz p3, :cond_0

    .line 500
    :try_start_0
    invoke-virtual {p2, p3}, Lmiui/yellowpage/YellowPageImgLoader$Image;->proccessImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v0, v1

    goto :goto_1

    .line 505
    :catch_0
    move-exception v1

    goto :goto_0

    .line 501
    :cond_0
    if-eqz p4, :cond_1

    .line 502
    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 503
    invoke-virtual {v1, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 502
    invoke-virtual {p2, v1}, Lmiui/yellowpage/YellowPageImgLoader$Image;->proccessImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_1

    .line 505
    :goto_0
    nop

    .line 506
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    goto :goto_2

    .line 507
    :cond_1
    :goto_1
    nop

    .line 509
    :goto_2
    if-eqz v0, :cond_2

    .line 510
    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mDefaultBitmapCache:Ljava/util/Map;

    invoke-static {p3, p4}, Lcom/miui/internal/yellowpage/ImageLoader;->getDefaultImageKey(Landroid/graphics/Bitmap;I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    :cond_2
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 514
    return-void
.end method

.method private bindImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 489
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 490
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 492
    :cond_0
    return-void
.end method

.method private static bitmapToByteArray(Landroid/graphics/Bitmap;)[B
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 217
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 218
    .local v0, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 219
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private cacheBitmap(Lmiui/yellowpage/YellowPageImgLoader$Image;[B)V
    .locals 4
    .param p1, "image"    # Lmiui/yellowpage/YellowPageImgLoader$Image;
    .param p2, "bitmapData"    # [B

    .line 262
    iget-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->BITMAP_CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    :try_start_0
    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;

    .line 264
    .local v1, "holder":Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;
    if-nez v1, :cond_0

    .line 265
    new-instance v2, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;-><init>(Lcom/miui/internal/yellowpage/ImageLoader$1;)V

    move-object v1, v2

    goto :goto_0

    .line 267
    :cond_0
    iget-object v2, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;

    move-object v1, v2

    .line 270
    :goto_0
    invoke-direct {p0, p1, v1, p2}, Lcom/miui/internal/yellowpage/ImageLoader;->inflateBitmap(Lmiui/yellowpage/YellowPageImgLoader$Image;Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;[B)V

    .line 271
    iget-object v2, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v2, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v2, v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 273
    sget-object v2, Lcom/miui/internal/yellowpage/ImageLoader$State;->LOADED:Lcom/miui/internal/yellowpage/ImageLoader$State;

    iput-object v2, v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mState:Lcom/miui/internal/yellowpage/ImageLoader$State;

    goto :goto_1

    .line 275
    :cond_1
    sget-object v2, Lcom/miui/internal/yellowpage/ImageLoader$State;->NEEDED:Lcom/miui/internal/yellowpage/ImageLoader$State;

    iput-object v2, v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mState:Lcom/miui/internal/yellowpage/ImageLoader$State;

    .line 278
    .end local v1    # "holder":Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;
    :goto_1
    monitor-exit v0

    .line 279
    return-void

    .line 278
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 6
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I

    .line 319
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 320
    .local v0, "height":I
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 321
    .local v1, "width":I
    const/4 v2, 0x1

    .line 323
    .local v2, "inSampleSize":I
    if-gt v0, p3, :cond_0

    if-le v1, p2, :cond_2

    .line 326
    :cond_0
    int-to-float v3, v0

    int-to-float v4, p3

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 327
    .local v3, "heightRatio":I
    int-to-float v4, v1

    int-to-float v5, p2

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 332
    .local v4, "widthRatio":I
    if-ge v3, v4, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    move v2, v5

    .line 335
    .end local v3    # "heightRatio":I
    .end local v4    # "widthRatio":I
    :cond_2
    return v2
.end method

.method private decodeBitmap([B)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "bytes"    # [B

    .line 299
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 301
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 302
    .local v0, "ops":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 303
    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {p1, v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 306
    invoke-direct {p0}, Lcom/miui/internal/yellowpage/ImageLoader;->getDisplayWidth()I

    move-result v3

    invoke-direct {p0}, Lcom/miui/internal/yellowpage/ImageLoader;->getDisplayHeight()I

    move-result v4

    invoke-direct {p0, v0, v3, v4}, Lcom/miui/internal/yellowpage/ImageLoader;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 309
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 310
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 311
    array-length v1, p1

    invoke-static {p1, v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 313
    .end local v0    # "ops":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getDefaultImageKey(Landroid/graphics/Bitmap;I)Ljava/lang/Object;
    .locals 1
    .param p0, "defaultBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "defaultResId"    # I

    .line 517
    if-eqz p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getDisplayHeight()I
    .locals 1

    .line 121
    sget v0, Lcom/miui/internal/yellowpage/ImageLoader;->sDisplayHeight:I

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/internal/yellowpage/ImageLoader;->acquireScreenAttr(Landroid/content/Context;)V

    .line 124
    :cond_0
    sget v0, Lcom/miui/internal/yellowpage/ImageLoader;->sDisplayHeight:I

    return v0
.end method

.method private getDisplayWidth()I
    .locals 1

    .line 128
    sget v0, Lcom/miui/internal/yellowpage/ImageLoader;->sDisplayWidth:I

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/internal/yellowpage/ImageLoader;->acquireScreenAttr(Landroid/content/Context;)V

    .line 131
    :cond_0
    sget v0, Lcom/miui/internal/yellowpage/ImageLoader;->sDisplayWidth:I

    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/internal/yellowpage/ImageLoader;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/miui/internal/yellowpage/ImageLoader;

    monitor-enter v0

    .line 87
    :try_start_0
    sget-object v1, Lcom/miui/internal/yellowpage/ImageLoader;->sLoader:Lcom/miui/internal/yellowpage/ImageLoader;

    if-nez v1, :cond_0

    .line 88
    new-instance v1, Lcom/miui/internal/yellowpage/ImageLoader;

    invoke-direct {v1, p0}, Lcom/miui/internal/yellowpage/ImageLoader;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/internal/yellowpage/ImageLoader;->sLoader:Lcom/miui/internal/yellowpage/ImageLoader;

    .line 90
    :cond_0
    sget-object v1, Lcom/miui/internal/yellowpage/ImageLoader;->sLoader:Lcom/miui/internal/yellowpage/ImageLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 86
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;I)Lcom/miui/internal/yellowpage/ImageLoader;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "networkAccess"    # I

    const-class v0, Lcom/miui/internal/yellowpage/ImageLoader;

    monitor-enter v0

    .line 97
    :try_start_0
    sget-object v1, Lcom/miui/internal/yellowpage/ImageLoader;->sLoader:Lcom/miui/internal/yellowpage/ImageLoader;

    if-nez v1, :cond_0

    .line 98
    new-instance v1, Lcom/miui/internal/yellowpage/ImageLoader;

    invoke-direct {v1, p0}, Lcom/miui/internal/yellowpage/ImageLoader;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/internal/yellowpage/ImageLoader;->sLoader:Lcom/miui/internal/yellowpage/ImageLoader;

    .line 100
    :cond_0
    sget-object v1, Lcom/miui/internal/yellowpage/ImageLoader;->sLoader:Lcom/miui/internal/yellowpage/ImageLoader;

    iput p1, v1, Lcom/miui/internal/yellowpage/ImageLoader;->mNetworkAccess:I

    .line 101
    sget-object v1, Lcom/miui/internal/yellowpage/ImageLoader;->sLoader:Lcom/miui/internal/yellowpage/ImageLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 96
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "networkAccess":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private inflateBitmap(Lmiui/yellowpage/YellowPageImgLoader$Image;Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;[B)V
    .locals 3
    .param p1, "image"    # Lmiui/yellowpage/YellowPageImgLoader$Image;
    .param p2, "holder"    # Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;
    .param p3, "raw"    # [B

    .line 283
    if-eqz p3, :cond_1

    .line 284
    :try_start_0
    invoke-direct {p0, p3}, Lcom/miui/internal/yellowpage/ImageLoader;->decodeBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 285
    .local v0, "src":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {p1, v0}, Lmiui/yellowpage/YellowPageImgLoader$Image;->proccessImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p2, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 288
    :cond_0
    const-string v1, "ImageLoader"

    const-string v2, "Can not decode bitmap bytes."

    invoke-static {v1, v2}, Lmiui/yellowpage/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .end local v0    # "src":Landroid/graphics/Bitmap;
    :goto_0
    goto :goto_1

    .line 293
    :catch_0
    move-exception v0

    goto :goto_2

    .line 291
    :cond_1
    const-string v0, "ImageLoader"

    const-string v1, "The holder\'s bytes should not be null"

    invoke-static {v0, v1}, Lmiui/yellowpage/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :goto_1
    goto :goto_3

    .line 293
    :goto_2
    nop

    .line 294
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 296
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :goto_3
    return-void
.end method

.method private loadCachedImageBytes(Lmiui/yellowpage/YellowPageImgLoader$Image;)[B
    .locals 4
    .param p1, "image"    # Lmiui/yellowpage/YellowPageImgLoader$Image;

    .line 223
    iget-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->BITMAP_CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_0
    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;

    .line 225
    .local v1, "holder":Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mState:Lcom/miui/internal/yellowpage/ImageLoader$State;

    sget-object v3, Lcom/miui/internal/yellowpage/ImageLoader$State;->LOADED:Lcom/miui/internal/yellowpage/ImageLoader$State;

    if-ne v2, v3, :cond_0

    .line 226
    iget-object v2, v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/miui/internal/yellowpage/ImageLoader;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 228
    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 230
    .end local v1    # "holder":Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private loadImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;Landroid/graphics/Bitmap;I)V
    .locals 4
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "image"    # Lmiui/yellowpage/YellowPageImgLoader$Image;
    .param p3, "defaultBitmap"    # Landroid/graphics/Bitmap;
    .param p4, "defaultImageRes"    # I

    .line 162
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lmiui/yellowpage/YellowPageImgLoader$Image;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 164
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/yellowpage/ImageLoader;->bindCachedImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;)Lcom/miui/internal/yellowpage/ImageLoader$State;

    move-result-object v0

    .line 165
    .local v0, "loadState":Lcom/miui/internal/yellowpage/ImageLoader$State;
    sget-object v1, Lcom/miui/internal/yellowpage/ImageLoader$State;->LOADED:Lcom/miui/internal/yellowpage/ImageLoader$State;

    if-ne v0, v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mPendingRequests:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    return-void

    .line 171
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/internal/yellowpage/ImageLoader;->bindDefaultImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;Landroid/graphics/Bitmap;I)V

    .line 174
    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mPendingRequests:Ljava/util/Map;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-direct {p0, p1}, Lcom/miui/internal/yellowpage/ImageLoader;->requestLoading(Landroid/widget/ImageView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mPendingRequests:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .end local v0    # "loadState":Lcom/miui/internal/yellowpage/ImageLoader$State;
    :cond_1
    goto :goto_1

    .line 179
    :cond_2
    const-string v0, "ImageLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadImage: invalid image : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-nez p2, :cond_3

    move-object v3, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lmiui/yellowpage/YellowPageImgLoader$Image;->getUrl()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/yellowpage/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mPendingRequests:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 182
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/internal/yellowpage/ImageLoader;->bindDefaultImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;Landroid/graphics/Bitmap;I)V

    .line 184
    :goto_1
    return-void
.end method

.method private loadImage(Lmiui/yellowpage/YellowPageImgLoader$Image;Z)[B
    .locals 1
    .param p1, "image"    # Lmiui/yellowpage/YellowPageImgLoader$Image;
    .param p2, "online"    # Z

    .line 521
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImage(Lmiui/yellowpage/YellowPageImgLoader$Image;ZI)[B

    move-result-object v0

    return-object v0
.end method

.method private loadImage(Lmiui/yellowpage/YellowPageImgLoader$Image;ZI)[B
    .locals 21
    .param p1, "image"    # Lmiui/yellowpage/YellowPageImgLoader$Image;
    .param p2, "online"    # Z
    .param p3, "timeout"    # I

    move-object/from16 v1, p0

    .line 525
    invoke-virtual/range {p1 .. p1}, Lmiui/yellowpage/YellowPageImgLoader$Image;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 526
    .local v2, "url":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 527
    return-object v3

    .line 530
    :cond_0
    move-object v4, v3

    .line 532
    .local v4, "afd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    iget-object v0, v1, Lcom/miui/internal/yellowpage/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v5, Lmiui/yellowpage/YellowPageContract$ImageLookup;->CONTENT_URI_IMAGE:Landroid/net/Uri;

    .line 533
    invoke-virtual/range {p1 .. p1}, Lmiui/yellowpage/YellowPageImgLoader$Image;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "w"

    .line 532
    invoke-virtual {v0, v5, v6}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_29

    move-object v4, v0

    .line 537
    nop

    .line 539
    const/4 v5, 0x0

    .line 540
    .local v5, "os":Ljava/io/OutputStream;
    const/4 v6, 0x0

    .line 541
    .local v6, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v7, 0x0

    .line 542
    .local v7, "is":Ljava/io/FileInputStream;
    move-object v8, v3

    .line 544
    .local v8, "cloudImage":Landroid/content/res/AssetFileDescriptor;
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v6, v0

    .line 545
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v9
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_15
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v11, 0x0

    cmp-long v0, v9, v11

    const/4 v9, -0x1

    const/16 v10, 0x1000

    if-nez v0, :cond_e

    if-eqz p2, :cond_e

    .line 547
    :try_start_2
    sget-object v0, Lmiui/yellowpage/YellowPageContract$ImageLookup;->CONTENT_URI_IMAGE_CLOUD:Landroid/net/Uri;

    .line 549
    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 548
    invoke-static {v0, v14}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 549
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    move-object v14, v0

    .line 550
    .local v14, "cloudImageUri":Landroid/net/Uri$Builder;
    const-string v0, "timeout"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 551
    const-string v0, "overwrite_network_access"

    iget v3, v1, Lcom/miui/internal/yellowpage/ImageLoader;->mNetworkAccess:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 552
    iget-object v0, v1, Lcom/miui/internal/yellowpage/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v14}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const-string v13, "r"

    invoke-virtual {v0, v3, v13}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    move-object v8, v0

    .line 553
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v16

    cmp-long v0, v16, v11

    if-nez v0, :cond_1

    goto/16 :goto_6

    .line 558
    :cond_1
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v0

    move-object v7, v0

    .line 559
    new-array v0, v10, [B

    .line 560
    .local v0, "buffer":[B
    const/4 v3, 0x0

    .line 561
    .local v3, "len":I
    :goto_0
    invoke-virtual {v7, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    move v3, v10

    if-eq v10, v9, :cond_2

    .line 562
    const/4 v10, 0x0

    invoke-virtual {v6, v0, v10, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 565
    :cond_2
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 566
    .end local v0    # "buffer":[B
    .local v9, "buffer":[B
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object v10, v0

    .line 567
    .local v10, "opt":Landroid/graphics/BitmapFactory$Options;
    const/4 v0, 0x1

    iput-boolean v0, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 568
    array-length v0, v9

    const/4 v11, 0x0

    invoke-static {v9, v11, v0, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 569
    iget-object v0, v10, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v10, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string v11, "image"

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 573
    array-length v0, v9

    if-lez v0, :cond_d

    .line 574
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->createOutputStream()Ljava/io/FileOutputStream;

    move-result-object v0

    move-object v5, v0

    .line 575
    invoke-virtual {v5, v9}, Ljava/io/OutputStream;->write([B)V

    .line 576
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_15
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 577
    nop

    .line 606
    if-eqz v5, :cond_3

    .line 608
    :try_start_3
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 611
    goto :goto_1

    .line 609
    :catch_0
    move-exception v0

    move-object v11, v0

    .line 610
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 614
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    :goto_1
    nop

    .line 616
    :try_start_4
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 619
    goto :goto_2

    .line 617
    :catch_1
    move-exception v0

    move-object v11, v0

    .line 618
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 622
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    if-eqz v7, :cond_4

    .line 624
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 627
    goto :goto_3

    .line 625
    :catch_2
    move-exception v0

    move-object v11, v0

    .line 626
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 630
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    :goto_3
    if-eqz v8, :cond_5

    .line 632
    :try_start_6
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 635
    goto :goto_4

    .line 633
    :catch_3
    move-exception v0

    move-object v11, v0

    .line 634
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 638
    .end local v0    # "e":Ljava/io/IOException;
    :cond_5
    :goto_4
    if-eqz v4, :cond_6

    .line 640
    :try_start_7
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 643
    goto :goto_5

    .line 641
    :catch_4
    move-exception v0

    move-object v11, v0

    .line 642
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 577
    .end local v0    # "e":Ljava/io/IOException;
    :cond_6
    :goto_5
    return-object v9

    .line 570
    :cond_7
    :try_start_8
    new-instance v0, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid mime type ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v10, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_15
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 554
    .end local v3    # "len":I
    .end local v9    # "buffer":[B
    .end local v10    # "opt":Landroid/graphics/BitmapFactory$Options;
    :cond_8
    :goto_6
    nop

    .line 606
    if-eqz v5, :cond_9

    .line 608
    :try_start_9
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 611
    goto :goto_7

    .line 609
    :catch_5
    move-exception v0

    move-object v3, v0

    .line 610
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 614
    .end local v0    # "e":Ljava/io/IOException;
    :cond_9
    :goto_7
    nop

    .line 616
    :try_start_a
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 619
    goto :goto_8

    .line 617
    :catch_6
    move-exception v0

    move-object v3, v0

    .line 618
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 622
    .end local v0    # "e":Ljava/io/IOException;
    :goto_8
    if-eqz v7, :cond_a

    .line 624
    :try_start_b
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 627
    goto :goto_9

    .line 625
    :catch_7
    move-exception v0

    move-object v3, v0

    .line 626
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 630
    .end local v0    # "e":Ljava/io/IOException;
    :cond_a
    :goto_9
    if-eqz v8, :cond_b

    .line 632
    :try_start_c
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 635
    goto :goto_a

    .line 633
    :catch_8
    move-exception v0

    move-object v3, v0

    .line 634
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 638
    .end local v0    # "e":Ljava/io/IOException;
    :cond_b
    :goto_a
    if-eqz v4, :cond_c

    .line 640
    :try_start_d
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 643
    goto :goto_b

    .line 641
    :catch_9
    move-exception v0

    move-object v3, v0

    .line 642
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 554
    .end local v0    # "e":Ljava/io/IOException;
    :cond_c
    :goto_b
    const/4 v3, 0x0

    return-object v3

    .line 579
    .end local v14    # "cloudImageUri":Landroid/net/Uri$Builder;
    :catch_a
    move-exception v0

    .line 580
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_e
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 582
    sget-object v3, Lmiui/yellowpage/YellowPageContract$ImageLookup;->CONTENT_URI_IMAGE_CLOUD:Landroid/net/Uri;

    .line 583
    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 582
    invoke-static {v3, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 584
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    const-string v10, "fileName"

    invoke-virtual/range {p1 .. p1}, Lmiui/yellowpage/YellowPageImgLoader$Image;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v16

    .line 585
    .end local v3    # "uri":Landroid/net/Uri;
    .local v16, "uri":Landroid/net/Uri;
    iget-object v3, v1, Lcom/miui/internal/yellowpage/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v15 .. v20}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 586
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v16    # "uri":Landroid/net/Uri;
    :cond_d
    goto/16 :goto_12

    .line 587
    :cond_e
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v16

    cmp-long v0, v16, v11

    if-lez v0, :cond_14

    .line 588
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v0

    move-object v7, v0

    .line 589
    new-array v0, v10, [B

    move-object v3, v0

    .line 590
    .local v3, "buffer":[B
    const/4 v0, 0x0

    .line 591
    .local v0, "len":I
    :goto_c
    invoke-virtual {v7, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    move v11, v10

    .end local v0    # "len":I
    .local v11, "len":I
    if-eq v10, v9, :cond_f

    .line 592
    const/4 v0, 0x0

    invoke-virtual {v6, v3, v0, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 590
    move v0, v11

    goto :goto_c

    .line 595
    :cond_f
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 596
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_1f
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_15
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 606
    if-eqz v5, :cond_10

    .line 608
    :try_start_f
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    .line 611
    goto :goto_d

    .line 609
    :catch_b
    move-exception v0

    move-object v10, v0

    .line 610
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 614
    .end local v0    # "e":Ljava/io/IOException;
    :cond_10
    :goto_d
    nop

    .line 616
    :try_start_10
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    .line 619
    goto :goto_e

    .line 617
    :catch_c
    move-exception v0

    move-object v10, v0

    .line 618
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 622
    .end local v0    # "e":Ljava/io/IOException;
    :goto_e
    if-eqz v7, :cond_11

    .line 624
    :try_start_11
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d

    .line 627
    goto :goto_f

    .line 625
    :catch_d
    move-exception v0

    move-object v10, v0

    .line 626
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 630
    .end local v0    # "e":Ljava/io/IOException;
    :cond_11
    :goto_f
    if-eqz v8, :cond_12

    .line 632
    :try_start_12
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_e

    .line 635
    goto :goto_10

    .line 633
    :catch_e
    move-exception v0

    move-object v10, v0

    .line 634
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 638
    .end local v0    # "e":Ljava/io/IOException;
    :cond_12
    :goto_10
    if-eqz v4, :cond_13

    .line 640
    :try_start_13
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_f

    .line 643
    goto :goto_11

    .line 641
    :catch_f
    move-exception v0

    move-object v10, v0

    .line 642
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 596
    .end local v0    # "e":Ljava/io/IOException;
    :cond_13
    :goto_11
    return-object v9

    .line 606
    .end local v3    # "buffer":[B
    .end local v11    # "len":I
    :cond_14
    :goto_12
    if-eqz v5, :cond_15

    .line 608
    :try_start_14
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_10

    .line 611
    goto :goto_13

    .line 609
    :catch_10
    move-exception v0

    move-object v3, v0

    .line 610
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 614
    .end local v0    # "e":Ljava/io/IOException;
    :cond_15
    :goto_13
    nop

    .line 616
    :try_start_15
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_11

    .line 619
    goto :goto_14

    .line 617
    :catch_11
    move-exception v0

    move-object v3, v0

    .line 618
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 622
    .end local v0    # "e":Ljava/io/IOException;
    :goto_14
    if-eqz v7, :cond_16

    .line 624
    :try_start_16
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_12

    .line 627
    goto :goto_15

    .line 625
    :catch_12
    move-exception v0

    move-object v3, v0

    .line 626
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 630
    .end local v0    # "e":Ljava/io/IOException;
    :cond_16
    :goto_15
    if-eqz v8, :cond_17

    .line 632
    :try_start_17
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_13

    .line 635
    goto :goto_16

    .line 633
    :catch_13
    move-exception v0

    move-object v3, v0

    .line 634
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 638
    .end local v0    # "e":Ljava/io/IOException;
    :cond_17
    :goto_16
    if-eqz v4, :cond_24

    .line 640
    :try_start_18
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_14

    .line 643
    :goto_17
    goto/16 :goto_24

    .line 641
    :catch_14
    move-exception v0

    move-object v3, v0

    .line 642
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_17

    .line 606
    :catchall_0
    move-exception v0

    move-object v3, v0

    goto/16 :goto_25

    .line 603
    :catch_15
    move-exception v0

    .line 604
    .local v0, "e":Ljava/lang/Exception;
    :try_start_19
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 606
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v5, :cond_18

    .line 608
    :try_start_1a
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_16

    .line 611
    goto :goto_18

    .line 609
    :catch_16
    move-exception v0

    move-object v3, v0

    .line 610
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 614
    .end local v0    # "e":Ljava/io/IOException;
    :cond_18
    :goto_18
    if-eqz v6, :cond_19

    .line 616
    :try_start_1b
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_17

    .line 619
    goto :goto_19

    .line 617
    :catch_17
    move-exception v0

    move-object v3, v0

    .line 618
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 622
    .end local v0    # "e":Ljava/io/IOException;
    :cond_19
    :goto_19
    if-eqz v7, :cond_1a

    .line 624
    :try_start_1c
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_18

    .line 627
    goto :goto_1a

    .line 625
    :catch_18
    move-exception v0

    move-object v3, v0

    .line 626
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 630
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1a
    :goto_1a
    if-eqz v8, :cond_1b

    .line 632
    :try_start_1d
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_19

    .line 635
    goto :goto_1b

    .line 633
    :catch_19
    move-exception v0

    move-object v3, v0

    .line 634
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 638
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1b
    :goto_1b
    if-eqz v4, :cond_24

    .line 640
    :try_start_1e
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_14

    goto :goto_17

    .line 601
    :catch_1a
    move-exception v0

    .line 602
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_1f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    .line 606
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v5, :cond_1c

    .line 608
    :try_start_20
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_1b

    .line 611
    goto :goto_1c

    .line 609
    :catch_1b
    move-exception v0

    move-object v3, v0

    .line 610
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 614
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1c
    :goto_1c
    if-eqz v6, :cond_1d

    .line 616
    :try_start_21
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_1c

    .line 619
    goto :goto_1d

    .line 617
    :catch_1c
    move-exception v0

    move-object v3, v0

    .line 618
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 622
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1d
    :goto_1d
    if-eqz v7, :cond_1e

    .line 624
    :try_start_22
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_1d

    .line 627
    goto :goto_1e

    .line 625
    :catch_1d
    move-exception v0

    move-object v3, v0

    .line 626
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 630
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1e
    :goto_1e
    if-eqz v8, :cond_1f

    .line 632
    :try_start_23
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_1e

    .line 635
    goto :goto_1f

    .line 633
    :catch_1e
    move-exception v0

    move-object v3, v0

    .line 634
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 638
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1f
    :goto_1f
    if-eqz v4, :cond_24

    .line 640
    :try_start_24
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_14

    goto :goto_17

    .line 599
    :catch_1f
    move-exception v0

    .line 600
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_25
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    .line 606
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    if-eqz v5, :cond_20

    .line 608
    :try_start_26
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_20

    .line 611
    goto :goto_20

    .line 609
    :catch_20
    move-exception v0

    move-object v3, v0

    .line 610
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 614
    .end local v0    # "e":Ljava/io/IOException;
    :cond_20
    :goto_20
    if-eqz v6, :cond_21

    .line 616
    :try_start_27
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_21

    .line 619
    goto :goto_21

    .line 617
    :catch_21
    move-exception v0

    move-object v3, v0

    .line 618
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 622
    .end local v0    # "e":Ljava/io/IOException;
    :cond_21
    :goto_21
    if-eqz v7, :cond_22

    .line 624
    :try_start_28
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_22

    .line 627
    goto :goto_22

    .line 625
    :catch_22
    move-exception v0

    move-object v3, v0

    .line 626
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 630
    .end local v0    # "e":Ljava/io/IOException;
    :cond_22
    :goto_22
    if-eqz v8, :cond_23

    .line 632
    :try_start_29
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_23

    .line 635
    goto :goto_23

    .line 633
    :catch_23
    move-exception v0

    move-object v3, v0

    .line 634
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 638
    .end local v0    # "e":Ljava/io/IOException;
    :cond_23
    :goto_23
    if-eqz v4, :cond_24

    .line 640
    :try_start_2a
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_14

    goto/16 :goto_17

    .line 647
    :cond_24
    :goto_24
    const/4 v3, 0x0

    return-object v3

    .line 606
    :goto_25
    if-eqz v5, :cond_25

    .line 608
    :try_start_2b
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_24

    .line 611
    goto :goto_26

    .line 609
    :catch_24
    move-exception v0

    move-object v9, v0

    .line 610
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 614
    .end local v0    # "e":Ljava/io/IOException;
    :cond_25
    :goto_26
    if-eqz v6, :cond_26

    .line 616
    :try_start_2c
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_25

    .line 619
    goto :goto_27

    .line 617
    :catch_25
    move-exception v0

    move-object v9, v0

    .line 618
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 622
    .end local v0    # "e":Ljava/io/IOException;
    :cond_26
    :goto_27
    if-eqz v7, :cond_27

    .line 624
    :try_start_2d
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_26

    .line 627
    goto :goto_28

    .line 625
    :catch_26
    move-exception v0

    move-object v9, v0

    .line 626
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 630
    .end local v0    # "e":Ljava/io/IOException;
    :cond_27
    :goto_28
    if-eqz v8, :cond_28

    .line 632
    :try_start_2e
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_27

    .line 635
    goto :goto_29

    .line 633
    :catch_27
    move-exception v0

    move-object v9, v0

    .line 634
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 638
    .end local v0    # "e":Ljava/io/IOException;
    :cond_28
    :goto_29
    if-eqz v4, :cond_29

    .line 640
    :try_start_2f
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_28

    .line 643
    goto :goto_2a

    .line 641
    :catch_28
    move-exception v0

    move-object v9, v0

    .line 642
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 643
    .end local v0    # "e":Ljava/io/IOException;
    :cond_29
    :goto_2a
    throw v3

    .line 534
    .end local v5    # "os":Ljava/io/OutputStream;
    .end local v6    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "is":Ljava/io/FileInputStream;
    .end local v8    # "cloudImage":Landroid/content/res/AssetFileDescriptor;
    :catch_29
    move-exception v0

    .line 535
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ImageLoader"

    const-string v5, "The yellowpage provider\'s image can not be written now"

    invoke-static {v3, v5, v0}, Lmiui/yellowpage/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 536
    const/4 v3, 0x0

    return-object v3
.end method

.method private onRequestLoad(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 395
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 396
    return-void

    .line 398
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 399
    .local v0, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/widget/ImageView;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 400
    .local v1, "view":Landroid/widget/ImageView;
    if-eqz v1, :cond_1

    .line 401
    invoke-direct {p0, v1}, Lcom/miui/internal/yellowpage/ImageLoader;->requestLoading(Landroid/widget/ImageView;)Z

    .line 403
    :cond_1
    return-void
.end method

.method private onRequestLoaded(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 406
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 407
    return-void

    .line 410
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lmiui/yellowpage/YellowPageImgLoader$Image;

    .line 411
    .local v0, "image":Lmiui/yellowpage/YellowPageImgLoader$Image;
    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader;->BITMAP_CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 412
    :try_start_0
    iget-object v2, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mRequestingImageViews:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 413
    .local v2, "imageViewList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroid/widget/ImageView;>;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/Reference;

    .line 414
    .local v4, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Landroid/widget/ImageView;>;"
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 415
    .local v5, "imageView":Landroid/widget/ImageView;
    if-nez v5, :cond_1

    .line 416
    goto :goto_0

    .line 420
    :cond_1
    iget-object v6, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mPendingRequests:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Lmiui/yellowpage/YellowPageImgLoader$Image;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 421
    iget-object v6, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v6, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;

    .line 424
    .local v6, "holder":Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;
    if-eqz v6, :cond_2

    iget-object v7, v6, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mState:Lcom/miui/internal/yellowpage/ImageLoader$State;

    sget-object v8, Lcom/miui/internal/yellowpage/ImageLoader$State;->LOADED:Lcom/miui/internal/yellowpage/ImageLoader$State;

    if-ne v7, v8, :cond_2

    .line 425
    iget-object v7, v6, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v5, v7}, Lcom/miui/internal/yellowpage/ImageLoader;->bindImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 426
    const-string v7, "ImageLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleMessage:ImageView with image "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " bound"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lmiui/yellowpage/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 429
    :cond_2
    const-string v7, "ImageLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleMessage:image "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " was garbage collected"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lmiui/yellowpage/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    .line 431
    .local v7, "message":Landroid/os/Message;
    const/4 v8, 0x2

    iput v8, v7, Landroid/os/Message;->what:I

    .line 432
    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-direct {v8, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v8, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 433
    iget-object v8, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v8, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 436
    .end local v4    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Landroid/widget/ImageView;>;"
    .end local v5    # "imageView":Landroid/widget/ImageView;
    .end local v6    # "holder":Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;
    .end local v7    # "message":Landroid/os/Message;
    :cond_3
    :goto_1
    goto/16 :goto_0

    .line 437
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 438
    .end local v2    # "imageViewList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroid/widget/ImageView;>;>;"
    monitor-exit v1

    .line 439
    return-void

    .line 438
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private removeFailedImage(Lmiui/yellowpage/YellowPageImgLoader$Image;)V
    .locals 2
    .param p1, "image"    # Lmiui/yellowpage/YellowPageImgLoader$Image;

    .line 256
    iget-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->BITMAP_CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    :try_start_0
    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    monitor-exit v0

    .line 259
    return-void

    .line 258
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private requestLoading(Landroid/widget/ImageView;)Z
    .locals 4
    .param p1, "view"    # Landroid/widget/ImageView;

    .line 339
    iget-boolean v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mPauseLoading:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lmiui/yellowpage/YellowPageImgLoader$Image;

    if-eqz v0, :cond_1

    .line 340
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/yellowpage/YellowPageImgLoader$Image;

    .line 342
    .local v0, "image":Lmiui/yellowpage/YellowPageImgLoader$Image;
    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mRequestingImageViews:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 343
    .local v1, "imageViewList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Landroid/widget/ImageView;>;>;"
    if-nez v1, :cond_0

    .line 344
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move-object v1, v2

    .line 345
    iget-object v2, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mRequestingImageViews:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    :cond_0
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 348
    iget-object v2, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;

    invoke-direct {v3, p0, v0}, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;-><init>(Lcom/miui/internal/yellowpage/ImageLoader;Lmiui/yellowpage/YellowPageImgLoader$Image;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 349
    const/4 v2, 0x1

    return v2

    .line 351
    .end local v0    # "image":Lmiui/yellowpage/YellowPageImgLoader$Image;
    .end local v1    # "imageViewList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Landroid/widget/ImageView;>;>;"
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public cancelRequest(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;

    .line 359
    if-eqz p1, :cond_0

    .line 360
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 362
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 381
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 386
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/miui/internal/yellowpage/ImageLoader;->onRequestLoad(Landroid/os/Message;)V

    .line 387
    goto :goto_0

    .line 383
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/miui/internal/yellowpage/ImageLoader;->onRequestLoaded(Landroid/os/Message;)V

    .line 384
    nop

    .line 391
    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public loadImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "image"    # Lmiui/yellowpage/YellowPageImgLoader$Image;
    .param p3, "defaultImageRes"    # I

    .line 150
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;Landroid/graphics/Bitmap;I)V

    .line 151
    return-void
.end method

.method public loadImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "image"    # Lmiui/yellowpage/YellowPageImgLoader$Image;
    .param p3, "defaultBitmap"    # Landroid/graphics/Bitmap;

    .line 154
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;Landroid/graphics/Bitmap;I)V

    .line 155
    return-void
.end method

.method public loadImageBitmap(Lmiui/yellowpage/YellowPageImgLoader$Image;Z)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "image"    # Lmiui/yellowpage/YellowPageImgLoader$Image;
    .param p2, "online"    # Z

    .line 190
    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImageBytes(Lmiui/yellowpage/YellowPageImgLoader$Image;Z)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/internal/yellowpage/ImageLoader;->decodeBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public loadImageBytes(Lmiui/yellowpage/YellowPageImgLoader$Image;Z)[B
    .locals 1
    .param p1, "image"    # Lmiui/yellowpage/YellowPageImgLoader$Image;
    .param p2, "online"    # Z

    .line 158
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImageBytes(Lmiui/yellowpage/YellowPageImgLoader$Image;ZII)[B

    move-result-object v0

    return-object v0
.end method

.method public loadImageBytes(Lmiui/yellowpage/YellowPageImgLoader$Image;ZII)[B
    .locals 3
    .param p1, "image"    # Lmiui/yellowpage/YellowPageImgLoader$Image;
    .param p2, "online"    # Z
    .param p3, "defaultRes"    # I
    .param p4, "timeout"    # I

    .line 197
    invoke-direct {p0, p1}, Lcom/miui/internal/yellowpage/ImageLoader;->loadCachedImageBytes(Lmiui/yellowpage/YellowPageImgLoader$Image;)[B

    move-result-object v0

    .line 198
    .local v0, "bytes":[B
    if-eqz v0, :cond_0

    .line 199
    return-object v0

    .line 202
    :cond_0
    invoke-direct {p0, p1, p2, p4}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImage(Lmiui/yellowpage/YellowPageImgLoader$Image;ZI)[B

    move-result-object v0

    .line 203
    if-eqz v0, :cond_1

    .line 204
    invoke-direct {p0, p1, v0}, Lcom/miui/internal/yellowpage/ImageLoader;->cacheBitmap(Lmiui/yellowpage/YellowPageImgLoader$Image;[B)V

    goto :goto_0

    .line 206
    :cond_1
    if-eqz p3, :cond_2

    .line 207
    const-string v1, "ImageLoader"

    const-string v2, "failed to load image, return default res"

    invoke-static {v1, v2}, Lmiui/yellowpage/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 209
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/miui/internal/yellowpage/ImageLoader;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 213
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    :goto_0
    return-object v0
.end method

.method public pauseLoading()V
    .locals 1

    .line 355
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mPauseLoading:Z

    .line 356
    return-void
.end method

.method public resumeLoading()V
    .locals 4

    .line 365
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mPauseLoading:Z

    .line 366
    iget-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mPendingRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 367
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lmiui/yellowpage/YellowPageImgLoader$Image;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 368
    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mPendingRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/Reference;

    .line 369
    .local v1, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Landroid/widget/ImageView;>;"
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 370
    .local v2, "imageView":Landroid/widget/ImageView;
    if-eqz v2, :cond_0

    .line 371
    invoke-direct {p0, v2}, Lcom/miui/internal/yellowpage/ImageLoader;->requestLoading(Landroid/widget/ImageView;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 372
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 375
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 377
    .end local v1    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Landroid/widget/ImageView;>;"
    .end local v2    # "imageView":Landroid/widget/ImageView;
    :cond_1
    :goto_1
    goto :goto_0

    .line 378
    :cond_2
    return-void
.end method
