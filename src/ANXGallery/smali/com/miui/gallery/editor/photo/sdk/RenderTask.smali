.class public Lcom/miui/gallery/editor/photo/sdk/RenderTask;
.super Ljava/lang/Object;
.source "RenderTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/sdk/RenderTask$PrepareTask;,
        Lcom/miui/gallery/editor/photo/sdk/RenderTask$Parameter;,
        Lcom/miui/gallery/editor/photo/sdk/RenderTask$Generator;,
        Lcom/miui/gallery/editor/photo/sdk/RenderTask$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/miui/gallery/editor/photo/sdk/RenderTask$Callback;

.field private mCancelled:Z

.field private mContext:Landroid/content/Context;

.field private mCurrent:Landroid/net/Uri;

.field private mHandler:Landroid/os/Handler;

.field private mOutputGenerator:Lcom/miui/gallery/editor/photo/sdk/RenderTask$Generator;

.field private mTasks:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Collection;Lcom/miui/gallery/editor/photo/sdk/RenderTask$Generator;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "outputGenerator"    # Lcom/miui/gallery/editor/photo/sdk/RenderTask$Generator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/miui/gallery/editor/photo/sdk/RenderTask$Generator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/sdk/RenderTask;->mHandler:Landroid/os/Handler;

    .line 37
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/gallery/editor/photo/sdk/RenderTask;->mCancelled:Z

    .line 41
    if-nez p1, :cond_0

    .line 42
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "context can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    :cond_0
    if-nez p2, :cond_1

    .line 46
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "tasks can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 49
    :cond_1
    if-nez p3, :cond_2

    .line 50
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "generator can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 54
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/sdk/RenderTask;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/sdk/RenderTask;->mTasks:Ljava/util/Iterator;

    .line 56
    iput-object p3, p0, Lcom/miui/gallery/editor/photo/sdk/RenderTask;->mOutputGenerator:Lcom/miui/gallery/editor/photo/sdk/RenderTask$Generator;

    .line 57
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/sdk/RenderTask;)Lcom/miui/gallery/editor/photo/sdk/RenderTask$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/sdk/RenderTask;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/sdk/RenderTask;->mCallback:Lcom/miui/gallery/editor/photo/sdk/RenderTask$Callback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/editor/photo/sdk/RenderTask;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/sdk/RenderTask;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/sdk/RenderTask;->mCurrent:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/editor/photo/sdk/RenderTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/sdk/RenderTask;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/sdk/RenderTask;->mCancelled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/editor/photo/sdk/RenderTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/sdk/RenderTask;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/sdk/RenderTask;->scheduleNext()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/editor/photo/sdk/RenderTask;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/sdk/RenderTask;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/sdk/RenderTask;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/editor/photo/sdk/RenderTask;Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/miui/gallery3d/exif/ExifInterface;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/sdk/RenderTask;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # Landroid/net/Uri;
    .param p3, "x3"    # Lcom/miui/gallery3d/exif/ExifInterface;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/editor/photo/sdk/RenderTask;->saveShareBitmap(Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/miui/gallery3d/exif/ExifInterface;)Z

    move-result v0

    return v0
.end method

