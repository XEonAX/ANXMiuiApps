.class Lcom/miui/gallery/card/ui/detail/SlideShowController$GetJob;
.super Ljava/lang/Object;
.source "SlideShowController.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/card/ui/detail/SlideShowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/threadpool/ThreadPool$Job",
        "<",
        "Lcom/miui/gallery/card/ui/detail/SlideShowController$ShowItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/card/ui/detail/SlideShowController;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/card/ui/detail/SlideShowController;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController$GetJob;->this$0:Lcom/miui/gallery/card/ui/detail/SlideShowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/card/ui/detail/SlideShowController;Lcom/miui/gallery/card/ui/detail/SlideShowController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/card/ui/detail/SlideShowController;
    .param p2, "x1"    # Lcom/miui/gallery/card/ui/detail/SlideShowController$1;

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/miui/gallery/card/ui/detail/SlideShowController$GetJob;-><init>(Lcom/miui/gallery/card/ui/detail/SlideShowController;)V

    return-void
.end method


# virtual methods
.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Lcom/miui/gallery/card/ui/detail/SlideShowController$ShowItem;
    .locals 8
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 202
    const/4 v3, 0x0

    .line 203
    .local v3, "item":Lcom/miui/gallery/card/ui/detail/SlideShowController$ShowItem;
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_2

    if-nez v3, :cond_2

    .line 206
    :try_start_0
    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController$GetJob;->this$0:Lcom/miui/gallery/card/ui/detail/SlideShowController;

    invoke-static {v4}, Lcom/miui/gallery/card/ui/detail/SlideShowController;->access$500(Lcom/miui/gallery/card/ui/detail/SlideShowController;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v4

    const-wide/16 v6, 0x3e8

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v6, v7, v5}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/miui/gallery/card/ui/detail/SlideShowController$ShowItem;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_1
    if-nez v3, :cond_0

    .line 212
    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController$GetJob;->this$0:Lcom/miui/gallery/card/ui/detail/SlideShowController;

    invoke-static {v4}, Lcom/miui/gallery/card/ui/detail/SlideShowController;->access$600(Lcom/miui/gallery/card/ui/detail/SlideShowController;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 213
    :try_start_1
    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController$GetJob;->this$0:Lcom/miui/gallery/card/ui/detail/SlideShowController;

    invoke-static {v4}, Lcom/miui/gallery/card/ui/detail/SlideShowController;->access$700(Lcom/miui/gallery/card/ui/detail/SlideShowController;)I

    move-result v4

    iget-object v6, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController$GetJob;->this$0:Lcom/miui/gallery/card/ui/detail/SlideShowController;

    invoke-virtual {v6}, Lcom/miui/gallery/card/ui/detail/SlideShowController;->getCount()I

    move-result v6

    if-lt v4, v6, :cond_1

    .line 214
    const/4 v4, 0x0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    :goto_2
    return-object v4

    .line 207
    :catch_0
    move-exception v2

    .line 208
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v4, "SlideShowController"

    const-string v5, "poll interrupted, curSize %d"

    iget-object v6, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController$GetJob;->this$0:Lcom/miui/gallery/card/ui/detail/SlideShowController;

    invoke-static {v6}, Lcom/miui/gallery/card/ui/detail/SlideShowController;->access$500(Lcom/miui/gallery/card/ui/detail/SlideShowController;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 209
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 216
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_1
    :try_start_2
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 219
    :cond_2
    const-string v4, "SlideShowController"

    const-string v5, "getJob cancelled, curSize %d"

    iget-object v6, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController$GetJob;->this$0:Lcom/miui/gallery/card/ui/detail/SlideShowController;

    invoke-static {v6}, Lcom/miui/gallery/card/ui/detail/SlideShowController;->access$500(Lcom/miui/gallery/card/ui/detail/SlideShowController;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 220
    if-eqz v3, :cond_3

    .line 221
    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController$GetJob;->this$0:Lcom/miui/gallery/card/ui/detail/SlideShowController;

    invoke-virtual {v3}, Lcom/miui/gallery/card/ui/detail/SlideShowController$ShowItem;->getIndex()I

    move-result v5

    invoke-static {v4, v5}, Lcom/miui/gallery/card/ui/detail/SlideShowController;->access$802(Lcom/miui/gallery/card/ui/detail/SlideShowController;I)I

    :cond_3
    move-object v4, v3

    .line 223
    goto :goto_2
.end method

.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/ui/detail/SlideShowController$GetJob;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Lcom/miui/gallery/card/ui/detail/SlideShowController$ShowItem;

    move-result-object v0

    return-object v0
.end method
