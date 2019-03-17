.class Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;
.super Ljava/lang/Object;
.source "QueryPackageHelper.java"

# interfaces
.implements Lcom/miui/gallery/search/core/query/ControllableTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/search/core/query/QueryPackageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BatchQueryTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$SourceResultContentObserver;,
        Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$SourceResultDataSetObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/search/core/query/ControllableTask",
        "<",
        "Lcom/miui/gallery/search/core/query/QueryResult;",
        ">;"
    }
.end annotation


# instance fields
.field private mIsCancelled:Z

.field private mPublishHandler:Landroid/os/Handler;

.field private final mQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

.field private mQueryResult:Lcom/miui/gallery/search/core/query/QueryResult;

.field private mQueryTaskReceiver:Lcom/miui/gallery/search/core/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/search/core/Consumer",
            "<",
            "Lcom/miui/gallery/search/core/result/SourceResult;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryTasks:[Lcom/miui/gallery/search/core/query/QueryTask;

.field private final mReceiveSourceUpdates:Z

.field private mRequeryTaskReceiver:Lcom/miui/gallery/search/core/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/search/core/Consumer",
            "<",
            "Lcom/miui/gallery/search/core/result/SourceResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/search/core/source/Source;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskExecutor:Lcom/miui/gallery/search/core/context/TaskExecutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/search/core/context/TaskExecutor",
            "<",
            "Lcom/miui/gallery/search/core/query/QueryTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/gallery/search/core/QueryInfo;Ljava/util/List;Lcom/miui/gallery/search/core/context/TaskExecutor;Z)V
    .locals 2
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p4, "receiveSourceUpdates"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/search/core/QueryInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/search/core/source/Source;",
            ">;",
            "Lcom/miui/gallery/search/core/context/TaskExecutor",
            "<",
            "Lcom/miui/gallery/search/core/query/QueryTask;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 214
    .local p2, "sources":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/source/Source;>;"
    .local p3, "taskExecutor":Lcom/miui/gallery/search/core/context/TaskExecutor;, "Lcom/miui/gallery/search/core/context/TaskExecutor<Lcom/miui/gallery/search/core/query/QueryTask;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->mIsCancelled:Z

    .line 126
    new-instance v0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$1;-><init>(Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;)V

    iput-object v0, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->mQueryTaskReceiver:Lcom/miui/gallery/search/core/Consumer;

    .line 175
    new-instance v0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$2;-><init>(Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;)V

    iput-object v0, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->mRequeryTaskReceiver:Lcom/miui/gallery/search/core/Consumer;

    .line 215
    iput-object p1, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->mQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    .line 216
    iput-object p2, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->mSources:Ljava/util/List;

    .line 218
    iget-object v0, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->mSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 219
    iget-object v0, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->mSources:Ljava/util/List;

    new-instance v1, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$3;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$3;-><init>(Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;Lcom/miui/gallery/search/core/QueryInfo;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 226
    :cond_0
    iput-object p3, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->mTaskExecutor:Lcom/miui/gallery/search/core/context/TaskExecutor;

    .line 227
    iput-boolean p4, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->mReceiveSourceUpdates:Z

    .line 228
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->mIsCancelled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;)Lcom/miui/gallery/search/core/query/QueryResult;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->mQueryResult:Lcom/miui/gallery/search/core/query/QueryResult;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->mReceiveSourceUpdates:Z

    return v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->mSources:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;)[Lcom/miui/gallery/search/core/query/QueryTask;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->mQueryTasks:[Lcom/miui/gallery/search/core/query/QueryTask;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;)Lcom/miui/gallery/search/core/QueryInfo;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->mQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;)Lcom/miui/gallery/search/core/Consumer;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->mRequeryTaskReceiver:Lcom/miui/gallery/search/core/Consumer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->mPublishHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;)Lcom/miui/gallery/search/core/context/TaskExecutor;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->mTaskExecutor:Lcom/miui/gallery/search/core/context/TaskExecutor;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;Lcom/miui/gallery/search/core/result/SourceResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;
    .param p1, "x1"    # Lcom/miui/gallery/search/core/result/SourceResult;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->onSourceResultChanged(Lcom/miui/gallery/search/core/result/SourceResult;)V

    return-void
.end method

