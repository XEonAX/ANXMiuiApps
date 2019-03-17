.class public Lcom/miui/gallery/assistant/algorithm/AlgorithmFactroy;
.super Ljava/lang/Object;
.source "AlgorithmFactroy.java"


# static fields
.field private static final sAlgorithmCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/miui/gallery/assistant/algorithm/Algorithm;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/miui/gallery/assistant/algorithm/AlgorithmFactroy;->sAlgorithmCache:Landroid/util/SparseArray;

    .line 65
    new-instance v0, Lcom/miui/gallery/assistant/algorithm/AlgorithmFactroy$1;

    invoke-direct {v0}, Lcom/miui/gallery/assistant/algorithm/AlgorithmFactroy$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/assistant/algorithm/AlgorithmFactroy;->sRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method static synthetic access$000()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/miui/gallery/assistant/algorithm/AlgorithmFactroy;->sAlgorithmCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method private static declared-synchronized addAlgorithmToCache(ILcom/miui/gallery/assistant/algorithm/Algorithm;)V
    .locals 4
    .param p0, "flag"    # I
    .param p1, "algorithm"    # Lcom/miui/gallery/assistant/algorithm/Algorithm;

    .prologue
    .line 105
    const-class v2, Lcom/miui/gallery/assistant/algorithm/AlgorithmFactroy;

    monitor-enter v2

    if-nez p1, :cond_0

    .line 109
    :goto_0
    monitor-exit v2

    return-void

    .line 106
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/miui/gallery/assistant/algorithm/AlgorithmFactroy;->getCacheKey(I)I

    move-result v0

    .line 107
    .local v0, "cacheKey":I
    sget-object v1, Lcom/miui/gallery/assistant/algorithm/AlgorithmFactroy;->sAlgorithmCache:Landroid/util/SparseArray;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 108
    invoke-static {}, Lcom/miui/gallery/assistant/algorithm/AlgorithmFactroy;->scheduleAlgorithmRelease()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 105
    .end local v0    # "cacheKey":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static createAlgorithmByFlag(I)Lcom/miui/gallery/assistant/algorithm/Algorithm;
    .locals 2
    .param p0, "flag"    # I

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, "algorithm":Lcom/miui/gallery/assistant/algorithm/Algorithm;
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/miui/gallery/util/assistant/FlagUtil;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 88
    new-instance v0, Lcom/miui/gallery/assistant/algorithm/QualityScoreAlgorithm;

    .end local v0    # "algorithm":Lcom/miui/gallery/assistant/algorithm/Algorithm;
    invoke-direct {v0}, Lcom/miui/gallery/assistant/algorithm/QualityScoreAlgorithm;-><init>()V

    .line 97
    .restart local v0    # "algorithm":Lcom/miui/gallery/assistant/algorithm/Algorithm;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {v0}, Lcom/miui/gallery/assistant/algorithm/Algorithm;->init()Z

    .line 101
    :cond_1
    return-object v0

    .line 89
    :cond_2
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/miui/gallery/util/assistant/FlagUtil;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 90
    new-instance v0, Lcom/miui/gallery/assistant/algorithm/SceneFilterAlgorithm;

    .end local v0    # "algorithm":Lcom/miui/gallery/assistant/algorithm/Algorithm;
    invoke-direct {v0}, Lcom/miui/gallery/assistant/algorithm/SceneFilterAlgorithm;-><init>()V

    .restart local v0    # "algorithm":Lcom/miui/gallery/assistant/algorithm/Algorithm;
    goto :goto_0

    .line 91
    :cond_3
    const/4 v1, 0x4

    invoke-static {p0, v1}, Lcom/miui/gallery/util/assistant/FlagUtil;->hasFlag(II)Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0x8

    invoke-static {p0, v1}, Lcom/miui/gallery/util/assistant/FlagUtil;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 92
    :cond_4
    new-instance v0, Lcom/miui/gallery/assistant/algorithm/ClusterAlgorithm;

    .end local v0    # "algorithm":Lcom/miui/gallery/assistant/algorithm/Algorithm;
    invoke-direct {v0}, Lcom/miui/gallery/assistant/algorithm/ClusterAlgorithm;-><init>()V

    .restart local v0    # "algorithm":Lcom/miui/gallery/assistant/algorithm/Algorithm;
    goto :goto_0

    .line 93
    :cond_5
    const/16 v1, 0x10

    invoke-static {p0, v1}, Lcom/miui/gallery/util/assistant/FlagUtil;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    new-instance v0, Lcom/miui/gallery/assistant/algorithm/BaiduSceneFilterAlgorithm;

    .end local v0    # "algorithm":Lcom/miui/gallery/assistant/algorithm/Algorithm;
    invoke-direct {v0}, Lcom/miui/gallery/assistant/algorithm/BaiduSceneFilterAlgorithm;-><init>()V

    .restart local v0    # "algorithm":Lcom/miui/gallery/assistant/algorithm/Algorithm;
    goto :goto_0
