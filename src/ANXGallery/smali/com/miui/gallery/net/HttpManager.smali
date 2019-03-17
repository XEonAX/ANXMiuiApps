.class public Lcom/miui/gallery/net/HttpManager;
.super Ljava/lang/Object;
.source "HttpManager.java"


# static fields
.field private static instance:Lcom/miui/gallery/net/HttpManager;


# instance fields
.field private mRequestCache:Lcom/miui/gallery/net/GalleryCache;

.field private mRequestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-direct {p0}, Lcom/miui/gallery/net/HttpManager;->initRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/net/HttpManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 22
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/miui/gallery/net/HttpManager;
    .locals 2

    .prologue
    .line 25
    const-class v1, Lcom/miui/gallery/net/HttpManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/gallery/net/HttpManager;->instance:Lcom/miui/gallery/net/HttpManager;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/miui/gallery/net/HttpManager;

    invoke-direct {v0}, Lcom/miui/gallery/net/HttpManager;-><init>()V

    sput-object v0, Lcom/miui/gallery/net/HttpManager;->instance:Lcom/miui/gallery/net/HttpManager;

    .line 28
    :cond_0
    sget-object v0, Lcom/miui/gallery/net/HttpManager;->instance:Lcom/miui/gallery/net/HttpManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initRequestQueue()Lcom/android/volley/RequestQueue;
    .locals 6

    .prologue
    .line 32
    new-instance v1, Lcom/miui/gallery/net/GalleryCache;

    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getNetworkCacheDirectory()Ljava/io/File;

    move-result-object v2

    const/high16 v3, 0x500000

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/net/GalleryCache;-><init>(Ljava/io/File;I)V

    iput-object v1, p0, Lcom/miui/gallery/net/HttpManager;->mRequestCache:Lcom/miui/gallery/net/GalleryCache;

    .line 33
    new-instance v0, Lcom/android/volley/RequestQueue;

    iget-object v1, p0, Lcom/miui/gallery/net/HttpManager;->mRequestCache:Lcom/miui/gallery/net/GalleryCache;

    new-instance v2, Lcom/miui/gallery/net/GalleryNetwork;

    invoke-direct {v2}, Lcom/miui/gallery/net/GalleryNetwork;-><init>()V

    const/4 v3, 0x2

    new-instance v4, Lcom/android/volley/ExecutorDelivery;

    .line 37
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getRequestThreadHandler()Lcom/android/internal/CompatHandler;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/volley/ExecutorDelivery;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;ILcom/android/volley/ResponseDelivery;)V

    .line 38
    .local v0, "queue":Lcom/android/volley/RequestQueue;
    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->start()V

    .line 39
    return-object v0
.end method


# virtual methods
.method public addToRequestQueue(Lcom/android/volley/Request;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/Request",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "req":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/net/HttpManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, p1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 48
    return-void
.end method

.method public cancelAll(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/miui/gallery/net/HttpManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, p1}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method public putToCache(Ljava/lang/String;[BJJ)V
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "expires"    # J
    .param p5, "softTtl"    # J

    .prologue
    .line 43
    iget-object v1, p0, Lcom/miui/gallery/net/HttpManager;->mRequestCache:Lcom/miui/gallery/net/GalleryCache;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/miui/gallery/net/GalleryCache;->put(Ljava/lang/String;[BJJ)V

    .line 44
    return-void
.end method
