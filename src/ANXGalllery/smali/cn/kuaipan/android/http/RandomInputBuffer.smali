.class public Lcn/kuaipan/android/http/RandomInputBuffer;
.super Ljava/lang/Object;
.source "RandomInputBuffer.java"


# instance fields
.field private buf:[B

.field private bufFile:Ljava/io/File;

.field private final cache:Lcn/kuaipan/android/http/NetCacheManager;

.field private eof:Z

.field private file:Ljava/io/RandomAccessFile;

.field private fileAssigned:Z

.field private in:Ljava/io/InputStream;

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcn/kuaipan/android/http/NetCacheManager;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "cache"    # Lcn/kuaipan/android/http/NetCacheManager;

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "InputStream & NetCacheManager can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_1
    iput-object p1, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->in:Ljava/io/InputStream;

    .line 30
    iput-object p2, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->cache:Lcn/kuaipan/android/http/NetCacheManager;

    .line 31
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->buf:[B

    .line 32
    iput v1, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->pos:I

    .line 33
    iput-boolean v1, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->eof:Z

    .line 34
    return-void
.end method

.method private fillBuf(I)V
    .locals 11
    .param p1, "dest"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 135
    iget-boolean v5, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->eof:Z

    if-nez v5, :cond_0

    iget v5, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->pos:I

    if-gt p1, v5, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    rem-int/lit16 v5, p1, 0x2000

    if-nez v5, :cond_3

    .line 140
    :goto_1
    iget-boolean v5, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->fileAssigned:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->buf:[B

    array-length v5, v5

    if-le p1, v5, :cond_2

    .line 141
    iput-boolean v10, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->fileAssigned:Z

    .line 144
    :try_start_0
    iget-object v5, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->cache:Lcn/kuaipan/android/http/NetCacheManager;

    invoke-virtual {v5}, Lcn/kuaipan/android/http/NetCacheManager;->assignCache()Ljava/io/File;

    move-result-object v5

    iput-object v5, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->bufFile:Ljava/io/File;

    .line 145
    iget-object v5, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->bufFile:Ljava/io/File;

    if-eqz v5, :cond_2

    .line 146
    new-instance v5, Ljava/io/RandomAccessFile;

    iget-object v6, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->bufFile:Ljava/io/File;

    const-string v7, "rw"

    invoke-direct {v5, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->file:Ljava/io/RandomAccessFile;

    .line 147
    iget-object v5, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->file:Ljava/io/RandomAccessFile;

    iget-object v6, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->buf:[B

    const/4 v7, 0x0

    iget v8, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->pos:I

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 165
    :cond_2
    :goto_2
    iget-object v5, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->file:Ljava/io/RandomAccessFile;

    if-nez v5, :cond_8

    .line 166
    iget-object v5, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->buf:[B

    array-length v5, v5

    if-le p1, v5, :cond_6

    .line 167
    iget-object v5, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->buf:[B

    array-length v5, v5

    mul-int/lit8 v3, v5, 0x2

    .line 168
    .local v3, "newLength":I
    :goto_3
    if-ge v3, p1, :cond_5

    .line 169
    mul-int/lit8 v3, v3, 0x2

    goto :goto_3

    .line 139
    .end local v3    # "newLength":I
    :cond_3
    div-int/lit16 v5, p1, 0x2000

    mul-int/lit16 v5, v5, 0x2000

    add-int/lit16 p1, v5, 0x2000

    goto :goto_1

    .line 149
    :catch_0
    move-exception v1

    .line 150
    .local v1, "e":Ljava/io/InterruptedIOException;
    throw v1

    .line 151
    .end local v1    # "e":Ljava/io/InterruptedIOException;
    :catch_1
    move-exception v1

    .line 153
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v5, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->file:Ljava/io/RandomAccessFile;

    if-eqz v5, :cond_4

    .line 154
    iget-object v5, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 161
    :cond_4
    :goto_4
    const/4 v5, 0x0

    iput-object v5, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->file:Ljava/io/RandomAccessFile;

    goto :goto_2

    .line 156
    :catch_2
    move-exception v2

    .line 157
    .local v2, "e1":Ljava/io/InterruptedIOException;
    throw v2

    .line 172
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "e1":Ljava/io/InterruptedIOException;
    .restart local v3    # "newLength":I
    :cond_5
    new-array v4, v3, [B

    .line 173
    .local v4, "newbuf":[B
    iget-object v5, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->buf:[B

    iget-object v6, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->buf:[B

    array-length v6, v6

    invoke-static {v5, v9, v4, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    iput-object v4, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->buf:[B

    .line 177
    .end local v3    # "newLength":I
    .end local v4    # "newbuf":[B
    :cond_6
    iget-object v5, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->in:Ljava/io/InputStream;

    iget-object v6, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->buf:[B

    iget v7, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->pos:I

    iget-object v8, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->buf:[B

    array-length v8, v8

    iget v9, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->pos:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->pos:I

    sub-int v9, p1, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 178
    .local v0, "bytesread":I
    if-ltz v0, :cond_7

    .line 179
    iget v5, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->pos:I

    add-int/2addr v5, v0

    iput v5, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->pos:I

    goto/16 :goto_0

    .line 181
    :cond_7
    iput-boolean v10, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->eof:Z

    goto/16 :goto_0

    .line 184
    .end local v0    # "bytesread":I
    :cond_8
    iget-object v5, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->in:Ljava/io/InputStream;

    iget-object v6, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->buf:[B

    iget-object v7, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->buf:[B

    array-length v7, v7

    iget v8, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->pos:I

    sub-int v8, p1, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v5, v6, v9, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 185
    .restart local v0    # "bytesread":I
    if-ltz v0, :cond_9

    .line 186
    iget-object v5, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->file:Ljava/io/RandomAccessFile;

    iget v6, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->pos:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 187
    iget-object v5, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->file:Ljava/io/RandomAccessFile;

    iget-object v6, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->buf:[B

    invoke-virtual {v5, v6, v9, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 188
    iget v5, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->pos:I

    add-int/2addr v5, v0

    iput v5, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->pos:I

    goto/16 :goto_0

    .line 190
    :cond_9
    iput-boolean v10, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->eof:Z

    goto/16 :goto_0

    .line 158
    .end local v0    # "bytesread":I
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v5

    goto :goto_4
.end method

.method private readFromBuf(I[BII)I
    .locals 4
    .param p1, "from"    # I
    .param p2, "buffer"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 108
    if-nez p4, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v0

    .line 112
    :cond_1
    iget-boolean v1, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->eof:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->pos:I

    if-lt p1, v1, :cond_2

    .line 113
    const/4 v0, -0x1

    goto :goto_0

    .line 116
    :cond_2
    iget v1, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->pos:I

    if-le p1, v1, :cond_3

    .line 117
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "from > pos"

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    :cond_3
    iget v1, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->pos:I

    if-eq p1, v1, :cond_0

    .line 124
    iget v1, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->pos:I

    sub-int/2addr v1, p1

    invoke-static {v1, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 125
    .local v0, "result":I
    iget-object v1, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->file:Ljava/io/RandomAccessFile;

    if-nez v1, :cond_4

    .line 126
    iget-object v1, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->buf:[B

    invoke-static {v1, p1, p2, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 128
    :cond_4
    iget-object v1, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->file:Ljava/io/RandomAccessFile;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 129
    iget-object v1, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p2, p3, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized available(I)I
    .locals 3
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->in:Ljava/io/InputStream;

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Ljava/io/IOException;

    const-string v2, "RandomInputBuffer has been closed."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 42
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->eof:Z

    if-nez v1, :cond_1

    .line 43
    iget-object v1, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    iget v2, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->pos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/2addr v1, v2

    sub-int v0, v1, p1

    .line 47
    .local v0, "result":I
    :goto_0
    monitor-exit p0

    return v0

    .line 45
    .end local v0    # "result":I
    :cond_1
    :try_start_2
    iget v1, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->pos:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int v0, v1, p1

    .restart local v0    # "result":I
    goto :goto_0
.end method

.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->in:Ljava/io/InputStream;

    .line 56
    :cond_0
    iget-object v0, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->file:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->file:Ljava/io/RandomAccessFile;

    .line 61
    :cond_1
    iget-object v0, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->bufFile:Ljava/io/File;

    if-eqz v0, :cond_2

    .line 62
    iget-object v0, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->cache:Lcn/kuaipan/android/http/NetCacheManager;

    iget-object v1, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->bufFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcn/kuaipan/android/http/NetCacheManager;->releaseCache(Ljava/io/File;)V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->bufFile:Ljava/io/File;

    .line 66
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->buf:[B

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->pos:I

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->eof:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read(I)I
    .locals 2
    .param p1, "from"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    const/4 v1, 0x1

    new-array v0, v1, [B

    .line 73
    .local v0, "result":[B
    invoke-virtual {p0, p1, v0}, Lcn/kuaipan/android/http/RandomInputBuffer;->read(I[B)I

    move-result v1

    if-lez v1, :cond_0

    .line 74
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    .line 76
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public read(I[B)I
    .locals 2
    .param p1, "from"    # I
    .param p2, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lcn/kuaipan/android/http/RandomInputBuffer;->read(I[BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized read(I[BII)I
    .locals 3
    .param p1, "from"    # I
    .param p2, "buffer"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->in:Ljava/io/InputStream;

    if-nez v1, :cond_0

    .line 86
    new-instance v1, Ljava/io/IOException;

    const-string v2, "RandomInputBuffer has been closed."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 89
    :cond_0
    if-nez p2, :cond_1

    .line 90
    :try_start_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "buffer == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    :cond_1
    or-int v1, p3, p4

    if-ltz v1, :cond_2

    array-length v1, p2

    sub-int/2addr v1, p4

    if-le p3, v1, :cond_3

    .line 93
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    :cond_3
    if-nez p4, :cond_4

    .line 96
    const/4 v1, 0x0

    .line 104
    :goto_0
    monitor-exit p0

    return v1

    .line 99
    :cond_4
    add-int v0, p1, p4

    .line 100
    .local v0, "dest":I
    :try_start_2
    iget v1, p0, Lcn/kuaipan/android/http/RandomInputBuffer;->pos:I

    if-le v0, v1, :cond_5

    .line 101
    invoke-direct {p0, v0}, Lcn/kuaipan/android/http/RandomInputBuffer;->fillBuf(I)V

    .line 104
    :cond_5
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/kuaipan/android/http/RandomInputBuffer;->readFromBuf(I[BII)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    goto :goto_0
.end method
