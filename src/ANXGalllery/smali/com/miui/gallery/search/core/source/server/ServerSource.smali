.class public abstract Lcom/miui/gallery/search/core/source/server/ServerSource;
.super Lcom/miui/gallery/search/core/source/InterceptableSource;
.source "ServerSource.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/core/source/InterceptableSource;-><init>(Landroid/content/Context;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected canCarryLog()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method protected doGetSuggestions(Lcom/miui/gallery/search/core/QueryInfo;)Lcom/miui/gallery/search/core/result/SourceResult;
    .locals 14
    .param p1, "query"    # Lcom/miui/gallery/search/core/QueryInfo;

    .prologue
    .line 182
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/core/source/server/ServerSource;->getRequestBuilder(Lcom/miui/gallery/search/core/QueryInfo;)Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->build()Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;

    move-result-object v8

    .line 184
    .local v8, "serverSearchRequest":Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/source/server/ServerSource;->canCarryLog()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 186
    invoke-static {}, Lcom/miui/gallery/search/statistics/SearchStatUtils;->pullCachedEvent()Ljava/lang/String;

    move-result-object v4

    .line 187
    .local v4, "logData":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 188
    const-string v10, "logData"

    invoke-virtual {v8, v10, v4}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/net/base/BaseRequest;

    .line 193
    .end local v4    # "logData":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-virtual {v8}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;->executeSync()[Ljava/lang/Object;

    move-result-object v5

    .line 194
    .local v5, "objects":[Ljava/lang/Object;
    if-eqz v5, :cond_6

    array-length v10, v5

    if-lez v10, :cond_6

    .line 195
    const/4 v7, 0x0

    .line 196
    .local v7, "resultHash":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/core/source/server/ServerSource;->isPersistable(Lcom/miui/gallery/search/core/QueryInfo;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 197
    const-wide/16 v2, -0x1

    .line 198
    .local v2, "expireMillis":J
    invoke-virtual {v8}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;->getResponseData()Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Lcom/miui/gallery/search/core/source/server/Cacheable;

    if-eqz v10, :cond_1

    .line 199
    invoke-virtual {v8}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;->getResponseData()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/gallery/search/core/source/server/Cacheable;

    invoke-interface {v10}, Lcom/miui/gallery/search/core/source/server/Cacheable;->getExpireMills()J

    move-result-wide v2

    .line 201
    :cond_1
    invoke-virtual {v8}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;->getParams()Ljava/util/Map;

    move-result-object v6

    .line 202
    .local v6, "reqParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v6}, Lcom/miui/gallery/search/utils/SearchUtils;->removeExtraParamsForPersistence(Ljava/util/Map;)V

    .line 204
    invoke-virtual {v8}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;->getUrl()Ljava/lang/String;

    move-result-object v10

    .line 205
    invoke-virtual {v8}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;->getResponseRawData()Ljava/lang/String;

    move-result-object v11

    .line 203
    invoke-static {v10, v6, v11, v2, v3}, Lcom/miui/gallery/util/PersistentResponseHelper;->saveAsync(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;J)V

    .line 207
    invoke-virtual {v8}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;->getResponseRawData()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/miui/gallery/search/utils/SearchUtils;->generateResultHashCode(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 209
    .end local v2    # "expireMillis":J
    .end local v6    # "reqParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const/4 v10, 0x0

    aget-object v10, v5, v10

    invoke-virtual {p0, p1, v8, v10}, Lcom/miui/gallery/search/core/source/server/ServerSource;->onResponse(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;Ljava/lang/Object;)Lcom/miui/gallery/search/core/result/SourceResult;

    move-result-object v9

    .line 210
    .local v9, "sourceResult":Lcom/miui/gallery/search/core/result/SourceResult;
    if-eqz v7, :cond_5

    if-eqz v9, :cond_5

    .line 211
    invoke-interface {v9}, Lcom/miui/gallery/search/core/result/SourceResult;->getResultExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 212
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_3

    sget-object v10, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    if-ne v1, v10, :cond_4

    .line 213
    :cond_3
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "extras":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 214
    .restart local v1    # "extras":Landroid/os/Bundle;
    invoke-interface {v9, v1}, Lcom/miui/gallery/search/core/result/SourceResult;->setResultExtras(Landroid/os/Bundle;)V

    .line 216
    :cond_4
    const-string v10, "result_hash_code"

    invoke-virtual {v1, v10, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v5    # "objects":[Ljava/lang/Object;
    .end local v7    # "resultHash":Ljava/lang/String;
    .end local v9    # "sourceResult":Lcom/miui/gallery/search/core/result/SourceResult;
    :cond_5
    :goto_0
    return-object v9

    .line 220
    .restart local v5    # "objects":[Ljava/lang/Object;
    :cond_6
    new-instance v10, Lcom/miui/gallery/net/base/RequestError;

    sget-object v11, Lcom/miui/gallery/net/base/ErrorCode;->BODY_EMPTY:Lcom/miui/gallery/net/base/ErrorCode;

    const-string v12, "Execute result should not be null"

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/miui/gallery/net/base/RequestError;-><init>(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    throw v10
    :try_end_0
    .catch Lcom/miui/gallery/net/base/RequestError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 222
    .end local v5    # "objects":[Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Lcom/miui/gallery/net/base/RequestError;
    invoke-virtual {p0, p1, v8, v0}, Lcom/miui/gallery/search/core/source/server/ServerSource;->onResponseError(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;Lcom/miui/gallery/net/base/RequestError;)Lcom/miui/gallery/search/core/result/SourceResult;

    move-result-object v9

    goto :goto_0

    .line 224
    .end local v0    # "e":Lcom/miui/gallery/net/base/RequestError;
    :catch_1
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/Exception;
    new-instance v10, Lcom/miui/gallery/search/core/result/ErrorInfo;

    const/4 v11, 0x7

    invoke-direct {v10, v11}, Lcom/miui/gallery/search/core/result/ErrorInfo;-><init>(I)V

    invoke-virtual {p0, p1, v10}, Lcom/miui/gallery/search/core/source/server/ServerSource;->onResponseError(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/result/ErrorInfo;)Lcom/miui/gallery/search/core/result/SourceResult;

    move-result-object v9

    goto :goto_0
.end method

.method protected getPrejudgeResult(Lcom/miui/gallery/search/core/QueryInfo;)Lcom/miui/gallery/search/core/result/SourceResult;
    .locals 24
    .param p1, "query"    # Lcom/miui/gallery/search/core/QueryInfo;

    .prologue
    .line 78
    invoke-super/range {p0 .. p1}, Lcom/miui/gallery/search/core/source/InterceptableSource;->getPrejudgeResult(Lcom/miui/gallery/search/core/QueryInfo;)Lcom/miui/gallery/search/core/result/SourceResult;

    move-result-object v16

    .line 79
    .local v16, "sourceResult":Lcom/miui/gallery/search/core/result/SourceResult;
    if-eqz v16, :cond_1

    .line 124
    .end local v16    # "sourceResult":Lcom/miui/gallery/search/core/result/SourceResult;
    :cond_0
    :goto_0
    return-object v16

    .line 82
    .restart local v16    # "sourceResult":Lcom/miui/gallery/search/core/result/SourceResult;
    :cond_1
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isNetworkConnected()Z

    move-result v20

    if-nez v20, :cond_6

    const/16 v20, 0x1

    .line 83
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/search/core/source/server/ServerSource;->isFatalCondition(Lcom/miui/gallery/search/core/QueryInfo;I)Z

    move-result v20

    if-eqz v20, :cond_6

    const/4 v11, 0x1

    .line 84
    .local v11, "networkUnavailable":Z
    :goto_1
    if-eqz p1, :cond_7

    const-string/jumbo v20, "use_persistent_response"

    .line 85
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/core/QueryInfo;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_7

    const/16 v17, 0x1

    .line 87
    .local v17, "usePersistentResponse":Z
    :goto_2
    if-nez v11, :cond_2

    if-eqz v17, :cond_a

    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/miui/gallery/search/core/source/server/ServerSource;->isPersistable(Lcom/miui/gallery/search/core/QueryInfo;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 89
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/miui/gallery/search/core/source/server/ServerSource;->getRequestBuilder(Lcom/miui/gallery/search/core/QueryInfo;)Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->build()Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;

    move-result-object v13

    .line 90
    .local v13, "request":Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;
    invoke-virtual {v13}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;->getParams()Ljava/util/Map;

    move-result-object v12

    .line 91
    .local v12, "reqParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v12}, Lcom/miui/gallery/search/utils/SearchUtils;->removeExtraParamsForPersistence(Ljava/util/Map;)V

    .line 93
    invoke-virtual {v13}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;->getUrl()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v0, v12}, Lcom/miui/gallery/util/PersistentResponseHelper;->find(Ljava/lang/String;Ljava/util/Map;)Lcom/miui/gallery/model/PersistentResponse;

    move-result-object v14

    .line 94
    .local v14, "response":Lcom/miui/gallery/model/PersistentResponse;
    if-eqz v14, :cond_a

    invoke-virtual {v14}, Lcom/miui/gallery/model/PersistentResponse;->getResponse()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_a

    .line 95
    invoke-static {}, Lcom/miui/gallery/search/core/source/server/HttpUtils;->createGson()Lcom/google/gson/Gson;

    move-result-object v20

    invoke-virtual {v14}, Lcom/miui/gallery/model/PersistentResponse;->getResponse()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p0 .. p1}, Lcom/miui/gallery/search/core/source/server/ServerSource;->getResponseDataType(Lcom/miui/gallery/search/core/QueryInfo;)Ljava/lang/reflect/Type;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .line 96
    .local v5, "data":Ljava/lang/Object;
    if-eqz v5, :cond_a

    .line 97
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13, v5}, Lcom/miui/gallery/search/core/source/server/ServerSource;->onResponse(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;Ljava/lang/Object;)Lcom/miui/gallery/search/core/result/SourceResult;

    move-result-object v15

    .line 98
    .local v15, "result":Lcom/miui/gallery/search/core/result/SourceResult;
    if-eqz v15, :cond_5

    .line 99
    invoke-virtual {v14}, Lcom/miui/gallery/model/PersistentResponse;->getExpireMillis()J

    move-result-wide v8

    .line 100
    .local v8, "expireMillis":J
    invoke-virtual {v14}, Lcom/miui/gallery/model/PersistentResponse;->getUpdateTime()J

    move-result-wide v18

    .line 101
    .local v18, "updateTime":J
    add-long v20, v18, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    cmp-long v20, v20, v22

    if-gez v20, :cond_8

    const/4 v10, 0x1

    .line 102
    .local v10, "isResponseExpire":Z
    :goto_3
    invoke-interface {v15}, Lcom/miui/gallery/search/core/result/SourceResult;->getResultExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 103
    .local v7, "extras":Landroid/os/Bundle;
    if-eqz v7, :cond_3

    sget-object v20, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    move-object/from16 v0, v20

    if-ne v7, v0, :cond_4

    .line 104
    :cond_3
    new-instance v7, Landroid/os/Bundle;

    .end local v7    # "extras":Landroid/os/Bundle;
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 105
    .restart local v7    # "extras":Landroid/os/Bundle;
    invoke-interface {v15, v7}, Lcom/miui/gallery/search/core/result/SourceResult;->setResultExtras(Landroid/os/Bundle;)V

    .line 107
    :cond_4
    const-string v21, "need_requery"

    if-nez v11, :cond_9

    if-eqz v10, :cond_9

    const/16 v20, 0x1

    :goto_4
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 108
    const-string v20, "result_hash_code"

    .line 109
    invoke-virtual {v14}, Lcom/miui/gallery/model/PersistentResponse;->getResponse()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/search/utils/SearchUtils;->generateResultHashCode(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 108
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v7    # "extras":Landroid/os/Bundle;
    .end local v8    # "expireMillis":J
    .end local v10    # "isResponseExpire":Z
    .end local v18    # "updateTime":J
    :cond_5
    move-object/from16 v16, v15

    .line 111
    goto/16 :goto_0

    .line 83
    .end local v5    # "data":Ljava/lang/Object;
    .end local v11    # "networkUnavailable":Z
    .end local v12    # "reqParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "request":Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;
    .end local v14    # "response":Lcom/miui/gallery/model/PersistentResponse;
    .end local v15    # "result":Lcom/miui/gallery/search/core/result/SourceResult;
    .end local v17    # "usePersistentResponse":Z
    :cond_6
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 85
    .restart local v11    # "networkUnavailable":Z
    :cond_7
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 101
    .restart local v5    # "data":Ljava/lang/Object;
    .restart local v8    # "expireMillis":J
    .restart local v12    # "reqParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v13    # "request":Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;
    .restart local v14    # "response":Lcom/miui/gallery/model/PersistentResponse;
    .restart local v15    # "result":Lcom/miui/gallery/search/core/result/SourceResult;
    .restart local v17    # "usePersistentResponse":Z
    .restart local v18    # "updateTime":J
    :cond_8
    const/4 v10, 0x0

    goto :goto_3

    .line 107
    .restart local v7    # "extras":Landroid/os/Bundle;
    .restart local v10    # "isResponseExpire":Z
    :cond_9
    const/16 v20, 0x0

    goto :goto_4

    .line 114
    .end local v5    # "data":Ljava/lang/Object;
    .end local v7    # "extras":Landroid/os/Bundle;
    .end local v8    # "expireMillis":J
    .end local v10    # "isResponseExpire":Z
    .end local v12    # "reqParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "request":Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;
    .end local v14    # "response":Lcom/miui/gallery/model/PersistentResponse;
    .end local v15    # "result":Lcom/miui/gallery/search/core/result/SourceResult;
    .end local v18    # "updateTime":J
    :catch_0
    move-exception v6

    .line 115
    .local v6, "ex":Ljava/lang/Exception;
    const-string v20, "ServerSource"

    move-object/from16 v0, v20

    invoke-static {v0, v6}, Lcom/miui/gallery/search/utils/SearchLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    .end local v6    # "ex":Ljava/lang/Exception;
    :cond_a
    if-eqz v11, :cond_0

    .line 120
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/search/core/source/server/ServerSource;->generateDefaultResult(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)Lcom/miui/gallery/search/core/result/BaseSourceResult;

    move-result-object v4

    .line 121
    .local v4, "baseSourceResult":Lcom/miui/gallery/search/core/result/BaseSourceResult;
    new-instance v20, Lcom/miui/gallery/search/core/result/ErrorInfo;

    const/16 v21, 0x1

    invoke-direct/range {v20 .. v21}, Lcom/miui/gallery/search/core/result/ErrorInfo;-><init>(I)V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/miui/gallery/search/core/result/BaseSourceResult;->setErrorInfo(Lcom/miui/gallery/search/core/result/ErrorInfo;)V

    move-object/from16 v16, v4

    .line 122
    goto/16 :goto_0
.end method

.method public getPriority(Lcom/miui/gallery/search/core/QueryInfo;)I
    .locals 1
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;

    .prologue
    .line 231
    const/4 v0, 0x2

    return v0
.end method

.method protected abstract getQueryAppendPath(Lcom/miui/gallery/search/core/QueryInfo;)Ljava/lang/String;
.end method

.method protected getQueryParams(Lcom/miui/gallery/search/core/QueryInfo;)Ljava/util/Map;
    .locals 2
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
    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/miui/gallery/search/core/QueryInfo;->getParams()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method protected getQueryUserPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-static {p1}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->getDefaultUserPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getRequestBuilder(Lcom/miui/gallery/search/core/QueryInfo;)Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;
    .locals 3
    .param p1, "query"    # Lcom/miui/gallery/search/core/QueryInfo;

    .prologue
    .line 239
    invoke-static {}, Lcom/miui/gallery/search/utils/SearchUtils;->getXiaomiId()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "userId":Ljava/lang/String;
    new-instance v1, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;

    invoke-direct {v1}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;-><init>()V

    .line 241
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/core/source/server/ServerSource;->getResponseDataType(Lcom/miui/gallery/search/core/QueryInfo;)Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->setResultDataType(Ljava/lang/reflect/Type;)Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;

    move-result-object v1

    const/16 v2, 0x3e9

    .line 242
    invoke-virtual {v1, v2}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->setMethod(I)Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;

    move-result-object v1

    .line 243
    invoke-virtual {p0, v0}, Lcom/miui/gallery/search/core/source/server/ServerSource;->getQueryUserPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->setUserPath(Ljava/lang/String;)Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;

    move-result-object v1

    .line 244
    invoke-virtual {v1, v0}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->setUserId(Ljava/lang/String;)Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;

    move-result-object v1

    .line 245
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/core/source/server/ServerSource;->getQueryAppendPath(Lcom/miui/gallery/search/core/QueryInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->setQueryAppendPath(Ljava/lang/String;)Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;

    move-result-object v1

    .line 246
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/core/source/server/ServerSource;->getQueryParams(Lcom/miui/gallery/search/core/QueryInfo;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->addQueryParams(Ljava/util/Map;)Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;

    move-result-object v1

    .line 247
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/core/source/server/ServerSource;->useCache(Lcom/miui/gallery/search/core/QueryInfo;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->setUseCache(Z)Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;

    move-result-object v1

    return-object v1
.end method

.method protected getResponseDataType(Lcom/miui/gallery/search/core/QueryInfo;)Ljava/lang/reflect/Type;
    .locals 1
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;

    .prologue
    .line 235
    const-class v0, Lcom/miui/gallery/search/core/source/server/SectionedResponseData;

    return-object v0
.end method

.method protected getSearchErrorCodeFromNetErrorCode(Lcom/miui/gallery/net/base/ErrorCode;)I
    .locals 2
    .param p1, "errorCode"    # Lcom/miui/gallery/net/base/ErrorCode;

    .prologue
    .line 163
    sget-object v0, Lcom/miui/gallery/search/core/source/server/ServerSource$1;->$SwitchMap$com$miui$gallery$net$base$ErrorCode:[I

    invoke-virtual {p1}, Lcom/miui/gallery/net/base/ErrorCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 176
    const/16 v0, 0x9

    :goto_0
    return v0

    .line 165
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 167
    :pswitch_1
    const/4 v0, 0x6

    goto :goto_0

    .line 170
    :pswitch_2
    const/4 v0, 0x5

    goto :goto_0

    .line 174
    :pswitch_3
    const/4 v0, 0x7

    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method protected isFatalCondition(Lcom/miui/gallery/search/core/QueryInfo;I)Z
    .locals 1
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p2, "errorStatus"    # I

    .prologue
    .line 132
    sparse-switch p2, :sswitch_data_0

    .line 139
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/search/core/source/InterceptableSource;->isFatalCondition(Lcom/miui/gallery/search/core/QueryInfo;I)Z

    move-result v0

    :goto_0
    return v0

    .line 137
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 132
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method protected isPersistable(Lcom/miui/gallery/search/core/QueryInfo;)Z
    .locals 1
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract onResponse(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;Ljava/lang/Object;)Lcom/miui/gallery/search/core/result/SourceResult;
.end method

.method protected onResponseError(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/result/ErrorInfo;)Lcom/miui/gallery/search/core/result/SourceResult;
    .locals 3
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p2, "errorInfo"    # Lcom/miui/gallery/search/core/result/ErrorInfo;

    .prologue
    .line 156
    const-string v1, "ServerSource"

    const-string v2, "onResponseError for query %s, error %s"

    invoke-static {v1, v2, p1, p2}, Lcom/miui/gallery/search/utils/SearchLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 157
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/miui/gallery/search/core/source/server/ServerSource;->generateDefaultResult(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)Lcom/miui/gallery/search/core/result/BaseSourceResult;

    move-result-object v0

    .line 158
    .local v0, "sourceResult":Lcom/miui/gallery/search/core/result/BaseSourceResult;
    invoke-virtual {v0, p2}, Lcom/miui/gallery/search/core/result/BaseSourceResult;->setErrorInfo(Lcom/miui/gallery/search/core/result/ErrorInfo;)V

    .line 159
    return-object v0
.end method

.method protected onResponseError(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;Lcom/miui/gallery/net/base/RequestError;)Lcom/miui/gallery/search/core/result/SourceResult;
    .locals 3
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p2, "serverSearchRequest"    # Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;
    .param p3, "errorData"    # Lcom/miui/gallery/net/base/RequestError;

    .prologue
    .line 150
    new-instance v0, Lcom/miui/gallery/search/core/result/ErrorInfo;

    .line 151
    invoke-virtual {p3}, Lcom/miui/gallery/net/base/RequestError;->getErrorCode()Lcom/miui/gallery/net/base/ErrorCode;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/gallery/search/core/source/server/ServerSource;->getSearchErrorCodeFromNetErrorCode(Lcom/miui/gallery/net/base/ErrorCode;)I

    move-result v1

    .line 152
    invoke-virtual {p3}, Lcom/miui/gallery/net/base/RequestError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/search/core/result/ErrorInfo;-><init>(ILjava/lang/Object;)V

    .line 150
    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/search/core/source/server/ServerSource;->onResponseError(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/result/ErrorInfo;)Lcom/miui/gallery/search/core/result/SourceResult;

    move-result-object v0

    return-object v0
.end method

.method protected useCache(Lcom/miui/gallery/search/core/QueryInfo;)Z
    .locals 1
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method
