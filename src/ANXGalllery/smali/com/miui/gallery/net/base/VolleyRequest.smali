.class public abstract Lcom/miui/gallery/net/base/VolleyRequest;
.super Lcom/miui/gallery/net/base/BaseRequest;
.source "VolleyRequest.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/miui/gallery/net/base/BaseRequest",
        "<TE;>;",
        "Lcom/android/volley/Response$ErrorListener;",
        "Lcom/android/volley/Response$Listener",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mRequest:Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Request",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mSyncExecuteLock:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    .local p0, "this":Lcom/miui/gallery/net/base/VolleyRequest;, "Lcom/miui/gallery/net/base/VolleyRequest<TT;TE;>;"
    invoke-direct {p0}, Lcom/miui/gallery/net/base/BaseRequest;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/net/base/VolleyRequest;->mSyncExecuteLock:Ljava/util/concurrent/CountDownLatch;

    .line 22
    return-void
.end method

.method private releaseSyncExecuteLock()V
    .locals 1

    .prologue
    .line 83
    .local p0, "this":Lcom/miui/gallery/net/base/VolleyRequest;, "Lcom/miui/gallery/net/base/VolleyRequest<TT;TE;>;"
    iget-object v0, p0, Lcom/miui/gallery/net/base/VolleyRequest;->mSyncExecuteLock:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/miui/gallery/net/base/VolleyRequest;->mSyncExecuteLock:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/net/base/VolleyRequest;->mSyncExecuteLock:Ljava/util/concurrent/CountDownLatch;

    .line 87
    :cond_0
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .prologue
    .line 91
    .local p0, "this":Lcom/miui/gallery/net/base/VolleyRequest;, "Lcom/miui/gallery/net/base/VolleyRequest<TT;TE;>;"
    invoke-direct {p0}, Lcom/miui/gallery/net/base/VolleyRequest;->releaseSyncExecuteLock()V

    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/net/base/VolleyRequest;->setOnResponseListener(Lcom/miui/gallery/net/base/ResponseListener;)Lcom/miui/gallery/net/base/BaseRequest;

    .line 93
    iget-object v0, p0, Lcom/miui/gallery/net/base/VolleyRequest;->mRequest:Lcom/android/volley/Request;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/miui/gallery/net/base/VolleyRequest;->mRequest:Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/android/volley/Request;->cancel()V

    .line 96
    :cond_0
    return-void
.end method

.method protected abstract createVolleyRequest(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener",
            "<TT;>;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<TT;>;"
        }
    .end annotation
.end method

.method public execute()V
    .locals 6

    .prologue
    .line 35
    .local p0, "this":Lcom/miui/gallery/net/base/VolleyRequest;, "Lcom/miui/gallery/net/base/VolleyRequest<TT;TE;>;"
    invoke-virtual {p0, p0, p0}, Lcom/miui/gallery/net/base/VolleyRequest;->createVolleyRequest(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/net/base/VolleyRequest;->mRequest:Lcom/android/volley/Request;

    .line 36
    iget-object v1, p0, Lcom/miui/gallery/net/base/VolleyRequest;->mRequest:Lcom/android/volley/Request;

    if-nez v1, :cond_0

    .line 49
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/net/base/VolleyRequest;->mRequest:Lcom/android/volley/Request;

    new-instance v2, Lcom/android/volley/DefaultRetryPolicy;

    const/16 v3, 0x2710

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v1, v2}, Lcom/android/volley/Request;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 41
    iget-object v1, p0, Lcom/miui/gallery/net/base/VolleyRequest;->mRequest:Lcom/android/volley/Request;

    invoke-virtual {p0}, Lcom/miui/gallery/net/base/VolleyRequest;->isUseCache()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/volley/Request;->setShouldCache(Z)Lcom/android/volley/Request;

    .line 43
    invoke-virtual {p0}, Lcom/miui/gallery/net/base/VolleyRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 44
    .local v0, "tag":Ljava/lang/Object;
    iget-object v1, p0, Lcom/miui/gallery/net/base/VolleyRequest;->mRequest:Lcom/android/volley/Request;

    invoke-virtual {v1}, Lcom/android/volley/Request;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 45
    iget-object v1, p0, Lcom/miui/gallery/net/base/VolleyRequest;->mRequest:Lcom/android/volley/Request;

    invoke-virtual {v1, v0}, Lcom/android/volley/Request;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 48
    :cond_1
    invoke-static {}, Lcom/miui/gallery/net/HttpManager;->getInstance()Lcom/miui/gallery/net/HttpManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/net/base/VolleyRequest;->mRequest:Lcom/android/volley/Request;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/net/HttpManager;->addToRequestQueue(Lcom/android/volley/Request;)V

    goto :goto_0
.end method

