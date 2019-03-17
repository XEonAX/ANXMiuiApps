.class public Lcom/miui/gallery/assistant/algorithm/QualityScoreAlgorithm;
.super Lcom/miui/gallery/assistant/algorithm/Algorithm;
.source "QualityScoreAlgorithm.java"


# instance fields
.field private mNativePtr:J

.field private mQualityScoreJNI:Lcom/miui/gallery/assistant/jni/score/QualityScoreJNI;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 15
    const-wide/32 v0, 0xf4a11

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/assistant/algorithm/Algorithm;-><init>(J)V

    .line 16
    return-void
.end method


# virtual methods
.method public declared-synchronized getBaseQualityScore([BII)Lcom/miui/gallery/assistant/jni/score/QualityScore;
    .locals 7
    .param p1, "pix"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/miui/gallery/assistant/algorithm/QualityScoreAlgorithm;->mIsNativeInitiated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 44
    :try_start_1
    iget-object v1, p0, Lcom/miui/gallery/assistant/algorithm/QualityScoreAlgorithm;->mQualityScoreJNI:Lcom/miui/gallery/assistant/jni/score/QualityScoreJNI;

    iget-wide v2, p0, Lcom/miui/gallery/assistant/algorithm/QualityScoreAlgorithm;->mNativePtr:J

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/miui/gallery/assistant/jni/score/QualityScoreJNI;->nativeGetImageIqa(J[BII)Lcom/miui/gallery/assistant/jni/score/QualityScore;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 49
    :goto_0
    monitor-exit p0

    return-object v1

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v1, p0, Lcom/miui/gallery/assistant/algorithm/QualityScoreAlgorithm;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 42
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected onDestroyAlgorithm()V
    .locals 4

    .prologue
    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/assistant/algorithm/QualityScoreAlgorithm;->mQualityScoreJNI:Lcom/miui/gallery/assistant/jni/score/QualityScoreJNI;

    iget-wide v2, p0, Lcom/miui/gallery/assistant/algorithm/QualityScoreAlgorithm;->mNativePtr:J

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/assistant/jni/score/QualityScoreJNI;->nativeDestroy(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/miui/gallery/assistant/algorithm/QualityScoreAlgorithm;->mNativePtr:J

    .line 38
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/miui/gallery/assistant/algorithm/QualityScoreAlgorithm;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onInitAlgorithm()Z
    .locals 4

    .prologue
    .line 20
    new-instance v1, Lcom/miui/gallery/assistant/jni/score/QualityScoreJNI;

    invoke-direct {v1}, Lcom/miui/gallery/assistant/jni/score/QualityScoreJNI;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/assistant/algorithm/QualityScoreAlgorithm;->mQualityScoreJNI:Lcom/miui/gallery/assistant/jni/score/QualityScoreJNI;

    .line 22
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/assistant/algorithm/QualityScoreAlgorithm;->mQualityScoreJNI:Lcom/miui/gallery/assistant/jni/score/QualityScoreJNI;

    invoke-virtual {v1}, Lcom/miui/gallery/assistant/jni/score/QualityScoreJNI;->nativeCreate()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/assistant/algorithm/QualityScoreAlgorithm;->mNativePtr:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 23
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/miui/gallery/assistant/algorithm/QualityScoreAlgorithm;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    const/4 v1, 0x0

    goto :goto_0
.end method
