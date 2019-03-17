.class Lcom/miui/gallery/net/GalleryCache;
.super Lcom/android/volley/toolbox/DiskBasedCache;
.source "GalleryCache.java"


# direct methods
.method public constructor <init>(Ljava/io/File;I)V
    .locals 3
    .param p1, "rootDirectory"    # Ljava/io/File;
    .param p2, "maxCacheSizeInBytes"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;I)V

    .line 22
    const-string v0, "GalleryCache"

    const-string v1, "Network cache path: %s"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    return-void
.end method


# virtual methods
.method public declared-synchronized get(Ljava/lang/String;)Lcom/android/volley/Cache$Entry;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->get(Ljava/lang/String;)Lcom/android/volley/Cache$Entry;

    move-result-object v0

    .line 50
    .local v0, "entry":Lcom/android/volley/Cache$Entry;
    if-eqz v0, :cond_0

    .line 51
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 52
    .local v1, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "From-Cache"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iput-object v1, v0, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    .line 54
    const-string v2, "GalleryCache"

    const-string v3, "get cache: key %s, isExpired: %s"

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/volley/Cache$Entry;->isExpired()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    invoke-virtual {v0}, Lcom/android/volley/Cache$Entry;->isExpired()Z

    move-result v2

    if-nez v2, :cond_0

    .line 56
    const-string v2, "GalleryCache"

    const-string v3, "cache hit."

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .end local v1    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    monitor-exit p0

    return-object v0

    .line 49
    .end local v0    # "entry":Lcom/android/volley/Cache$Entry;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized put(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/volley/Cache$Entry;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized put(Ljava/lang/String;[BJJ)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "expires"    # J
    .param p5, "softTtl"    # J

    .prologue
    const/4 v1, 0x0

    .line 36
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/android/volley/Cache$Entry;

    invoke-direct {v0}, Lcom/android/volley/Cache$Entry;-><init>()V

    .line 37
    .local v0, "entry":Lcom/android/volley/Cache$Entry;
    iput-object p2, v0, Lcom/android/volley/Cache$Entry;->data:[B

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p3

    iput-wide v2, v0, Lcom/android/volley/Cache$Entry;->ttl:J

    .line 39
    iput-wide p5, v0, Lcom/android/volley/Cache$Entry;->softTtl:J

    .line 40
    invoke-super {p0, p1, v0}, Lcom/android/volley/toolbox/DiskBasedCache;->put(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V

    .line 41
    const-string v2, "GalleryCache"

    const-string v3, "put cache. key %s size %s expires %s softTtl:%s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 42
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    if-nez p2, :cond_0

    .line 43
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x2

    .line 44
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x3

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    .line 41
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit p0

    return-void

    .line 42
    :cond_0
    :try_start_1
    array-length v1, p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 36
    .end local v0    # "entry":Lcom/android/volley/Cache$Entry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
