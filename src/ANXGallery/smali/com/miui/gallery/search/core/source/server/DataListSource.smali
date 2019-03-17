.class public Lcom/miui/gallery/search/core/source/server/DataListSource;
.super Lcom/miui/gallery/search/core/source/server/ServerSource;
.source "DataListSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/search/core/source/server/DataListSource$DataListResponseData;
    }
.end annotation


# static fields
.field private static final SUPPORT_SEARCH_TYPE:[Lcom/miui/gallery/search/SearchConstants$SearchType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/gallery/search/SearchConstants$SearchType;

    const/4 v1, 0x0

    sget-object v2, Lcom/miui/gallery/search/SearchConstants$SearchType;->SEARCH_TYPE_RESULT_LIST:Lcom/miui/gallery/search/SearchConstants$SearchType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/miui/gallery/search/SearchConstants$SearchType;->SEARCH_TYPE_FILTER:Lcom/miui/gallery/search/SearchConstants$SearchType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/search/core/source/server/DataListSource;->SUPPORT_SEARCH_TYPE:[Lcom/miui/gallery/search/SearchConstants$SearchType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/core/source/server/ServerSource;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected canCarryLog()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method protected generateDefaultResult(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)Lcom/miui/gallery/search/core/result/BaseSourceResult;
    .locals 8
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p2, "resultData"    # Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    .prologue
    .line 154
    new-instance v0, Lcom/miui/gallery/search/resultpage/DataListSourceResult;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, -0x1

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/miui/gallery/search/resultpage/DataListSourceResult;-><init>(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/source/Source;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;IZJ)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "server_controlled_data_list"

    return-object v0
.end method

.method public getPriority(Lcom/miui/gallery/search/core/QueryInfo;)I
    .locals 2
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;

    .prologue
    .line 159
    invoke-virtual {p1}, Lcom/miui/gallery/search/core/QueryInfo;->getSearchType()Lcom/miui/gallery/search/SearchConstants$SearchType;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/search/SearchConstants$SearchType;->SEARCH_TYPE_FILTER:Lcom/miui/gallery/search/SearchConstants$SearchType;

    if-ne v0, v1, :cond_0

    .line 160
    const/4 v0, 0x3

    .line 162
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/gallery/search/core/source/server/ServerSource;->getPriority(Lcom/miui/gallery/search/core/QueryInfo;)I

    move-result v0

    goto :goto_0
.end method

.method protected getQueryAppendPath(Lcom/miui/gallery/search/core/QueryInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;

    .prologue
    .line 50
    const-string v0, "list"

    return-object v0
.end method

.method protected getQueryParams(Lcom/miui/gallery/search/core/QueryInfo;)Ljava/util/Map;
    .locals 6
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/search/core/QueryInfo;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    invoke-super {p0, p1}, Lcom/miui/gallery/search/core/source/server/ServerSource;->getQueryParams(Lcom/miui/gallery/search/core/QueryInfo;)Ljava/util/Map;

    move-result-object v1

    .line 170
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 171
    const-string v4, "rankName"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 172
    .local v2, "rankName":Ljava/lang/String;
    const-string v4, "rankName"

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v4, "rankOrder"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 174
    .local v3, "rankOrder":Ljava/lang/String;
    const-string v4, "rankOrder"

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 176
    new-instance v0, Lcom/miui/gallery/search/core/source/server/ItemRankInfo;

    invoke-direct {v0}, Lcom/miui/gallery/search/core/source/server/ItemRankInfo;-><init>()V

    .line 177
    .local v0, "itemRankInfo":Lcom/miui/gallery/search/core/source/server/ItemRankInfo;
    iput-object v2, v0, Lcom/miui/gallery/search/core/source/server/ItemRankInfo;->name:Ljava/lang/String;

    .line 178
    iput-object v3, v0, Lcom/miui/gallery/search/core/source/server/ItemRankInfo;->order:Ljava/lang/String;

    .line 179
    const-string v4, "rankInfo"

    invoke-static {}, Lcom/miui/gallery/search/core/source/server/HttpUtils;->createGson()Lcom/google/gson/Gson;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .end local v0    # "itemRankInfo":Lcom/miui/gallery/search/core/source/server/ItemRankInfo;
    .end local v2    # "rankName":Ljava/lang/String;
    .end local v3    # "rankOrder":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method protected getResponseDataType(Lcom/miui/gallery/search/core/QueryInfo;)Ljava/lang/reflect/Type;
    .locals 1
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;

    .prologue
    .line 55
    const-class v0, Lcom/miui/gallery/search/core/source/server/DataListSource$DataListResponseData;

    return-object v0
.end method

.method public getSuggestions(Lcom/miui/gallery/search/core/QueryInfo;)Lcom/miui/gallery/search/core/result/SourceResult;
    .locals 14
    .param p1, "query"    # Lcom/miui/gallery/search/core/QueryInfo;

    .prologue
    const/16 v11, 0x64

    .line 75
    :try_start_0
    const-string v10, "num"

    invoke-virtual {p1, v10}, Lcom/miui/gallery/search/core/QueryInfo;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 78
    .local v3, "count":I
    if-le v3, v11, :cond_5

    .line 79
    const-string v10, "pos"

    invoke-virtual {p1, v10}, Lcom/miui/gallery/search/core/QueryInfo;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 80
    .local v9, "startPos":I
    add-int v10, v9, v3

    add-int/lit8 v5, v10, -0x1

    .line 83
    .local v5, "endPos":I
    new-instance v7, Lcom/miui/gallery/search/core/source/server/DataListSource$DataListResponseData;

    const/4 v10, 0x0

    invoke-direct {v7, v10}, Lcom/miui/gallery/search/core/source/server/DataListSource$DataListResponseData;-><init>(Lcom/miui/gallery/search/core/source/server/DataListSource$1;)V

    .line 84
    .local v7, "overallResponseData":Lcom/miui/gallery/search/core/source/server/DataListSource$DataListResponseData;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v7, Lcom/miui/gallery/search/core/source/server/DataListSource$DataListResponseData;->items:Ljava/util/List;

    .line 86
    :goto_0
    if-gt v9, v5, :cond_3

    iget-boolean v10, v7, Lcom/miui/gallery/search/core/source/server/DataListSource$DataListResponseData;->isLastPage:Z

    if-nez v10, :cond_3

    .line 87
    const/16 v10, 0x64

    sub-int v11, v5, v9

    add-int/lit8 v11, v11, 0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 88
    .local v0, "batchCount":I
    new-instance v10, Lcom/miui/gallery/search/core/QueryInfo$Builder;

    invoke-direct {v10}, Lcom/miui/gallery/search/core/QueryInfo$Builder;-><init>()V

    invoke-virtual {v10, p1}, Lcom/miui/gallery/search/core/QueryInfo$Builder;->cloneFrom(Lcom/miui/gallery/search/core/QueryInfo;)Lcom/miui/gallery/search/core/QueryInfo$Builder;

    move-result-object v10

    const-string v11, "num"

    .line 89
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/miui/gallery/search/core/QueryInfo$Builder;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/search/core/QueryInfo$Builder;

    move-result-object v10

    const-string v11, "pos"

    .line 90
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/miui/gallery/search/core/QueryInfo$Builder;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/search/core/QueryInfo$Builder;

    move-result-object v10

    .line 91
    invoke-virtual {v10}, Lcom/miui/gallery/search/core/QueryInfo$Builder;->build()Lcom/miui/gallery/search/core/QueryInfo;

    move-result-object v1

    .line 92
    .local v1, "batchQueryInfo":Lcom/miui/gallery/search/core/QueryInfo;
    const-string v10, "DataListSource"

    const-string v11, "Start batch request [%s]"

    invoke-static {v10, v11, p1}, Lcom/miui/gallery/search/utils/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    invoke-virtual {p0, v1}, Lcom/miui/gallery/search/core/source/server/DataListSource;->getRequestBuilder(Lcom/miui/gallery/search/core/QueryInfo;)Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->build()Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v8

    .line 95
    .local v8, "serverSearchRequest":Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;
    :try_start_1
    invoke-virtual {v8}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;->executeSync()[Ljava/lang/Object;

    move-result-object v6

    .line 96
    .local v6, "objects":[Ljava/lang/Object;
    if-eqz v6, :cond_4

    array-length v10, v6

    if-lez v10, :cond_4

    const/4 v10, 0x0

    aget-object v10, v6, v10

    instance-of v10, v10, Lcom/miui/gallery/search/core/source/server/DataListSource$DataListResponseData;

    if-eqz v10, :cond_4

    .line 97
    const/4 v10, 0x0

    aget-object v2, v6, v10

    check-cast v2, Lcom/miui/gallery/search/core/source/server/DataListSource$DataListResponseData;

    .line 100
    .local v2, "batchResult":Lcom/miui/gallery/search/core/source/server/DataListSource$DataListResponseData;
    iget-wide v10, v7, Lcom/miui/gallery/search/core/source/server/DataListSource$DataListResponseData;->indexHash:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_0

    .line 101
    iget-wide v10, v7, Lcom/miui/gallery/search/core/source/server/DataListSource$DataListResponseData;->indexHash:J

    iget-wide v12, v2, Lcom/miui/gallery/search/core/source/server/DataListSource$DataListResponseData;->indexHash:J

    cmp-long v10, v10, v12

    if-eqz v10, :cond_1

    .line 102
    new-instance v10, Lcom/miui/gallery/net/base/RequestError;

    sget-object v11, Lcom/miui/gallery/net/base/ErrorCode;->DATA_BIND_ERROR:Lcom/miui/gallery/net/base/ErrorCode;

    const-string v12, "Index hash changed!"

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/miui/gallery/net/base/RequestError;-><init>(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    throw v10
    :try_end_1
    .catch Lcom/miui/gallery/net/base/RequestError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 122
    .end local v2    # "batchResult":Lcom/miui/gallery/search/core/source/server/DataListSource$DataListResponseData;
    .end local v6    # "objects":[Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 123
    .local v4, "e":Lcom/miui/gallery/net/base/RequestError;
    :try_start_2
    invoke-virtual {p0, p1, v8, v4}, Lcom/miui/gallery/search/core/source/server/DataListSource;->onResponseError(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;Lcom/miui/gallery/net/base/RequestError;)Lcom/miui/gallery/search/core/result/SourceResult;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v10

    .line 133
    .end local v0    # "batchCount":I
    .end local v1    # "batchQueryInfo":Lcom/miui/gallery/search/core/QueryInfo;
    .end local v3    # "count":I
    .end local v4    # "e":Lcom/miui/gallery/net/base/RequestError;
    .end local v5    # "endPos":I
    .end local v7    # "overallResponseData":Lcom/miui/gallery/search/core/source/server/DataListSource$DataListResponseData;
    .end local v8    # "serverSearchRequest":Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;
    .end local v9    # "startPos":I
    :goto_1
    return-object v10

    .line 105
    .restart local v0    # "batchCount":I
    .restart local v1    # "batchQueryInfo":Lcom/miui/gallery/search/core/QueryInfo;
    .restart local v2    # "batchResult":Lcom/miui/gallery/search/core/source/server/DataListSource$DataListResponseData;
    .restart local v3    # "count":I
    .restart local v5    # "endPos":I
    .restart local v6    # "objects":[Ljava/lang/Object;
    .restart local v7    # "overallResponseData":Lcom/miui/gallery/search/core/source/server/DataListSource$DataListResponseData;
    .restart local v8    # "serverSearchRequest":Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;
    .restart local v9    # "startPos":I
    :cond_0
    :try_start_3
    iget-wide v10, v2, Lcom/miui/gallery/search/core/source/server/DataListSource$DataListResponseData;->indexHash:J

    iput-wide v10, v7, Lcom/miui/gallery/search/core/source/server/DataListSource$DataListResponseData;->indexHash:J

    .line 108
    :cond_1
    iget-object v10, v2, Lcom/miui/gallery/search/core/source/server/DataListSource$DataListResponseData;->items:Ljava/util/List;

    if-eqz v10, :cond_2

    iget-object v10, v2, Lcom/miui/gallery/search/core/source/server/DataListSource$DataListResponseData;->items:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_2

    iget v10, v2, Lcom/miui/gallery/search/core/source/server/DataListSource$DataListResponseData;->nextPosition:I

    if-le v10, v9, :cond_2

    .line 109
    iget-object v10, v7, Lcom/miui/gallery/search/core/source/server/DataListSource$DataListResponseData;->items:Ljava/util/List;

    iget-object v11, v2, Lcom/miui/gallery/search/core/source/server/DataListSource$DataListResponseData;->items:Ljava/util/List;

    invoke-interface {v10, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 110
    iget v10, v2, Lcom/miui/gallery/search/core/source/server/DataListSource$DataListResponseData;->nextPosition:I

    iput v10, v7, Lcom/miui/gallery/search/core/source/server/DataListSource$DataListResponseData;->nextPosition:I

    .line 111
    const-string v10, "DataListSource"

    const-string v11, "On add batch request result [%d]"

    iget-object v12, v2, Lcom/miui/gallery/search/core/source/server/DataListSource$DataListResponseData;->items:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/miui/gallery/search/utils/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    iget-boolean v10, v2, Lcom/miui/gallery/search/core/source/server/DataListSource$DataListResponseData;->isLastPage:Z

    iput-boolean v10, v7, Lcom/miui/gallery/search/core/source/server/DataListSource$DataListResponseData;->isLastPage:Z

    .line 118
    iget v9, v2, Lcom/miui/gallery/search/core/source/server/DataListSource$DataListResponseData;->nextPosition:I

    .line 119
    goto/16 :goto_0

    .line 114
    :cond_2
    const/4 v10, 0x1

    iput-boolean v10, v7, Lcom/miui/gallery/search/core/source/server/DataListSource$DataListResponseData;->isLastPage:Z
    :try_end_3
    .catch Lcom/miui/gallery/net/base/RequestError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 128
    .end local v0    # "batchCount":I
    .end local v1    # "batchQueryInfo":Lcom/miui/gallery/search/core/QueryInfo;
    .end local v2    # "batchResult":Lcom/miui/gallery/search/core/source/server/DataListSource$DataListResponseData;
    .end local v6    # "objects":[Ljava/lang/Object;
    .end local v8    # "serverSearchRequest":Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;
    :cond_3
    const/4 v10, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v10, v7}, Lcom/miui/gallery/search/core/source/server/DataListSource;->onResponse(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;Ljava/lang/Object;)Lcom/miui/gallery/search/core/result/SourceResult;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v10

    goto :goto_1

    .line 120
    .restart local v0    # "batchCount":I
    .restart local v1    # "batchQueryInfo":Lcom/miui/gallery/search/core/QueryInfo;
    .restart local v6    # "objects":[Ljava/lang/Object;
    .restart local v8    # "serverSearchRequest":Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;
    :cond_4
    :try_start_5
    new-instance v10, Lcom/miui/gallery/net/base/RequestError;

    sget-object v11, Lcom/miui/gallery/net/base/ErrorCode;->BODY_EMPTY:Lcom/miui/gallery/net/base/ErrorCode;

    const-string v12, "Execute result should not be null"

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/miui/gallery/net/base/RequestError;-><init>(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    throw v10
    :try_end_5
    .catch Lcom/miui/gallery/net/base/RequestError; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 124
    .end local v6    # "objects":[Ljava/lang/Object;
    :catch_1
    move-exception v4

    .line 125
    .local v4, "e":Ljava/lang/Exception;
    :try_start_6
    new-instance v10, Lcom/miui/gallery/search/core/result/ErrorInfo;

    const/4 v11, 0x7

    invoke-direct {v10, v11}, Lcom/miui/gallery/search/core/result/ErrorInfo;-><init>(I)V

    invoke-virtual {p0, p1, v10}, Lcom/miui/gallery/search/core/source/server/DataListSource;->onResponseError(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/result/ErrorInfo;)Lcom/miui/gallery/search/core/result/SourceResult;

    move-result-object v10

    goto :goto_1

    .line 130
    .end local v0    # "batchCount":I
    .end local v1    # "batchQueryInfo":Lcom/miui/gallery/search/core/QueryInfo;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "endPos":I
    .end local v7    # "overallResponseData":Lcom/miui/gallery/search/core/source/server/DataListSource$DataListResponseData;
    .end local v8    # "serverSearchRequest":Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;
    .end local v9    # "startPos":I
    :cond_5
    invoke-super {p0, p1}, Lcom/miui/gallery/search/core/source/server/ServerSource;->getSuggestions(Lcom/miui/gallery/search/core/QueryInfo;)Lcom/miui/gallery/search/core/result/SourceResult;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object v10

    goto :goto_1

    .line 132
    .end local v3    # "count":I
    :catch_2
    move-exception v4

    .line 133
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/gallery/search/core/source/server/ServerSource;->getSuggestions(Lcom/miui/gallery/search/core/QueryInfo;)Lcom/miui/gallery/search/core/result/SourceResult;

    move-result-object v10

    goto :goto_1
.end method

.method public bridge synthetic getSuggestions(Lcom/miui/gallery/search/core/QueryInfo;)Lcom/miui/gallery/search/core/result/SuggestionResult;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/core/source/server/DataListSource;->getSuggestions(Lcom/miui/gallery/search/core/QueryInfo;)Lcom/miui/gallery/search/core/result/SourceResult;

    move-result-object v0

    return-object v0
.end method

.method public getSupportSearchTypes()[Lcom/miui/gallery/search/SearchConstants$SearchType;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/miui/gallery/search/core/source/server/DataListSource;->SUPPORT_SEARCH_TYPE:[Lcom/miui/gallery/search/SearchConstants$SearchType;

    return-object v0
.end method

.method protected isPersistable(Lcom/miui/gallery/search/core/QueryInfo;)Z
    .locals 2
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;

    .prologue
    .line 63
    if-eqz p1, :cond_0

    const-string v0, "0"

    const-string v1, "pos"

    .line 64
    invoke-virtual {p1, v1}, Lcom/miui/gallery/search/core/QueryInfo;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResponse(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;Ljava/lang/Object;)Lcom/miui/gallery/search/core/result/SourceResult;
    .locals 9
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p2, "serverSearchRequest"    # Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;
    .param p3, "responseData"    # Ljava/lang/Object;

    .prologue
    .line 141
    instance-of v0, p3, Lcom/miui/gallery/search/core/source/server/DataListSource$DataListResponseData;

    if-nez v0, :cond_0

    .line 142
    const-string v0, "DataListSource"

    const-string v1, "Not supported response data type"

    invoke-static {v0, v1}, Lcom/miui/gallery/search/utils/SearchLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const/4 v0, 0x0

    .line 148
    :goto_0
    return-object v0

    :cond_0
    move-object v8, p3

    .line 146
    check-cast v8, Lcom/miui/gallery/search/core/source/server/DataListSource$DataListResponseData;

    .line 147
    .local v8, "dataListResponseData":Lcom/miui/gallery/search/core/source/server/DataListSource$DataListResponseData;
    new-instance v0, Lcom/miui/gallery/search/resultpage/DataListSourceResult;

    iget-object v1, v8, Lcom/miui/gallery/search/core/source/server/DataListSource$DataListResponseData;->items:Ljava/util/List;

    .line 148
    invoke-static {v1, p0, p1}, Lcom/miui/gallery/search/core/source/server/ConvertUtil;->createSuggestionCursor(Ljava/util/List;Lcom/miui/gallery/search/core/source/Source;Lcom/miui/gallery/search/core/QueryInfo;)Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v3

    iget v4, v8, Lcom/miui/gallery/search/core/source/server/DataListSource$DataListResponseData;->nextPosition:I

    iget-boolean v5, v8, Lcom/miui/gallery/search/core/source/server/DataListSource$DataListResponseData;->isLastPage:Z

    iget-wide v6, v8, Lcom/miui/gallery/search/core/source/server/DataListSource$DataListResponseData;->indexHash:J

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/miui/gallery/search/resultpage/DataListSourceResult;-><init>(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/source/Source;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;IZJ)V

    goto :goto_0
.end method
