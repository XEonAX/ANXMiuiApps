.class final Lcom/miui/gallery/assistant/algorithm/AlgorithmFactroy$1;
.super Ljava/lang/Object;
.source "AlgorithmFactroy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/assistant/algorithm/AlgorithmFactroy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 68
    const-class v3, Lcom/miui/gallery/assistant/algorithm/AlgorithmFactroy;

    monitor-enter v3

    .line 69
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/assistant/algorithm/AlgorithmFactroy;->access$000()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 70
    invoke-static {}, Lcom/miui/gallery/assistant/algorithm/AlgorithmFactroy;->access$000()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 71
    .local v0, "algorithmSoftReference":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/miui/gallery/assistant/algorithm/Algorithm;>;"
    if-eqz v0, :cond_0

    .line 72
    const-string v2, "AlgorithmFactroy"

    const-string v4, "release algorithm flag:%d"

    invoke-static {}, Lcom/miui/gallery/assistant/algorithm/AlgorithmFactroy;->access$000()Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->clear()V

    .line 69
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    .end local v0    # "algorithmSoftReference":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/miui/gallery/assistant/algorithm/Algorithm;>;"
    :cond_1
    monitor-exit v3

    .line 77
    return-void

    .line 76
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
