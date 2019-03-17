.class public Lcom/miui/gallery/search/core/query/QueryResult;
.super Ljava/lang/Object;
.source "QueryResult.java"


# instance fields
.field private mClosed:Z

.field private final mDataSetObservable:Landroid/database/DataSetObservable;

.field private mDone:Z

.field private final mExpectedSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/search/core/source/Source;",
            ">;"
        }
    .end annotation
.end field

.field private mHasResults:Z

.field protected final mQuery:Lcom/miui/gallery/search/core/QueryInfo;

.field private final mSourcePositions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSourceResultLock:Ljava/lang/Object;

.field private final mSourceResults:[Lcom/miui/gallery/search/core/result/SourceResult;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/search/core/QueryInfo;Ljava/util/List;)V
    .locals 5
    .param p1, "query"    # Lcom/miui/gallery/search/core/QueryInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/search/core/QueryInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/search/core/source/Source;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "expectedSources":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/source/Source;>;"
    const/4 v4, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v4, p0, Lcom/miui/gallery/search/core/query/QueryResult;->mClosed:Z

    .line 36
    new-instance v1, Landroid/database/DataSetObservable;

    invoke-direct {v1}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/search/core/query/QueryResult;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 48
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/search/core/query/QueryResult;->mSourceResultLock:Ljava/lang/Object;

    .line 50
    iput-boolean v4, p0, Lcom/miui/gallery/search/core/query/QueryResult;->mDone:Z

    .line 52
    iput-boolean v4, p0, Lcom/miui/gallery/search/core/query/QueryResult;->mHasResults:Z

    .line 55
    iput-object p1, p0, Lcom/miui/gallery/search/core/query/QueryResult;->mQuery:Lcom/miui/gallery/search/core/QueryInfo;

    .line 56
    iput-object p2, p0, Lcom/miui/gallery/search/core/query/QueryResult;->mExpectedSources:Ljava/util/List;

    .line 57
    iget-object v1, p0, Lcom/miui/gallery/search/core/query/QueryResult;->mExpectedSources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/miui/gallery/search/core/result/SourceResult;

    iput-object v1, p0, Lcom/miui/gallery/search/core/query/QueryResult;->mSourceResults:[Lcom/miui/gallery/search/core/result/SourceResult;

    .line 60
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/search/core/query/QueryResult;->mSourcePositions:Ljava/util/HashMap;

    .line 61
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/search/core/query/QueryResult;->mExpectedSources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 62
    iget-object v2, p0, Lcom/miui/gallery/search/core/query/QueryResult;->mSourcePositions:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/miui/gallery/search/core/query/QueryResult;->mExpectedSources:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/search/core/source/Source;

    invoke-interface {v1}, Lcom/miui/gallery/search/core/source/Source;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_0
    const-string v1, "QueryResult"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new QueryResult ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] query \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" expected sources: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/search/core/query/QueryResult;->mExpectedSources:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/search/utils/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iput-boolean v4, p0, Lcom/miui/gallery/search/core/query/QueryResult;->mHasResults:Z

    .line 68
    return-void
.end method