.method private onSourceResultChanged(Lcom/miui/gallery/search/core/result/SourceResult;)V
    .locals 4
    .param p1, "sourceResult"    # Lcom/miui/gallery/search/core/result/SourceResult;

    .prologue
    .line 353
    invoke-interface {p1}, Lcom/miui/gallery/search/core/result/SourceResult;->getSource()Lcom/miui/gallery/search/core/source/Source;

    move-result-object v0

    .line 354
    .local v0, "source":Lcom/miui/gallery/search/core/source/Source;
    if-eqz v0, :cond_1

    .line 355
    iget-object v2, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->mSources:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 356
    .local v1, "sourceIndex":I
    if-ltz v1, :cond_0

    .line 357
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->querySource(IZ)V

    .line 362
    .end local v1    # "sourceIndex":I
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    const-string v2, "QueryPackageHelper"

    const-string v3, "Couldn\'t re-query without source! [%s]"

    invoke-static {v2, v3, p1}, Lcom/miui/gallery/search/utils/SearchLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private querySource(IZ)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "firstTime"    # Z

    .prologue
    .line 300
    iget-object v1, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->mQueryTasks:[Lcom/miui/gallery/search/core/query/QueryTask;

    aget-object v6, v1, p1

    .line 301
    .local v6, "oldTask":Lcom/miui/gallery/search/core/query/QueryTask;
    if-eqz v6, :cond_0

    .line 302
    iget-object v1, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->mTaskExecutor:Lcom/miui/gallery/search/core/context/TaskExecutor;

    invoke-interface {v1, v6}, Lcom/miui/gallery/search/core/context/TaskExecutor;->cancel(Lcom/miui/gallery/threadpool/ThreadPool$Job;)V

    .line 305
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->mSources:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/search/core/source/Source;

    .line 306
    .local v2, "source":Lcom/miui/gallery/search/core/source/Source;
    new-instance v0, Lcom/miui/gallery/search/core/query/QueryTask;

    iget-object v1, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->mQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    iget-object v3, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->mQueryTaskReceiver:Lcom/miui/gallery/search/core/Consumer;

    iget-object v4, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->mPublishHandler:Landroid/os/Handler;

    if-eqz p2, :cond_1

    const/4 v5, 0x0

    :goto_0
    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/search/core/query/QueryTask;-><init>(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/source/SuggestionResultProvider;Lcom/miui/gallery/search/core/Consumer;Landroid/os/Handler;I)V

    .line 311
    .local v0, "queryTask":Lcom/miui/gallery/search/core/query/QueryTask;, "Lcom/miui/gallery/search/core/query/QueryTask<Lcom/miui/gallery/search/core/result/SourceResult;>;"
    iget-object v1, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->mTaskExecutor:Lcom/miui/gallery/search/core/context/TaskExecutor;

    invoke-interface {v1, v0}, Lcom/miui/gallery/search/core/context/TaskExecutor;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)V

    .line 312
    iget-object v1, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->mQueryTasks:[Lcom/miui/gallery/search/core/query/QueryTask;

    aput-object v0, v1, p1

    .line 313
    return-void

    .line 306
    .end local v0    # "queryTask":Lcom/miui/gallery/search/core/query/QueryTask;, "Lcom/miui/gallery/search/core/query/QueryTask<Lcom/miui/gallery/search/core/result/SourceResult;>;"
    :cond_1
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private releasePublishHandler()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->mPublishHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 284
    invoke-static {}, Lcom/miui/gallery/search/core/context/SearchContext;->getInstance()Lcom/miui/gallery/search/core/context/SearchContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/search/core/context/SearchContext;->releasePublishHandler()V

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->mPublishHandler:Landroid/os/Handler;

    .line 287
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 5

    .prologue
    .line 258
    const-string v1, "QueryPackageHelper"

    const-string v2, "Cancel batch query task for query [%s]"

    iget-object v3, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->mQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/search/utils/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 259
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->mIsCancelled:Z

    .line 260
    iget-object v1, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->mQueryTasks:[Lcom/miui/gallery/search/core/query/QueryTask;

    if-eqz v1, :cond_0

    .line 261
    iget-object v2, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->mQueryTasks:[Lcom/miui/gallery/search/core/query/QueryTask;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 262
    .local v0, "queryTask":Lcom/miui/gallery/search/core/query/QueryTask;
    iget-object v4, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->mTaskExecutor:Lcom/miui/gallery/search/core/context/TaskExecutor;

    invoke-interface {v4, v0}, Lcom/miui/gallery/search/core/context/TaskExecutor;->cancel(Lcom/miui/gallery/threadpool/ThreadPool$Job;)V

    .line 261
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 265
    .end local v0    # "queryTask":Lcom/miui/gallery/search/core/query/QueryTask;
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->releasePublishHandler()V

    .line 275
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->releasePublishHandler()V

    .line 280
    return-void
.end method

.method public getResult()Lcom/miui/gallery/search/core/query/QueryResult;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->mQueryResult:Lcom/miui/gallery/search/core/query/QueryResult;

    return-object v0
.end method

.method public bridge synthetic getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->getResult()Lcom/miui/gallery/search/core/query/QueryResult;

    move-result-object v0

    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->mIsCancelled:Z

    return v0
.end method

.method public start()V
    .locals 4

    .prologue
    .line 232
    iget-boolean v1, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->mIsCancelled:Z

    if-eqz v1, :cond_0

    .line 233
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Call start() after cancel()!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 236
    :cond_0
    invoke-static {}, Lcom/miui/gallery/search/core/context/SearchContext;->getInstance()Lcom/miui/gallery/search/core/context/SearchContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/search/core/context/SearchContext;->acquirePublishHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->mPublishHandler:Landroid/os/Handler;

    .line 238
    iget-object v1, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->mSources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lcom/miui/gallery/search/core/query/QueryTask;

    iput-object v1, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->mQueryTasks:[Lcom/miui/gallery/search/core/query/QueryTask;

    .line 239
    new-instance v1, Lcom/miui/gallery/search/core/query/QueryResult;

    iget-object v2, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->mQueryInfo:Lcom/miui/gallery/search/core/QueryInfo;

    iget-object v3, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->mSources:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/search/core/query/QueryResult;-><init>(Lcom/miui/gallery/search/core/QueryInfo;Ljava/util/List;)V

    iput-object v1, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->mQueryResult:Lcom/miui/gallery/search/core/query/QueryResult;

    .line 241
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->mSources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 242
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->querySource(IZ)V

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    :cond_1
    return-void
.end method

.method public started()Z
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->mQueryResult:Lcom/miui/gallery/search/core/query/QueryResult;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
