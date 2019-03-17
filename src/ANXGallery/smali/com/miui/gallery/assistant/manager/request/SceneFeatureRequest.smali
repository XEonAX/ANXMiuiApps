.class public Lcom/miui/gallery/assistant/manager/request/SceneFeatureRequest;
.super Lcom/miui/gallery/assistant/manager/request/PixelImageFeatureRequest;
.source "SceneFeatureRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/assistant/manager/request/PixelImageFeatureRequest",
        "<",
        "Lcom/miui/gallery/assistant/manager/result/SceneFeatureResult;",
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

    .line 17
    return-void
.end method


# virtual methods
.method protected bridge synthetic process()Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/miui/gallery/assistant/manager/request/SceneFeatureRequest;->process()Lcom/miui/gallery/assistant/manager/result/SceneFeatureResult;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic process()Lcom/miui/gallery/assistant/manager/result/ImageFeatureResult;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/miui/gallery/assistant/manager/request/SceneFeatureRequest;->process()Lcom/miui/gallery/assistant/manager/result/SceneFeatureResult;

    move-result-object v0

    return-object v0
.end method

.method protected process()Lcom/miui/gallery/assistant/manager/result/SceneFeatureResult;
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 21
    invoke-static {}, Lcom/miui/gallery/assistant/library/LibraryManager;->getInstance()Lcom/miui/gallery/assistant/library/LibraryManager;

    move-result-object v2

    const-wide/16 v4, 0x3eb

    invoke-virtual {v2, v4, v5}, Lcom/miui/gallery/assistant/library/LibraryManager;->loadLibrary(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 22
    invoke-static {v6}, Lcom/miui/gallery/assistant/algorithm/AlgorithmFactroy;->getAlgorithmByFlag(I)Lcom/miui/gallery/assistant/algorithm/Algorithm;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/assistant/algorithm/SceneFilterAlgorithm;

    .line 23
    .local v0, "sceneFilterAlgorithm":Lcom/miui/gallery/assistant/algorithm/SceneFilterAlgorithm;
    iget-object v2, p0, Lcom/miui/gallery/assistant/manager/request/SceneFeatureRequest;->mPixs:[B

    iget v3, p0, Lcom/miui/gallery/assistant/manager/request/SceneFeatureRequest;->mWidth:I

    iget v4, p0, Lcom/miui/gallery/assistant/manager/request/SceneFeatureRequest;->mHeight:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/miui/gallery/assistant/algorithm/SceneFilterAlgorithm;->getSceneResult([BII)Lcom/miui/gallery/assistant/jni/filter/SceneResult;

    move-result-object v1

    .line 24
    .local v1, "sceneResult":Lcom/miui/gallery/assistant/jni/filter/SceneResult;
    if-eqz v1, :cond_0

    .line 25
    iget-object v2, p0, Lcom/miui/gallery/assistant/manager/request/SceneFeatureRequest;->TAG:Ljava/lang/String;

    const-string v3, "SceneFilterAlgorithm execute success,result: %s"

    invoke-static {v2, v3, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    new-instance v2, Lcom/miui/gallery/assistant/manager/result/SceneFeatureResult;

    iget-wide v4, p0, Lcom/miui/gallery/assistant/manager/request/SceneFeatureRequest;->mImageId:J

    invoke-direct {v2, v1, v4, v5}, Lcom/miui/gallery/assistant/manager/result/SceneFeatureResult;-><init>(Lcom/miui/gallery/assistant/jni/filter/SceneResult;J)V

    .line 32
    .end local v0    # "sceneFilterAlgorithm":Lcom/miui/gallery/assistant/algorithm/SceneFilterAlgorithm;
    .end local v1    # "sceneResult":Lcom/miui/gallery/assistant/jni/filter/SceneResult;
    :goto_0
    return-object v2

    .line 28
    .restart local v0    # "sceneFilterAlgorithm":Lcom/miui/gallery/assistant/algorithm/SceneFilterAlgorithm;
    .restart local v1    # "sceneResult":Lcom/miui/gallery/assistant/jni/filter/SceneResult;
    :cond_0
    new-instance v2, Lcom/miui/gallery/assistant/manager/result/SceneFeatureResult;

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/miui/gallery/assistant/manager/request/SceneFeatureRequest;->mImageId:J

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/assistant/manager/result/SceneFeatureResult;-><init>(IJ)V

    goto :goto_0

    .line 31
    .end local v0    # "sceneFilterAlgorithm":Lcom/miui/gallery/assistant/algorithm/SceneFilterAlgorithm;
    .end local v1    # "sceneResult":Lcom/miui/gallery/assistant/jni/filter/SceneResult;
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/assistant/manager/request/SceneFeatureRequest;->TAG:Ljava/lang/String;

    const-string v3, "Load library %s failed"

    const-string v4, "SceneFilterAlgorithm"

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    new-instance v2, Lcom/miui/gallery/assistant/manager/result/SceneFeatureResult;

    iget-wide v4, p0, Lcom/miui/gallery/assistant/manager/request/SceneFeatureRequest;->mImageId:J

    invoke-direct {v2, v6, v4, v5}, Lcom/miui/gallery/assistant/manager/result/SceneFeatureResult;-><init>(IJ)V

    goto :goto_0
.end method
