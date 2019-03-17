.class Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager$RegionCreateJob;
.super Ljava/lang/Object;
.source "PhotoPageImageItem.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegionCreateJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/threadpool/ThreadPool$Job",
        "<",
        "Lcom/miui/gallery/util/photoview/TileBitProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private mLocalPath:Ljava/lang/String;

.field private mSecretKey:[B

.field final synthetic this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;Ljava/lang/String;[B)V
    .locals 0
    .param p2, "localPath"    # Ljava/lang/String;
    .param p3, "secretKey"    # [B

    .prologue
    .line 422
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager$RegionCreateJob;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    iput-object p2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager$RegionCreateJob;->mLocalPath:Ljava/lang/String;

    .line 424
    iput-object p3, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager$RegionCreateJob;->mSecretKey:[B

    .line 425
    return-void
.end method


# virtual methods
.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Lcom/miui/gallery/util/photoview/TileBitProvider;
    .locals 8
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    const/4 v2, 0x0

    .line 429
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager$RegionCreateJob;->mLocalPath:Ljava/lang/String;

    invoke-static {v3}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 430
    invoke-interface {p1}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 431
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 432
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 433
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager$RegionCreateJob;->mLocalPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager$RegionCreateJob;->mSecretKey:[B

    invoke-static {v3, v0, v4}, Lcom/miui/gallery/util/BitmapUtils;->safeDecodeBitmap(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;[B)Landroid/graphics/Bitmap;

    .line 434
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v3, v4}, Lcom/miui/gallery/Config$TileConfig;->needUseTile(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 435
    invoke-interface {p1}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 436
    new-instance v1, Lcom/miui/gallery/util/photoview/TileBitProviderRegion;

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager$RegionCreateJob;->mLocalPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager$RegionCreateJob;->mSecretKey:[B

    invoke-direct {v1, v3, v4}, Lcom/miui/gallery/util/photoview/TileBitProviderRegion;-><init>(Ljava/lang/String;[B)V

    .line 437
    .local v1, "provider":Lcom/miui/gallery/util/photoview/TileBitProvider;
    invoke-interface {p1}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 438
    invoke-interface {v1}, Lcom/miui/gallery/util/photoview/TileBitProvider;->release()V

    .line 439
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager$RegionCreateJob;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;

    invoke-static {v3, v2}, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->access$1602(Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;Ljava/lang/String;)Ljava/lang/String;

    .end local v0    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v1    # "provider":Lcom/miui/gallery/util/photoview/TileBitProvider;
    :cond_0
    :goto_0
    move-object v1, v2

    .line 450
    :goto_1
    return-object v1

    .line 441
    .restart local v0    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v1    # "provider":Lcom/miui/gallery/util/photoview/TileBitProvider;
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager$RegionCreateJob;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager$RegionCreateJob;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager$RegionCreateJob;->mLocalPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager$RegionCreateJob;->mLocalPath:Ljava/lang/String;

    invoke-static {v5}, Lcom/miui/gallery/util/FileUtils;->getFileSize(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v3, v4, v6, v7}, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->access$1700(Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->access$1602(Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 446
    .end local v1    # "provider":Lcom/miui/gallery/util/photoview/TileBitProvider;
    :cond_2
    const-string v3, "PhotoPageImageItem"

    const-string v4, "not need use tile [width %d, height %d]"

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 417
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager$RegionCreateJob;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Lcom/miui/gallery/util/photoview/TileBitProvider;

    move-result-object v0

    return-object v0
.end method
