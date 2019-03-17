.class public Lcn/kuaipan/android/http/BufferInputStream;
.super Ljava/io/InputStream;
.source "BufferInputStream.java"


# static fields
.field private static final tempBuf:[B


# instance fields
.field private buf:Lcn/kuaipan/android/http/RandomInputBuffer;

.field private markpos:I

.field private pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/16 v0, 0x2000

    new-array v0, v0, [B

    sput-object v0, Lcn/kuaipan/android/http/BufferInputStream;->tempBuf:[B

    return-void
.end method

.method public constructor <init>(Lcn/kuaipan/android/http/RandomInputBuffer;)V
    .locals 1
    .param p1, "buffer"    # Lcn/kuaipan/android/http/RandomInputBuffer;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcn/kuaipan/android/http/BufferInputStream;->markpos:I

    .line 40
    iput-object p1, p0, Lcn/kuaipan/android/http/BufferInputStream;->buf:Lcn/kuaipan/android/http/RandomInputBuffer;

    .line 41
    return-void
.end method

.method private streamClosed()Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Ljava/io/IOException;

    const-string v1, "BufferedInputStream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcn/kuaipan/android/http/BufferInputStream;->buf:Lcn/kuaipan/android/http/RandomInputBuffer;

    .line 55
    .local v0, "localIn":Lcn/kuaipan/android/http/RandomInputBuffer;
    if-nez v0, :cond_0

    .line 56
    invoke-direct {p0}, Lcn/kuaipan/android/http/BufferInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 58
    :cond_0
    iget-object v1, p0, Lcn/kuaipan/android/http/BufferInputStream;->buf:Lcn/kuaipan/android/http/RandomInputBuffer;

    iget v2, p0, Lcn/kuaipan/android/http/BufferInputStream;->pos:I

    invoke-virtual {v1, v2}, Lcn/kuaipan/android/http/RandomInputBuffer;->available(I)I

    move-result v1

    return v1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuaipan/android/http/BufferInputStream;->buf:Lcn/kuaipan/android/http/RandomInputBuffer;

    .line 74
    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcn/kuaipan/android/http/BufferInputStream;->pos:I

    iput v0, p0, Lcn/kuaipan/android/http/BufferInputStream;->markpos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/kuaipan/android/http/BufferInputStream;->buf:Lcn/kuaipan/android/http/RandomInputBuffer;

    .line 122
    .local v0, "localIn":Lcn/kuaipan/android/http/RandomInputBuffer;
    if-nez v0, :cond_0

    .line 123
    invoke-direct {p0}, Lcn/kuaipan/android/http/BufferInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .end local v0    # "localIn":Lcn/kuaipan/android/http/RandomInputBuffer;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 126
    .restart local v0    # "localIn":Lcn/kuaipan/android/http/RandomInputBuffer;
    :cond_0
    :try_start_1
    iget v2, p0, Lcn/kuaipan/android/http/BufferInputStream;->pos:I

    invoke-virtual {v0, v2}, Lcn/kuaipan/android/http/RandomInputBuffer;->read(I)I

    move-result v1

    .line 127
    .local v1, "result":I
    if-ltz v1, :cond_1

    .line 128
    iget v2, p0, Lcn/kuaipan/android/http/BufferInputStream;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcn/kuaipan/android/http/BufferInputStream;->pos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    :cond_1
    monitor-exit p0

    return v1
.end method

.method public declared-synchronized read([BII)I
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/kuaipan/android/http/BufferInputStream;->buf:Lcn/kuaipan/android/http/RandomInputBuffer;

    .line 156
    .local v0, "localIn":Lcn/kuaipan/android/http/RandomInputBuffer;
    if-nez v0, :cond_0

    .line 157
    invoke-direct {p0}, Lcn/kuaipan/android/http/BufferInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    .end local v0    # "localIn":Lcn/kuaipan/android/http/RandomInputBuffer;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 160
    .restart local v0    # "localIn":Lcn/kuaipan/android/http/RandomInputBuffer;
    :cond_0
    :try_start_1
    iget v2, p0, Lcn/kuaipan/android/http/BufferInputStream;->pos:I

    invoke-virtual {v0, v2, p1, p2, p3}, Lcn/kuaipan/android/http/RandomInputBuffer;->read(I[BII)I

    move-result v1

    .line 161
    .local v1, "result":I
    if-lez v1, :cond_1

    .line 162
    iget v2, p0, Lcn/kuaipan/android/http/BufferInputStream;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcn/kuaipan/android/http/BufferInputStream;->pos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    :cond_1
    monitor-exit p0

    return v1
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/kuaipan/android/http/BufferInputStream;->buf:Lcn/kuaipan/android/http/RandomInputBuffer;

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 180
    :cond_0
    const/4 v0, -0x1

    :try_start_1
    iget v1, p0, Lcn/kuaipan/android/http/BufferInputStream;->markpos:I

    if-ne v0, v1, :cond_1

    .line 181
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mark has been invalidated."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_1
    iget v0, p0, Lcn/kuaipan/android/http/BufferInputStream;->markpos:I

    iput v0, p0, Lcn/kuaipan/android/http/BufferInputStream;->pos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized skip(J)J
    .locals 13
    .param p1, "amount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    monitor-enter p0

    const-wide/16 v6, 0x1

    cmp-long v5, p1, v6

    if-gez v5, :cond_0

    .line 200
    const-wide/16 v6, 0x0

    .line 216
    :goto_0
    monitor-exit p0

    return-wide v6

    .line 202
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcn/kuaipan/android/http/BufferInputStream;->buf:Lcn/kuaipan/android/http/RandomInputBuffer;

    .line 203
    .local v3, "localIn":Lcn/kuaipan/android/http/RandomInputBuffer;
    if-nez v3, :cond_1

    .line 204
    invoke-direct {p0}, Lcn/kuaipan/android/http/BufferInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v5

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    .end local v3    # "localIn":Lcn/kuaipan/android/http/RandomInputBuffer;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 207
    .restart local v3    # "localIn":Lcn/kuaipan/android/http/RandomInputBuffer;
    :cond_1
    :try_start_1
    iget v5, p0, Lcn/kuaipan/android/http/BufferInputStream;->pos:I

    int-to-long v6, v5

    add-long v0, v6, p1

    .line 208
    .local v0, "dest":J
    const/4 v4, 0x0

    .line 210
    .local v4, "result":I
    :goto_1
    iget v5, p0, Lcn/kuaipan/android/http/BufferInputStream;->pos:I

    int-to-long v6, v5

    cmp-long v5, v0, v6

    if-lez v5, :cond_2

    iget v5, p0, Lcn/kuaipan/android/http/BufferInputStream;->pos:I

    sget-object v6, Lcn/kuaipan/android/http/BufferInputStream;->tempBuf:[B

    const/4 v7, 0x0

    sget-object v8, Lcn/kuaipan/android/http/BufferInputStream;->tempBuf:[B

    array-length v8, v8

    int-to-long v8, v8

    iget v10, p0, Lcn/kuaipan/android/http/BufferInputStream;->pos:I

    int-to-long v10, v10

    sub-long v10, v0, v10

    .line 211
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {v3, v5, v6, v7, v8}, Lcn/kuaipan/android/http/RandomInputBuffer;->read(I[BII)I

    move-result v2

    .local v2, "len":I
    if-ltz v2, :cond_2

    .line 212
    iget v5, p0, Lcn/kuaipan/android/http/BufferInputStream;->pos:I

    add-int/2addr v5, v2

    iput v5, p0, Lcn/kuaipan/android/http/BufferInputStream;->pos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    add-int/2addr v4, v2

    goto :goto_1

    .line 216
    .end local v2    # "len":I
    :cond_2
    int-to-long v6, v4

    goto :goto_0
.end method
