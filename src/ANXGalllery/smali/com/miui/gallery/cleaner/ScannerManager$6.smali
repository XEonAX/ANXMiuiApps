.class Lcom/miui/gallery/cleaner/ScannerManager$6;
.super Ljava/lang/Object;
.source "ScannerManager.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cleaner/ScannerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/miui/gallery/cleaner/ScannerManager;


# direct methods
.method constructor <init>(Lcom/miui/gallery/cleaner/ScannerManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/cleaner/ScannerManager;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/miui/gallery/cleaner/ScannerManager$6;->this$0:Lcom/miui/gallery/cleaner/ScannerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0, p1}, Lcom/miui/gallery/cleaner/ScannerManager$6;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 11
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    const/4 v10, 0x0

    .line 270
    iget-object v2, p0, Lcom/miui/gallery/cleaner/ScannerManager$6;->this$0:Lcom/miui/gallery/cleaner/ScannerManager;

    invoke-static {v2}, Lcom/miui/gallery/cleaner/ScannerManager;->access$400(Lcom/miui/gallery/cleaner/ScannerManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/cleaner/BaseScanner;

    .line 271
    .local v1, "scanner":Lcom/miui/gallery/cleaner/BaseScanner;
    invoke-interface {p1}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 297
    .end local v1    # "scanner":Lcom/miui/gallery/cleaner/BaseScanner;
    :goto_1
    return-object v10

    .line 275
    .restart local v1    # "scanner":Lcom/miui/gallery/cleaner/BaseScanner;
    :cond_1
    invoke-virtual {v1}, Lcom/miui/gallery/cleaner/BaseScanner;->scan()Lcom/miui/gallery/cleaner/ScanResult;

    move-result-object v0

    .line 276
    .local v0, "result":Lcom/miui/gallery/cleaner/ScanResult;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/cleaner/ScanResult;->getSize()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 280
    iget-object v3, p0, Lcom/miui/gallery/cleaner/ScannerManager$6;->this$0:Lcom/miui/gallery/cleaner/ScannerManager;

    monitor-enter v3

    .line 281
    :try_start_0
    invoke-interface {p1}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 282
    monitor-exit v3

    goto :goto_1

    .line 290
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 284
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/miui/gallery/cleaner/ScannerManager$6;->this$0:Lcom/miui/gallery/cleaner/ScannerManager;

    invoke-static {v4}, Lcom/miui/gallery/cleaner/ScannerManager;->access$500(Lcom/miui/gallery/cleaner/ScannerManager;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    :try_start_2
    iget-object v5, p0, Lcom/miui/gallery/cleaner/ScannerManager$6;->this$0:Lcom/miui/gallery/cleaner/ScannerManager;

    iget-object v6, p0, Lcom/miui/gallery/cleaner/ScannerManager$6;->this$0:Lcom/miui/gallery/cleaner/ScannerManager;

    invoke-static {v6}, Lcom/miui/gallery/cleaner/ScannerManager;->access$200(Lcom/miui/gallery/cleaner/ScannerManager;)J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/miui/gallery/cleaner/ScanResult;->getSize()J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-static {v5, v6, v7}, Lcom/miui/gallery/cleaner/ScannerManager;->access$202(Lcom/miui/gallery/cleaner/ScannerManager;J)J

    .line 286
    iget-object v5, p0, Lcom/miui/gallery/cleaner/ScannerManager$6;->this$0:Lcom/miui/gallery/cleaner/ScannerManager;

    invoke-static {v5}, Lcom/miui/gallery/cleaner/ScannerManager;->access$500(Lcom/miui/gallery/cleaner/ScannerManager;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 288
    :try_start_3
    iget-object v4, p0, Lcom/miui/gallery/cleaner/ScannerManager$6;->this$0:Lcom/miui/gallery/cleaner/ScannerManager;

    invoke-static {v4}, Lcom/miui/gallery/cleaner/ScannerManager;->access$600(Lcom/miui/gallery/cleaner/ScannerManager;)Lcom/miui/gallery/cleaner/BaseScanner$OnScanResultUpdateListener;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/miui/gallery/cleaner/BaseScanner;->setListener(Lcom/miui/gallery/cleaner/BaseScanner$OnScanResultUpdateListener;)V

    .line 289
    iget-object v4, p0, Lcom/miui/gallery/cleaner/ScannerManager$6;->this$0:Lcom/miui/gallery/cleaner/ScannerManager;

    invoke-static {v4, p1}, Lcom/miui/gallery/cleaner/ScannerManager;->access$700(Lcom/miui/gallery/cleaner/ScannerManager;Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)V

    .line 290
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 287
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 292
    .end local v0    # "result":Lcom/miui/gallery/cleaner/ScanResult;
    .end local v1    # "scanner":Lcom/miui/gallery/cleaner/BaseScanner;
    :cond_3
    iget-object v3, p0, Lcom/miui/gallery/cleaner/ScannerManager$6;->this$0:Lcom/miui/gallery/cleaner/ScannerManager;

    monitor-enter v3

    .line 293
    :try_start_6
    invoke-interface {p1}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 294
    iget-object v2, p0, Lcom/miui/gallery/cleaner/ScannerManager$6;->this$0:Lcom/miui/gallery/cleaner/ScannerManager;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/miui/gallery/cleaner/ScannerManager;->access$802(Lcom/miui/gallery/cleaner/ScannerManager;Lcom/miui/gallery/threadpool/Future;)Lcom/miui/gallery/threadpool/Future;

    .line 296
    :cond_4
    monitor-exit v3

    goto :goto_1

    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v2
.end method
