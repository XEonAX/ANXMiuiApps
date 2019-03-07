.class public abstract Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;
.super Ljava/lang/Object;
.source "BaseMemoryCache.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;


# instance fields
.field private final softMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/Reference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;->softMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;->softMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 67
    return-void
.end method

.method protected abstract createReference(Landroid/graphics/Bitmap;)Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Ljava/lang/ref/Reference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method

.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 37
    const/4 v1, 0x0

    .line 38
    .local v1, "result":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;->softMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    .line 39
    .local v0, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Landroid/graphics/Bitmap;>;"
    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Landroid/graphics/Bitmap;
    check-cast v1, Landroid/graphics/Bitmap;

    .line 42
    .restart local v1    # "result":Landroid/graphics/Bitmap;
    :cond_0
    return-object v1
.end method

.method public keys()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;->softMap:Ljava/util/Map;

    monitor-enter v1

    .line 60
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;->softMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/Bitmap;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;->softMap:Ljava/util/Map;

    invoke-virtual {p0, p2}, Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;->createReference(Landroid/graphics/Bitmap;)Ljava/lang/ref/Reference;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public remove(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;->softMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    .line 54
    .local v0, "bmpRef":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Landroid/graphics/Bitmap;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    goto :goto_0
.end method
