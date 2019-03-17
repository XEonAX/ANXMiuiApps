.class public Lcom/miui/gallery/search/core/context/SearchContext;
.super Ljava/lang/Object;
.source "SearchContext.java"


# static fields
.field private static volatile sInstance:Lcom/miui/gallery/search/core/context/SearchContext;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandlerRef:I

.field private mIconLoaderExecutor:Lcom/miui/gallery/search/core/context/TaskExecutor;

.field private mPublishHandler:Landroid/os/Handler;

.field private final mPublishLock:Ljava/lang/Object;

.field private mPublishThread:Landroid/os/HandlerThread;

.field private mQueryTaskExecutor:Lcom/miui/gallery/search/core/context/TaskExecutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/search/core/context/TaskExecutor",
            "<",
            "Lcom/miui/gallery/search/core/query/QueryTask;",
            ">;"
        }
    .end annotation
.end field

.field private mSources:Lcom/miui/gallery/search/core/source/Sources;

.field private mSuggestionViewFactory:Lcom/miui/gallery/search/core/display/SuggestionViewFactory;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/search/core/context/SearchContext;->mPublishLock:Ljava/lang/Object;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/search/core/context/SearchContext;->mHandlerRef:I

    .line 36
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp;->createDefault(Landroid/content/Context;)Lcom/miui/gallery/search/core/context/SearchContextConfigurationImp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/search/core/context/SearchContext;->init(Lcom/miui/gallery/search/core/context/SearchContextConfiguration;)V

    .line 37
    return-void
.end method

.method public static getInstance()Lcom/miui/gallery/search/core/context/SearchContext;
    .locals 2

    .prologue
    .line 81
    sget-object v0, Lcom/miui/gallery/search/core/context/SearchContext;->sInstance:Lcom/miui/gallery/search/core/context/SearchContext;

    if-nez v0, :cond_1

    .line 82
    const-class v1, Lcom/miui/gallery/search/core/context/SearchContext;

    monitor-enter v1

    .line 83
    :try_start_0
    sget-object v0, Lcom/miui/gallery/search/core/context/SearchContext;->sInstance:Lcom/miui/gallery/search/core/context/SearchContext;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/miui/gallery/search/core/context/SearchContext;

    invoke-direct {v0}, Lcom/miui/gallery/search/core/context/SearchContext;-><init>()V

    sput-object v0, Lcom/miui/gallery/search/core/context/SearchContext;->sInstance:Lcom/miui/gallery/search/core/context/SearchContext;

    .line 86
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :cond_1
    sget-object v0, Lcom/miui/gallery/search/core/context/SearchContext;->sInstance:Lcom/miui/gallery/search/core/context/SearchContext;

    return-object v0

    .line 86
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public acquirePublishHandler()Landroid/os/Handler;
    .locals 3

    .prologue
    .line 40
    iget-object v1, p0, Lcom/miui/gallery/search/core/context/SearchContext;->mPublishLock:Ljava/lang/Object;

    monitor-enter v1

    .line 41
    :try_start_0
    iget v0, p0, Lcom/miui/gallery/search/core/context/SearchContext;->mHandlerRef:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/gallery/search/core/context/SearchContext;->mHandlerRef:I

    .line 42
    iget v0, p0, Lcom/miui/gallery/search/core/context/SearchContext;->mHandlerRef:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/search/core/context/SearchContext;->mPublishHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 43
    const-string v0, "SearchContext"

    const-string v2, "On create public thread"

    invoke-static {v0, v2}, Lcom/miui/gallery/search/utils/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "search_publish_thread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/gallery/search/core/context/SearchContext;->mPublishThread:Landroid/os/HandlerThread;

    .line 45
    iget-object v0, p0, Lcom/miui/gallery/search/core/context/SearchContext;->mPublishThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 46
    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lcom/miui/gallery/search/core/context/SearchContext;->mPublishThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/gallery/search/core/context/SearchContext;->mPublishHandler:Landroid/os/Handler;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/search/core/context/SearchContext;->mPublishHandler:Landroid/os/Handler;

    monitor-exit v1

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIconLoaderExecutor()Lcom/miui/gallery/search/core/context/TaskExecutor;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/miui/gallery/search/core/context/SearchContext;->mIconLoaderExecutor:Lcom/miui/gallery/search/core/context/TaskExecutor;

    return-object v0
.end method

