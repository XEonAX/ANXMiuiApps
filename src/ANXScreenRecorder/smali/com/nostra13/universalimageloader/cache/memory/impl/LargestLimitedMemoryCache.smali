.class public Lcom/nostra13/universalimageloader/cache/memory/impl/LargestLimitedMemoryCache;
.super Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;
.source "LargestLimitedMemoryCache.java"


# instance fields
.field private final valueSizes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "sizeLimit"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;-><init>(I)V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LargestLimitedMemoryCache;->valueSizes:Ljava/util/Map;

    .line 50
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LargestLimitedMemoryCache;->valueSizes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 74
    invoke-super {p0}, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->clear()V

    .line 75
    return-void
.end method

.method protected createReference(Landroid/graphics/Bitmap;)Ljava/lang/ref/Reference;
    .locals 1
    .param p1, "value"    # Landroid/graphics/Bitmap;
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

    .prologue
    .line 107
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method protected getSize(Landroid/graphics/Bitmap;)I
    .locals 2
    .param p1, "value"    # Landroid/graphics/Bitmap;

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/Bitmap;

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LargestLimitedMemoryCache;->valueSizes:Ljava/util/Map;

    invoke-virtual {p0, p2}, Lcom/nostra13/universalimageloader/cache/memory/impl/LargestLimitedMemoryCache;->getSize(Landroid/graphics/Bitmap;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const/4 v0, 0x1

    .line 58
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 65
    .local v0, "value":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 66
    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LargestLimitedMemoryCache;->valueSizes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_0
    invoke-super {p0, p1}, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->remove(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method protected removeNext()Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    .line 84
    const/4 v5, 0x0

    .line 85
    .local v5, "maxSize":Ljava/lang/Integer;
    const/4 v4, 0x0

    .line 86
    .local v4, "largestValue":Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LargestLimitedMemoryCache;->valueSizes:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 87
    .local v1, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/Integer;>;>;"
    iget-object v8, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LargestLimitedMemoryCache;->valueSizes:Ljava/util/Map;

    monitor-enter v8

    .line 88
    :try_start_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 89
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/Integer;>;"
    if-nez v4, :cond_1

    .line 90
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v4, v0

    .line 91
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/Integer;

    move-object v5, v0

    goto :goto_0

    .line 93
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 94
    .local v6, "size":Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-le v7, v9, :cond_0

    .line 95
    move-object v5, v6

    .line 96
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v4, v0

    goto :goto_0

    .line 100
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/Integer;>;"
    .end local v6    # "size":Ljava/lang/Integer;
    :cond_2
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    iget-object v7, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LargestLimitedMemoryCache;->valueSizes:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-object v4

    .line 100
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method
