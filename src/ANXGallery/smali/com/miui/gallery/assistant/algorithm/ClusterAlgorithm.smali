.class public Lcom/miui/gallery/assistant/algorithm/ClusterAlgorithm;
.super Lcom/miui/gallery/assistant/algorithm/Algorithm;
.source "ClusterAlgorithm.java"


# instance fields
.field mImageClusterJNI:Lcom/miui/gallery/assistant/jni/cluster/ImageClusterJNI;

.field mNativePtr:J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 20
    const-wide/32 v0, 0xf51e1

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/assistant/algorithm/Algorithm;-><init>(J)V

    .line 21
    return-void
.end method


# virtual methods
.method public declared-synchronized extractFeature([BII)[F
    .locals 7
    .param p1, "pix"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/miui/gallery/assistant/algorithm/ClusterAlgorithm;->mIsNativeInitiated:Z

    if-eqz v0, :cond_0

    .line 53
    iget-object v1, p0, Lcom/miui/gallery/assistant/algorithm/ClusterAlgorithm;->mImageClusterJNI:Lcom/miui/gallery/assistant/jni/cluster/ImageClusterJNI;

    iget-wide v2, p0, Lcom/miui/gallery/assistant/algorithm/ClusterAlgorithm;->mNativePtr:J

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/miui/gallery/assistant/jni/cluster/ImageClusterJNI;->extractFeature(J[BII)[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 55
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getClusterResult([F[J[JI)Ljava/util/ArrayList;
    .locals 9
    .param p1, "features"    # [F
    .param p2, "time"    # [J
    .param p3, "key"    # [J
    .param p4, "imageCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[J[JI)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/assistant/jni/cluster/Cluster;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/miui/gallery/assistant/algorithm/ClusterAlgorithm;->mIsNativeInitiated:Z

    if-eqz v0, :cond_0

    .line 69
    iget-object v1, p0, Lcom/miui/gallery/assistant/algorithm/ClusterAlgorithm;->mImageClusterJNI:Lcom/miui/gallery/assistant/jni/cluster/ImageClusterJNI;

    iget-wide v2, p0, Lcom/miui/gallery/assistant/algorithm/ClusterAlgorithm;->mNativePtr:J

    const/16 v8, 0x400

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v8}, Lcom/miui/gallery/assistant/jni/cluster/ImageClusterJNI;->getClusterResult(J[F[J[JII)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 71
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onDestroyAlgorithm()V
    .locals 4

    .prologue
    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/assistant/algorithm/ClusterAlgorithm;->mImageClusterJNI:Lcom/miui/gallery/assistant/jni/cluster/ImageClusterJNI;

    iget-wide v2, p0, Lcom/miui/gallery/assistant/algorithm/ClusterAlgorithm;->mNativePtr:J

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/assistant/jni/cluster/ImageClusterJNI;->nativeDestroy(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/miui/gallery/assistant/algorithm/ClusterAlgorithm;->mNativePtr:J

    .line 43
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/miui/gallery/assistant/algorithm/ClusterAlgorithm;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onInitAlgorithm()Z
    .locals 6

    .prologue
    .line 25
    new-instance v1, Lcom/miui/gallery/assistant/jni/cluster/ImageClusterJNI;

    invoke-direct {v1}, Lcom/miui/gallery/assistant/jni/cluster/ImageClusterJNI;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/assistant/algorithm/ClusterAlgorithm;->mImageClusterJNI:Lcom/miui/gallery/assistant/jni/cluster/ImageClusterJNI;

    .line 27
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/assistant/algorithm/ClusterAlgorithm;->mImageClusterJNI:Lcom/miui/gallery/assistant/jni/cluster/ImageClusterJNI;

    const v2, 0x3f3db22d    # 0.741f

    const-wide/32 v4, 0x36ee80

    invoke-virtual {v1, v2, v4, v5}, Lcom/miui/gallery/assistant/jni/cluster/ImageClusterJNI;->nativeCreate(FJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/assistant/algorithm/ClusterAlgorithm;->mNativePtr:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/miui/gallery/assistant/algorithm/ClusterAlgorithm;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    const/4 v1, 0x0

    goto :goto_0
.end method
