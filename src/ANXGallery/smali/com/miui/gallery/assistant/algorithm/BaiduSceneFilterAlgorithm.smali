.class public Lcom/miui/gallery/assistant/algorithm/BaiduSceneFilterAlgorithm;
.super Lcom/miui/gallery/assistant/algorithm/Algorithm;
.source "BaiduSceneFilterAlgorithm.java"


# instance fields
.field private volatile mIsInitialized:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 25
    const-wide/16 v0, 0x3ed

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/assistant/algorithm/Algorithm;-><init>(J)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/assistant/algorithm/BaiduSceneFilterAlgorithm;->mIsInitialized:Z

    .line 27
    return-void
.end method


# virtual methods
.method protected onDestroyAlgorithm()V
    .locals 7

    .prologue
    .line 68
    :try_start_0
    invoke-static {}, Lcom/baidu/vis/ClassIfication/Predictor;->getInstance()Lcom/baidu/vis/ClassIfication/Predictor;

    invoke-static {}, Lcom/baidu/vis/ClassIfication/Predictor;->modelRelease()I

    move-result v3

    .line 69
    .local v3, "releaseModel":I
    if-eqz v3, :cond_0

    .line 70
    iget-object v4, p0, Lcom/miui/gallery/assistant/algorithm/BaiduSceneFilterAlgorithm;->TAG:Ljava/lang/String;

    const-string v5, "Model release fail:%d"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/baidu/vis/ClassIfication/SDKExceptions$IlleagleLicense; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/baidu/vis/ClassIfication/SDKExceptions$NotInit; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    .line 79
    .end local v3    # "releaseModel":I
    :cond_0
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, "illeagleLicense":Lcom/baidu/vis/ClassIfication/SDKExceptions$IlleagleLicense;
    invoke-virtual {v1}, Lcom/baidu/vis/ClassIfication/SDKExceptions$IlleagleLicense;->printStackTrace()V

    goto :goto_0

    .line 74
    .end local v1    # "illeagleLicense":Lcom/baidu/vis/ClassIfication/SDKExceptions$IlleagleLicense;
    :catch_1
    move-exception v2

    .line 75
    .local v2, "notInit":Lcom/baidu/vis/ClassIfication/SDKExceptions$NotInit;
    invoke-virtual {v2}, Lcom/baidu/vis/ClassIfication/SDKExceptions$NotInit;->printStackTrace()V

    goto :goto_0

    .line 76
    .end local v2    # "notInit":Lcom/baidu/vis/ClassIfication/SDKExceptions$NotInit;
    :catch_2
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {p0, v0}, Lcom/miui/gallery/assistant/algorithm/BaiduSceneFilterAlgorithm;->reportAlgorithmError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onInitAlgorithm()Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 32
    :try_start_0
    invoke-static {}, Lcom/baidu/vis/ClassIfication/Predictor;->getInstance()Lcom/baidu/vis/ClassIfication/Predictor;

    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "Gallery"

    invoke-static {v9, v10}, Lcom/baidu/vis/ClassIfication/Predictor;->init(Landroid/content/Context;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/baidu/vis/ClassIfication/SDKExceptions$loadNativeLibraryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/baidu/vis/ClassIfication/SDKExceptions$loadLicenseLibraryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 45
    :try_start_1
    invoke-static {}, Lcom/miui/gallery/assistant/library/LibraryManager;->getInstance()Lcom/miui/gallery/assistant/library/LibraryManager;

    move-result-object v9

    const-string v10, "model.mlm"

    invoke-virtual {v9, v10}, Lcom/miui/gallery/assistant/library/LibraryManager;->getLibraryItemPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 46
    .local v5, "modlePath":Ljava/lang/String;
    invoke-static {v5}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 47
    invoke-static {}, Lcom/baidu/vis/ClassIfication/Predictor;->getInstance()Lcom/baidu/vis/ClassIfication/Predictor;

    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v5}, Lcom/baidu/vis/ClassIfication/Predictor;->initModelWithPath(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 49
    .local v2, "initModel":I
    if-nez v2, :cond_0

    .line 50
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/miui/gallery/assistant/algorithm/BaiduSceneFilterAlgorithm;->mIsInitialized:Z
    :try_end_1
    .catch Lcom/baidu/vis/ClassIfication/SDKExceptions$NV21BytesLengthNotMatch; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/baidu/vis/ClassIfication/SDKExceptions$IlleagleLicense; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_5

    .line 62
    .end local v2    # "initModel":I
    .end local v5    # "modlePath":Ljava/lang/String;
    :goto_0
    return v7

    .line 33
    :catch_0
    move-exception v4

    .line 34
    .local v4, "loadNativeLibraryError":Lcom/baidu/vis/ClassIfication/SDKExceptions$loadNativeLibraryError;
    iget-object v7, p0, Lcom/miui/gallery/assistant/algorithm/BaiduSceneFilterAlgorithm;->TAG:Ljava/lang/String;

    invoke-static {v7, v4}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v7, v8

    .line 35
    goto :goto_0

    .line 36
    .end local v4    # "loadNativeLibraryError":Lcom/baidu/vis/ClassIfication/SDKExceptions$loadNativeLibraryError;
    :catch_1
    move-exception v3

    .line 37
    .local v3, "loadLicenseLibraryError":Lcom/baidu/vis/ClassIfication/SDKExceptions$loadLicenseLibraryError;
    iget-object v7, p0, Lcom/miui/gallery/assistant/algorithm/BaiduSceneFilterAlgorithm;->TAG:Ljava/lang/String;

    invoke-static {v7, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v7, v8

    .line 38
    goto :goto_0

    .line 39
    .end local v3    # "loadLicenseLibraryError":Lcom/baidu/vis/ClassIfication/SDKExceptions$loadLicenseLibraryError;
    :catch_2
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/miui/gallery/assistant/algorithm/BaiduSceneFilterAlgorithm;->reportAlgorithmError(Ljava/lang/Throwable;)V

    move v7, v8

    .line 41
    goto :goto_0

    .line 54
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v6

    .line 55
    .local v6, "nv21BytesLengthNotMatch":Lcom/baidu/vis/ClassIfication/SDKExceptions$NV21BytesLengthNotMatch;
    invoke-virtual {v6}, Lcom/baidu/vis/ClassIfication/SDKExceptions$NV21BytesLengthNotMatch;->printStackTrace()V

    .end local v6    # "nv21BytesLengthNotMatch":Lcom/baidu/vis/ClassIfication/SDKExceptions$NV21BytesLengthNotMatch;
    :cond_0
    :goto_1
    move v7, v8

    .line 62
    goto :goto_0

    .line 56
    :catch_4
    move-exception v1

    .line 57
    .local v1, "illeagleLicense":Lcom/baidu/vis/ClassIfication/SDKExceptions$IlleagleLicense;
    invoke-virtual {v1}, Lcom/baidu/vis/ClassIfication/SDKExceptions$IlleagleLicense;->printStackTrace()V

    goto :goto_1

    .line 58
    .end local v1    # "illeagleLicense":Lcom/baidu/vis/ClassIfication/SDKExceptions$IlleagleLicense;
    :catch_5
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {p0, v0}, Lcom/miui/gallery/assistant/algorithm/BaiduSceneFilterAlgorithm;->reportAlgorithmError(Ljava/lang/Throwable;)V

    move v7, v8

    .line 60
    goto :goto_0
.end method

.method public declared-synchronized predict(Landroid/graphics/Bitmap;)Lcom/baidu/vis/ClassIfication/Response;
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/miui/gallery/assistant/algorithm/BaiduSceneFilterAlgorithm;->mIsInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 84
    :try_start_1
    invoke-static {}, Lcom/baidu/vis/ClassIfication/Predictor;->getInstance()Lcom/baidu/vis/ClassIfication/Predictor;

    invoke-static {p1}, Lcom/baidu/vis/ClassIfication/Predictor;->predict(Ljava/lang/Object;)Lcom/baidu/vis/ClassIfication/Response;
    :try_end_1
    .catch Lcom/baidu/vis/ClassIfication/SDKExceptions$IlleagleLicense; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/baidu/vis/ClassIfication/SDKExceptions$NotInit; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 93
    :goto_0
    monitor-exit p0

    return-object v3

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "illeagleLicense":Lcom/baidu/vis/ClassIfication/SDKExceptions$IlleagleLicense;
    :try_start_2
    invoke-virtual {v1}, Lcom/baidu/vis/ClassIfication/SDKExceptions$IlleagleLicense;->printStackTrace()V

    .line 93
    .end local v1    # "illeagleLicense":Lcom/baidu/vis/ClassIfication/SDKExceptions$IlleagleLicense;
    :cond_0
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 87
    :catch_1
    move-exception v2

    .line 88
    .local v2, "notInit":Lcom/baidu/vis/ClassIfication/SDKExceptions$NotInit;
    invoke-virtual {v2}, Lcom/baidu/vis/ClassIfication/SDKExceptions$NotInit;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 82
    .end local v2    # "notInit":Lcom/baidu/vis/ClassIfication/SDKExceptions$NotInit;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 89
    :catch_2
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Error;
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/miui/gallery/assistant/algorithm/BaiduSceneFilterAlgorithm;->reportAlgorithmError(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
