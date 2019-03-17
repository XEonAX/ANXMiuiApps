.class Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$6;
.super Ljava/lang/Object;
.source "NexEditor.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(IIIIILcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$v;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;


# direct methods
.method constructor <init>(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)V
    .locals 1

    .prologue
    .line 2351
    iput-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$6;->b:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2352
    const/4 v0, 0x0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$6;->a:I

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 2357
    .line 2358
    const/4 v0, 0x1

    .line 2361
    :try_start_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v3

    .line 2362
    if-eqz v3, :cond_5

    .line 2364
    invoke-virtual {v3}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    .line 2365
    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 2369
    invoke-virtual {v3}, Landroid/media/Image;->getWidth()I

    move-result v4

    .line 2370
    invoke-virtual {v3}, Landroid/media/Image;->getHeight()I

    move-result v5

    .line 2371
    const/4 v6, 0x0

    aget-object v6, v2, v6

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v6

    .line 2372
    mul-int/lit8 v7, v4, 0x4

    sub-int v7, v6, v7

    .line 2373
    mul-int v8, v4, v5

    mul-int/lit8 v8, v8, 0x4

    new-array v8, v8, [B

    .line 2374
    const/4 v9, 0x0

    aget-object v2, v2, v9

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    move v2, v1

    .line 2375
    :goto_0
    if-ge v2, v5, :cond_0

    .line 2377
    mul-int v10, v4, v2

    mul-int/lit8 v10, v10, 0x4

    mul-int/lit8 v11, v4, 0x4

    invoke-virtual {v9, v8, v10, v11}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 2378
    add-int/lit8 v10, v2, 0x1

    mul-int/2addr v10, v6

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2375
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2383
    :cond_0
    iget-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$6;->b:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-static {v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->j(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2384
    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$6;->b:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-static {v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->k(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$v;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v8, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$v;->a([BI)Z

    move-result v1

    .line 2386
    :cond_1
    const-string v2, "exportImageFormat"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onImageAvailable("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") width="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", height="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", rowStride="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", padding="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", format="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/media/Image;->getFormat()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    invoke-virtual {v3}, Landroid/media/Image;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2390
    if-nez v1, :cond_2

    .line 2391
    const/4 v0, -0x2

    .line 2408
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$6;->b:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-static {v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->j(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2409
    const/4 v0, -0x1

    .line 2413
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$6;->b:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-static {v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->l(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2417
    :goto_2
    return-void

    .line 2394
    :cond_4
    const/4 v0, -0x3

    goto :goto_1

    .line 2398
    :cond_5
    :try_start_2
    const-string v0, "exportImageFormat"

    const-string v1, "Latest image is null. Ignore it."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 2402
    :catch_0
    move-exception v0

    .line 2403
    const-string v1, "exportImageFormat"

    const-string v2, "Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2404
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2405
    const/4 v0, -0x5

    goto :goto_1

    .line 2414
    :catch_1
    move-exception v0

    .line 2415
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method
