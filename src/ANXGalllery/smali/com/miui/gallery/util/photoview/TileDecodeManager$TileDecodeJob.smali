.class Lcom/miui/gallery/util/photoview/TileDecodeManager$TileDecodeJob;
.super Ljava/lang/Object;
.source "TileDecodeManager.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/photoview/TileDecodeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TileDecodeJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/threadpool/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/util/photoview/TileDecodeManager;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/util/photoview/TileDecodeManager;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/miui/gallery/util/photoview/TileDecodeManager$TileDecodeJob;->this$0:Lcom/miui/gallery/util/photoview/TileDecodeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/util/photoview/TileDecodeManager;Lcom/miui/gallery/util/photoview/TileDecodeManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/util/photoview/TileDecodeManager;
    .param p2, "x1"    # Lcom/miui/gallery/util/photoview/TileDecodeManager$1;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/miui/gallery/util/photoview/TileDecodeManager$TileDecodeJob;-><init>(Lcom/miui/gallery/util/photoview/TileDecodeManager;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/miui/gallery/util/photoview/TileDecodeManager$TileDecodeJob;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 13
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    const/4 v12, 0x0

    .line 96
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v7

    if-nez v7, :cond_3

    .line 98
    :try_start_0
    iget-object v7, p0, Lcom/miui/gallery/util/photoview/TileDecodeManager$TileDecodeJob;->this$0:Lcom/miui/gallery/util/photoview/TileDecodeManager;

    invoke-static {v7}, Lcom/miui/gallery/util/photoview/TileDecodeManager;->access$100(Lcom/miui/gallery/util/photoview/TileDecodeManager;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v7

    const-wide/16 v8, 0x7d0

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v7, v8, v9, v10}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/util/photoview/Tile;

    .line 99
    .local v3, "tile":Lcom/miui/gallery/util/photoview/Tile;
    if-eqz v3, :cond_0

    .line 100
    invoke-virtual {v3}, Lcom/miui/gallery/util/photoview/Tile;->isActive()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 103
    invoke-interface {p1}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 104
    iget-object v7, p0, Lcom/miui/gallery/util/photoview/TileDecodeManager$TileDecodeJob;->this$0:Lcom/miui/gallery/util/photoview/TileDecodeManager;

    invoke-static {v7}, Lcom/miui/gallery/util/photoview/TileDecodeManager;->access$100(Lcom/miui/gallery/util/photoview/TileDecodeManager;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 124
    .end local v3    # "tile":Lcom/miui/gallery/util/photoview/Tile;
    :goto_1
    return-object v12

    .line 107
    .restart local v3    # "tile":Lcom/miui/gallery/util/photoview/Tile;
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 108
    .local v4, "start":J
    invoke-virtual {v3}, Lcom/miui/gallery/util/photoview/Tile;->getTileRect()Landroid/graphics/Rect;

    move-result-object v7

    invoke-static {v7}, Lcom/miui/gallery/util/photoview/TileView;->makeTileKey(Landroid/graphics/Rect;)I

    move-result v6

    .line 109
    .local v6, "tileKey":I
    iget-object v7, p0, Lcom/miui/gallery/util/photoview/TileDecodeManager$TileDecodeJob;->this$0:Lcom/miui/gallery/util/photoview/TileDecodeManager;

    invoke-static {v7}, Lcom/miui/gallery/util/photoview/TileDecodeManager;->access$200(Lcom/miui/gallery/util/photoview/TileDecodeManager;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :try_start_1
    iget-object v7, p0, Lcom/miui/gallery/util/photoview/TileDecodeManager$TileDecodeJob;->this$0:Lcom/miui/gallery/util/photoview/TileDecodeManager;

    invoke-static {v7}, Lcom/miui/gallery/util/photoview/TileDecodeManager;->access$300(Lcom/miui/gallery/util/photoview/TileDecodeManager;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 111
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    :try_start_2
    iget-object v7, p0, Lcom/miui/gallery/util/photoview/TileDecodeManager$TileDecodeJob;->this$0:Lcom/miui/gallery/util/photoview/TileDecodeManager;

    invoke-static {v7}, Lcom/miui/gallery/util/photoview/TileDecodeManager;->access$400(Lcom/miui/gallery/util/photoview/TileDecodeManager;)Lcom/miui/gallery/util/photoview/TileBitProvider;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/miui/gallery/util/photoview/Tile;->decode(Lcom/miui/gallery/util/photoview/TileBitProvider;)Z

    move-result v2

    .line 113
    .local v2, "result":Z
    const-string v7, "TileDecodeManager"

    const-string v8, "decode tile %s costs %d ms."

    invoke-virtual {v3}, Lcom/miui/gallery/util/photoview/Tile;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    iget-object v7, p0, Lcom/miui/gallery/util/photoview/TileDecodeManager$TileDecodeJob;->this$0:Lcom/miui/gallery/util/photoview/TileDecodeManager;

    invoke-static {v7}, Lcom/miui/gallery/util/photoview/TileDecodeManager;->access$500(Lcom/miui/gallery/util/photoview/TileDecodeManager;)Landroid/os/Handler;

    move-result-object v1

    .line 115
    .local v1, "handler":Landroid/os/Handler;
    if-eqz v1, :cond_0

    .line 116
    if-eqz v2, :cond_2

    const/4 v7, 0x1

    :goto_2
    invoke-virtual {v1, v7, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 119
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "result":Z
    .end local v3    # "tile":Lcom/miui/gallery/util/photoview/Tile;
    .end local v4    # "start":J
    .end local v6    # "tileKey":I
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 111
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v3    # "tile":Lcom/miui/gallery/util/photoview/Tile;
    .restart local v4    # "start":J
    .restart local v6    # "tileKey":I
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v7
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 116
    .restart local v1    # "handler":Landroid/os/Handler;
    .restart local v2    # "result":Z
    :cond_2
    const/4 v7, 0x2

    goto :goto_2

    .line 123
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "result":Z
    .end local v3    # "tile":Lcom/miui/gallery/util/photoview/Tile;
    .end local v4    # "start":J
    .end local v6    # "tileKey":I
    :cond_3
    const-string v7, "TileDecodeManager"

    const-string/jumbo v8, "tile decode job is cancelled %s"

    invoke-interface {p1}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method
