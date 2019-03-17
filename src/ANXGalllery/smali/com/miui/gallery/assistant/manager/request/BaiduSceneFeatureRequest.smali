.class public Lcom/miui/gallery/assistant/manager/request/BaiduSceneFeatureRequest;
.super Lcom/miui/gallery/assistant/manager/request/ImageFeatureRequest;
.source "BaiduSceneFeatureRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/assistant/manager/request/ImageFeatureRequest",
        "<",
        "Lcom/miui/gallery/assistant/manager/result/BaiduSceneFeatureResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;JLjava/lang/String;JLandroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "priority"    # Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;
    .param p2, "imageId"    # J
    .param p4, "sha1"    # Ljava/lang/String;
    .param p5, "imageDateTime"    # J
    .param p7, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 20
    invoke-direct/range {p0 .. p6}, Lcom/miui/gallery/assistant/manager/request/ImageFeatureRequest;-><init>(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;JLjava/lang/String;J)V

    .line 21
    iput-object p7, p0, Lcom/miui/gallery/assistant/manager/request/BaiduSceneFeatureRequest;->mBitmap:Landroid/graphics/Bitmap;

    .line 22
    return-void
.end method


# virtual methods
.method protected bridge synthetic process()Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/miui/gallery/assistant/manager/request/BaiduSceneFeatureRequest;->process()Lcom/miui/gallery/assistant/manager/result/BaiduSceneFeatureResult;

    move-result-object v0

    return-object v0
.end method

.method protected process()Lcom/miui/gallery/assistant/manager/result/BaiduSceneFeatureResult;
    .locals 6

    .prologue
    .line 26
    invoke-static {}, Lcom/miui/gallery/assistant/library/LibraryManager;->getInstance()Lcom/miui/gallery/assistant/library/LibraryManager;

    move-result-object v2

    const-wide/16 v4, 0x3ed

    invoke-virtual {v2, v4, v5}, Lcom/miui/gallery/assistant/library/LibraryManager;->loadLibrary(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 27
    const/16 v2, 0x10

    invoke-static {v2}, Lcom/miui/gallery/assistant/algorithm/AlgorithmFactroy;->getAlgorithmByFlag(I)Lcom/miui/gallery/assistant/algorithm/Algorithm;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/assistant/algorithm/BaiduSceneFilterAlgorithm;

    .line 28
    .local v0, "baiduSceneFilterAlgorithm":Lcom/miui/gallery/assistant/algorithm/BaiduSceneFilterAlgorithm;
    iget-object v2, p0, Lcom/miui/gallery/assistant/manager/request/BaiduSceneFeatureRequest;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/assistant/algorithm/BaiduSceneFilterAlgorithm;->predict(Landroid/graphics/Bitmap;)Lcom/baidu/vis/ClassIfication/Response;

    move-result-object v1

    .line 29
    .local v1, "response":Lcom/baidu/vis/ClassIfication/Response;
    if-eqz v1, :cond_0

    .line 30
    new-instance v2, Lcom/miui/gallery/assistant/manager/result/BaiduSceneFeatureResult;

    new-instance v3, Lcom/miui/gallery/assistant/jni/filter/BaiduSceneResult;

    iget v4, v1, Lcom/baidu/vis/ClassIfication/Response;->classNum:I

    iget-object v5, v1, Lcom/baidu/vis/ClassIfication/Response;->classProb:[F

    invoke-direct {v3, v4, v5}, Lcom/miui/gallery/assistant/jni/filter/BaiduSceneResult;-><init>(I[F)V

    iget-wide v4, p0, Lcom/miui/gallery/assistant/manager/request/BaiduSceneFeatureRequest;->mImageId:J

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/assistant/manager/result/BaiduSceneFeatureResult;-><init>(Lcom/miui/gallery/assistant/jni/filter/BaiduSceneResult;J)V

    .line 36
    .end local v0    # "baiduSceneFilterAlgorithm":Lcom/miui/gallery/assistant/algorithm/BaiduSceneFilterAlgorithm;
    .end local v1    # "response":Lcom/baidu/vis/ClassIfication/Response;
    :goto_0
    return-object v2

    .line 32
    .restart local v0    # "baiduSceneFilterAlgorithm":Lcom/miui/gallery/assistant/algorithm/BaiduSceneFilterAlgorithm;
    .restart local v1    # "response":Lcom/baidu/vis/ClassIfication/Response;
    :cond_0
    new-instance v2, Lcom/miui/gallery/assistant/manager/result/BaiduSceneFeatureResult;

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/miui/gallery/assistant/manager/request/BaiduSceneFeatureRequest;->mImageId:J

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/assistant/manager/result/BaiduSceneFeatureResult;-><init>(IJ)V

    goto :goto_0

    .line 35
    .end local v0    # "baiduSceneFilterAlgorithm":Lcom/miui/gallery/assistant/algorithm/BaiduSceneFilterAlgorithm;
    .end local v1    # "response":Lcom/baidu/vis/ClassIfication/Response;
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/assistant/manager/request/BaiduSceneFeatureRequest;->TAG:Ljava/lang/String;

    const-string v3, "Load library %s failed"

    const-string v4, "BaiduSceneFilterAlgorithm"

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    new-instance v2, Lcom/miui/gallery/assistant/manager/result/BaiduSceneFeatureResult;

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/miui/gallery/assistant/manager/request/BaiduSceneFeatureRequest;->mImageId:J

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/assistant/manager/result/BaiduSceneFeatureResult;-><init>(IJ)V

    goto :goto_0
.end method

.method protected bridge synthetic process()Lcom/miui/gallery/assistant/manager/result/ImageFeatureResult;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/miui/gallery/assistant/manager/request/BaiduSceneFeatureRequest;->process()Lcom/miui/gallery/assistant/manager/result/BaiduSceneFeatureResult;

    move-result-object v0

    return-object v0
.end method
