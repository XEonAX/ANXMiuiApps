.class Lcom/miui/gallery/adapter/SlideShowAdapter$GetJob;
.super Ljava/lang/Object;
.source "SlideShowAdapter.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/adapter/SlideShowAdapter;
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
        "Lcom/miui/gallery/adapter/SlideShowAdapter$ShowItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/adapter/SlideShowAdapter;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/adapter/SlideShowAdapter;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/miui/gallery/adapter/SlideShowAdapter$GetJob;->this$0:Lcom/miui/gallery/adapter/SlideShowAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/adapter/SlideShowAdapter;Lcom/miui/gallery/adapter/SlideShowAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/adapter/SlideShowAdapter;
    .param p2, "x1"    # Lcom/miui/gallery/adapter/SlideShowAdapter$1;

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/miui/gallery/adapter/SlideShowAdapter$GetJob;-><init>(Lcom/miui/gallery/adapter/SlideShowAdapter;)V

    return-void
.end method


# virtual methods
.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Lcom/miui/gallery/adapter/SlideShowAdapter$ShowItem;
    .locals 8
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 128
    const/4 v3, 0x0

    .line 129
    .local v3, "item":Lcom/miui/gallery/adapter/SlideShowAdapter$ShowItem;
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_2

    if-nez v3, :cond_2

    .line 132
    :try_start_0
    iget-object v4, p0, Lcom/miui/gallery/adapter/SlideShowAdapter$GetJob;->this$0:Lcom/miui/gallery/adapter/SlideShowAdapter;

    invoke-static {v4}, Lcom/miui/gallery/adapter/SlideShowAdapter;->access$100(Lcom/miui/gallery/adapter/SlideShowAdapter;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v4

    const-wide/16 v6, 0x3e8

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v6, v7, v5}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/miui/gallery/adapter/SlideShowAdapter$ShowItem;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_1
    if-nez v3, :cond_0

    .line 138
    iget-object v4, p0, Lcom/miui/gallery/adapter/SlideShowAdapter$GetJob;->this$0:Lcom/miui/gallery/adapter/SlideShowAdapter;

    invoke-static {v4}, Lcom/miui/gallery/adapter/SlideShowAdapter;->access$200(Lcom/miui/gallery/adapter/SlideShowAdapter;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 139
    :try_start_1
    iget-object v4, p0, Lcom/miui/gallery/adapter/SlideShowAdapter$GetJob;->this$0:Lcom/miui/gallery/adapter/SlideShowAdapter;

    invoke-static {v4}, Lcom/miui/gallery/adapter/SlideShowAdapter;->access$300(Lcom/miui/gallery/adapter/SlideShowAdapter;)I

    move-result v4

    iget-object v6, p0, Lcom/miui/gallery/adapter/SlideShowAdapter$GetJob;->this$0:Lcom/miui/gallery/adapter/SlideShowAdapter;

    invoke-virtual {v6}, Lcom/miui/gallery/adapter/SlideShowAdapter;->getCount()I

    move-result v6

    if-lt v4, v6, :cond_1

    iget-object v4, p0, Lcom/miui/gallery/adapter/SlideShowAdapter$GetJob;->this$0:Lcom/miui/gallery/adapter/SlideShowAdapter;

    invoke-static {v4}, Lcom/miui/gallery/adapter/SlideShowAdapter;->access$400(Lcom/miui/gallery/adapter/SlideShowAdapter;)Lcom/miui/gallery/model/BaseDataSet;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 140
    const/4 v4, 0x0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    :goto_2
    return-object v4

    .line 133
    :catch_0
    move-exception v2

    .line 134
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v4, "SlideShowAdapter"

    const-string v5, "poll interrupted, curSize %d"

    iget-object v6, p0, Lcom/miui/gallery/adapter/SlideShowAdapter$GetJob;->this$0:Lcom/miui/gallery/adapter/SlideShowAdapter;

    invoke-static {v6}, Lcom/miui/gallery/adapter/SlideShowAdapter;->access$100(Lcom/miui/gallery/adapter/SlideShowAdapter;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 142
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

    .line 145
    :cond_2
    const-string v4, "SlideShowAdapter"

    const-string v5, "getJob cancelled, curSize %d"

    iget-object v6, p0, Lcom/miui/gallery/adapter/SlideShowAdapter$GetJob;->this$0:Lcom/miui/gallery/adapter/SlideShowAdapter;

    invoke-static {v6}, Lcom/miui/gallery/adapter/SlideShowAdapter;->access$100(Lcom/miui/gallery/adapter/SlideShowAdapter;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    if-eqz v3, :cond_3

    .line 147
    iget-object v4, p0, Lcom/miui/gallery/adapter/SlideShowAdapter$GetJob;->this$0:Lcom/miui/gallery/adapter/SlideShowAdapter;

    invoke-virtual {v3}, Lcom/miui/gallery/adapter/SlideShowAdapter$ShowItem;->getIndex()I

    move-result v5

    invoke-static {v4, v5}, Lcom/miui/gallery/adapter/SlideShowAdapter;->access$502(Lcom/miui/gallery/adapter/SlideShowAdapter;I)I

    :cond_3
    move-object v4, v3

    .line 149
    goto :goto_2
.end method

.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/SlideShowAdapter$GetJob;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Lcom/miui/gallery/adapter/SlideShowAdapter$ShowItem;

    move-result-object v0

    return-object v0
.end method
