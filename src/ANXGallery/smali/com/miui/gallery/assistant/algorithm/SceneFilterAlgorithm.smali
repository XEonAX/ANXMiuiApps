.class public Lcom/miui/gallery/assistant/algorithm/SceneFilterAlgorithm;
.super Lcom/miui/gallery/assistant/algorithm/Algorithm;
.source "SceneFilterAlgorithm.java"


# instance fields
.field private mNativePtr:J

.field private mSceneClassifyJNI:Lcom/miui/gallery/assistant/jni/filter/SceneClassifyJNI;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 17
    const-wide/16 v0, 0x3eb

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/assistant/algorithm/Algorithm;-><init>(J)V

    .line 18
    return-void
.end method


# virtual methods
.method public declared-synchronized getSceneResult([BII)Lcom/miui/gallery/assistant/jni/filter/SceneResult;
    .locals 7
    .param p1, "pix"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/miui/gallery/assistant/algorithm/SceneFilterAlgorithm;->mIsNativeInitiated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 46
    :try_start_1
    iget-object v1, p0, Lcom/miui/gallery/assistant/algorithm/SceneFilterAlgorithm;->mSceneClassifyJNI:Lcom/miui/gallery/assistant/jni/filter/SceneClassifyJNI;

    iget-wide v2, p0, Lcom/miui/gallery/assistant/algorithm/SceneFilterAlgorithm;->mNativePtr:J

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/miui/gallery/assistant/jni/filter/SceneClassifyJNI;->nativeGetImageSceneCls(J[BII)Lcom/miui/gallery/assistant/jni/filter/SceneResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 51
    :goto_0
    monitor-exit p0

    return-object v1

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v1, p0, Lcom/miui/gallery/assistant/algorithm/SceneFilterAlgorithm;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 44
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected onDestroyAlgorithm()V
    .locals 4

    .prologue
    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/assistant/algorithm/SceneFilterAlgorithm;->mSceneClassifyJNI:Lcom/miui/gallery/assistant/jni/filter/SceneClassifyJNI;

    iget-wide v2, p0, Lcom/miui/gallery/assistant/algorithm/SceneFilterAlgorithm;->mNativePtr:J

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/assistant/jni/filter/SceneClassifyJNI;->nativeDestroy(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/miui/gallery/assistant/algorithm/SceneFilterAlgorithm;->mNativePtr:J

    .line 40
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/miui/gallery/assistant/algorithm/SceneFilterAlgorithm;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onInitAlgorithm()Z
    .locals 4

    .prologue
    .line 22
    new-instance v1, Lcom/miui/gallery/assistant/jni/filter/SceneClassifyJNI;

    invoke-direct {v1}, Lcom/miui/gallery/assistant/jni/filter/SceneClassifyJNI;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/assistant/algorithm/SceneFilterAlgorithm;->mSceneClassifyJNI:Lcom/miui/gallery/assistant/jni/filter/SceneClassifyJNI;

    .line 24
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/assistant/algorithm/SceneFilterAlgorithm;->mSceneClassifyJNI:Lcom/miui/gallery/assistant/jni/filter/SceneClassifyJNI;

    invoke-virtual {v1}, Lcom/miui/gallery/assistant/jni/filter/SceneClassifyJNI;->nativeCreate()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/assistant/algorithm/SceneFilterAlgorithm;->mNativePtr:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/miui/gallery/assistant/algorithm/SceneFilterAlgorithm;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    const/4 v1, 0x0

    goto :goto_0
.end method
