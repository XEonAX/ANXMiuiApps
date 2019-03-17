.class public abstract Lcom/miui/gallery/net/base/BaseRequest;
.super Ljava/lang/Object;
.source "BaseRequest.java"

# interfaces
.implements Lcom/miui/gallery/net/base/ResponseErrorHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/net/base/ResponseErrorHandler;"
    }
.end annotation


# static fields
.field private static mAppResponseErrorHandler:Lcom/miui/gallery/net/base/ResponseErrorHandler;


# instance fields
.field protected mCacheExpires:J

.field protected mCacheSoftTtl:J

.field private mListenerDispatcher:Lcom/miui/gallery/net/base/ResponseDispatcher;

.field protected mParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mRequestError:Lcom/miui/gallery/net/base/RequestError;

.field protected mResponse:[Ljava/lang/Object;

.field private mTag:Ljava/lang/Object;

.field private mUseCache:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .local p0, "this":Lcom/miui/gallery/net/base/BaseRequest;, "Lcom/miui/gallery/net/base/BaseRequest<TT;>;"
    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/miui/gallery/net/base/BaseRequest;->mListenerDispatcher:Lcom/miui/gallery/net/base/ResponseDispatcher;

    .line 19
    iput-object v0, p0, Lcom/miui/gallery/net/base/BaseRequest;->mTag:Ljava/lang/Object;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/net/base/BaseRequest;->mUseCache:Z

    .line 31
    iput-wide v2, p0, Lcom/miui/gallery/net/base/BaseRequest;->mCacheExpires:J

    .line 33
    iput-wide v2, p0, Lcom/miui/gallery/net/base/BaseRequest;->mCacheSoftTtl:J

    return-void
.end method


# virtual methods
.method public final addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/net/base/BaseRequest;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/miui/gallery/net/base/BaseRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lcom/miui/gallery/net/base/BaseRequest;, "Lcom/miui/gallery/net/base/BaseRequest<TT;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    :goto_0
    return-object p0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/net/base/BaseRequest;->mParams:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/net/base/BaseRequest;->mParams:Ljava/util/Map;

    .line 86
    :cond_1
    if-nez p2, :cond_2

    .line 87
    const-string p2, ""

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/net/base/BaseRequest;->mParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected deliverError(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "errorCode"    # Lcom/miui/gallery/net/base/ErrorCode;
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "responseData"    # Ljava/lang/Object;

    .prologue
    .line 64
    .local p0, "this":Lcom/miui/gallery/net/base/BaseRequest;, "Lcom/miui/gallery/net/base/BaseRequest<TT;>;"
    new-instance v0, Lcom/miui/gallery/net/base/RequestError;

    invoke-direct {v0, p1, p2, p3}, Lcom/miui/gallery/net/base/RequestError;-><init>(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gallery/net/base/BaseRequest;->mRequestError:Lcom/miui/gallery/net/base/RequestError;

    .line 65
    iget-object v0, p0, Lcom/miui/gallery/net/base/BaseRequest;->mListenerDispatcher:Lcom/miui/gallery/net/base/ResponseDispatcher;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/miui/gallery/net/base/BaseRequest;->mListenerDispatcher:Lcom/miui/gallery/net/base/ResponseDispatcher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/gallery/net/base/ResponseDispatcher;->onResponseError(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    :cond_0
    sget-object v0, Lcom/miui/gallery/net/base/BaseRequest;->mAppResponseErrorHandler:Lcom/miui/gallery/net/base/ResponseErrorHandler;

    if-eqz v0, :cond_1

    .line 69
    sget-object v0, Lcom/miui/gallery/net/base/BaseRequest;->mAppResponseErrorHandler:Lcom/miui/gallery/net/base/ResponseErrorHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/gallery/net/base/ResponseErrorHandler;->onRequestError(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    :cond_1
    return-void
.end method

.method protected varargs deliverResponse([Ljava/lang/Object;)V
    .locals 1
    .param p1, "response"    # [Ljava/lang/Object;

    .prologue
    .line 57
    .local p0, "this":Lcom/miui/gallery/net/base/BaseRequest;, "Lcom/miui/gallery/net/base/BaseRequest<TT;>;"
    iput-object p1, p0, Lcom/miui/gallery/net/base/BaseRequest;->mResponse:[Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/miui/gallery/net/base/BaseRequest;->mListenerDispatcher:Lcom/miui/gallery/net/base/ResponseDispatcher;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/miui/gallery/net/base/BaseRequest;->mListenerDispatcher:Lcom/miui/gallery/net/base/ResponseDispatcher;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/net/base/ResponseDispatcher;->onResponse([Ljava/lang/Object;)V

    .line 61
    :cond_0
    return-void
.end method

.method public abstract execute()V
.end method

.method public final execute(Lcom/miui/gallery/net/base/ResponseListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/net/base/ResponseListener;

    .prologue
    .line 140
    .local p0, "this":Lcom/miui/gallery/net/base/BaseRequest;, "Lcom/miui/gallery/net/base/BaseRequest<TT;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/net/base/BaseRequest;->setOnResponseListener(Lcom/miui/gallery/net/base/ResponseListener;)Lcom/miui/gallery/net/base/BaseRequest;

    .line 141
    invoke-virtual {p0}, Lcom/miui/gallery/net/base/BaseRequest;->execute()V

    .line 142
    return-void
.end method

.method public abstract executeSync()[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/gallery/net/base/RequestError;
        }
    .end annotation
.end method

.method public getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "this":Lcom/miui/gallery/net/base/BaseRequest;, "Lcom/miui/gallery/net/base/BaseRequest<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/net/base/BaseRequest;->mParams:Ljava/util/Map;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 177
    .local p0, "this":Lcom/miui/gallery/net/base/BaseRequest;, "Lcom/miui/gallery/net/base/BaseRequest<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/net/base/BaseRequest;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method protected final isUseCache()Z
    .locals 1

    .prologue
    .line 104
    .local p0, "this":Lcom/miui/gallery/net/base/BaseRequest;, "Lcom/miui/gallery/net/base/BaseRequest<TT;>;"
    iget-boolean v0, p0, Lcom/miui/gallery/net/base/BaseRequest;->mUseCache:Z

    return v0
.end method

.method public abstract onRequestError(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public final setCacheExpires(J)Lcom/miui/gallery/net/base/BaseRequest;
    .locals 1
    .param p1, "expires"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/miui/gallery/net/base/BaseRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Lcom/miui/gallery/net/base/BaseRequest;, "Lcom/miui/gallery/net/base/BaseRequest<TT;>;"
    iput-wide p1, p0, Lcom/miui/gallery/net/base/BaseRequest;->mCacheExpires:J

    .line 114
    return-object p0
.end method

.method public final setCacheSoftTtl(J)Lcom/miui/gallery/net/base/BaseRequest;
    .locals 1
    .param p1, "softTtl"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/miui/gallery/net/base/BaseRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Lcom/miui/gallery/net/base/BaseRequest;, "Lcom/miui/gallery/net/base/BaseRequest<TT;>;"
    iput-wide p1, p0, Lcom/miui/gallery/net/base/BaseRequest;->mCacheSoftTtl:J

    .line 124
    return-object p0
.end method

.method public final setOnResponseListener(Lcom/miui/gallery/net/base/ResponseListener;)Lcom/miui/gallery/net/base/BaseRequest;
    .locals 1
    .param p1, "listener"    # Lcom/miui/gallery/net/base/ResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/net/base/ResponseListener;",
            ")",
            "Lcom/miui/gallery/net/base/BaseRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/miui/gallery/net/base/BaseRequest;, "Lcom/miui/gallery/net/base/BaseRequest<TT;>;"
    new-instance v0, Lcom/miui/gallery/net/base/ResponseDispatcher;

    invoke-direct {v0, p1}, Lcom/miui/gallery/net/base/ResponseDispatcher;-><init>(Lcom/miui/gallery/net/base/ResponseListener;)V

    iput-object v0, p0, Lcom/miui/gallery/net/base/BaseRequest;->mListenerDispatcher:Lcom/miui/gallery/net/base/ResponseDispatcher;

    .line 48
    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Lcom/miui/gallery/net/base/BaseRequest;
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/miui/gallery/net/base/BaseRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "this":Lcom/miui/gallery/net/base/BaseRequest;, "Lcom/miui/gallery/net/base/BaseRequest<TT;>;"
    iput-object p1, p0, Lcom/miui/gallery/net/base/BaseRequest;->mTag:Ljava/lang/Object;

    .line 173
    return-object p0
.end method

.method public final setUseCache(Z)Lcom/miui/gallery/net/base/BaseRequest;
    .locals 0
    .param p1, "useCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/miui/gallery/net/base/BaseRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lcom/miui/gallery/net/base/BaseRequest;, "Lcom/miui/gallery/net/base/BaseRequest<TT;>;"
    iput-boolean p1, p0, Lcom/miui/gallery/net/base/BaseRequest;->mUseCache:Z

    .line 100
    return-object p0
.end method

.method public final simpleExecuteSync()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/gallery/net/base/RequestError;
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Lcom/miui/gallery/net/base/BaseRequest;, "Lcom/miui/gallery/net/base/BaseRequest<TT;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/net/base/BaseRequest;->executeSync()[Ljava/lang/Object;

    move-result-object v0

    .line 133
    .local v0, "results":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 134
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 136
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
