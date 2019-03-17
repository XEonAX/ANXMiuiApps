.class public Lcom/miui/gallery/assistant/manager/request/QualityFeatureRequest;
.super Lcom/miui/gallery/assistant/manager/request/PixelImageFeatureRequest;
.source "QualityFeatureRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/assistant/manager/request/PixelImageFeatureRequest",
        "<",
        "Lcom/miui/gallery/assistant/manager/result/QualityFeatureResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;JLjava/lang/String;J[BII)V
    .locals 0
    .param p1, "priority"    # Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;
    .param p2, "imageId"    # J
    .param p4, "sha1"    # Ljava/lang/String;
    .param p5, "imageDateTime"    # J
    .param p7, "pixs"    # [B
    .param p8, "width"    # I
    .param p9, "height"    # I

    .prologue
    .line 16
    invoke-direct/range {p0 .. p9}, Lcom/miui/gallery/assistant/manager/request/PixelImageFeatureRequest;-><init>(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;JLjava/lang/String;J[BII)V

    .line 18
    return-void
.end method


# virtual methods
.method protected bridge synthetic process()Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/miui/gallery/assistant/manager/request/QualityFeatureRequest;->process()Lcom/miui/gallery/assistant/manager/result/QualityFeatureResult;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic process()Lcom/miui/gallery/assistant/manager/result/ImageFeatureResult;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/miui/gallery/assistant/manager/request/QualityFeatureRequest;->process()Lcom/miui/gallery/assistant/manager/result/QualityFeatureResult;

    move-result-object v0

    return-object v0
.end method

.method protected process()Lcom/miui/gallery/assistant/manager/result/QualityFeatureResult;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 22
    invoke-static {}, Lcom/miui/gallery/assistant/library/LibraryManager;->getInstance()Lcom/miui/gallery/assistant/library/LibraryManager;

    move-result-object v2

    const-wide/32 v4, 0xf4a11

    invoke-virtual {v2, v4, v5}, Lcom/miui/gallery/assistant/library/LibraryManager;->loadLibrary(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 23
    invoke-static {v6}, Lcom/miui/gallery/assistant/algorithm/AlgorithmFactroy;->getAlgorithmByFlag(I)Lcom/miui/gallery/assistant/algorithm/Algorithm;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/assistant/algorithm/QualityScoreAlgorithm;

    .line 24
    .local v1, "qualityScoreAlgorithm":Lcom/miui/gallery/assistant/algorithm/QualityScoreAlgorithm;
    iget-object v2, p0, Lcom/miui/gallery/assistant/manager/request/QualityFeatureRequest;->mPixs:[B

    iget v3, p0, Lcom/miui/gallery/assistant/manager/request/QualityFeatureRequest;->mWidth:I

    iget v4, p0, Lcom/miui/gallery/assistant/manager/request/QualityFeatureRequest;->mHeight:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/miui/gallery/assistant/algorithm/QualityScoreAlgorithm;->getBaseQualityScore([BII)Lcom/miui/gallery/assistant/jni/score/QualityScore;

    move-result-object v0

    .line 25
    .local v0, "qualityScore":Lcom/miui/gallery/assistant/jni/score/QualityScore;
    if-eqz v0, :cond_0

    .line 26
    iget-object v2, p0, Lcom/miui/gallery/assistant/manager/request/QualityFeatureRequest;->TAG:Ljava/lang/String;

    const-string v3, "QualityScoreAlgorithm execute success,result: %s"

    invoke-static {v2, v3, v0}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    new-instance v2, Lcom/miui/gallery/assistant/manager/result/QualityFeatureResult;

    iget-wide v4, p0, Lcom/miui/gallery/assistant/manager/request/QualityFeatureRequest;->mImageId:J

    invoke-direct {v2, v0, v4, v5}, Lcom/miui/gallery/assistant/manager/result/QualityFeatureResult;-><init>(Lcom/miui/gallery/assistant/jni/score/QualityScore;J)V

    .line 33
    .end local v0    # "qualityScore":Lcom/miui/gallery/assistant/jni/score/QualityScore;
    .end local v1    # "qualityScoreAlgorithm":Lcom/miui/gallery/assistant/algorithm/QualityScoreAlgorithm;
    :goto_0
    return-object v2

    .line 29
    .restart local v0    # "qualityScore":Lcom/miui/gallery/assistant/jni/score/QualityScore;
    .restart local v1    # "qualityScoreAlgorithm":Lcom/miui/gallery/assistant/algorithm/QualityScoreAlgorithm;
    :cond_0
    new-instance v2, Lcom/miui/gallery/assistant/manager/result/QualityFeatureResult;

    iget-wide v4, p0, Lcom/miui/gallery/assistant/manager/request/QualityFeatureRequest;->mImageId:J

    invoke-direct {v2, v6, v4, v5}, Lcom/miui/gallery/assistant/manager/result/QualityFeatureResult;-><init>(IJ)V

    goto :goto_0

    .line 32
    .end local v0    # "qualityScore":Lcom/miui/gallery/assistant/jni/score/QualityScore;
    .end local v1    # "qualityScoreAlgorithm":Lcom/miui/gallery/assistant/algorithm/QualityScoreAlgorithm;
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/assistant/manager/request/QualityFeatureRequest;->TAG:Ljava/lang/String;

    const-string v3, "Load library %s failed"

    const-string v4, "QualityScoreAlgorithm"

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    new-instance v2, Lcom/miui/gallery/assistant/manager/result/QualityFeatureResult;

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/miui/gallery/assistant/manager/request/QualityFeatureRequest;->mImageId:J

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/assistant/manager/result/QualityFeatureResult;-><init>(IJ)V

    goto :goto_0
.end method