.method private saveShareBitmap(Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/miui/gallery3d/exif/ExifInterface;)Z
    .locals 11
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "outUri"    # Landroid/net/Uri;
    .param p3, "exif"    # Lcom/miui/gallery3d/exif/ExifInterface;

    .prologue
    .line 230
    const-string v8, "RenderTask"

    iget-object v9, p0, Lcom/miui/gallery/editor/photo/sdk/RenderTask;->mContext:Landroid/content/Context;

    invoke-static {v8, v9, p2}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->openOutputStream(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v3

    .line 232
    .local v3, "stream":Ljava/io/OutputStream;
    const/4 v7, 0x0

    .line 234
    .local v7, "tags":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery3d/exif/ExifTag;>;"
    if-eqz p3, :cond_0

    .line 235
    invoke-virtual {p3}, Lcom/miui/gallery3d/exif/ExifInterface;->getAllTags()Ljava/util/List;

    move-result-object v7

    .line 238
    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 239
    :cond_1
    const-string v8, "RenderTask"

    const-string v9, "no exif found in source image"

    invoke-static {v8, v9}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    move-object v2, v3

    .line 267
    .local v2, "out":Ljava/io/OutputStream;
    :goto_0
    :try_start_0
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x5f

    invoke-virtual {p1, v8, v9, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v4

    .line 268
    .local v4, "success":Z
    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    .line 269
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    :cond_2
    const-string v8, "RenderTask"

    invoke-static {v8, v2}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 277
    :goto_1
    return v4

    .line 242
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v4    # "success":Z
    :cond_3
    const-string v8, "RenderTask"

    const-string v9, "filter exif"

    invoke-static {v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    new-instance v0, Lcom/miui/gallery3d/exif/ExifInterface;

    invoke-direct {v0}, Lcom/miui/gallery3d/exif/ExifInterface;-><init>()V

    .line 244
    .local v0, "dst":Lcom/miui/gallery3d/exif/ExifInterface;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery3d/exif/ExifTag;

    .line 245
    .local v5, "tag":Lcom/miui/gallery3d/exif/ExifTag;
    invoke-virtual {v5}, Lcom/miui/gallery3d/exif/ExifTag;->getTagId()S

    move-result v6

    .line 246
    .local v6, "tagId":S
    sget v9, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-static {v9}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v9

    if-eq v6, v9, :cond_4

    sget v9, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    .line 247
    invoke-static {v9}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v9

    if-eq v6, v9, :cond_4

    sget v9, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    .line 248
    invoke-static {v9}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v9

    if-eq v6, v9, :cond_4

    sget v9, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_XIAOMI_COMMENT:I

    .line 249
    invoke-static {v9}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v9

    if-eq v6, v9, :cond_4

    sget v9, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_USER_COMMENT:I

    .line 250
    invoke-static {v9}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v9

    if-eq v6, v9, :cond_4

    .line 251
    invoke-virtual {v0, v5}, Lcom/miui/gallery3d/exif/ExifInterface;->setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    goto :goto_2

    .line 253
    :cond_4
    const-string v9, "RenderTask"

    const-string/jumbo v10, "skip user comment"

    invoke-static {v9, v10}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 257
    .end local v5    # "tag":Lcom/miui/gallery3d/exif/ExifTag;
    .end local v6    # "tagId":S
    :cond_5
    sget v8, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    const/4 v9, 0x0

    invoke-static {v9}, Lcom/miui/gallery3d/exif/ExifInterface;->getOrientationValueForRotation(I)S

    move-result v9

    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lcom/miui/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/miui/gallery3d/exif/ExifInterface;->setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    .line 258
    sget v8, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lcom/miui/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/miui/gallery3d/exif/ExifInterface;->setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    .line 259
    sget v8, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lcom/miui/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/miui/gallery3d/exif/ExifInterface;->setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    .line 261
    invoke-virtual {v0, v3}, Lcom/miui/gallery3d/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v2

    .restart local v2    # "out":Ljava/io/OutputStream;
    goto/16 :goto_0

    .line 271
    .end local v0    # "dst":Lcom/miui/gallery3d/exif/ExifInterface;
    :catch_0
    move-exception v1

    .line 272
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string v8, "RenderTask"

    invoke-static {v8, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    const/4 v4, 0x0

    .line 275
    .restart local v4    # "success":Z
    const-string v8, "RenderTask"

    invoke-static {v8, v2}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    goto/16 :goto_1

    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "success":Z
    :catchall_0
    move-exception v8

    const-string v9, "RenderTask"

    invoke-static {v9, v2}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    throw v8
.end method

.method private scheduleNext()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 94
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/sdk/RenderTask;->mTasks:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/sdk/RenderTask;->mTasks:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/sdk/RenderTask;->mCurrent:Landroid/net/Uri;

    .line 96
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/sdk/RenderTask;->mOutputGenerator:Lcom/miui/gallery/editor/photo/sdk/RenderTask$Generator;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/sdk/RenderTask;->mCurrent:Landroid/net/Uri;

    invoke-interface {v1, v4}, Lcom/miui/gallery/editor/photo/sdk/RenderTask$Generator;->generate(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 97
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Lcom/miui/gallery/editor/photo/sdk/RenderTask$PrepareTask;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/miui/gallery/editor/photo/sdk/RenderTask$PrepareTask;-><init>(Lcom/miui/gallery/editor/photo/sdk/RenderTask;Lcom/miui/gallery/editor/photo/sdk/RenderTask$1;)V

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v5, v2, [Lcom/miui/gallery/editor/photo/sdk/RenderTask$Parameter;

    new-instance v6, Lcom/miui/gallery/editor/photo/sdk/RenderTask$Parameter;

    iget-object v7, p0, Lcom/miui/gallery/editor/photo/sdk/RenderTask;->mCurrent:Landroid/net/Uri;

    invoke-direct {v6, v7, v0}, Lcom/miui/gallery/editor/photo/sdk/RenderTask$Parameter;-><init>(Landroid/net/Uri;Landroid/net/Uri;)V

    aput-object v6, v5, v3

    invoke-virtual {v1, v4, v5}, Lcom/miui/gallery/editor/photo/sdk/RenderTask$PrepareTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v1, v2

    .line 101
    .end local v0    # "uri":Landroid/net/Uri;
    :goto_0
    return v1

    :cond_0
    move v1, v3

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 78
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 79
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "can\'t run in sub thread."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/sdk/RenderTask;->mCancelled:Z

    .line 83
    return-void
.end method

.method public decodeOrigin(Landroid/net/Uri;Lcom/miui/gallery3d/exif/ExifInterface;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "source"    # Landroid/net/Uri;
    .param p2, "exif"    # Lcom/miui/gallery3d/exif/ExifInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 220
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 221
    .local v0, "opt":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 222
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/sdk/RenderTask;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/miui/gallery/editor/photo/utils/Bitmaps;->decodeUri(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 223
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 224
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/sdk/RenderTask;->mContext:Landroid/content/Context;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/editor/photo/utils/BigBitmapLoadUtils;->calculateInSampleSize(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 225
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/sdk/RenderTask;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/miui/gallery/editor/photo/utils/Bitmaps;->decodeUri(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 226
    invoke-static {p2}, Lcom/miui/gallery/util/ExifUtil;->getRotationDegrees(Lcom/miui/gallery3d/exif/ExifInterface;)I

    move-result v2

    const/4 v3, 0x0

    .line 225
    invoke-static {v1, v2, v3}, Lcom/miui/gallery/editor/photo/utils/Bitmaps;->joinExif(Landroid/graphics/Bitmap;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/utils/Bitmaps;->setConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public performItemFinish(Landroid/net/Uri;)V
    .locals 2
    .param p1, "out"    # Landroid/net/Uri;

    .prologue
    .line 106
    const-string v0, "RenderTask"

    const-string v1, "render finish: %s"

    invoke-static {v0, v1, p1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/sdk/RenderTask;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/gallery/editor/photo/sdk/RenderTask$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/editor/photo/sdk/RenderTask$1;-><init>(Lcom/miui/gallery/editor/photo/sdk/RenderTask;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    return-void
.end method

.method public setCallback(Lcom/miui/gallery/editor/photo/sdk/RenderTask$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/miui/gallery/editor/photo/sdk/RenderTask$Callback;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/sdk/RenderTask;->mCallback:Lcom/miui/gallery/editor/photo/sdk/RenderTask$Callback;

    .line 91
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 60
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 61
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "can\'t run in sub thread."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/sdk/RenderTask;->mCancelled:Z

    if-eqz v0, :cond_2

    .line 65
    const-string v0, "RenderTask"

    const-string v1, "render cancelled."

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/sdk/RenderTask;->mCallback:Lcom/miui/gallery/editor/photo/sdk/RenderTask$Callback;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/sdk/RenderTask;->mCallback:Lcom/miui/gallery/editor/photo/sdk/RenderTask$Callback;

    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/sdk/RenderTask$Callback;->onTaskCancelled()V

    .line 75
    :cond_1
    :goto_0
    return-void

    .line 72
    :cond_2
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/sdk/RenderTask;->scheduleNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/sdk/RenderTask;->mCallback:Lcom/miui/gallery/editor/photo/sdk/RenderTask$Callback;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/sdk/RenderTask;->mCallback:Lcom/miui/gallery/editor/photo/sdk/RenderTask$Callback;

    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/sdk/RenderTask$Callback;->onTaskFinish()V

    goto :goto_0
.end method
