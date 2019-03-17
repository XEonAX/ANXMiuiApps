.class public Lcn/kuaipan/android/utils/RandomFileInputStream;
.super Ljava/io/InputStream;
.source "RandomFileInputStream.java"


# instance fields
.field private closed:Z

.field private final file:Ljava/io/File;

.field private markedPos:J

.field private pos:J

.field private rFile:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 15
    iput-wide v0, p0, Lcn/kuaipan/android/utils/RandomFileInputStream;->pos:J

    .line 16
    iput-wide v0, p0, Lcn/kuaipan/android/utils/RandomFileInputStream;->markedPos:J

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuaipan/android/utils/RandomFileInputStream;->closed:Z

    .line 21
    iput-object p1, p0, Lcn/kuaipan/android/utils/RandomFileInputStream;->file:Ljava/io/File;

    .line 22
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/kuaipan/android/utils/RandomFileInputStream;->rFile:Ljava/io/RandomAccessFile;

    .line 23
    return-void
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/kuaipan/android/utils/RandomFileInputStream;->rFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/kuaipan/android/utils/RandomFileInputStream;->pos:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v0, v2

    long-to-int v0, v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/kuaipan/android/utils/RandomFileInputStream;->rFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuaipan/android/utils/RandomFileInputStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurrentPos()J
    .locals 2

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcn/kuaipan/android/utils/RandomFileInputStream;->pos:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public mark(I)V
    .locals 2
    .param p1, "readlimit"    # I

    .prologue
    .line 63
    iget-boolean v0, p0, Lcn/kuaipan/android/utils/RandomFileInputStream;->closed:Z

    if-nez v0, :cond_0

    .line 64
    iget-wide v0, p0, Lcn/kuaipan/android/utils/RandomFileInputStream;->pos:J

    iput-wide v0, p0, Lcn/kuaipan/android/utils/RandomFileInputStream;->markedPos:J

    .line 66
    :cond_0
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized moveToPos(J)V
    .locals 3
    .param p1, "pos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/kuaipan/android/utils/RandomFileInputStream;->rFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcn/kuaipan/android/utils/RandomFileInputStream;->rFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 51
    iput-wide p1, p0, Lcn/kuaipan/android/utils/RandomFileInputStream;->pos:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 53
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Seek possion is not availabel"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 30
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcn/kuaipan/android/utils/RandomFileInputStream;->rFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 31
    .local v0, "result":I
    if-ltz v0, :cond_1

    .line 32
    iget-wide v2, p0, Lcn/kuaipan/android/utils/RandomFileInputStream;->pos:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcn/kuaipan/android/utils/RandomFileInputStream;->pos:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    :cond_1
    monitor-exit p0

    return v0
.end method

.method public declared-synchronized read([B)I
    .locals 6
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 79
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcn/kuaipan/android/utils/RandomFileInputStream;->rFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    .line 80
    .local v0, "result":I
    if-lez v0, :cond_1

    .line 81
    iget-wide v2, p0, Lcn/kuaipan/android/utils/RandomFileInputStream;->pos:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcn/kuaipan/android/utils/RandomFileInputStream;->pos:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :cond_1
    monitor-exit p0

    return v0
.end method

.method public declared-synchronized read([BII)I
    .locals 6
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 93
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcn/kuaipan/android/utils/RandomFileInputStream;->rFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    .line 94
    .local v0, "result":I
    if-lez v0, :cond_1

    .line 95
    iget-wide v2, p0, Lcn/kuaipan/android/utils/RandomFileInputStream;->pos:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcn/kuaipan/android/utils/RandomFileInputStream;->pos:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :cond_1
    monitor-exit p0

    return v0
.end method

.method public declared-synchronized reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcn/kuaipan/android/utils/RandomFileInputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuaipan/android/utils/RandomFileInputStream;->closed:Z

    .line 104
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcn/kuaipan/android/utils/RandomFileInputStream;->file:Ljava/io/File;

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/kuaipan/android/utils/RandomFileInputStream;->rFile:Ljava/io/RandomAccessFile;

    .line 107
    :cond_0
    iget-object v0, p0, Lcn/kuaipan/android/utils/RandomFileInputStream;->rFile:Ljava/io/RandomAccessFile;

    iget-wide v2, p0, Lcn/kuaipan/android/utils/RandomFileInputStream;->markedPos:J

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 108
    iget-wide v0, p0, Lcn/kuaipan/android/utils/RandomFileInputStream;->markedPos:J

    iput-wide v0, p0, Lcn/kuaipan/android/utils/RandomFileInputStream;->pos:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 13
    .param p1, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    .line 113
    cmp-long v1, p1, v8

    if-nez v1, :cond_0

    move-wide v6, v8

    .line 137
    :goto_0
    return-wide v6

    .line 116
    :cond_0
    cmp-long v1, p1, v8

    if-gez v1, :cond_1

    .line 118
    new-instance v1, Ljava/io/IOException;

    const-string v8, "Number of bytes to skip cannot be negative"

    invoke-direct {v1, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_1
    const-wide/16 v6, 0x0

    .line 123
    .local v6, "skipped":J
    const-wide/16 v10, 0x2000

    cmp-long v1, p1, v10

    if-gez v1, :cond_2

    long-to-int v0, p1

    .line 124
    .local v0, "chunk":I
    :goto_1
    monitor-enter p0

    .line 125
    int-to-long v10, v0

    :try_start_0
    div-long v2, p1, v10

    .local v2, "i":J
    :goto_2
    cmp-long v1, v2, v8

    if-ltz v1, :cond_5

    .line 126
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 127
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    throw v1

    .line 138
    .end local v2    # "i":J
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 123
    .end local v0    # "chunk":I
    :cond_2
    const/16 v0, 0x2000

    goto :goto_1

    .line 130
    .restart local v0    # "chunk":I
    .restart local v2    # "i":J
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcn/kuaipan/android/utils/RandomFileInputStream;->rFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v1

    int-to-long v4, v1

    .line 131
    .local v4, "numSkip":J
    add-long/2addr v6, v4

    .line 132
    iget-wide v10, p0, Lcn/kuaipan/android/utils/RandomFileInputStream;->pos:J

    add-long/2addr v10, v4

    iput-wide v10, p0, Lcn/kuaipan/android/utils/RandomFileInputStream;->pos:J

    .line 133
    int-to-long v10, v0

    cmp-long v1, v4, v10

    if-gez v1, :cond_4

    .line 134
    monitor-exit p0

    goto :goto_0

    .line 125
    :cond_4
    const-wide/16 v10, 0x1

    sub-long/2addr v2, v10

    goto :goto_2

    .line 137
    .end local v4    # "numSkip":J
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
