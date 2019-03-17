.class public Lcom/miui/gallery/search/core/query/QueryLoader;
.super Landroid/content/AsyncTaskLoader;
.source "QueryLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/miui/gallery/search/core/result/SuggestionResult;",
        ">",
        "Landroid/content/AsyncTaskLoader",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

.field private mQueryTask:Lcom/miui/gallery/search/core/query/ControllableTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/search/core/query/ControllableTask",
            "<",
            "Lcom/miui/gallery/search/core/query/QueryResult;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiveResultUpdates:Z

.field private mReceiveSourceUpdates:Z

.field private mReportTillDone:Z

.field private mResult:Lcom/miui/gallery/search/core/result/SuggestionResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mResultContentObserver:Landroid/database/ContentObserver;

.field private final mResultProcessor:Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mSourceDataSetObserver:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/miui/gallery/search/core/QueryInfo;",
            "Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/miui/gallery/search/core/query/QueryLoader;, "Lcom/miui/gallery/search/core/query/QueryLoader<TT;>;"
    .local p3, "resultProcessor":Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;, "Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor<TT;>;"
    const/4 v4, 0x0

    .line 48
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/miui/gallery/search/core/query/QueryLoader;-><init>(Landroid/content/Context;Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;ZZZ)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;ZZZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p4, "receiveSourceUpdates"    # Z
    .param p5, "receiveResultUpdates"    # Z
    .param p6, "reportTillDone"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/miui/gallery/search/core/QueryInfo;",
            "Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor",
            "<TT;>;ZZZ)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/miui/gallery/search/core/query/QueryLoader;, "Lcom/miui/gallery/search/core/query/QueryLoader<TT;>;"
    .local p3, "resultProcessor":Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;, "Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor<TT;>;"
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p2, p0, Lcom/miui/gallery/search/core/query/QueryLoader;->mQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    .line 41
    iput-object p3, p0, Lcom/miui/gallery/search/core/query/QueryLoader;->mResultProcessor:Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;

    .line 42
    iput-boolean p4, p0, Lcom/miui/gallery/search/core/query/QueryLoader;->mReceiveSourceUpdates:Z

    .line 43
    iput-boolean p5, p0, Lcom/miui/gallery/search/core/query/QueryLoader;->mReceiveResultUpdates:Z

    .line 44
    iput-boolean p6, p0, Lcom/miui/gallery/search/core/query/QueryLoader;->mReportTillDone:Z

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/search/core/query/QueryLoader;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/core/query/QueryLoader;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/miui/gallery/search/core/query/QueryLoader;->mReportTillDone:Z

    return v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/search/core/query/QueryLoader;)Lcom/miui/gallery/search/core/query/ControllableTask;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/core/query/QueryLoader;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/miui/gallery/search/core/query/QueryLoader;->mQueryTask:Lcom/miui/gallery/search/core/query/ControllableTask;

    return-object v0
.end method

