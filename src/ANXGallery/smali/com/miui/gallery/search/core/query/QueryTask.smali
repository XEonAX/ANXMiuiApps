.class public Lcom/miui/gallery/search/core/query/QueryTask;
.super Lcom/miui/gallery/search/core/context/PriorityTaskExecutor$PriorityTask;
.source "QueryTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/miui/gallery/search/core/result/SuggestionResult;",
        ">",
        "Lcom/miui/gallery/search/core/context/PriorityTaskExecutor$PriorityTask;"
    }
.end annotation


# instance fields
.field private final mConsumer:Lcom/miui/gallery/search/core/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/search/core/Consumer",
            "<TC;>;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mProvider:Lcom/miui/gallery/search/core/source/SuggestionResultProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/search/core/source/SuggestionResultProvider",
            "<TC;>;"
        }
    .end annotation
.end field

.field private final mQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/source/SuggestionResultProvider;Lcom/miui/gallery/search/core/Consumer;Landroid/os/Handler;I)V
    .locals 0
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "priority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/search/core/QueryInfo;",
            "Lcom/miui/gallery/search/core/source/SuggestionResultProvider",
            "<TC;>;",
            "Lcom/miui/gallery/search/core/Consumer",
            "<TC;>;",
            "Landroid/os/Handler;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/miui/gallery/search/core/query/QueryTask;, "Lcom/miui/gallery/search/core/query/QueryTask<TC;>;"
    .local p2, "provider":Lcom/miui/gallery/search/core/source/SuggestionResultProvider;, "Lcom/miui/gallery/search/core/source/SuggestionResultProvider<TC;>;"
    .local p3, "consumer":Lcom/miui/gallery/search/core/Consumer;, "Lcom/miui/gallery/search/core/Consumer<TC;>;"
    invoke-direct {p0}, Lcom/miui/gallery/search/core/context/PriorityTaskExecutor$PriorityTask;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/miui/gallery/search/core/query/QueryTask;->mQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    .line 41
    iput-object p2, p0, Lcom/miui/gallery/search/core/query/QueryTask;->mProvider:Lcom/miui/gallery/search/core/source/SuggestionResultProvider;

    .line 42
    iput-object p3, p0, Lcom/miui/gallery/search/core/query/QueryTask;->mConsumer:Lcom/miui/gallery/search/core/Consumer;

    .line 43
    iput-object p4, p0, Lcom/miui/gallery/search/core/query/QueryTask;->mHandler:Landroid/os/Handler;

    .line 44
    iput p5, p0, Lcom/miui/gallery/search/core/query/QueryTask;->mPriority:I

    .line 45
    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    .local p0, "this":Lcom/miui/gallery/search/core/query/QueryTask;, "Lcom/miui/gallery/search/core/query/QueryTask<TC;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/core/query/QueryTask;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 11
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .local p0, "this":Lcom/miui/gallery/search/core/query/QueryTask;, "Lcom/miui/gallery/search/core/query/QueryTask<TC;>;"
    const/4 v10, 0x0

    .line 49
    invoke-interface {p1}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-object v10

    .line 52
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 55
    .local v0, "currentTime":J
    iget-object v3, p0, Lcom/miui/gallery/search/core/query/QueryTask;->mProvider:Lcom/miui/gallery/search/core/source/SuggestionResultProvider;

    iget-object v4, p0, Lcom/miui/gallery/search/core/query/QueryTask;->mQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    invoke-interface {v3, v4}, Lcom/miui/gallery/search/core/source/SuggestionResultProvider;->getSuggestions(Lcom/miui/gallery/search/core/QueryInfo;)Lcom/miui/gallery/search/core/result/SuggestionResult;

    move-result-object v2

    .line 56
    .local v2, "suggestionResult":Lcom/miui/gallery/search/core/result/SuggestionResult;, "TC;"
    invoke-interface {p1}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 58
    iget-object v3, p0, Lcom/miui/gallery/search/core/query/QueryTask;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/miui/gallery/search/core/query/QueryTask;->mConsumer:Lcom/miui/gallery/search/core/Consumer;

    invoke-static {v3, v4, v2}, Lcom/miui/gallery/search/core/ConsumerUtils;->consumeAsync(Landroid/os/Handler;Lcom/miui/gallery/search/core/Consumer;Ljava/lang/Object;)V

    .line 60
    const-string v4, "QueryTask"

    const-string v5, "%s cost %sms, result %s"

    .line 61
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/query/QueryTask;->toString()Ljava/lang/String;

    move-result-object v6

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    if-eqz v2, :cond_2

    .line 63
    invoke-interface {v2}, Lcom/miui/gallery/search/core/result/SuggestionResult;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v2}, Lcom/miui/gallery/search/core/result/SuggestionResult;->getData()Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v3

    if-nez v3, :cond_3

    :cond_2
    const-string v3, "is empty"

    .line 60
    :goto_1
    invoke-static {v4, v5, v6, v7, v3}, Lcom/miui/gallery/search/utils/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 63
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    invoke-interface {v2}, Lcom/miui/gallery/search/core/result/SuggestionResult;->getData()Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v8

    invoke-interface {v8}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getCount()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " items@"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    .local p0, "this":Lcom/miui/gallery/search/core/query/QueryTask;, "Lcom/miui/gallery/search/core/query/QueryTask<TC;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "From "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/search/core/query/QueryTask;->mProvider:Lcom/miui/gallery/search/core/source/SuggestionResultProvider;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/search/core/query/QueryTask;->mQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
