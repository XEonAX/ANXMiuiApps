.class public Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;
.super Lcom/miui/gallery/assistant/manager/request/ImageFeatureRequest;
.source "BatchImageAlgorithmRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/assistant/manager/request/ImageFeatureRequest",
        "<",
        "Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAlgorithmFlags:I

.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mHeight:I

.field private mPixs:[B

.field private final mWidth:I


# direct methods
.method public constructor <init>(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;JLjava/lang/String;JLandroid/graphics/Bitmap;I)V
    .locals 1
    .param p1, "priority"    # Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;
    .param p2, "imageId"    # J
    .param p4, "sha1"    # Ljava/lang/String;
    .param p5, "imageDateTime"    # J
    .param p7, "bitmap"    # Landroid/graphics/Bitmap;
    .param p8, "algorithmFlags"    # I

    .prologue
    .line 24
    invoke-direct/range {p0 .. p6}, Lcom/miui/gallery/assistant/manager/request/ImageFeatureRequest;-><init>(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;JLjava/lang/String;J)V

    .line 25
    iput p8, p0, Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;->mAlgorithmFlags:I

    .line 26
    iput-object p7, p0, Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;->mBitmap:Landroid/graphics/Bitmap;

    .line 27
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;->mWidth:I

    .line 28
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;->mHeight:I

    .line 29
    return-void
.end method

.method private getAlgorithmRequestByFlag(I)Lcom/miui/gallery/assistant/manager/request/ImageFeatureRequest;
    .locals 10
    .param p1, "flag"    # I

    .prologue
    .line 50
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/gallery/util/assistant/FlagUtil;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Lcom/miui/gallery/assistant/manager/request/QualityFeatureRequest;

    invoke-virtual {p0}, Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;->getPriority()Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;

    move-result-object v1

    iget-wide v2, p0, Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;->mImageId:J

    iget-object v4, p0, Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;->mSha1:Ljava/lang/String;

    iget-wide v5, p0, Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;->mImageDateTime:J

    iget-object v7, p0, Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;->mPixs:[B

    iget v8, p0, Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;->mWidth:I

    iget v9, p0, Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;->mHeight:I

    invoke-direct/range {v0 .. v9}, Lcom/miui/gallery/assistant/manager/request/QualityFeatureRequest;-><init>(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;JLjava/lang/String;J[BII)V

    .line 59
    :goto_0
    return-object v0

    .line 52
    :cond_0
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/miui/gallery/util/assistant/FlagUtil;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    new-instance v0, Lcom/miui/gallery/assistant/manager/request/SceneFeatureRequest;

    invoke-virtual {p0}, Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;->getPriority()Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;

    move-result-object v1

    iget-wide v2, p0, Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;->mImageId:J

    iget-object v4, p0, Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;->mSha1:Ljava/lang/String;

    iget-wide v5, p0, Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;->mImageDateTime:J

    iget-object v7, p0, Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;->mPixs:[B

    iget v8, p0, Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;->mWidth:I

    iget v9, p0, Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;->mHeight:I

    invoke-direct/range {v0 .. v9}, Lcom/miui/gallery/assistant/manager/request/SceneFeatureRequest;-><init>(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;JLjava/lang/String;J[BII)V

    goto :goto_0

    .line 54
    :cond_1
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/miui/gallery/util/assistant/FlagUtil;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    new-instance v0, Lcom/miui/gallery/assistant/manager/request/ClusterFeatureRequest;

    invoke-virtual {p0}, Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;->getPriority()Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;

    move-result-object v1

    iget-wide v2, p0, Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;->mImageId:J

    iget-object v4, p0, Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;->mSha1:Ljava/lang/String;

    iget-wide v5, p0, Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;->mImageDateTime:J

    iget-object v7, p0, Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;->mPixs:[B

    iget v8, p0, Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;->mWidth:I

    iget v9, p0, Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;->mHeight:I

    invoke-direct/range {v0 .. v9}, Lcom/miui/gallery/assistant/manager/request/ClusterFeatureRequest;-><init>(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;JLjava/lang/String;J[BII)V

    goto :goto_0

    .line 56
    :cond_2
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/miui/gallery/util/assistant/FlagUtil;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    new-instance v0, Lcom/miui/gallery/assistant/manager/request/BaiduSceneFeatureRequest;

    invoke-virtual {p0}, Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;->getPriority()Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;

    move-result-object v1

    iget-wide v2, p0, Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;->mImageId:J

    iget-object v4, p0, Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;->mSha1:Ljava/lang/String;

    iget-wide v5, p0, Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;->mImageDateTime:J

    iget-object v7, p0, Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct/range {v0 .. v7}, Lcom/miui/gallery/assistant/manager/request/BaiduSceneFeatureRequest;-><init>(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;JLjava/lang/String;JLandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 59
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic process()Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;->process()Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;

    move-result-object v0

    return-object v0
.end method

.method protected process()Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;
    .locals 14

    .prologue
    const/4 v3, 0x0

    .line 33
    iget-object v6, p0, Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v6}, Lcom/miui/gallery/util/assistant/ImageUtil;->getPixelsBGR(Landroid/graphics/Bitmap;)[B

    move-result-object v6

    iput-object v6, p0, Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;->mPixs:[B

    .line 34
    new-instance v1, Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;

    iget-wide v6, p0, Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;->mImageId:J

    invoke-direct {v1, v3, v6, v7}, Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;-><init>(IJ)V

    .line 35
    .local v1, "batchAlgorithmResult":Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;
    sget-object v6, Lcom/miui/gallery/assistant/algorithm/Algorithm;->FLAG_ALL_ARRAY:[I

    array-length v7, v6

    :goto_0
    if-ge v3, v7, :cond_1

    aget v2, v6, v3

    .line 36
    .local v2, "flag":I
    iget v8, p0, Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;->mAlgorithmFlags:I

    invoke-static {v8, v2}, Lcom/miui/gallery/util/assistant/FlagUtil;->hasFlag(II)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 37
    invoke-direct {p0, v2}, Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;->getAlgorithmRequestByFlag(I)Lcom/miui/gallery/assistant/manager/request/ImageFeatureRequest;

    move-result-object v0

    .line 38
    .local v0, "algorithmRequest":Lcom/miui/gallery/assistant/manager/request/ImageFeatureRequest;
    if-eqz v0, :cond_0

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 40
    .local v4, "start":J
    invoke-virtual {v0}, Lcom/miui/gallery/assistant/manager/request/ImageFeatureRequest;->process()Lcom/miui/gallery/assistant/manager/result/ImageFeatureResult;

    move-result-object v8

    invoke-virtual {v1, v2, v8}, Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;->add(ILcom/miui/gallery/assistant/manager/result/ImageFeatureResult;)V

    .line 41
    iget-object v8, p0, Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;->TAG:Ljava/lang/String;

    const-string v9, "%s AlgorithmRequest process using time %d ms"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 41
    invoke-static {v8, v9, v10, v11}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .end local v0    # "algorithmRequest":Lcom/miui/gallery/assistant/manager/request/ImageFeatureRequest;
    .end local v4    # "start":J
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 46
    .end local v2    # "flag":I
    :cond_1
    return-object v1
.end method

.method protected bridge synthetic process()Lcom/miui/gallery/assistant/manager/result/ImageFeatureResult;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/miui/gallery/assistant/manager/request/BatchImageAlgorithmRequest;->process()Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;

    move-result-object v0

    return-object v0
.end method
