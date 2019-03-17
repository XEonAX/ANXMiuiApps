.class public abstract Lcom/miui/gallery/search/core/source/InterceptableSource;
.super Lcom/miui/gallery/search/core/source/AbstractSource;
.source "InterceptableSource.java"


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/miui/gallery/search/core/source/AbstractSource;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/miui/gallery/search/core/source/InterceptableSource;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method


# virtual methods
.method protected abstract doGetSuggestions(Lcom/miui/gallery/search/core/QueryInfo;)Lcom/miui/gallery/search/core/result/SourceResult;
.end method

.method protected generateDefaultResult(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)Lcom/miui/gallery/search/core/result/BaseSourceResult;
    .locals 1
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p2, "resultData"    # Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    .prologue
    .line 54
    new-instance v0, Lcom/miui/gallery/search/core/result/BaseSourceResult;

    invoke-direct {v0, p1, p0, p2}, Lcom/miui/gallery/search/core/result/BaseSourceResult;-><init>(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/source/Source;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)V

    return-object v0
.end method

.method protected getPrejudgeResult(Lcom/miui/gallery/search/core/QueryInfo;)Lcom/miui/gallery/search/core/result/SourceResult;
    .locals 6
    .param p1, "query"    # Lcom/miui/gallery/search/core/QueryInfo;

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, p1, v3}, Lcom/miui/gallery/search/core/source/InterceptableSource;->isFatalCondition(Lcom/miui/gallery/search/core/QueryInfo;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    invoke-static {}, Lcom/miui/gallery/search/utils/SearchUtils;->getXiaomiId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/search/core/source/InterceptableSource;->generateDefaultResult(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)Lcom/miui/gallery/search/core/result/BaseSourceResult;

    move-result-object v0

    .line 62
    .local v0, "sourceResult":Lcom/miui/gallery/search/core/result/BaseSourceResult;
    new-instance v1, Lcom/miui/gallery/search/core/result/ErrorInfo;

    invoke-direct {v1, v3}, Lcom/miui/gallery/search/core/result/ErrorInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/core/result/BaseSourceResult;->setErrorInfo(Lcom/miui/gallery/search/core/result/ErrorInfo;)V

    .line 103
    .end local v0    # "sourceResult":Lcom/miui/gallery/search/core/result/BaseSourceResult;
    :cond_0
    :goto_0
    return-object v0

    .line 64
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/search/core/source/InterceptableSource;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/gallery/util/PrivacyAgreementUtils;->isCloudServiceAgreementEnable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 67
    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/search/core/source/InterceptableSource;->generateDefaultResult(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)Lcom/miui/gallery/search/core/result/BaseSourceResult;

    move-result-object v0

    .line 68
    .restart local v0    # "sourceResult":Lcom/miui/gallery/search/core/result/BaseSourceResult;
    new-instance v1, Lcom/miui/gallery/search/core/result/ErrorInfo;

    invoke-direct {v1, v4}, Lcom/miui/gallery/search/core/result/ErrorInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/core/result/BaseSourceResult;->setErrorInfo(Lcom/miui/gallery/search/core/result/ErrorInfo;)V

    goto :goto_0

    .line 70
    .end local v0    # "sourceResult":Lcom/miui/gallery/search/core/result/BaseSourceResult;
    :cond_2
    invoke-virtual {p0, p1, v5}, Lcom/miui/gallery/search/core/source/InterceptableSource;->isFatalCondition(Lcom/miui/gallery/search/core/QueryInfo;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 71
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sIsFirstSynced()Z

    move-result v1

    if-nez v1, :cond_5

    .line 72
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isNetworkConnected()Z

    move-result v1

    if-nez v1, :cond_3

    .line 73
    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/search/core/source/InterceptableSource;->generateDefaultResult(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)Lcom/miui/gallery/search/core/result/BaseSourceResult;

    move-result-object v0

    .line 74
    .restart local v0    # "sourceResult":Lcom/miui/gallery/search/core/result/BaseSourceResult;
    new-instance v1, Lcom/miui/gallery/search/core/result/ErrorInfo;

    invoke-direct {v1, v2}, Lcom/miui/gallery/search/core/result/ErrorInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/core/result/BaseSourceResult;->setErrorInfo(Lcom/miui/gallery/search/core/result/ErrorInfo;)V

    goto :goto_0

    .line 76
    .end local v0    # "sourceResult":Lcom/miui/gallery/search/core/result/BaseSourceResult;
    :cond_3
    iget-object v1, p0, Lcom/miui/gallery/search/core/source/InterceptableSource;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/gallery/util/SyncUtil;->isGalleryCloudSyncable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 77
    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/search/core/source/InterceptableSource;->generateDefaultResult(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)Lcom/miui/gallery/search/core/result/BaseSourceResult;

    move-result-object v0

    .line 78
    .restart local v0    # "sourceResult":Lcom/miui/gallery/search/core/result/BaseSourceResult;
    new-instance v1, Lcom/miui/gallery/search/core/result/ErrorInfo;

    invoke-direct {v1, v5}, Lcom/miui/gallery/search/core/result/ErrorInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/core/result/BaseSourceResult;->setErrorInfo(Lcom/miui/gallery/search/core/result/ErrorInfo;)V

    goto :goto_0

    .line 83
    .end local v0    # "sourceResult":Lcom/miui/gallery/search/core/result/BaseSourceResult;
    :cond_4
    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/search/core/source/InterceptableSource;->generateDefaultResult(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)Lcom/miui/gallery/search/core/result/BaseSourceResult;

    move-result-object v0

    .line 84
    .restart local v0    # "sourceResult":Lcom/miui/gallery/search/core/result/BaseSourceResult;
    new-instance v1, Lcom/miui/gallery/search/core/result/ErrorInfo;

    invoke-direct {v1, v4}, Lcom/miui/gallery/search/core/result/ErrorInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/core/result/BaseSourceResult;->setErrorInfo(Lcom/miui/gallery/search/core/result/ErrorInfo;)V

    goto :goto_0

    .line 87
    .end local v0    # "sourceResult":Lcom/miui/gallery/search/core/result/BaseSourceResult;
    :cond_5
    const/16 v1, 0xc

    invoke-virtual {p0, p1, v1}, Lcom/miui/gallery/search/core/source/InterceptableSource;->isFatalCondition(Lcom/miui/gallery/search/core/QueryInfo;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 88
    invoke-static {v2}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->isLocalSearchOpen(Z)Z

    move-result v1

    if-nez v1, :cond_6

    .line 89
    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/search/core/source/InterceptableSource;->generateDefaultResult(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)Lcom/miui/gallery/search/core/result/BaseSourceResult;

    move-result-object v0

    .line 90
    .restart local v0    # "sourceResult":Lcom/miui/gallery/search/core/result/BaseSourceResult;
    new-instance v1, Lcom/miui/gallery/search/core/result/ErrorInfo;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Lcom/miui/gallery/search/core/result/ErrorInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/core/result/BaseSourceResult;->setErrorInfo(Lcom/miui/gallery/search/core/result/ErrorInfo;)V

    goto :goto_0

    .line 92
    .end local v0    # "sourceResult":Lcom/miui/gallery/search/core/result/BaseSourceResult;
    :cond_6
    const/16 v1, 0xd

    invoke-virtual {p0, p1, v1}, Lcom/miui/gallery/search/core/source/InterceptableSource;->isFatalCondition(Lcom/miui/gallery/search/core/QueryInfo;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 93
    invoke-static {}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->isCloudControlSearchAIAlbumOpen()Z

    move-result v1

    if-nez v1, :cond_7

    .line 94
    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/search/core/source/InterceptableSource;->generateDefaultResult(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)Lcom/miui/gallery/search/core/result/BaseSourceResult;

    move-result-object v0

    .line 95
    .restart local v0    # "sourceResult":Lcom/miui/gallery/search/core/result/BaseSourceResult;
    new-instance v1, Lcom/miui/gallery/search/core/result/ErrorInfo;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Lcom/miui/gallery/search/core/result/ErrorInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/core/result/BaseSourceResult;->setErrorInfo(Lcom/miui/gallery/search/core/result/ErrorInfo;)V

    goto/16 :goto_0

    .line 97
    .end local v0    # "sourceResult":Lcom/miui/gallery/search/core/result/BaseSourceResult;
    :cond_7
    const/16 v1, 0xe

    invoke-virtual {p0, p1, v1}, Lcom/miui/gallery/search/core/source/InterceptableSource;->isFatalCondition(Lcom/miui/gallery/search/core/QueryInfo;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    invoke-static {}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->isCloudControlSearchBarOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/search/core/source/InterceptableSource;->generateDefaultResult(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)Lcom/miui/gallery/search/core/result/BaseSourceResult;

    move-result-object v0

    .line 100
    .restart local v0    # "sourceResult":Lcom/miui/gallery/search/core/result/BaseSourceResult;
    new-instance v1, Lcom/miui/gallery/search/core/result/ErrorInfo;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Lcom/miui/gallery/search/core/result/ErrorInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/core/result/BaseSourceResult;->setErrorInfo(Lcom/miui/gallery/search/core/result/ErrorInfo;)V

    goto/16 :goto_0
.end method

.method public getSuggestions(Lcom/miui/gallery/search/core/QueryInfo;)Lcom/miui/gallery/search/core/result/SourceResult;
    .locals 1
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/core/source/InterceptableSource;->getPrejudgeResult(Lcom/miui/gallery/search/core/QueryInfo;)Lcom/miui/gallery/search/core/result/SourceResult;

    move-result-object v0

    .line 43
    .local v0, "sourceResult":Lcom/miui/gallery/search/core/result/SourceResult;
    if-eqz v0, :cond_0

    .line 46
    .end local v0    # "sourceResult":Lcom/miui/gallery/search/core/result/SourceResult;
    :goto_0
    return-object v0

    .restart local v0    # "sourceResult":Lcom/miui/gallery/search/core/result/SourceResult;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/core/source/InterceptableSource;->doGetSuggestions(Lcom/miui/gallery/search/core/QueryInfo;)Lcom/miui/gallery/search/core/result/SourceResult;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getSuggestions(Lcom/miui/gallery/search/core/QueryInfo;)Lcom/miui/gallery/search/core/result/SuggestionResult;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/core/source/InterceptableSource;->getSuggestions(Lcom/miui/gallery/search/core/QueryInfo;)Lcom/miui/gallery/search/core/result/SourceResult;

    move-result-object v0

    return-object v0
.end method

.method protected isFatalCondition(Lcom/miui/gallery/search/core/QueryInfo;I)Z
    .locals 1
    .param p1, "queryInfo"    # Lcom/miui/gallery/search/core/QueryInfo;
    .param p2, "status"    # I

    .prologue
    .line 50
    const/16 v0, 0xc

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