.end method

.method private static ensureFlag(I)I
    .locals 5
    .param p0, "flag"    # I

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x4

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 52
    invoke-static {p0, v0}, Lcom/miui/gallery/util/assistant/FlagUtil;->hasFlag(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 61
    :goto_0
    return v0

    .line 54
    :cond_0
    invoke-static {p0, v1}, Lcom/miui/gallery/util/assistant/FlagUtil;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-static {p0, v2}, Lcom/miui/gallery/util/assistant/FlagUtil;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-static {p0, v3}, Lcom/miui/gallery/util/assistant/FlagUtil;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    .line 59
    goto :goto_0

    .line 61
    :cond_3
    const/16 v0, 0x10

    goto :goto_0
.end method

.method public static declared-synchronized getAlgorithmByFlag(I)Lcom/miui/gallery/assistant/algorithm/Algorithm;
    .locals 5
    .param p0, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/miui/gallery/assistant/algorithm/Algorithm;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 36
    const-class v2, Lcom/miui/gallery/assistant/algorithm/AlgorithmFactroy;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/miui/gallery/assistant/algorithm/AlgorithmFactroy;->ensureFlag(I)I

    move-result p0

    .line 37
    invoke-static {p0}, Lcom/miui/gallery/assistant/algorithm/AlgorithmFactroy;->getAlgorithmFromCache(I)Lcom/miui/gallery/assistant/algorithm/Algorithm;

    move-result-object v0

    .line 38
    .local v0, "algorithm":Lcom/miui/gallery/assistant/algorithm/Algorithm;
    if-nez v0, :cond_1

    .line 39
    invoke-static {p0}, Lcom/miui/gallery/assistant/algorithm/AlgorithmFactroy;->createAlgorithmByFlag(I)Lcom/miui/gallery/assistant/algorithm/Algorithm;

    move-result-object v0

    .line 40
    const-string v1, "AlgorithmFactroy"

    const-string v3, "Create new algorithm %d"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    :goto_0
    if-eqz v0, :cond_0

    .line 45
    invoke-static {p0, v0}, Lcom/miui/gallery/assistant/algorithm/AlgorithmFactroy;->addAlgorithmToCache(ILcom/miui/gallery/assistant/algorithm/Algorithm;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_0
    monitor-exit v2

    return-object v0

    .line 42
    :cond_1
    :try_start_1
    const-string v1, "AlgorithmFactroy"

    const-string v3, "Get algorithm %d from Cache"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 36
    .end local v0    # "algorithm":Lcom/miui/gallery/assistant/algorithm/Algorithm;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static declared-synchronized getAlgorithmFromCache(I)Lcom/miui/gallery/assistant/algorithm/Algorithm;
    .locals 5
    .param p0, "flag"    # I

    .prologue
    .line 112
    const-class v4, Lcom/miui/gallery/assistant/algorithm/AlgorithmFactroy;

    monitor-enter v4

    :try_start_0
    invoke-static {p0}, Lcom/miui/gallery/assistant/algorithm/AlgorithmFactroy;->getCacheKey(I)I

    move-result v2

    .line 114
    .local v2, "cacheKey":I
    sget-object v3, Lcom/miui/gallery/assistant/algorithm/AlgorithmFactroy;->sAlgorithmCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 115
    .local v1, "algorithmRef":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/miui/gallery/assistant/algorithm/Algorithm;>;"
    const/4 v0, 0x0

    .line 116
    .local v0, "algorithm":Lcom/miui/gallery/assistant/algorithm/Algorithm;
    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "algorithm":Lcom/miui/gallery/assistant/algorithm/Algorithm;
    check-cast v0, Lcom/miui/gallery/assistant/algorithm/Algorithm;

    .line 118
    .restart local v0    # "algorithm":Lcom/miui/gallery/assistant/algorithm/Algorithm;
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->clear()V

    .line 119
    sget-object v3, Lcom/miui/gallery/assistant/algorithm/AlgorithmFactroy;->sAlgorithmCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :cond_0
    monitor-exit v4

    return-object v0

    .line 112
    .end local v0    # "algorithm":Lcom/miui/gallery/assistant/algorithm/Algorithm;
    .end local v1    # "algorithmRef":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/miui/gallery/assistant/algorithm/Algorithm;>;"
    .end local v2    # "cacheKey":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private static getCacheKey(I)I
    .locals 1
    .param p0, "flag"    # I

    .prologue
    .line 125
    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    .line 126
    :cond_0
    const/16 p0, 0xc

    .line 128
    .end local p0    # "flag":I
    :cond_1
    return p0
.end method

.method private static scheduleAlgorithmRelease()V
    .locals 4

    .prologue
    .line 81
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getWorkHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/assistant/algorithm/AlgorithmFactroy;->sRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 82
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getWorkHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/assistant/algorithm/AlgorithmFactroy;->sRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/CompatHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 83
    return-void
.end method
