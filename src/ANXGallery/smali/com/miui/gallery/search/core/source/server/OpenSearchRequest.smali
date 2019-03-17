.class public Lcom/miui/gallery/search/core/source/server/OpenSearchRequest;
.super Ljava/lang/Object;
.source "OpenSearchRequest.java"


# direct methods
.method public static request()I
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 20
    invoke-static {}, Lcom/miui/gallery/search/utils/SearchUtils;->getXiaomiId()Ljava/lang/String;

    move-result-object v3

    .line 21
    .local v3, "userID":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 22
    const/4 v4, 0x3

    .line 54
    :goto_0
    return v4

    .line 25
    :cond_0
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/gallery/util/PrivacyAgreementUtils;->isCloudServiceAgreementEnable(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 28
    const/4 v4, 0x4

    goto :goto_0

    .line 31
    :cond_1
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isNetworkConnected()Z

    move-result v5

    if-nez v5, :cond_2

    .line 32
    const/4 v4, 0x1

    goto :goto_0

    .line 35
    :cond_2
    new-instance v5, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;

    invoke-direct {v5}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;-><init>()V

    const/16 v6, 0x3e9

    .line 36
    invoke-virtual {v5, v6}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->setMethod(I)Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;

    move-result-object v5

    .line 37
    invoke-static {v3}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->getDefaultUserPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->setUserPath(Ljava/lang/String;)Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;

    move-result-object v5

    .line 38
    invoke-virtual {v5, v3}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->setUserId(Ljava/lang/String;)Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;

    move-result-object v5

    const-string v6, "hint"

    .line 39
    invoke-virtual {v5, v6}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->setQueryAppendPath(Ljava/lang/String;)Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;

    move-result-object v5

    .line 40
    invoke-virtual {v5, v4}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->setUseCache(Z)Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;

    move-result-object v5

    .line 41
    invoke-virtual {v5}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->build()Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;

    move-result-object v1

    .line 43
    .local v1, "request":Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;
    :try_start_0
    invoke-virtual {v1}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;->executeSync()[Ljava/lang/Object;

    move-result-object v2

    .line 44
    .local v2, "response":[Ljava/lang/Object;
    if-eqz v2, :cond_3

    array-length v5, v2

    if-lez v5, :cond_3

    .line 45
    const-string v5, "search"

    const-string v6, "request_open_search_succeeded"

    invoke-static {v5, v6}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    .end local v2    # "response":[Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "OpenSearchRequest"

    invoke-static {v4, v0}, Lcom/miui/gallery/search/utils/SearchLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v4, "search"

    const-string v5, "request_open_search_failed"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const/16 v4, 0x9

    goto :goto_0
.end method
