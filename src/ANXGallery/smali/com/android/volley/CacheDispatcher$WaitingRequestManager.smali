.class Lcom/android/volley/CacheDispatcher$WaitingRequestManager;
.super Ljava/lang/Object;
.source "CacheDispatcher.java"

# interfaces
.implements Lcom/android/volley/Request$NetworkRequestCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/CacheDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WaitingRequestManager"
.end annotation


# instance fields
.field private final mCacheDispatcher:Lcom/android/volley/CacheDispatcher;

.field private final mWaitingRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/volley/Request",
            "<*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/volley/CacheDispatcher;)V
    .locals 1
    .param p1, "cacheDispatcher"    # Lcom/android/volley/CacheDispatcher;

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/volley/CacheDispatcher$WaitingRequestManager;->mWaitingRequests:Ljava/util/Map;

    .line 200
    iput-object p1, p0, Lcom/android/volley/CacheDispatcher$WaitingRequestManager;->mCacheDispatcher:Lcom/android/volley/CacheDispatcher;

    .line 201
    return-void
.end method

.method static synthetic access$000(Lcom/android/volley/CacheDispatcher$WaitingRequestManager;Lcom/android/volley/Request;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/volley/CacheDispatcher$WaitingRequestManager;
    .param p1, "x1"    # Lcom/android/volley/Request;

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/android/volley/CacheDispatcher$WaitingRequestManager;->maybeAddToWaitingRequests(Lcom/android/volley/Request;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized maybeAddToWaitingRequests(Lcom/android/volley/Request;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 260
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "cacheKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/volley/CacheDispatcher$WaitingRequestManager;->mWaitingRequests:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 265
    iget-object v3, p0, Lcom/android/volley/CacheDispatcher$WaitingRequestManager;->mWaitingRequests:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 266
    .local v1, "stagedRequests":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Request<*>;>;"
    if-nez v1, :cond_0

    .line 267
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "stagedRequests":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Request<*>;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .restart local v1    # "stagedRequests":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Request<*>;>;"
    :cond_0
    const-string/jumbo v3, "waiting-for-response"

    invoke-virtual {p1, v3}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 270
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    iget-object v3, p0, Lcom/android/volley/CacheDispatcher$WaitingRequestManager;->mWaitingRequests:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-boolean v3, Lcom/android/volley/VolleyLog;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 273
    const-string v3, "Request for cacheKey=%s is in flight, putting on hold."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    .end local v1    # "stagedRequests":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Request<*>;>;"
    :cond_1
    :goto_0
    monitor-exit p0

    return v2

    .line 279
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/volley/CacheDispatcher$WaitingRequestManager;->mWaitingRequests:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    invoke-virtual {p1, p0}, Lcom/android/volley/Request;->setNetworkRequestCompleteListener(Lcom/android/volley/Request$NetworkRequestCompleteListener;)V

    .line 281
    sget-boolean v2, Lcom/android/volley/VolleyLog;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 282
    const-string v2, "new request, sending to network %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v4}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    move v2, v3

    .line 284
    goto :goto_0

    .line 260
    .end local v0    # "cacheKey":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public declared-synchronized onNoUsableResponseReceived(Lcom/android/volley/Request;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 230
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "cacheKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/volley/CacheDispatcher$WaitingRequestManager;->mWaitingRequests:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 232
    .local v3, "waitingRequests":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Request<*>;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 233
    sget-boolean v4, Lcom/android/volley/VolleyLog;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 234
    const-string v4, "%d waiting requests for cacheKey=%s; resend to network"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 235
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    .line 234
    invoke-static {v4, v5}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    :cond_0
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/volley/Request;

    .line 238
    .local v2, "nextInLine":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    iget-object v4, p0, Lcom/android/volley/CacheDispatcher$WaitingRequestManager;->mWaitingRequests:Ljava/util/Map;

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    invoke-virtual {v2, p0}, Lcom/android/volley/Request;->setNetworkRequestCompleteListener(Lcom/android/volley/Request$NetworkRequestCompleteListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    :try_start_1
    iget-object v4, p0, Lcom/android/volley/CacheDispatcher$WaitingRequestManager;->mCacheDispatcher:Lcom/android/volley/CacheDispatcher;

    invoke-static {v4}, Lcom/android/volley/CacheDispatcher;->access$100(Lcom/android/volley/CacheDispatcher;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    .end local v2    # "nextInLine":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 242
    .restart local v2    # "nextInLine":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    :catch_0
    move-exception v1

    .line 243
    .local v1, "iex":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v4, "Couldn\'t add request to queue. %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 247
    iget-object v4, p0, Lcom/android/volley/CacheDispatcher$WaitingRequestManager;->mCacheDispatcher:Lcom/android/volley/CacheDispatcher;

    invoke-virtual {v4}, Lcom/android/volley/CacheDispatcher;->quit()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 230
    .end local v0    # "cacheKey":Ljava/lang/String;
    .end local v1    # "iex":Ljava/lang/InterruptedException;
    .end local v2    # "nextInLine":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    .end local v3    # "waitingRequests":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Request<*>;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public onResponseReceived(Lcom/android/volley/Request;Lcom/android/volley/Response;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;",
            "Lcom/android/volley/Response",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    .local p2, "response":Lcom/android/volley/Response;, "Lcom/android/volley/Response<*>;"
    iget-object v3, p2, Lcom/android/volley/Response;->cacheEntry:Lcom/android/volley/Cache$Entry;

    if-eqz v3, :cond_0

    iget-object v3, p2, Lcom/android/volley/Response;->cacheEntry:Lcom/android/volley/Cache$Entry;

    invoke-virtual {v3}, Lcom/android/volley/Cache$Entry;->isExpired()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 207
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/volley/CacheDispatcher$WaitingRequestManager;->onNoUsableResponseReceived(Lcom/android/volley/Request;)V

    .line 225
    :cond_1
    return-void

    .line 210
    :cond_2
    invoke-virtual {p1}, Lcom/android/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "cacheKey":Ljava/lang/String;
    monitor-enter p0

    .line 213
    :try_start_0
    iget-object v3, p0, Lcom/android/volley/CacheDispatcher$WaitingRequestManager;->mWaitingRequests:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 214
    .local v2, "waitingRequests":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Request<*>;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    if-eqz v2, :cond_1

    .line 216
    sget-boolean v3, Lcom/android/volley/VolleyLog;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 217
    const-string v3, "Releasing %d waiting requests for cacheKey=%s."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 218
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    .line 217
    invoke-static {v3, v4}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/volley/Request;

    .line 222
    .local v1, "waiting":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    iget-object v4, p0, Lcom/android/volley/CacheDispatcher$WaitingRequestManager;->mCacheDispatcher:Lcom/android/volley/CacheDispatcher;

    invoke-static {v4}, Lcom/android/volley/CacheDispatcher;->access$200(Lcom/android/volley/CacheDispatcher;)Lcom/android/volley/ResponseDelivery;

    move-result-object v4

    invoke-interface {v4, v1, p2}, Lcom/android/volley/ResponseDelivery;->postResponse(Lcom/android/volley/Request;Lcom/android/volley/Response;)V

    goto :goto_0

    .line 214
    .end local v1    # "waiting":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    .end local v2    # "waitingRequests":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Request<*>;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