.method private getSourceResultsCount()I
    .locals 4

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "count":I
    iget-object v3, p0, Lcom/miui/gallery/search/core/query/QueryResult;->mSourceResultLock:Ljava/lang/Object;

    monitor-enter v3

    .line 117
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/miui/gallery/search/core/query/QueryResult;->mSourceResults:[Lcom/miui/gallery/search/core/result/SourceResult;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 118
    iget-object v2, p0, Lcom/miui/gallery/search/core/query/QueryResult;->mSourceResults:[Lcom/miui/gallery/search/core/result/SourceResult;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 119
    add-int/lit8 v0, v0, 0x1

    .line 117
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    :cond_1
    monitor-exit v3

    .line 123
    return v0

    .line 122
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public addSourceResults(Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/search/core/result/SourceResult;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, "sourceResults":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/result/SourceResult;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/query/QueryResult;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 134
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/search/core/result/SourceResult;

    .line 135
    .local v3, "sourceResult":Lcom/miui/gallery/search/core/result/SourceResult;
    invoke-interface {v3}, Lcom/miui/gallery/search/core/result/SourceResult;->release()V

    goto :goto_0

    .line 137
    .end local v3    # "sourceResult":Lcom/miui/gallery/search/core/result/SourceResult;
    :cond_0
    const/4 v0, 0x0

    .line 185
    :cond_1
    :goto_1
    return v0

    .line 140
    :cond_2
    const/4 v0, 0x0

    .line 141
    .local v0, "accepted":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/search/core/result/SourceResult;

    .line 142
    .restart local v3    # "sourceResult":Lcom/miui/gallery/search/core/result/SourceResult;
    invoke-interface {v3}, Lcom/miui/gallery/search/core/result/SourceResult;->getData()Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Lcom/miui/gallery/search/core/result/SourceResult;->getData()Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v5

    invoke-interface {v5}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getCount()I

    move-result v5

    if-lez v5, :cond_3

    .line 143
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/miui/gallery/search/core/query/QueryResult;->mHasResults:Z

    .line 145
    :cond_3
    iget-object v5, p0, Lcom/miui/gallery/search/core/query/QueryResult;->mSourcePositions:Ljava/util/HashMap;

    invoke-interface {v3}, Lcom/miui/gallery/search/core/result/SourceResult;->getSource()Lcom/miui/gallery/search/core/source/Source;

    move-result-object v6

    invoke-interface {v6}, Lcom/miui/gallery/search/core/source/Source;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 147
    .local v2, "pos":Ljava/lang/Integer;
    if-nez v2, :cond_4

    .line 148
    const-string v5, "QueryResult"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got unexpected SourceResult from corpus "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 149
    invoke-interface {v3}, Lcom/miui/gallery/search/core/result/SourceResult;->getSource()Lcom/miui/gallery/search/core/source/Source;

    move-result-object v7

    invoke-interface {v7}, Lcom/miui/gallery/search/core/source/Source;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 148
    invoke-static {v5, v6}, Lcom/miui/gallery/search/utils/SearchLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-interface {v3}, Lcom/miui/gallery/search/core/result/SourceResult;->release()V

    goto :goto_2

    .line 152
    :cond_4
    iget-object v5, p0, Lcom/miui/gallery/search/core/query/QueryResult;->mSourceResultLock:Ljava/lang/Object;

    monitor-enter v5

    .line 153
    :try_start_0
    iget-object v6, p0, Lcom/miui/gallery/search/core/query/QueryResult;->mSourceResults:[Lcom/miui/gallery/search/core/result/SourceResult;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v6, v6, v7

    if-eqz v6, :cond_6

    .line 156
    iget-object v6, p0, Lcom/miui/gallery/search/core/query/QueryResult;->mSourceResults:[Lcom/miui/gallery/search/core/result/SourceResult;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v6, v6, v7

    invoke-static {v6, v3}, Lcom/miui/gallery/search/utils/SearchUtils;->compareResultHashCode(Lcom/miui/gallery/search/core/result/SourceResult;Lcom/miui/gallery/search/core/result/SourceResult;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 157
    const-string v6, "QueryResult"

    const-string v7, "We ignored later result of query [%s] source %s, for they are identical"

    iget-object v8, p0, Lcom/miui/gallery/search/core/query/QueryResult;->mQuery:Lcom/miui/gallery/search/core/QueryInfo;

    invoke-interface {v3}, Lcom/miui/gallery/search/core/result/SourceResult;->getSource()Lcom/miui/gallery/search/core/source/Source;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcom/miui/gallery/search/utils/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 158
    invoke-interface {v3}, Lcom/miui/gallery/search/core/result/SourceResult;->release()V

    .line 170
    :goto_3
    monitor-exit v5

    goto/16 :goto_2

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 160
    :cond_5
    :try_start_1
    iget-object v6, p0, Lcom/miui/gallery/search/core/query/QueryResult;->mSourceResults:[Lcom/miui/gallery/search/core/result/SourceResult;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v6, v6, v7

    invoke-interface {v6}, Lcom/miui/gallery/search/core/result/SourceResult;->release()V

    .line 161
    invoke-interface {v3}, Lcom/miui/gallery/search/core/result/SourceResult;->acquire()V

    .line 162
    iget-object v6, p0, Lcom/miui/gallery/search/core/query/QueryResult;->mSourceResults:[Lcom/miui/gallery/search/core/result/SourceResult;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput-object v3, v6, v7

    .line 163
    const/4 v0, 0x1

    goto :goto_3

    .line 166
    :cond_6
    invoke-interface {v3}, Lcom/miui/gallery/search/core/result/SourceResult;->acquire()V

    .line 167
    iget-object v6, p0, Lcom/miui/gallery/search/core/query/QueryResult;->mSourceResults:[Lcom/miui/gallery/search/core/result/SourceResult;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput-object v3, v6, v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    const/4 v0, 0x1

    goto :goto_3

    .line 174
    .end local v2    # "pos":Ljava/lang/Integer;
    .end local v3    # "sourceResult":Lcom/miui/gallery/search/core/result/SourceResult;
    :cond_7
    if-eqz v0, :cond_1

    .line 176
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 177
    .local v1, "handler":Landroid/os/Handler;
    new-instance v4, Lcom/miui/gallery/search/core/query/QueryResult$1;

    invoke-direct {v4, p0}, Lcom/miui/gallery/search/core/query/QueryResult$1;-><init>(Lcom/miui/gallery/search/core/query/QueryResult;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1
.end method

.method public close()V
    .locals 5

    .prologue
    .line 219
    iget-boolean v1, p0, Lcom/miui/gallery/search/core/query/QueryResult;->mClosed:Z

    if-eqz v1, :cond_0

    .line 220
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Double close()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 222
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/gallery/search/core/query/QueryResult;->mClosed:Z

    .line 223
    iget-object v1, p0, Lcom/miui/gallery/search/core/query/QueryResult;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v1}, Landroid/database/DataSetObservable;->unregisterAll()V

    .line 225
    iget-object v2, p0, Lcom/miui/gallery/search/core/query/QueryResult;->mSourceResultLock:Ljava/lang/Object;

    monitor-enter v2

    .line 226
    :try_start_0
    iget-object v3, p0, Lcom/miui/gallery/search/core/query/QueryResult;->mSourceResults:[Lcom/miui/gallery/search/core/result/SourceResult;

    array-length v4, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v0, v3, v1

    .line 227
    .local v0, "result":Lcom/miui/gallery/search/core/result/SourceResult;
    if-eqz v0, :cond_1

    .line 228
    invoke-interface {v0}, Lcom/miui/gallery/search/core/result/SourceResult;->release()V

    .line 226
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 231
    .end local v0    # "result":Lcom/miui/gallery/search/core/result/SourceResult;
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/search/core/query/QueryResult;->mSourceResults:[Lcom/miui/gallery/search/core/result/SourceResult;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 232
    monitor-exit v2

    .line 233
    return-void

    .line 232
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/miui/gallery/search/core/query/QueryResult;->mClosed:Z

    if-nez v0, :cond_0

    .line 242
    const-string v0, "QueryResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LEAK! Finalized without being closed: QueryResult["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/gallery/search/core/query/QueryResult;->getQuery()Lcom/miui/gallery/search/core/QueryInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/search/utils/SearchLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/query/QueryResult;->close()V

    .line 245
    :cond_0
    return-void
.end method

.method public getQuery()Lcom/miui/gallery/search/core/QueryInfo;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/miui/gallery/search/core/query/QueryResult;->mQuery:Lcom/miui/gallery/search/core/QueryInfo;

    return-object v0
.end method

.method public getSourceResults()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/search/core/result/SourceResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    iget-object v3, p0, Lcom/miui/gallery/search/core/query/QueryResult;->mSourceResultLock:Ljava/lang/Object;

    monitor-enter v3

    .line 257
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/gallery/search/core/query/QueryResult;->mSourceResults:[Lcom/miui/gallery/search/core/result/SourceResult;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 258
    .local v1, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/search/core/result/SourceResult;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/search/core/query/QueryResult;->mSourceResults:[Lcom/miui/gallery/search/core/result/SourceResult;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 259
    iget-object v2, p0, Lcom/miui/gallery/search/core/query/QueryResult;->mSourceResults:[Lcom/miui/gallery/search/core/result/SourceResult;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 260
    iget-object v2, p0, Lcom/miui/gallery/search/core/query/QueryResult;->mSourceResults:[Lcom/miui/gallery/search/core/result/SourceResult;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    :cond_1
    monitor-exit v3

    return-object v1

    .line 264
    .end local v0    # "i":I
    .end local v1    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/search/core/result/SourceResult;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/miui/gallery/search/core/query/QueryResult;->mClosed:Z

    return v0
.end method

.method public isDone()Z
    .locals 2

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/miui/gallery/search/core/query/QueryResult;->mDone:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/gallery/search/core/query/QueryResult;->getSourceResultsCount()I

    move-result v0

    iget-object v1, p0, Lcom/miui/gallery/search/core/query/QueryResult;->mExpectedSources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/miui/gallery/search/core/query/QueryResult;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 213
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/miui/gallery/search/core/query/QueryResult;->mClosed:Z

    if-eqz v0, :cond_0

    .line 194
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "registerDataSetObserver() when closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/search/core/query/QueryResult;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 197
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QueryResult@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "{expectedSources="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/search/core/query/QueryResult;->mExpectedSources:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",getSourceResultsCount()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 292
    invoke-direct {p0}, Lcom/miui/gallery/search/core/query/QueryResult;->getSourceResultsCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