.method private getResultContentObserver()Landroid/database/ContentObserver;
    .locals 2

    .prologue
    .line 138
    .local p0, "this":Lcom/miui/gallery/search/core/query/QueryLoader;, "Lcom/miui/gallery/search/core/query/QueryLoader<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/query/QueryLoader;->mResultContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Lcom/miui/gallery/search/core/query/QueryLoader$2;

    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/search/core/query/QueryLoader$2;-><init>(Lcom/miui/gallery/search/core/query/QueryLoader;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/gallery/search/core/query/QueryLoader;->mResultContentObserver:Landroid/database/ContentObserver;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/search/core/query/QueryLoader;->mResultContentObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method private getSourceDataSetObserver()Landroid/database/DataSetObserver;
    .locals 1

    .prologue
    .line 121
    .local p0, "this":Lcom/miui/gallery/search/core/query/QueryLoader;, "Lcom/miui/gallery/search/core/query/QueryLoader<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/query/QueryLoader;->mSourceDataSetObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/miui/gallery/search/core/query/QueryLoader$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/search/core/query/QueryLoader$1;-><init>(Lcom/miui/gallery/search/core/query/QueryLoader;)V

    iput-object v0, p0, Lcom/miui/gallery/search/core/query/QueryLoader;->mSourceDataSetObserver:Landroid/database/DataSetObserver;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/search/core/query/QueryLoader;->mSourceDataSetObserver:Landroid/database/DataSetObserver;

    return-object v0
.end method

.method private onReleaseResources(Lcom/miui/gallery/search/core/result/SuggestionResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, "this":Lcom/miui/gallery/search/core/query/QueryLoader;, "Lcom/miui/gallery/search/core/query/QueryLoader<TT;>;"
    .local p1, "result":Lcom/miui/gallery/search/core/result/SuggestionResult;, "TT;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/miui/gallery/search/core/result/SuggestionResult;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    invoke-interface {p1}, Lcom/miui/gallery/search/core/result/SuggestionResult;->release()V

    .line 215
    :cond_0
    return-void
.end method


# virtual methods
.method public deliverResult(Lcom/miui/gallery/search/core/result/SuggestionResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Lcom/miui/gallery/search/core/query/QueryLoader;, "Lcom/miui/gallery/search/core/query/QueryLoader<TT;>;"
    .local p1, "data":Lcom/miui/gallery/search/core/result/SuggestionResult;, "TT;"
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/query/QueryLoader;->isReset()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/core/query/QueryLoader;->onReleaseResources(Lcom/miui/gallery/search/core/result/SuggestionResult;)V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/search/core/query/QueryLoader;->mResult:Lcom/miui/gallery/search/core/result/SuggestionResult;

    .line 160
    .local v0, "oldResult":Lcom/miui/gallery/search/core/result/SuggestionResult;, "TT;"
    iput-object p1, p0, Lcom/miui/gallery/search/core/query/QueryLoader;->mResult:Lcom/miui/gallery/search/core/result/SuggestionResult;

    .line 162
    iget-boolean v1, p0, Lcom/miui/gallery/search/core/query/QueryLoader;->mReceiveResultUpdates:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/gallery/search/core/query/QueryLoader;->mResult:Lcom/miui/gallery/search/core/result/SuggestionResult;

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lcom/miui/gallery/search/core/query/QueryLoader;->mResult:Lcom/miui/gallery/search/core/result/SuggestionResult;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/gallery/search/core/query/QueryLoader;->mResult:Lcom/miui/gallery/search/core/result/SuggestionResult;

    invoke-interface {v1}, Lcom/miui/gallery/search/core/result/SuggestionResult;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 163
    iget-object v1, p0, Lcom/miui/gallery/search/core/query/QueryLoader;->mResult:Lcom/miui/gallery/search/core/result/SuggestionResult;

    invoke-direct {p0}, Lcom/miui/gallery/search/core/query/QueryLoader;->getResultContentObserver()Landroid/database/ContentObserver;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/miui/gallery/search/core/result/SuggestionResult;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 166
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/query/QueryLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/gallery/search/core/query/QueryLoader;->mResult:Lcom/miui/gallery/search/core/result/SuggestionResult;

    if-eq v1, v0, :cond_3

    .line 167
    iget-object v1, p0, Lcom/miui/gallery/search/core/query/QueryLoader;->mResult:Lcom/miui/gallery/search/core/result/SuggestionResult;

    invoke-super {p0, v1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 170
    :cond_3
    iget-object v1, p0, Lcom/miui/gallery/search/core/query/QueryLoader;->mResult:Lcom/miui/gallery/search/core/result/SuggestionResult;

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    .line 172
    invoke-direct {p0, v0}, Lcom/miui/gallery/search/core/query/QueryLoader;->onReleaseResources(Lcom/miui/gallery/search/core/result/SuggestionResult;)V

    goto :goto_0
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 24
    .local p0, "this":Lcom/miui/gallery/search/core/query/QueryLoader;, "Lcom/miui/gallery/search/core/query/QueryLoader<TT;>;"
    check-cast p1, Lcom/miui/gallery/search/core/result/SuggestionResult;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/core/query/QueryLoader;->deliverResult(Lcom/miui/gallery/search/core/result/SuggestionResult;)V

    return-void
.end method

.method public getQueryInfo()Lcom/miui/gallery/search/core/QueryInfo;
    .locals 1

    .prologue
    .line 52
    .local p0, "this":Lcom/miui/gallery/search/core/query/QueryLoader;, "Lcom/miui/gallery/search/core/query/QueryLoader<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/query/QueryLoader;->mQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    return-object v0
.end method

.method public loadInBackground()Lcom/miui/gallery/search/core/result/SuggestionResult;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lcom/miui/gallery/search/core/query/QueryLoader;, "Lcom/miui/gallery/search/core/query/QueryLoader<TT;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/query/QueryLoader;->isLoadInBackgroundCanceled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 91
    new-instance v6, Landroid/os/OperationCanceledException;

    invoke-direct {v6}, Landroid/os/OperationCanceledException;-><init>()V

    throw v6

    .line 93
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 95
    .local v2, "current":J
    iget-object v6, p0, Lcom/miui/gallery/search/core/query/QueryLoader;->mQueryTask:Lcom/miui/gallery/search/core/query/ControllableTask;

    invoke-interface {v6}, Lcom/miui/gallery/search/core/query/ControllableTask;->getResult()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/search/core/query/QueryResult;

    invoke-virtual {v6}, Lcom/miui/gallery/search/core/query/QueryResult;->getSourceResults()Ljava/util/List;

    move-result-object v5

    .line 99
    .local v5, "sourceResults":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/result/SourceResult;>;"
    iget-object v6, p0, Lcom/miui/gallery/search/core/query/QueryLoader;->mResultProcessor:Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;

    invoke-virtual {v6, v5}, Lcom/miui/gallery/search/core/resultprocessor/ResultProcessor;->process(Ljava/util/List;)Lcom/miui/gallery/search/core/result/SuggestionResult;

    move-result-object v1

    .line 101
    .local v1, "result":Lcom/miui/gallery/search/core/result/SuggestionResult;, "TT;"
    if-eqz v1, :cond_2

    .line 104
    iget-object v6, p0, Lcom/miui/gallery/search/core/query/QueryLoader;->mQueryTask:Lcom/miui/gallery/search/core/query/ControllableTask;

    invoke-interface {v6}, Lcom/miui/gallery/search/core/query/ControllableTask;->getResult()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/search/core/query/QueryResult;

    invoke-virtual {v6}, Lcom/miui/gallery/search/core/query/QueryResult;->isDone()Z

    move-result v4

    .line 105
    .local v4, "resultIsDone":Z
    invoke-interface {v1}, Lcom/miui/gallery/search/core/result/SuggestionResult;->getResultExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 106
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    if-ne v0, v6, :cond_1

    .line 107
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "bundle":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 109
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    const-string v6, "is_done"

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 110
    invoke-interface {v1, v0}, Lcom/miui/gallery/search/core/result/SuggestionResult;->setResultExtras(Landroid/os/Bundle;)V

    .line 113
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v4    # "resultIsDone":Z
    :cond_2
    const-string v7, "QueryLoader"

    const-string v8, "Load result for {%s} cost %s ms, result %s"

    iget-object v9, p0, Lcom/miui/gallery/search/core/query/QueryLoader;->mQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v2

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    if-nez v1, :cond_3

    const-string v6, "is null"

    .line 113
    :goto_0
    invoke-static {v7, v8, v9, v10, v6}, Lcom/miui/gallery/search/utils/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    return-object v1

    .line 115
    :cond_3
    invoke-interface {v1}, Lcom/miui/gallery/search/core/result/SuggestionResult;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-interface {v1}, Lcom/miui/gallery/search/core/result/SuggestionResult;->getData()Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v6

    if-nez v6, :cond_5

    :cond_4
    const-string v6, "is empty"

    goto :goto_0

    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "has "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 116
    invoke-interface {v1}, Lcom/miui/gallery/search/core/result/SuggestionResult;->getData()Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v11

    invoke-interface {v11}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getCount()I

    move-result v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, "items"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    .local p0, "this":Lcom/miui/gallery/search/core/query/QueryLoader;, "Lcom/miui/gallery/search/core/query/QueryLoader<TT;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/query/QueryLoader;->loadInBackground()Lcom/miui/gallery/search/core/result/SuggestionResult;

    move-result-object v0

    return-object v0
.end method

.method public onCanceled(Lcom/miui/gallery/search/core/result/SuggestionResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, "this":Lcom/miui/gallery/search/core/query/QueryLoader;, "Lcom/miui/gallery/search/core/query/QueryLoader<TT;>;"
    .local p1, "data":Lcom/miui/gallery/search/core/result/SuggestionResult;, "TT;"
    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 24
    .local p0, "this":Lcom/miui/gallery/search/core/query/QueryLoader;, "Lcom/miui/gallery/search/core/query/QueryLoader<TT;>;"
    check-cast p1, Lcom/miui/gallery/search/core/result/SuggestionResult;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/core/query/QueryLoader;->onCanceled(Lcom/miui/gallery/search/core/result/SuggestionResult;)V

    return-void
.end method

.method protected onReset()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/miui/gallery/search/core/query/QueryLoader;, "Lcom/miui/gallery/search/core/query/QueryLoader<TT;>;"
    const/4 v1, 0x0

    .line 193
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 196
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/query/QueryLoader;->onStopLoading()V

    .line 199
    iget-object v0, p0, Lcom/miui/gallery/search/core/query/QueryLoader;->mQueryTask:Lcom/miui/gallery/search/core/query/ControllableTask;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/miui/gallery/search/core/query/QueryLoader;->mQueryTask:Lcom/miui/gallery/search/core/query/ControllableTask;

    invoke-interface {v0}, Lcom/miui/gallery/search/core/query/ControllableTask;->cancel()V

    .line 201
    iget-object v0, p0, Lcom/miui/gallery/search/core/query/QueryLoader;->mQueryTask:Lcom/miui/gallery/search/core/query/ControllableTask;

    invoke-interface {v0}, Lcom/miui/gallery/search/core/query/ControllableTask;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/search/core/query/QueryLoader;->mQueryTask:Lcom/miui/gallery/search/core/query/ControllableTask;

    invoke-interface {v0}, Lcom/miui/gallery/search/core/query/ControllableTask;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/search/core/query/QueryResult;

    invoke-virtual {v0}, Lcom/miui/gallery/search/core/query/QueryResult;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/miui/gallery/search/core/query/QueryLoader;->mQueryTask:Lcom/miui/gallery/search/core/query/ControllableTask;

    invoke-interface {v0}, Lcom/miui/gallery/search/core/query/ControllableTask;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/search/core/query/QueryResult;

    invoke-virtual {v0}, Lcom/miui/gallery/search/core/query/QueryResult;->close()V

    .line 204
    :cond_0
    iput-object v1, p0, Lcom/miui/gallery/search/core/query/QueryLoader;->mQueryTask:Lcom/miui/gallery/search/core/query/ControllableTask;

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/search/core/query/QueryLoader;->mResult:Lcom/miui/gallery/search/core/result/SuggestionResult;

    invoke-direct {p0, v0}, Lcom/miui/gallery/search/core/query/QueryLoader;->onReleaseResources(Lcom/miui/gallery/search/core/result/SuggestionResult;)V

    .line 208
    iput-object v1, p0, Lcom/miui/gallery/search/core/query/QueryLoader;->mResult:Lcom/miui/gallery/search/core/result/SuggestionResult;

    .line 209
    return-void
.end method

.method protected onStartLoading()V
    .locals 3

    .prologue
    .line 57
    .local p0, "this":Lcom/miui/gallery/search/core/query/QueryLoader;, "Lcom/miui/gallery/search/core/query/QueryLoader<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/search/core/query/QueryLoader;->mQueryTask:Lcom/miui/gallery/search/core/query/ControllableTask;

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/miui/gallery/search/core/query/QueryLoader;->mQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    iget-boolean v1, p0, Lcom/miui/gallery/search/core/query/QueryLoader;->mReceiveSourceUpdates:Z

    invoke-static {v0, v1}, Lcom/miui/gallery/search/core/query/QueryPackageHelper;->getQueryResult(Lcom/miui/gallery/search/core/QueryInfo;Z)Lcom/miui/gallery/search/core/query/ControllableTask;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/search/core/query/QueryLoader;->mQueryTask:Lcom/miui/gallery/search/core/query/ControllableTask;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/search/core/query/QueryLoader;->mQueryTask:Lcom/miui/gallery/search/core/query/ControllableTask;

    if-nez v0, :cond_2

    .line 63
    const-string v0, "QueryLoader"

    const-string v1, "No query task was created for query %s"

    iget-object v2, p0, Lcom/miui/gallery/search/core/query/QueryLoader;->mQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/search/utils/SearchLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    :cond_1
    :goto_0
    return-void

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/search/core/query/QueryLoader;->mQueryTask:Lcom/miui/gallery/search/core/query/ControllableTask;

    invoke-interface {v0}, Lcom/miui/gallery/search/core/query/ControllableTask;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid inner source, query task has been cancelled!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/search/core/query/QueryLoader;->mResult:Lcom/miui/gallery/search/core/result/SuggestionResult;

    if-eqz v0, :cond_4

    .line 73
    iget-object v0, p0, Lcom/miui/gallery/search/core/query/QueryLoader;->mResult:Lcom/miui/gallery/search/core/result/SuggestionResult;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/search/core/query/QueryLoader;->deliverResult(Lcom/miui/gallery/search/core/result/SuggestionResult;)V

    .line 77
    :cond_4
    iget-object v0, p0, Lcom/miui/gallery/search/core/query/QueryLoader;->mQueryTask:Lcom/miui/gallery/search/core/query/ControllableTask;

    invoke-interface {v0}, Lcom/miui/gallery/search/core/query/ControllableTask;->started()Z

    move-result v0

    if-nez v0, :cond_5

    .line 78
    iget-object v0, p0, Lcom/miui/gallery/search/core/query/QueryLoader;->mQueryTask:Lcom/miui/gallery/search/core/query/ControllableTask;

    invoke-interface {v0}, Lcom/miui/gallery/search/core/query/ControllableTask;->start()V

    .line 79
    iget-object v0, p0, Lcom/miui/gallery/search/core/query/QueryLoader;->mQueryTask:Lcom/miui/gallery/search/core/query/ControllableTask;

    invoke-interface {v0}, Lcom/miui/gallery/search/core/query/ControllableTask;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/search/core/query/QueryResult;

    invoke-direct {p0}, Lcom/miui/gallery/search/core/query/QueryLoader;->getSourceDataSetObserver()Landroid/database/DataSetObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/core/query/QueryResult;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 83
    :cond_5
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/query/QueryLoader;->takeContentChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/query/QueryLoader;->forceLoad()V

    goto :goto_0
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 179
    .local p0, "this":Lcom/miui/gallery/search/core/query/QueryLoader;, "Lcom/miui/gallery/search/core/query/QueryLoader<TT;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/query/QueryLoader;->cancelLoad()Z

    .line 180
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 219
    .local p0, "this":Lcom/miui/gallery/search/core/query/QueryLoader;, "Lcom/miui/gallery/search/core/query/QueryLoader<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/search/core/query/QueryLoader;->mQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