.method public executeSync()[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/gallery/net/base/RequestError;
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/miui/gallery/net/base/VolleyRequest;, "Lcom/miui/gallery/net/base/VolleyRequest<TT;TE;>;"
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 59
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getRequestThreadLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "executeSync could not call on main thread or request thread."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/net/base/VolleyRequest;->mSyncExecuteLock:Ljava/util/concurrent/CountDownLatch;

    .line 65
    invoke-virtual {p0}, Lcom/miui/gallery/net/base/VolleyRequest;->execute()V

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/net/base/VolleyRequest;->mSyncExecuteLock:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_2

    .line 69
    iget-object v0, p0, Lcom/miui/gallery/net/base/VolleyRequest;->mSyncExecuteLock:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/net/base/VolleyRequest;->mRequestError:Lcom/miui/gallery/net/base/RequestError;

    if-eqz v0, :cond_3

    .line 76
    iget-object v0, p0, Lcom/miui/gallery/net/base/VolleyRequest;->mRequestError:Lcom/miui/gallery/net/base/RequestError;

    throw v0

    .line 79
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/net/base/VolleyRequest;->mResponse:[Ljava/lang/Object;

    return-object v0

    .line 71
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final handleError(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "errorCode"    # Lcom/miui/gallery/net/base/ErrorCode;
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "responseData"    # Ljava/lang/Object;

    .prologue
    .line 127
    .local p0, "this":Lcom/miui/gallery/net/base/VolleyRequest;, "Lcom/miui/gallery/net/base/VolleyRequest<TT;TE;>;"
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/gallery/net/base/VolleyRequest;->mCacheExpires:J

    .line 128
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/gallery/net/base/VolleyRequest;->onRequestError(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    return-void
.end method

.method protected abstract handleResponse(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public final onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 115
    .local p0, "this":Lcom/miui/gallery/net/base/VolleyRequest;, "Lcom/miui/gallery/net/base/VolleyRequest<TT;TE;>;"
    sget-object v1, Lcom/miui/gallery/net/base/ErrorCode;->NET_ERROR:Lcom/miui/gallery/net/base/ErrorCode;

    .line 116
    .local v1, "code":Lcom/miui/gallery/net/base/ErrorCode;
    instance-of v2, p1, Lcom/miui/gallery/net/base/RequestError;

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 117
    check-cast v2, Lcom/miui/gallery/net/base/RequestError;

    invoke-virtual {v2}, Lcom/miui/gallery/net/base/RequestError;->getErrorCode()Lcom/miui/gallery/net/base/ErrorCode;

    move-result-object v1

    .line 120
    :cond_0
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 121
    .local v0, "cause":Ljava/lang/Throwable;
    if-nez v0, :cond_1

    move-object v0, p1

    .line 122
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/miui/gallery/net/base/VolleyRequest;->handleError(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    invoke-direct {p0}, Lcom/miui/gallery/net/base/VolleyRequest;->releaseSyncExecuteLock()V

    .line 124
    return-void
.end method

.method public final onResponse(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lcom/miui/gallery/net/base/VolleyRequest;, "Lcom/miui/gallery/net/base/VolleyRequest<TT;TE;>;"
    .local p1, "response":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/net/base/VolleyRequest;->handleResponse(Ljava/lang/Object;)V

    .line 101
    invoke-direct {p0}, Lcom/miui/gallery/net/base/VolleyRequest;->releaseSyncExecuteLock()V

    .line 103
    iget-object v1, p0, Lcom/miui/gallery/net/base/VolleyRequest;->mRequest:Lcom/android/volley/Request;

    instance-of v1, v1, Lcom/miui/gallery/net/base/Cacheable;

    if-eqz v1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/miui/gallery/net/base/VolleyRequest;->mRequest:Lcom/android/volley/Request;

    check-cast v0, Lcom/miui/gallery/net/base/Cacheable;

    .line 105
    .local v0, "cache":Lcom/miui/gallery/net/base/Cacheable;
    iget-wide v2, p0, Lcom/miui/gallery/net/base/VolleyRequest;->mCacheExpires:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    invoke-interface {v0}, Lcom/miui/gallery/net/base/Cacheable;->isFromCache()Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    invoke-static {}, Lcom/miui/gallery/net/HttpManager;->getInstance()Lcom/miui/gallery/net/HttpManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/net/base/VolleyRequest;->mRequest:Lcom/android/volley/Request;

    invoke-virtual {v2}, Lcom/android/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/miui/gallery/net/base/Cacheable;->getData()[B

    move-result-object v3

    iget-wide v4, p0, Lcom/miui/gallery/net/base/VolleyRequest;->mCacheExpires:J

    iget-wide v6, p0, Lcom/miui/gallery/net/base/VolleyRequest;->mCacheSoftTtl:J

    invoke-virtual/range {v1 .. v7}, Lcom/miui/gallery/net/HttpManager;->putToCache(Ljava/lang/String;[BJJ)V

    .line 109
    .end local v0    # "cache":Lcom/miui/gallery/net/base/Cacheable;
    :cond_0
    return-void
.end method
