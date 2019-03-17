.class public Lcom/miui/gallery/search/utils/SearchUtils;
.super Ljava/lang/Object;
.source "SearchUtils.java"


# direct methods
.method public static compareResultHashCode(Lcom/miui/gallery/search/core/result/SourceResult;Lcom/miui/gallery/search/core/result/SourceResult;)Z
    .locals 3
    .param p0, "s1"    # Lcom/miui/gallery/search/core/result/SourceResult;
    .param p1, "s2"    # Lcom/miui/gallery/search/core/result/SourceResult;

    .prologue
    .line 53
    invoke-static {p0}, Lcom/miui/gallery/search/utils/SearchUtils;->getResultHashCode(Lcom/miui/gallery/search/core/result/SourceResult;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "hash1":Ljava/lang/String;
    invoke-static {p1}, Lcom/miui/gallery/search/utils/SearchUtils;->getResultHashCode(Lcom/miui/gallery/search/core/result/SourceResult;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "hash2":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static generateResultHashCode(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "result"    # Ljava/lang/Object;

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, "hashCode":Ljava/lang/String;
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 49
    :cond_0
    :goto_0
    return-object v0

    .line 46
    :cond_1
    if-eqz p0, :cond_0

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getErrorStatus(Lcom/miui/gallery/search/core/result/SuggestionResult;)I
    .locals 1
    .param p0, "suggestionResult"    # Lcom/miui/gallery/search/core/result/SuggestionResult;

    .prologue
    .line 27
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/miui/gallery/search/core/result/SuggestionResult;->getErrorInfo()Lcom/miui/gallery/search/core/result/ErrorInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 28
    :cond_0
    const/4 v0, -0x1

    .line 30
    :goto_0
    return v0

    :cond_1
    invoke-interface {p0}, Lcom/miui/gallery/search/core/result/SuggestionResult;->getErrorInfo()Lcom/miui/gallery/search/core/result/ErrorInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/search/core/result/ErrorInfo;->getErrorStatus()I

    move-result v0

    goto :goto_0
.end method

.method public static getRankInfo(Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;)Lcom/miui/gallery/search/core/suggestion/RankInfo;
    .locals 2
    .param p0, "suggestionCursor"    # Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    .prologue
    .line 74
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    invoke-interface {p0}, Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "rankInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/search/core/suggestion/RankInfo;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getResultHashCode(Lcom/miui/gallery/search/core/result/SourceResult;)Ljava/lang/String;
    .locals 2
    .param p0, "sourceResult"    # Lcom/miui/gallery/search/core/result/SourceResult;

    .prologue
    .line 59
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/miui/gallery/search/core/result/SourceResult;->getResultExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/miui/gallery/search/core/result/SourceResult;->getResultExtras()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    if-ne v0, v1, :cond_1

    .line 60
    :cond_0
    const/4 v0, 0x0

    .line 62
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p0}, Lcom/miui/gallery/search/core/result/SourceResult;->getResultExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "result_hash_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getXiaomiId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    invoke-static {}, Lcom/miui/gallery/cloud/AccountCache;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 67
    .local v0, "account":Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 68
    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 70
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isErrorResult(Lcom/miui/gallery/search/core/result/SuggestionResult;)Z
    .locals 1
    .param p0, "suggestionResult"    # Lcom/miui/gallery/search/core/result/SuggestionResult;

    .prologue
    .line 19
    invoke-static {p0}, Lcom/miui/gallery/search/utils/SearchUtils;->getErrorStatus(Lcom/miui/gallery/search/core/result/SuggestionResult;)I

    move-result v0

    invoke-static {v0}, Lcom/miui/gallery/search/SearchConstants;->isErrorStatus(I)Z

    move-result v0

    return v0
.end method

.method public static removeExtraParamsForPersistence(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    const-string/jumbo v0, "use_persistent_response"

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v0, "serialId"

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v0, "logData"

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_0
    return-void
.end method
