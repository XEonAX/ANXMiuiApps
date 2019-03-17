.class public Lcom/miui/gallery/assistant/manager/request/ClusterFeatureRequest;
.super Lcom/miui/gallery/assistant/manager/request/PixelImageFeatureRequest;
.source "ClusterFeatureRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/assistant/manager/request/PixelImageFeatureRequest",
        "<",
        "Lcom/miui/gallery/assistant/manager/result/ClusterFeatureResult;",
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
    .line 15
    invoke-direct/range {p0 .. p9}, Lcom/miui/gallery/assistant/manager/request/PixelImageFeatureRequest;-><init>(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;JLjava/lang/String;J[BII)V

    .line 16
    return-void
.end method


# virtual methods
.method protected bridge synthetic process()Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/miui/gallery/assistant/manager/request/ClusterFeatureRequest;->process()Lcom/miui/gallery/assistant/manager/result/ClusterFeatureResult;

    move-result-object v0

    return-object v0
.end method

.method protected process()Lcom/miui/gallery/assistant/manager/result/ClusterFeatureResult;
    .locals 6

    .prologue
    .line 20
    invoke-static {}, Lcom/miui/gallery/assistant/library/LibraryManager;->getInstance()Lcom/miui/gallery/assistant/library/LibraryManager;

    move-result-object v2

    const-wide/32 v4, 0xf51e1

    invoke-virtual {v2, v4, v5}, Lcom/miui/gallery/assistant/library/LibraryManager;->loadLibrary(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 21
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/miui/gallery/assistant/algorithm/AlgorithmFactroy;->getAlgorithmByFlag(I)Lcom/miui/gallery/assistant/algorithm/Algorithm;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/assistant/algorithm/ClusterAlgorithm;

    .line 22
    .local v0, "clusterAlgorithm":Lcom/miui/gallery/assistant/algorithm/ClusterAlgorithm;
    iget-object v2, p0, Lcom/miui/gallery/assistant/manager/request/ClusterFeatureRequest;->mPixs:[B

    iget v3, p0, Lcom/miui/gallery/assistant/manager/request/ClusterFeatureRequest;->mWidth:I

    iget v4, p0, Lcom/miui/gallery/assistant/manager/request/ClusterFeatureRequest;->mHeight:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/miui/gallery/assistant/algorithm/ClusterAlgorithm;->extractFeature([BII)[F

    move-result-object v1

    .line 23
    .local v1, "clusterFeature":[F
    if-eqz v1, :cond_0

    .line 24
    iget-object v2, p0, Lcom/miui/gallery/assistant/manager/request/ClusterFeatureRequest;->TAG:Ljava/lang/String;

    const-string v3, "ClusterAlgorithm execute success!"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v2, Lcom/miui/gallery/assistant/manager/result/ClusterFeatureResult;

    iget-wide v4, p0, Lcom/miui/gallery/assistant/manager/request/ClusterFeatureRequest;->mImageId:J

    invoke-direct {v2, v1, v4, v5}, Lcom/miui/gallery/assistant/manager/result/ClusterFeatureResult;-><init>([FJ)V

    .line 31
    .end local v0    # "clusterAlgorithm":Lcom/miui/gallery/assistant/algorithm/ClusterAlgorithm;
    .end local v1    # "clusterFeature":[F
    :goto_0
    return-object v2

    .line 27
    .restart local v0    # "clusterAlgorithm":Lcom/miui/gallery/assistant/algorithm/ClusterAlgorithm;
    .restart local v1    # "clusterFeature":[F
    :cond_0
    new-instance v2, Lcom/miui/gallery/assistant/manager/result/ClusterFeatureResult;

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/miui/gallery/assistant/manager/request/ClusterFeatureRequest;->mImageId:J

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/assistant/manager/result/ClusterFeatureResult;-><init>(IJ)V

    goto :goto_0

    .line 30
    .end local v0    # "clusterAlgorithm":Lcom/miui/gallery/assistant/algorithm/ClusterAlgorithm;
    .end local v1    # "clusterFeature":[F
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/assistant/manager/request/ClusterFeatureRequest;->TAG:Ljava/lang/String;

    const-string v3, "Load library %s failed"

    const-string v4, "ClusterAlgorithm"

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    new-instance v2, Lcom/miui/gallery/assistant/manager/result/ClusterFeatureResult;

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/miui/gallery/assistant/manager/request/ClusterFeatureRequest;->mImageId:J

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/assistant/manager/result/ClusterFeatureResult;-><init>(IJ)V

    goto :goto_0
.end method

.method protected bridge synthetic process()Lcom/miui/gallery/assistant/manager/result/ImageFeatureResult;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/miui/gallery/assistant/manager/request/ClusterFeatureRequest;->process()Lcom/miui/gallery/assistant/manager/result/ClusterFeatureResult;

    move-result-object v0

    return-object v0
.end method
