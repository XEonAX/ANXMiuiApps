.class Lcom/miui/gallery/cloud/AsyncUpDownloadService$2;
.super Ljava/lang/Object;
.source "AsyncUpDownloadService.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/cloud/AsyncUpDownloadService;->tryCancelTasksWhenConnChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/cloud/AsyncUpDownloadService;


# direct methods
.method constructor <init>(Lcom/miui/gallery/cloud/AsyncUpDownloadService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/cloud/AsyncUpDownloadService;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$2;->this$0:Lcom/miui/gallery/cloud/AsyncUpDownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 7
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 335
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0xe

    if-ge v0, v2, :cond_2

    .line 336
    :try_start_0
    invoke-static {v0}, Lcom/miui/gallery/cloud/SyncConditionManager;->check(I)I

    move-result v1

    .line 337
    .local v1, "result":I
    if-eqz v1, :cond_0

    .line 338
    const-string v2, "AsyncUpDownloadService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "net work is changed, cancel all, priority="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/miui/gallery/util/SyncLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-static {v0}, Lcom/miui/gallery/cloud/RequestItemBase;->isCancellablePriority(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 340
    const/4 v2, 0x2

    if-ne v2, v1, :cond_1

    move v2, v3

    :goto_1
    const/4 v5, 0x1

    invoke-static {v0, v2, v5}, Lcom/miui/gallery/cloud/UpDownloadManager;->cancel(IZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    .line 340
    goto :goto_1

    .line 345
    .end local v1    # "result":I
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$2;->this$0:Lcom/miui/gallery/cloud/AsyncUpDownloadService;

    invoke-static {v2}, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->access$400(Lcom/miui/gallery/cloud/AsyncUpDownloadService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 347
    const/4 v2, 0x0

    return-object v2

    .line 345
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$2;->this$0:Lcom/miui/gallery/cloud/AsyncUpDownloadService;

    invoke-static {v3}, Lcom/miui/gallery/cloud/AsyncUpDownloadService;->access$400(Lcom/miui/gallery/cloud/AsyncUpDownloadService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v2
.end method
