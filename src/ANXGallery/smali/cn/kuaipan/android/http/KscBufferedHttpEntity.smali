.class public Lcn/kuaipan/android/http/KscBufferedHttpEntity;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "KscBufferedHttpEntity.java"


# instance fields
.field private final buffer:Lcn/kuaipan/android/http/RandomInputBuffer;

.field private final err:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;Lcn/kuaipan/android/http/NetCacheManager;)V
    .locals 8
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .param p2, "cache"    # Lcn/kuaipan/android/http/NetCacheManager;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 17
    const/4 v3, 0x0

    .line 19
    .local v3, "err":Ljava/io/IOException;
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 22
    .local v0, "buffer":Lcn/kuaipan/android/http/RandomInputBuffer;
    :try_start_0
    new-instance v1, Lcn/kuaipan/android/http/RandomInputBuffer;

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v1, v4, p2}, Lcn/kuaipan/android/http/RandomInputBuffer;-><init>(Ljava/io/InputStream;Lcn/kuaipan/android/http/NetCacheManager;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "buffer":Lcn/kuaipan/android/http/RandomInputBuffer;
    .local v1, "buffer":Lcn/kuaipan/android/http/RandomInputBuffer;
    move-object v0, v1

    .line 26
    .end local v1    # "buffer":Lcn/kuaipan/android/http/RandomInputBuffer;
    .restart local v0    # "buffer":Lcn/kuaipan/android/http/RandomInputBuffer;
    :goto_0
    iput-object v0, p0, Lcn/kuaipan/android/http/KscBufferedHttpEntity;->buffer:Lcn/kuaipan/android/http/RandomInputBuffer;

    .line 30
    .end local v0    # "buffer":Lcn/kuaipan/android/http/RandomInputBuffer;
    :goto_1
    iput-object v3, p0, Lcn/kuaipan/android/http/KscBufferedHttpEntity;->err:Ljava/io/IOException;

    .line 31
    return-void

    .line 23
    .restart local v0    # "buffer":Lcn/kuaipan/android/http/RandomInputBuffer;
    :catch_0
    move-exception v2

    .line 24
    .local v2, "e":Ljava/io/IOException;
    move-object v3, v2

    goto :goto_0

    .line 28
    .end local v0    # "buffer":Lcn/kuaipan/android/http/RandomInputBuffer;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    const/4 v4, 0x0

    iput-object v4, p0, Lcn/kuaipan/android/http/KscBufferedHttpEntity;->buffer:Lcn/kuaipan/android/http/RandomInputBuffer;

    goto :goto_1
.end method


# virtual methods
.method public consumeContent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcn/kuaipan/android/http/KscBufferedHttpEntity;->buffer:Lcn/kuaipan/android/http/RandomInputBuffer;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcn/kuaipan/android/http/KscBufferedHttpEntity;->buffer:Lcn/kuaipan/android/http/RandomInputBuffer;

    invoke-virtual {v0}, Lcn/kuaipan/android/http/RandomInputBuffer;->close()V

    .line 98
    :cond_0
    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapper;->consumeContent()V

    .line 99
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcn/kuaipan/android/http/KscBufferedHttpEntity;->buffer:Lcn/kuaipan/android/http/RandomInputBuffer;

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Lcn/kuaipan/android/http/BufferInputStream;

    iget-object v1, p0, Lcn/kuaipan/android/http/KscBufferedHttpEntity;->buffer:Lcn/kuaipan/android/http/RandomInputBuffer;

    invoke-direct {v0, v1}, Lcn/kuaipan/android/http/BufferInputStream;-><init>(Lcn/kuaipan/android/http/RandomInputBuffer;)V

    .line 41
    :goto_0
    return-object v0

    .line 40
    :cond_0
    iget-object v0, p0, Lcn/kuaipan/android/http/KscBufferedHttpEntity;->err:Ljava/io/IOException;

    if-nez v0, :cond_1

    .line 41
    iget-object v0, p0, Lcn/kuaipan/android/http/KscBufferedHttpEntity;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 43
    :cond_1
    iget-object v0, p0, Lcn/kuaipan/android/http/KscBufferedHttpEntity;->err:Ljava/io/IOException;

    throw v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcn/kuaipan/android/http/KscBufferedHttpEntity;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public isChunked()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcn/kuaipan/android/http/KscBufferedHttpEntity;->buffer:Lcn/kuaipan/android/http/RandomInputBuffer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/kuaipan/android/http/KscBufferedHttpEntity;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcn/kuaipan/android/http/KscBufferedHttpEntity;->buffer:Lcn/kuaipan/android/http/RandomInputBuffer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/kuaipan/android/http/KscBufferedHttpEntity;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    if-nez p1, :cond_0

    .line 67
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Output stream may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 69
    :cond_0
    iget-object v3, p0, Lcn/kuaipan/android/http/KscBufferedHttpEntity;->buffer:Lcn/kuaipan/android/http/RandomInputBuffer;

    if-eqz v3, :cond_4

    .line 70
    const/4 v0, 0x0

    .line 72
    .local v0, "instream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lcn/kuaipan/android/http/KscBufferedHttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 74
    const/16 v3, 0x1000

    new-array v2, v3, [B

    .line 75
    .local v2, "tmp":[B
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "l":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 76
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 79
    .end local v1    # "l":I
    .end local v2    # "tmp":[B
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v3

    .line 79
    .restart local v1    # "l":I
    .restart local v2    # "tmp":[B
    :cond_2
    if-eqz v0, :cond_3

    .line 80
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 86
    .end local v0    # "instream":Ljava/io/InputStream;
    .end local v1    # "l":I
    .end local v2    # "tmp":[B
    :cond_3
    :goto_1
    return-void

    .line 84
    :cond_4
    iget-object v3, p0, Lcn/kuaipan/android/http/KscBufferedHttpEntity;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v3, p1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_1
.end method