.method public getMatchedSources(Lcom/miui/gallery/search/core/QueryInfo;)Ljava/util/List;
    .locals 1
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/search/core/QueryInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/search/core/source/Source;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/context/SearchContext;->getSourceList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/search/core/context/SearchContext;->getMatchedSources(Lcom/miui/gallery/search/core/QueryInfo;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMatchedSources(Lcom/miui/gallery/search/core/QueryInfo;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/search/core/QueryInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/search/core/source/Source;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/search/core/source/Source;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    .local p2, "sourcesToQuery":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/source/Source;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v0, "matchedSources":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/source/Source;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/search/core/source/Source;

    .line 141
    .local v1, "source":Lcom/miui/gallery/search/core/source/Source;
    invoke-interface {v1, p1}, Lcom/miui/gallery/search/core/source/Source;->match(Lcom/miui/gallery/search/core/QueryInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 145
    .end local v1    # "source":Lcom/miui/gallery/search/core/source/Source;
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    .end local v0    # "matchedSources":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/source/Source;>;"
    :cond_2
    return-object v0
.end method

.method public getQueryTaskExecutor()Lcom/miui/gallery/search/core/context/TaskExecutor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/gallery/search/core/context/TaskExecutor",
            "<",
            "Lcom/miui/gallery/search/core/query/QueryTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/miui/gallery/search/core/context/SearchContext;->mQueryTaskExecutor:Lcom/miui/gallery/search/core/context/TaskExecutor;

    return-object v0
.end method

.method public getSourceList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/search/core/source/Source;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/miui/gallery/search/core/context/SearchContext;->mSources:Lcom/miui/gallery/search/core/source/Sources;

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/miui/gallery/search/core/context/SearchContext;->getSources()Lcom/miui/gallery/search/core/source/Sources;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/search/core/source/Sources;->getSources()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 108
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getSources()Lcom/miui/gallery/search/core/source/Sources;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/miui/gallery/search/core/context/SearchContext;->mSources:Lcom/miui/gallery/search/core/source/Sources;

    return-object v0
.end method

.method public getSuggestionViewFactory()Lcom/miui/gallery/search/core/display/SuggestionViewFactory;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/miui/gallery/search/core/context/SearchContext;->mSuggestionViewFactory:Lcom/miui/gallery/search/core/display/SuggestionViewFactory;

    return-object v0
.end method

.method public init(Lcom/miui/gallery/search/core/context/SearchContextConfiguration;)V
    .locals 1
    .param p1, "configuration"    # Lcom/miui/gallery/search/core/context/SearchContextConfiguration;

    .prologue
    .line 92
    invoke-interface {p1}, Lcom/miui/gallery/search/core/context/SearchContextConfiguration;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/search/core/context/SearchContext;->mContext:Landroid/content/Context;

    .line 93
    invoke-interface {p1}, Lcom/miui/gallery/search/core/context/SearchContextConfiguration;->getSources()Lcom/miui/gallery/search/core/source/Sources;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/search/core/context/SearchContext;->mSources:Lcom/miui/gallery/search/core/source/Sources;

    .line 94
    iget-object v0, p0, Lcom/miui/gallery/search/core/context/SearchContext;->mSources:Lcom/miui/gallery/search/core/source/Sources;

    invoke-interface {v0}, Lcom/miui/gallery/search/core/source/Sources;->update()V

    .line 95
    invoke-interface {p1}, Lcom/miui/gallery/search/core/context/SearchContextConfiguration;->getQueryTaskExecutor()Lcom/miui/gallery/search/core/context/PriorityTaskExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/search/core/context/SearchContext;->mQueryTaskExecutor:Lcom/miui/gallery/search/core/context/TaskExecutor;

    .line 96
    invoke-interface {p1}, Lcom/miui/gallery/search/core/context/SearchContextConfiguration;->getIconLoaderExecutor()Lcom/miui/gallery/search/core/context/TaskExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/search/core/context/SearchContext;->mIconLoaderExecutor:Lcom/miui/gallery/search/core/context/TaskExecutor;

    .line 97
    invoke-interface {p1}, Lcom/miui/gallery/search/core/context/SearchContextConfiguration;->getSuggestionViewFactory()Lcom/miui/gallery/search/core/display/SuggestionViewFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/search/core/context/SearchContext;->mSuggestionViewFactory:Lcom/miui/gallery/search/core/display/SuggestionViewFactory;

    .line 98
    return-void
.end method

.method public releasePublishHandler()V
    .locals 3

    .prologue
    .line 53
    iget-object v1, p0, Lcom/miui/gallery/search/core/context/SearchContext;->mPublishLock:Ljava/lang/Object;

    monitor-enter v1

    .line 54
    :try_start_0
    iget v0, p0, Lcom/miui/gallery/search/core/context/SearchContext;->mHandlerRef:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/gallery/search/core/context/SearchContext;->mHandlerRef:I

    if-nez v0, :cond_0

    .line 55
    const-string v0, "SearchContext"

    const-string v2, "On quit public thread"

    invoke-static {v0, v2}, Lcom/miui/gallery/search/utils/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/miui/gallery/search/core/context/SearchContext;->mPublishThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/search/core/context/SearchContext;->mPublishThread:Landroid/os/HandlerThread;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/search/core/context/SearchContext;->mPublishHandler:Landroid/os/Handler;

    .line 62
    :cond_0
    iget v0, p0, Lcom/miui/gallery/search/core/context/SearchContext;->mHandlerRef:I

    if-gez v0, :cond_1

    .line 63
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Invalid publish handler reference"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    return-void
.end method
