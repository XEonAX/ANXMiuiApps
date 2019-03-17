.class Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$5;
.super Ljava/lang/Object;
.source "NexEditor.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(IIILcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$e;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;


# direct methods
.method constructor <init>(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)V
    .locals 0

    .prologue
    .line 2202
    iput-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$5;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 2206
    const-string v1, "NexEditor"

    const-string v2, "image Capture setOnImageAvailableListener jpeg == "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    :try_start_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 2210
    if-eqz v6, :cond_3

    .line 2211
    :try_start_1
    invoke-virtual {v6}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    .line 2212
    const/4 v1, 0x0

    aget-object v1, v3, v1

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2213
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$5;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    sget-object v1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->UNKNOWN:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->e(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2242
    if-eqz v6, :cond_0

    .line 2243
    invoke-virtual {v6}, Landroid/media/Image;->close()V

    .line 2245
    :cond_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->close()V

    .line 2246
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$5;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-static {v0, v7}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;Landroid/media/ImageReader;)Landroid/media/ImageReader;

    .line 2248
    :goto_0
    return-void

    .line 2216
    :cond_1
    :try_start_2
    invoke-virtual {v6}, Landroid/media/Image;->getWidth()I

    move-result v1

    .line 2217
    invoke-virtual {v6}, Landroid/media/Image;->getHeight()I

    move-result v2

    .line 2218
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v5

    .line 2219
    mul-int/lit8 v4, v1, 0x4

    sub-int v4, v5, v4

    .line 2220
    mul-int v4, v1, v2

    mul-int/lit8 v4, v4, 0x4

    new-array v4, v4, [B

    .line 2221
    const/4 v8, 0x0

    aget-object v3, v3, v8

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 2222
    :goto_1
    if-ge v0, v2, :cond_2

    .line 2224
    mul-int v8, v1, v0

    mul-int/lit8 v8, v8, 0x4

    mul-int/lit8 v9, v1, 0x4

    invoke-virtual {v3, v4, v8, v9}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 2225
    add-int/lit8 v8, v0, 0x1

    mul-int/2addr v8, v5

    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2222
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2227
    :cond_2
    const-string v0, "NexEditor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "image Capture prepareSurface = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$5;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-static {v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->c(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)Landroid/view/Surface;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2228
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$5;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    iget-object v3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$5;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-static {v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->c(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)Landroid/view/Surface;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;Landroid/view/Surface;)I

    .line 2229
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$5;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    array-length v3, v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(III[BZ)V

    .line 2230
    invoke-virtual {v6}, Landroid/media/Image;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v6, v7

    .line 2242
    :cond_3
    if-eqz v6, :cond_4

    .line 2243
    invoke-virtual {v6}, Landroid/media/Image;->close()V

    .line 2245
    :cond_4
    invoke-virtual {p1}, Landroid/media/ImageReader;->close()V

    .line 2246
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$5;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-static {v0, v7}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;Landroid/media/ImageReader;)Landroid/media/ImageReader;

    goto :goto_0

    .line 2234
    :catch_0
    move-exception v0

    move-object v1, v7

    .line 2236
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2237
    const-string v0, "NexEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "image Capture prepareSurface(exception) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$5;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-static {v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->c(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2238
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$5;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    iget-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$5;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-static {v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->c(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)Landroid/view/Surface;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;Landroid/view/Surface;)I

    .line 2239
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$5;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->UNKNOWN:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    invoke-virtual {v0, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->e(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2242
    if-eqz v1, :cond_5

    .line 2243
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 2245
    :cond_5
    invoke-virtual {p1}, Landroid/media/ImageReader;->close()V

    .line 2246
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$5;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-static {v0, v7}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;Landroid/media/ImageReader;)Landroid/media/ImageReader;

    goto/16 :goto_0

    .line 2242
    :catchall_0
    move-exception v0

    move-object v6, v7

    :goto_3
    if-eqz v6, :cond_6

    .line 2243
    invoke-virtual {v6}, Landroid/media/Image;->close()V

    .line 2245
    :cond_6
    invoke-virtual {p1}, Landroid/media/ImageReader;->close()V

    .line 2246
    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$5;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-static {v1, v7}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;Landroid/media/ImageReader;)Landroid/media/ImageReader;

    throw v0

    .line 2242
    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v6, v1

    goto :goto_3

    .line 2234
    :catch_1
    move-exception v0

    move-object v1, v6

    goto :goto_2
.end method
