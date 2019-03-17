.class public abstract Lcom/miui/gallery/assistant/algorithm/Algorithm;
.super Ljava/lang/Object;
.source "Algorithm.java"


# static fields
.field public static final FLAG_ALL:I

.field public static final FLAG_ALL_ARRAY:[I


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private final mAlgorithmId:J

.field protected volatile mIsNativeInitiated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->isStoryFunctionEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    :goto_0
    sput v0, Lcom/miui/gallery/assistant/algorithm/Algorithm;->FLAG_ALL:I

    .line 48
    invoke-static {}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->isStoryFunctionEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    :goto_1
    sput-object v0, Lcom/miui/gallery/assistant/algorithm/Algorithm;->FLAG_ALL_ARRAY:[I

    return-void

    .line 45
    :cond_0
    const/4 v0, 0x5

    goto :goto_0

    .line 48
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    goto :goto_1

    :array_0
    .array-data 4
        0x1
        0x4
        0x10
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x4
    .end array-data
.end method

.method constructor <init>(J)V
    .locals 1
    .param p1, "algorithmId"    # J

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/assistant/algorithm/Algorithm;->TAG:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/assistant/algorithm/Algorithm;->mIsNativeInitiated:Z

    .line 58
    iput-wide p1, p0, Lcom/miui/gallery/assistant/algorithm/Algorithm;->mAlgorithmId:J

    .line 59
    return-void
.end method

.method private declared-synchronized destroy()V
    .locals 2

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/miui/gallery/assistant/algorithm/Algorithm;->mIsNativeInitiated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 81
    :try_start_1
    invoke-virtual {p0}, Lcom/miui/gallery/assistant/algorithm/Algorithm;->onDestroyAlgorithm()V
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/miui/gallery/assistant/algorithm/Algorithm;->mIsNativeInitiated:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    :cond_0
    monitor-exit p0

    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Error;
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/miui/gallery/assistant/algorithm/Algorithm;->reportAlgorithmError(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 79
    .end local v0    # "e":Ljava/lang/Error;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 91
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 92
    invoke-direct {p0}, Lcom/miui/gallery/assistant/algorithm/Algorithm;->destroy()V

    .line 93
    return-void
.end method

.method declared-synchronized init()Z
    .locals 2

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/miui/gallery/assistant/algorithm/Algorithm;->mIsNativeInitiated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 68
    :try_start_1
    invoke-virtual {p0}, Lcom/miui/gallery/assistant/algorithm/Algorithm;->onInitAlgorithm()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/gallery/assistant/algorithm/Algorithm;->mIsNativeInitiated:Z
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v1, p0, Lcom/miui/gallery/assistant/algorithm/Algorithm;->mIsNativeInitiated:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Error;
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/miui/gallery/assistant/algorithm/Algorithm;->reportAlgorithmError(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 66
    .end local v0    # "e":Ljava/lang/Error;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected abstract onDestroyAlgorithm()V
.end method

.method protected abstract onInitAlgorithm()Z
.end method

.method reportAlgorithmError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 96
    iget-object v1, p0, Lcom/miui/gallery/assistant/algorithm/Algorithm;->TAG:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    invoke-static {}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->generatorCommonParams()Ljava/util/Map;

    move-result-object v0

    .line 98
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "algorithm"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v2, "error"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v1, "assistant"

    const-string v2, "assistant_algorithm_error"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 102
    return-void

    .line 99
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method
