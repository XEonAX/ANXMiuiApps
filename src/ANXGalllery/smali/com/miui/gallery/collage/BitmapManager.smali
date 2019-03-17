.class public Lcom/miui/gallery/collage/BitmapManager;
.super Ljava/lang/Object;
.source "BitmapManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/collage/BitmapManager$BitmapLoaderListener;,
        Lcom/miui/gallery/collage/BitmapManager$CustomLoadListener;,
        Lcom/miui/gallery/collage/BitmapManager$DecodeBitmapTask;
    }
.end annotation


# instance fields
.field private mBitmapLoaderListener:Lcom/miui/gallery/collage/BitmapManager$BitmapLoaderListener;

.field private mBitmapUriMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/graphics/Bitmap;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mBitmaps:[Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mDecodeTask:Lcom/miui/gallery/collage/BitmapManager$DecodeBitmapTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/gallery/collage/BitmapManager$BitmapLoaderListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmapLoaderListener"    # Lcom/miui/gallery/collage/BitmapManager$BitmapLoaderListener;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/BitmapManager;->mBitmapUriMap:Ljava/util/HashMap;

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/collage/BitmapManager;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/miui/gallery/collage/BitmapManager;->mBitmapLoaderListener:Lcom/miui/gallery/collage/BitmapManager$BitmapLoaderListener;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/collage/BitmapManager;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/BitmapManager;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/miui/gallery/collage/BitmapManager;->mBitmapUriMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/collage/BitmapManager;)[Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/BitmapManager;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/miui/gallery/collage/BitmapManager;->mBitmaps:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/gallery/collage/BitmapManager;[Landroid/graphics/Bitmap;)[Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/BitmapManager;
    .param p1, "x1"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/miui/gallery/collage/BitmapManager;->mBitmaps:[Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/gallery/collage/BitmapManager;)Lcom/miui/gallery/collage/BitmapManager$BitmapLoaderListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/BitmapManager;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/miui/gallery/collage/BitmapManager;->mBitmapLoaderListener:Lcom/miui/gallery/collage/BitmapManager$BitmapLoaderListener;

    return-object v0
.end method

.method private static loadSuitableBitmapBySize(Landroid/content/Context;IILandroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 142
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 143
    .local v3, "opt":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 144
    invoke-static {p0, p3, v3}, Lcom/miui/gallery/editor/photo/utils/Bitmaps;->decodeUri(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 145
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v5, p2

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v6, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 146
    .local v4, "scale":I
    const/4 v5, 0x0

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 147
    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 148
    invoke-static {v4}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v5

    shl-int/lit8 v5, v5, 0x1

    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 149
    invoke-static {p0, p3}, Lcom/miui/gallery/editor/photo/utils/Bitmaps;->readExif(Landroid/content/Context;Landroid/net/Uri;)Landroid/support/media/ExifInterface;

    move-result-object v2

    .line 150
    .local v2, "exifInterface":Landroid/support/media/ExifInterface;
    invoke-static {p0, p3, v3}, Lcom/miui/gallery/editor/photo/utils/Bitmaps;->decodeUri(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 151
    invoke-static {v2}, Lcom/miui/gallery/util/ExifUtil;->getRotationDegrees(Landroid/support/media/ExifInterface;)I

    move-result v6

    .line 150
    invoke-static {v5, v6, v3}, Lcom/miui/gallery/editor/photo/utils/Bitmaps;->joinExif(Landroid/graphics/Bitmap;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 156
    .end local v2    # "exifInterface":Landroid/support/media/ExifInterface;
    .end local v3    # "opt":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "scale":I
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 152
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 153
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v5, "BitmapManager"

    invoke-static {v5, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    const/4 v0, 0x0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static loadSuitableBitmapOnScreen(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 161
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 162
    .local v2, "width":I
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 163
    .local v1, "height":I
    invoke-static {p0, v2, v1, p1}, Lcom/miui/gallery/collage/BitmapManager;->loadSuitableBitmapBySize(Landroid/content/Context;IILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public data()[Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/miui/gallery/collage/BitmapManager;->mBitmaps:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getOriginUriByBitmap(Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/miui/gallery/collage/BitmapManager;->mBitmapUriMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/miui/gallery/collage/BitmapManager;->mBitmaps:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/collage/BitmapManager;->mBitmaps:[Landroid/graphics/Bitmap;

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadBitmapAsync([Landroid/net/Uri;)V
    .locals 3
    .param p1, "uris"    # [Landroid/net/Uri;

    .prologue
    .line 36
    new-instance v0, Lcom/miui/gallery/collage/BitmapManager$DecodeBitmapTask;

    new-instance v1, Lcom/miui/gallery/collage/BitmapManager$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/collage/BitmapManager$1;-><init>(Lcom/miui/gallery/collage/BitmapManager;[Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/miui/gallery/collage/BitmapManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/collage/BitmapManager$DecodeBitmapTask;-><init>(Lcom/miui/gallery/collage/BitmapManager$CustomLoadListener;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/BitmapManager;->mDecodeTask:Lcom/miui/gallery/collage/BitmapManager$DecodeBitmapTask;

    .line 50
    iget-object v0, p0, Lcom/miui/gallery/collage/BitmapManager;->mDecodeTask:Lcom/miui/gallery/collage/BitmapManager$DecodeBitmapTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p1}, Lcom/miui/gallery/collage/BitmapManager$DecodeBitmapTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 51
    return-void
.end method

.method public loadSuitableBitmapBySize(IILandroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/miui/gallery/collage/BitmapManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/miui/gallery/collage/BitmapManager;->loadSuitableBitmapBySize(Landroid/content/Context;IILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public replaceBitmap(Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    .locals 4
    .param p1, "from"    # Landroid/graphics/Bitmap;
    .param p2, "target"    # Landroid/net/Uri;

    .prologue
    .line 54
    new-instance v0, Lcom/miui/gallery/collage/BitmapManager$DecodeBitmapTask;

    new-instance v1, Lcom/miui/gallery/collage/BitmapManager$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/gallery/collage/BitmapManager$2;-><init>(Lcom/miui/gallery/collage/BitmapManager;Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/miui/gallery/collage/BitmapManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/collage/BitmapManager$DecodeBitmapTask;-><init>(Lcom/miui/gallery/collage/BitmapManager$CustomLoadListener;Landroid/content/Context;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    .line 70
    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/collage/BitmapManager$DecodeBitmapTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 71
    return-void
.end method

.method public setBitmapLoaderListener(Lcom/miui/gallery/collage/BitmapManager$BitmapLoaderListener;)V
    .locals 0
    .param p1, "bitmapLoaderListener"    # Lcom/miui/gallery/collage/BitmapManager$BitmapLoaderListener;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/miui/gallery/collage/BitmapManager;->mBitmapLoaderListener:Lcom/miui/gallery/collage/BitmapManager$BitmapLoaderListener;

    .line 87
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/miui/gallery/collage/BitmapManager;->mBitmaps:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/collage/BitmapManager;->mBitmaps:[Landroid/graphics/Bitmap;

    array-length v0, v0

    goto :goto_0
.end method
