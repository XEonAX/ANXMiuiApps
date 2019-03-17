.class public Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;
.super Lcom/miui/gallery/net/BaseGalleryRequest;
.source "ServerSearchRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;,
        Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$ResponseResult;
    }
.end annotation


# instance fields
.field private mReportError:Z

.field private mRequestCreateTime:J

.field private mResponseResult:Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$ResponseResult;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;)V
    .locals 4
    .param p1, "builder"    # Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;

    .prologue
    .line 39
    invoke-virtual {p1}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->getMethod()I

    move-result v1

    invoke-virtual {p1}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->getQueryPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/miui/gallery/net/BaseGalleryRequest;-><init>(ILjava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 41
    const-string/jumbo v1, "userId"

    invoke-virtual {p1}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/net/base/BaseRequest;

    .line 43
    :cond_0
    const-string v1, "clientVersion"

    invoke-static {}, Lcom/miui/gallery/util/MiscUtil;->getAppVersionCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/net/base/BaseRequest;

    .line 44
    const-string v1, "language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/net/base/BaseRequest;

    .line 45
    invoke-virtual {p1}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->getQueryParams()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 46
    invoke-virtual {p1}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->getQueryParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 47
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/net/base/BaseRequest;

    goto :goto_0

    .line 50
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-static {p1}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->access$000(Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;)Lcom/miui/gallery/net/base/ResponseListener;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;->setOnResponseListener(Lcom/miui/gallery/net/base/ResponseListener;)Lcom/miui/gallery/net/base/BaseRequest;

    .line 51
    invoke-static {p1}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->access$100(Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;->setUseCache(Z)Lcom/miui/gallery/net/base/BaseRequest;

    .line 52
    invoke-virtual {p1}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->reportError()Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;->mReportError:Z

    .line 54
    new-instance v1, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$ResponseResult;

    invoke-static {p1}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->access$200(Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;)Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$ResponseResult;-><init>(Ljava/lang/reflect/Type;)V

    iput-object v1, p0, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;->mResponseResult:Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$ResponseResult;

    .line 56
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;->mRequestCreateTime:J

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;
    .param p2, "x1"    # Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$1;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;-><init>(Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;)V

    return-void
.end method


# virtual methods
.method protected deliverError(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "errorCode"    # Lcom/miui/gallery/net/base/ErrorCode;
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "responseData"    # Ljava/lang/Object;

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;->mReportError:Z

    if-eqz v0, :cond_0

    .line 96
    invoke-static {p0, p1, p2, p3}, Lcom/miui/gallery/search/core/source/server/HttpUtils;->reportRequestError(Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/net/BaseGalleryRequest;->deliverError(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    return-void
.end method

.method protected varargs deliverResponse([Ljava/lang/Object;)V
    .locals 0
    .param p1, "response"    # [Ljava/lang/Object;

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/miui/gallery/net/BaseGalleryRequest;->deliverResponse([Ljava/lang/Object;)V

    .line 91
    return-void
.end method

.method public getResponseData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;->mResponseResult:Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$ResponseResult;

    invoke-virtual {v0}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$ResponseResult;->getData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getResponseRawData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;->mResponseResult:Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$ResponseResult;

    invoke-virtual {v0}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$ResponseResult;->getRawData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onRequestError(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "errorCode"    # Lcom/miui/gallery/net/base/ErrorCode;
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "responseData"    # Ljava/lang/Object;

    .prologue
    .line 85
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;->deliverError(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method protected onRequestSuccess(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 61
    invoke-super {p0, p1}, Lcom/miui/gallery/net/BaseGalleryRequest;->onRequestSuccess(Lorg/json/JSONObject;)V

    .line 62
    iget-wide v0, p0, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;->mRequestCreateTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;->mReportError:Z

    if-eqz v0, :cond_0

    .line 64
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;->mRequestCreateTime:J

    sub-long/2addr v0, v2

    invoke-static {p0, v0, v1}, Lcom/miui/gallery/search/core/source/server/HttpUtils;->reportTimeoutIfNeeded(Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;J)V

    .line 67
    :cond_0
    if-eqz p1, :cond_2

    .line 71
    iget-object v0, p0, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;->mResponseResult:Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$ResponseResult;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$ResponseResult;->setData(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;->mResponseResult:Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$ResponseResult;

    invoke-virtual {v0}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$ResponseResult;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;->mResponseResult:Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$ResponseResult;

    invoke-virtual {v0}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$ResponseResult;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/gallery/search/core/source/server/Cacheable;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;->mResponseResult:Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$ResponseResult;

    invoke-virtual {v0}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$ResponseResult;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/search/core/source/server/Cacheable;

    invoke-interface {v0}, Lcom/miui/gallery/search/core/source/server/Cacheable;->getExpireMills()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;->setCacheExpires(J)Lcom/miui/gallery/net/base/BaseRequest;

    .line 74
    const-string v1, "ServerSearchRequest"

    const-string v2, "set expire time %dms for request %s"

    iget-object v0, p0, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;->mResponseResult:Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$ResponseResult;

    .line 75
    invoke-virtual {v0}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$ResponseResult;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/search/core/source/server/Cacheable;

    invoke-interface {v0}, Lcom/miui/gallery/search/core/source/server/Cacheable;->getExpireMills()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-static {v1, v2, v0, v3}, Lcom/miui/gallery/search/utils/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;->mResponseResult:Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$ResponseResult;

    invoke-virtual {v2}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$ResponseResult;->getData()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;->deliverResponse([Ljava/lang/Object;)V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_2
    sget-object v0, Lcom/miui/gallery/net/base/ErrorCode;->BODY_EMPTY:Lcom/miui/gallery/net/base/ErrorCode;

    invoke-virtual {p0, v0, v4, v4}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;->deliverError(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
