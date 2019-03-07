.class public Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;
.super Ljava/lang/Object;
.source "FuzzyKeyMemoryCache.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;


# instance fields
.field private final cache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

.field private final keyComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;Ljava/util/Comparator;)V
    .locals 0
    .param p1, "cache"    # Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, "keyComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    .line 41
    iput-object p2, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->keyComparator:Ljava/util/Comparator;

    .line 42
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    invoke-interface {v0}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;->clear()V

    .line 75
    return-void
.end method

.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    invoke-interface {v0, p1}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public keys()Ljava/util/Collection;
    .locals 1
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
    .line 79
    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    invoke-interface {v0}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;->keys()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/Bitmap;

    .prologue
    .line 47
    iget-object v4, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    monitor-enter v4

    .line 48
    const/4 v2, 0x0

    .line 49
    .local v2, "keyToRemove":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    invoke-interface {v3}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;->keys()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 50
    .local v0, "cacheKey":Ljava/lang/String;
    iget-object v3, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->keyComparator:Ljava/util/Comparator;

    invoke-interface {v3, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-nez v3, :cond_0

    .line 51
    move-object v2, v0

    .line 55
    .end local v0    # "cacheKey":Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_2

    .line 56
    iget-object v3, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    invoke-interface {v3, v2}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;->remove(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 58
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    iget-object v3, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    invoke-interface {v3, p1, p2}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v3

    return v3

    .line 58
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public remove(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    invoke-interface {v0, p1}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;->remove(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
