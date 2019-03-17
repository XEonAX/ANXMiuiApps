.class public Lcom/miui/gallery/net/BaseGalleryRequest;
.super Lcom/miui/gallery/net/json/BaseJsonRequest;
.source "BaseGalleryRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/net/json/BaseJsonRequest",
        "<",
        "Lcom/miui/gallery/net/GalleryResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "method"    # I
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/net/json/BaseJsonRequest;-><init>(ILjava/lang/String;)V

    .line 39
    return-void
.end method

.method private checkExecuteCondition()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 113
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->canConnectNetwork()Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    sget-object v1, Lcom/miui/gallery/net/base/ErrorCode;->NETWORK_NOT_CONNECTED:Lcom/miui/gallery/net/base/ErrorCode;

    const-string v2, "CTA not confirmed."

    invoke-virtual {p0, v1, v2, v3}, Lcom/miui/gallery/net/BaseGalleryRequest;->handleError(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    :goto_0
    return v0

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/net/BaseGalleryRequest;->isUseCache()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 119
    goto :goto_0

    .line 122
    :cond_1
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isNetworkConnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 123
    sget-object v1, Lcom/miui/gallery/net/base/ErrorCode;->NETWORK_NOT_CONNECTED:Lcom/miui/gallery/net/base/ErrorCode;

    const-string v2, "Network not connected."

    invoke-virtual {p0, v1, v2, v3}, Lcom/miui/gallery/net/BaseGalleryRequest;->handleError(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 127
    goto :goto_0
.end method


# virtual methods
.method public final execute()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/miui/gallery/net/BaseGalleryRequest;->checkExecuteCondition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-super {p0}, Lcom/miui/gallery/net/json/BaseJsonRequest;->execute()V

    .line 101
    :cond_0
    return-void
.end method

.method public final executeSync()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/gallery/net/base/RequestError;
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/miui/gallery/net/BaseGalleryRequest;->checkExecuteCondition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-super {p0}, Lcom/miui/gallery/net/json/BaseJsonRequest;->executeSync()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/net/BaseGalleryRequest;->mRequestError:Lcom/miui/gallery/net/base/RequestError;

    throw v0
.end method

.method protected bridge synthetic handleResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/net/BaseGalleryRequest;->handleResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected final handleResponse(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 44
    if-eqz p1, :cond_2

    :try_start_0
    const-string v4, "code"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 45
    const-string v4, "code"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 46
    .local v0, "code":I
    sget-object v4, Lcom/miui/gallery/net/base/ErrorCode;->SUCCESS:Lcom/miui/gallery/net/base/ErrorCode;

    iget v4, v4, Lcom/miui/gallery/net/base/ErrorCode;->CODE:I

    if-ne v0, v4, :cond_1

    .line 47
    const-string v4, "data"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 48
    sget-object v4, Lcom/miui/gallery/net/base/ErrorCode;->BODY_EMPTY:Lcom/miui/gallery/net/base/ErrorCode;

    const-string v5, "response empty data"

    invoke-virtual {p0, v4, v5, p1}, Lcom/miui/gallery/net/BaseGalleryRequest;->handleError(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    .end local v0    # "code":I
    :goto_0
    return-void

    .line 50
    .restart local v0    # "code":I
    :cond_0
    new-instance v3, Lcom/miui/gallery/net/GalleryResponse;

    invoke-direct {v3}, Lcom/miui/gallery/net/GalleryResponse;-><init>()V

    .line 51
    .local v3, "resp":Lcom/miui/gallery/net/GalleryResponse;
    const-string v4, "data"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iput-object v4, v3, Lcom/miui/gallery/net/GalleryResponse;->data:Lorg/json/JSONObject;

    .line 52
    const-string/jumbo v4, "syncTag"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/miui/gallery/net/GalleryResponse;->syncTag:Ljava/lang/String;

    .line 53
    const-string/jumbo v4, "syncToken"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/miui/gallery/net/GalleryResponse;->syncToken:Ljava/lang/String;

    .line 54
    const-string v4, "lastPage"

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/miui/gallery/net/GalleryResponse;->isLastPage:Z

    .line 55
    invoke-virtual {p0, v3}, Lcom/miui/gallery/net/BaseGalleryRequest;->onRequestSuccess(Lcom/miui/gallery/net/GalleryResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    .end local v0    # "code":I
    .end local v3    # "resp":Lcom/miui/gallery/net/GalleryResponse;
    :catch_0
    move-exception v2

    .line 65
    .local v2, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/miui/gallery/net/base/ErrorCode;->HANDLE_ERROR:Lcom/miui/gallery/net/base/ErrorCode;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v2}, Lcom/miui/gallery/net/BaseGalleryRequest;->handleError(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 58
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "code":I
    :cond_1
    :try_start_1
    const-string v4, "description"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "description":Ljava/lang/String;
    sget-object v4, Lcom/miui/gallery/net/base/ErrorCode;->SERVER_ERROR:Lcom/miui/gallery/net/base/ErrorCode;

    invoke-virtual {p0, v4, v1, p1}, Lcom/miui/gallery/net/BaseGalleryRequest;->handleError(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 62
    .end local v0    # "code":I
    .end local v1    # "description":Ljava/lang/String;
    :cond_2
    sget-object v4, Lcom/miui/gallery/net/base/ErrorCode;->PARSE_ERROR:Lcom/miui/gallery/net/base/ErrorCode;

    const-string v5, "response has no code"

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Lcom/miui/gallery/net/BaseGalleryRequest;->handleError(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onRequestError(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "errorCode"    # Lcom/miui/gallery/net/base/ErrorCode;
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "responseData"    # Ljava/lang/Object;

    .prologue
    .line 139
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/gallery/net/BaseGalleryRequest;->deliverError(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    const-string v0, "BaseGalleryRequest"

    const-string v1, "%s onRequestError:%s | %s "

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p1, p2}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 141
    instance-of v0, p3, Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 142
    const-string v0, "BaseGalleryRequest"

    check-cast p3, Ljava/lang/Throwable;

    .end local p3    # "responseData":Ljava/lang/Object;
    invoke-static {v0, p3}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 143
    .restart local p3    # "responseData":Ljava/lang/Object;
    :cond_1
    if-eqz p3, :cond_0

    .line 144
    const-string v0, "BaseGalleryRequest"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onRequestSuccess(Lcom/miui/gallery/net/GalleryResponse;)V
    .locals 1
    .param p1, "response"    # Lcom/miui/gallery/net/GalleryResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p1, Lcom/miui/gallery/net/GalleryResponse;->data:Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/net/BaseGalleryRequest;->onRequestSuccess(Lorg/json/JSONObject;)V

    .line 82
    return-void
.end method

.method protected onRequestSuccess(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 94
    return-void
.end method
