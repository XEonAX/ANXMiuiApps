.class public Lcn/kuaipan/android/kss/download/KssAccessor;
.super Ljava/lang/Object;
.source "KssAccessor.java"


# instance fields
.field private mClosed:Z

.field private mFileAccessor:Ljava/io/RandomAccessFile;

.field private mFilelocker:Ljava/nio/channels/FileLock;

.field private final mLocker:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/kuaipan/android/kss/download/KssAccessor;->mClosed:Z

    .line 20
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcn/kuaipan/android/kss/download/KssAccessor;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    .line 24
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rws"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcn/kuaipan/android/kss/download/KssAccessor;->mFileAccessor:Ljava/io/RandomAccessFile;

    .line 26
    iget-object v1, p0, Lcn/kuaipan/android/kss/download/KssAccessor;->mFileAccessor:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 27
    .local v0, "channel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v1

    iput-object v1, p0, Lcn/kuaipan/android/kss/download/KssAccessor;->mFilelocker:Ljava/nio/channels/FileLock;

    .line 28
    iget-object v1, p0, Lcn/kuaipan/android/kss/download/KssAccessor;->mFilelocker:Ljava/nio/channels/FileLock;

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed Lock the target file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 31
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 95
    iget-boolean v0, p0, Lcn/kuaipan/android/kss/download/KssAccessor;->mClosed:Z

    if-eqz v0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuaipan/android/kss/download/KssAccessor;->mClosed:Z

    .line 101
    :try_start_0
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/KssAccessor;->mFilelocker:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/KssAccessor;->mFilelocker:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuaipan/android/kss/download/KssAccessor;->mFilelocker:Ljava/nio/channels/FileLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :cond_2
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/KssAccessor;->mFileAccessor:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/KssAccessor;->mFileAccessor:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 108
    iput-object v2, p0, Lcn/kuaipan/android/kss/download/KssAccessor;->mFileAccessor:Ljava/io/RandomAccessFile;

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/kuaipan/android/kss/download/KssAccessor;->mFileAccessor:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_3

    .line 107
    iget-object v1, p0, Lcn/kuaipan/android/kss/download/KssAccessor;->mFileAccessor:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 108
    iput-object v2, p0, Lcn/kuaipan/android/kss/download/KssAccessor;->mFileAccessor:Ljava/io/RandomAccessFile;

    :cond_3
    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 116
    :try_start_0
    invoke-virtual {p0}, Lcn/kuaipan/android/kss/download/KssAccessor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 120
    return-void

    .line 118
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public inflate(J)V
    .locals 5
    .param p1, "targetSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    iget-boolean v0, p0, Lcn/kuaipan/android/kss/download/KssAccessor;->mClosed:Z

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcn/kuaipan/android/kss/download/KssAccessor;->lock()V

    .line 87
    :try_start_0
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/KssAccessor;->mFileAccessor:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x1

    sub-long v2, p1, v2

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 88
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/KssAccessor;->mFileAccessor:Ljava/io/RandomAccessFile;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-virtual {p0}, Lcn/kuaipan/android/kss/download/KssAccessor;->unlock()V

    .line 92
    return-void

    .line 90
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcn/kuaipan/android/kss/download/KssAccessor;->unlock()V

    throw v0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/KssAccessor;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 35
    return-void
.end method

.method public sha1(JJ)Ljava/lang/String;
    .locals 1
    .param p1, "start"    # J
    .param p3, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    iget-boolean v0, p0, Lcn/kuaipan/android/kss/download/KssAccessor;->mClosed:Z

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcn/kuaipan/android/kss/download/KssAccessor;->lock()V

    .line 47
    :try_start_0
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/KssAccessor;->mFileAccessor:Ljava/io/RandomAccessFile;

    invoke-static {v0, p1, p2, p3, p4}, Lcn/kuaipan/android/utils/Encode;->SHA1Encode(Ljava/io/RandomAccessFile;JJ)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 49
    invoke-virtual {p0}, Lcn/kuaipan/android/kss/download/KssAccessor;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcn/kuaipan/android/kss/download/KssAccessor;->unlock()V

    throw v0
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/KssAccessor;->mLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 39
    return-void
.end method

.method public write([BIILcn/kuaipan/android/kss/download/LoadRecorder;)I
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "recorder"    # Lcn/kuaipan/android/kss/download/LoadRecorder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    iget-boolean v0, p0, Lcn/kuaipan/android/kss/download/KssAccessor;->mClosed:Z

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 60
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 64
    :cond_1
    invoke-virtual {p0}, Lcn/kuaipan/android/kss/download/KssAccessor;->lock()V

    .line 66
    if-eqz p4, :cond_2

    .line 67
    :try_start_0
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/KssAccessor;->mFileAccessor:Ljava/io/RandomAccessFile;

    invoke-virtual {p4}, Lcn/kuaipan/android/kss/download/LoadRecorder;->getStart()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 68
    int-to-long v0, p3

    invoke-virtual {p4}, Lcn/kuaipan/android/kss/download/LoadRecorder;->size()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 70
    :cond_2
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/KssAccessor;->mFileAccessor:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 71
    if-eqz p4, :cond_3

    .line 72
    invoke-virtual {p4, p3}, Lcn/kuaipan/android/kss/download/LoadRecorder;->add(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :cond_3
    invoke-virtual {p0}, Lcn/kuaipan/android/kss/download/KssAccessor;->unlock()V

    return p3

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcn/kuaipan/android/kss/download/KssAccessor;->unlock()V

    throw v0
.end method
