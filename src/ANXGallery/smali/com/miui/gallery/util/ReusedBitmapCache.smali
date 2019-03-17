.class public abstract Lcom/miui/gallery/util/ReusedBitmapCache;
.super Ljava/lang/Object;
.source "ReusedBitmapCache.java"


# instance fields
.field private mReuseBits:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/ref/SoftReference",
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
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/util/ReusedBitmapCache;->mReuseBits:Ljava/util/Set;

    return-void
.end method

.method public static getBytesPerPixel(Landroid/graphics/Bitmap$Config;)I
    .locals 3
    .param p0, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 127
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne p0, v2, :cond_1

    .line 128
    const/4 v0, 0x4

    .line 136
    :cond_0
    :goto_0
    return v0

    .line 129
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-eq p0, v2, :cond_0

    .line 131
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    if-eq p0, v2, :cond_0

    .line 133
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne p0, v0, :cond_2

    move v0, v1

    .line 134
    goto :goto_0

    :cond_2
    move v0, v1

    .line 136
    goto :goto_0
.end method

.method protected static isInBitmapSupport()Z
    .locals 2

    .prologue
    .line 148
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recycle(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/miui/gallery/util/ReusedBitmapCache;->needRecycle()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 165
    :cond_0
    return-void
.end method

.method private trim(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "insert"    # Landroid/graphics/Bitmap;

    .prologue
    .line 82
    iget-object v2, p0, Lcom/miui/gallery/util/ReusedBitmapCache;->mReuseBits:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 83
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 84
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 85
    .local v0, "bit":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 86
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 88
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 91
    .end local v0    # "bit":Landroid/graphics/Bitmap;
    :cond_3
    return-void
.end method


# virtual methods
.method protected canUseForInBitmap(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)Z
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 98
    invoke-virtual {p0}, Lcom/miui/gallery/util/ReusedBitmapCache;->isSupportBytesCount()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 102
    iget v6, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {p0, v6}, Lcom/miui/gallery/util/ReusedBitmapCache;->convertToPowerOf2(I)I

    move-result v1

    .line 103
    .local v1, "convertSampleSize":I
    iget v6, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int v3, v6, v1

    .line 104
    .local v3, "width":I
    iget v6, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int v2, v6, v1

    .line 105
    .local v2, "height":I
    mul-int v6, v3, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    invoke-static {v7}, Lcom/miui/gallery/util/ReusedBitmapCache;->getBytesPerPixel(Landroid/graphics/Bitmap$Config;)I

    move-result v7

    mul-int v0, v6, v7

    .line 106
    .local v0, "byteCount":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v6

    if-gt v0, v6, :cond_1

    .line 111
    .end local v0    # "byteCount":I
    .end local v1    # "convertSampleSize":I
    .end local v2    # "height":I
    .end local v3    # "width":I
    :cond_0
    :goto_0
    return v4

    .restart local v0    # "byteCount":I
    .restart local v1    # "convertSampleSize":I
    .restart local v2    # "height":I
    .restart local v3    # "width":I
    :cond_1
    move v4, v5

    .line 106
    goto :goto_0

    .line 110
    .end local v0    # "byteCount":I
    .end local v1    # "convertSampleSize":I
    .end local v2    # "height":I
    .end local v3    # "width":I
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget v7, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ne v6, v7, :cond_3

    .line 111
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iget v7, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v6, v7, :cond_3

    iget v6, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-eq v6, v4, :cond_0

    :cond_3
    move v4, v5

    goto :goto_0
.end method

.method public declared-synchronized clear()V
    .locals 4

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    const-string v2, "ReusedBitmapCache"

    const-string v3, "clear"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v2, p0, Lcom/miui/gallery/util/ReusedBitmapCache;->mReuseBits:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 154
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 156
    .local v0, "bit":Landroid/graphics/Bitmap;
    invoke-direct {p0, v0}, Lcom/miui/gallery/util/ReusedBitmapCache;->recycle(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 152
    .end local v0    # "bit":Landroid/graphics/Bitmap;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 158
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;>;"
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/miui/gallery/util/ReusedBitmapCache;->mReuseBits:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    monitor-exit p0

    return-void
.end method

.method protected convertToPowerOf2(I)I
    .locals 2
    .param p1, "inSampleSize"    # I

    .prologue
    .line 116
    const/4 v0, 0x1

    .line 117
    .local v0, "tarSampleSize":I
    :goto_0
    if-gt v0, p1, :cond_0

    .line 118
    mul-int/lit8 v1, v0, 0x2

    if-le v1, p1, :cond_1

    .line 123
    :cond_0
    return v0

    .line 121
    :cond_1
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public declared-synchronized get(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const/4 v8, 0x0

    .line 41
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/miui/gallery/util/ReusedBitmapCache;->isInBitmapSupport()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_0

    move-object v5, v8

    .line 78
    :goto_0
    monitor-exit p0

    return-object v5

    .line 45
    :cond_0
    const/4 v3, 0x0

    .line 46
    .local v3, "mostClosely":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    const v4, 0x7fffffff

    .line 47
    .local v4, "mostCloselyCount":I
    :try_start_1
    iget-object v7, p0, Lcom/miui/gallery/util/ReusedBitmapCache;->mReuseBits:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 48
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;>;"
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 49
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/SoftReference;

    .line 50
    .local v6, "temp":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 51
    .local v1, "bit":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_4

    .line 52
    invoke-virtual {p0, v1, p1}, Lcom/miui/gallery/util/ReusedBitmapCache;->canUseForInBitmap(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 53
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0

    .line 54
    .local v0, "alloc":I
    invoke-virtual {p0}, Lcom/miui/gallery/util/ReusedBitmapCache;->isSupportBytesCount()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 55
    const-string v7, "ReusedBitmapCache"

    const-string v9, "can reused bitmap %s, size %d"

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v7, v9, v10, v11}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    if-ge v0, v4, :cond_1

    .line 57
    move-object v3, v6

    .line 58
    move v4, v0

    goto :goto_1

    .line 61
    :cond_2
    move-object v3, v6

    .line 70
    .end local v0    # "alloc":I
    .end local v1    # "bit":Landroid/graphics/Bitmap;
    .end local v6    # "temp":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :cond_3
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    move-object v5, v7

    .line 71
    .local v5, "target":Landroid/graphics/Bitmap;
    :goto_2
    invoke-static {v5}, Lcom/miui/gallery/util/BitmapUtils;->isValidate(Landroid/graphics/Bitmap;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 72
    const-string v7, "ReusedBitmapCache"

    const-string v8, "get reused bitmap %s, size %d"

    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    iget-object v7, p0, Lcom/miui/gallery/util/ReusedBitmapCache;->mReuseBits:Ljava/util/Set;

    invoke-interface {v7, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 41
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;>;"
    .end local v3    # "mostClosely":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .end local v4    # "mostCloselyCount":I
    .end local v5    # "target":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 66
    .restart local v1    # "bit":Landroid/graphics/Bitmap;
    .restart local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;>;"
    .restart local v3    # "mostClosely":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .restart local v4    # "mostCloselyCount":I
    .restart local v6    # "temp":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :cond_4
    :try_start_2
    const-string v7, "ReusedBitmapCache"

    const-string/jumbo v9, "soft reference is recycled"

    invoke-static {v7, v9}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .end local v1    # "bit":Landroid/graphics/Bitmap;
    .end local v6    # "temp":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :cond_5
    move-object v5, v8

    .line 70
    goto :goto_2

    .line 77
    .restart local v5    # "target":Landroid/graphics/Bitmap;
    :cond_6
    const-string v7, "ReusedBitmapCache"

    const-string v9, "no can used bitmap, count %d"

    iget-object v10, p0, Lcom/miui/gallery/util/ReusedBitmapCache;->mReuseBits:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v7, v9, v10}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v5, v8

    .line 78
    goto/16 :goto_0
.end method

.method protected abstract getConfig()Landroid/graphics/Bitmap$Config;
.end method

.method protected abstract getMaxCount()I
.end method

.method protected isSupportBytesCount()Z
    .locals 2

    .prologue
    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected needMutable()Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x1

    return v0
.end method

.method protected needRecycle()Z
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized put(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 19
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 22
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/miui/gallery/util/ReusedBitmapCache;->isInBitmapSupport()Z

    move-result v0

    if-nez v0, :cond_2

    .line 23
    invoke-direct {p0, p1}, Lcom/miui/gallery/util/ReusedBitmapCache;->recycle(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 26
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/miui/gallery/util/ReusedBitmapCache;->needMutable()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 27
    invoke-direct {p0, p1}, Lcom/miui/gallery/util/ReusedBitmapCache;->recycle(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 31
    :cond_3
    invoke-direct {p0, p1}, Lcom/miui/gallery/util/ReusedBitmapCache;->trim(Landroid/graphics/Bitmap;)V

    .line 32
    iget-object v0, p0, Lcom/miui/gallery/util/ReusedBitmapCache;->mReuseBits:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/gallery/util/ReusedBitmapCache;->getMaxCount()I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 33
    invoke-direct {p0, p1}, Lcom/miui/gallery/util/ReusedBitmapCache;->recycle(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 35
    :cond_4
    iget-object v0, p0, Lcom/miui/gallery/util/ReusedBitmapCache;->mReuseBits:Ljava/util/Set;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    const-string v0, "ReusedBitmapCache"

    const-string v1, "put reused bitmap %s  %d"

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/util/ReusedBitmapCache;->mReuseBits:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
