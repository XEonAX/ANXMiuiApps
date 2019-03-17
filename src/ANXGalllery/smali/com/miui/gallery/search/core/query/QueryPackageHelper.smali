.class public Lcom/miui/gallery/search/core/query/QueryPackageHelper;
.super Ljava/lang/Object;
.source "QueryPackageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;
    }
.end annotation


# direct methods
.method public static getQueryResult(Lcom/miui/gallery/search/core/QueryInfo;Z)Lcom/miui/gallery/search/core/query/ControllableTask;
    .locals 4
    .param p0, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p1, "receiveSourceUpdates"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/search/core/QueryInfo;",
            "Z)",
            "Lcom/miui/gallery/search/core/query/ControllableTask",
            "<",
            "Lcom/miui/gallery/search/core/query/QueryResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    invoke-static {}, Lcom/miui/gallery/search/core/context/SearchContext;->getInstance()Lcom/miui/gallery/search/core/context/SearchContext;

    move-result-object v1

    .line 95
    .local v1, "searchContext":Lcom/miui/gallery/search/core/context/SearchContext;
    invoke-virtual {v1, p0}, Lcom/miui/gallery/search/core/context/SearchContext;->getMatchedSources(Lcom/miui/gallery/search/core/QueryInfo;)Ljava/util/List;

    move-result-object v0

    .line 96
    .local v0, "matchSources":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/search/core/source/Source;>;"
    if-nez v0, :cond_0

    .line 97
    const-string v2, "QueryPackageHelper"

    const-string v3, "No matched source for query info %s"

    invoke-static {v2, v3, p0}, Lcom/miui/gallery/search/utils/SearchLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    const/4 v2, 0x0

    .line 103
    :goto_0
    return-object v2

    .line 102
    :cond_0
    new-instance v2, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;

    .line 103
    invoke-virtual {v1}, Lcom/miui/gallery/search/core/context/SearchContext;->getQueryTaskExecutor()Lcom/miui/gallery/search/core/context/TaskExecutor;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3, p1}, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;-><init>(Lcom/miui/gallery/search/core/QueryInfo;Ljava/util/List;Lcom/miui/gallery/search/core/context/TaskExecutor;Z)V

    goto :goto_0
.end method
