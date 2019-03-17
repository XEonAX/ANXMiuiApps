.class public Lcn/kuaipan/android/http/ProcessMonitorInputStream;
.super Ljava/io/FilterInputStream;
.source "ProcessMonitorInputStream.java"


# instance fields
.field private mCurrent:J

.field private final mListener:Lcn/kuaipan/android/http/IKscTransferListener;

.field private mMarkPos:J

.field private final mMonitor:Lcn/kuaipan/android/http/KscSpeedMonitor;

.field private final mSendMode:Z


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;Lcn/kuaipan/android/http/KscSpeedMonitor;Lcn/kuaipan/android/http/IKscTransferListener;Z)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "monitor"    # Lcn/kuaipan/android/http/KscSpeedMonitor;
    .param p3, "listener"    # Lcn/kuaipan/android/http/IKscTransferListener;
    .param p4, "sendMode"    # Z

    .prologue
    const-wide/16 v0, 0x0

    .line 18
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 13
    iput-wide v0, p0, Lcn/kuaipan/android/http/ProcessMonitorInputStream;->mCurrent:J

    .line 14
    iput-wide v0, p0, Lcn/kuaipan/android/http/ProcessMonitorInputStream;->mMarkPos:J

    .line 19
    iput-object p2, p0, Lcn/kuaipan/android/http/ProcessMonitorInputStream;->mMonitor:Lcn/kuaipan/android/http/KscSpeedMonitor;

    .line 20
    iput-object p3, p0, Lcn/kuaipan/android/http/ProcessMonitorInputStream;->mListener:Lcn/kuaipan/android/http/IKscTransferListener;

    .line 21
    iput-boolean p4, p0, Lcn/kuaipan/android/http/ProcessMonitorInputStream;->mSendMode:Z

    .line 22
    return-void
.end method

.method private process(J)V
    .locals 3
    .param p1, "len"    # J

    .prologue
    .line 25
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 26
    iget-wide v0, p0, Lcn/kuaipan/android/http/ProcessMonitorInputStream;->mCurrent:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcn/kuaipan/android/http/ProcessMonitorInputStream;->mCurrent:J

    .line 27
    iget-object v0, p0, Lcn/kuaipan/android/http/ProcessMonitorInputStream;->mMonitor:Lcn/kuaipan/android/http/KscSpeedMonitor;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcn/kuaipan/android/http/ProcessMonitorInputStream;->mMonitor:Lcn/kuaipan/android/http/KscSpeedMonitor;

    invoke-virtual {v0, p1, p2}, Lcn/kuaipan/android/http/KscSpeedMonitor;->recode(J)V

    .line 30
    :cond_0
    iget-object v0, p0, Lcn/kuaipan/android/http/ProcessMonitorInputStream;->mListener:Lcn/kuaipan/android/http/IKscTransferListener;

    if-eqz v0, :cond_1

    .line 31
    iget-boolean v0, p0, Lcn/kuaipan/android/http/ProcessMonitorInputStream;->mSendMode:Z

    if-eqz v0, :cond_2

    .line 32
    iget-object v0, p0, Lcn/kuaipan/android/http/ProcessMonitorInputStream;->mListener:Lcn/kuaipan/android/http/IKscTransferListener;

    invoke-interface {v0, p1, p2}, Lcn/kuaipan/android/http/IKscTransferListener;->sended(J)V

    .line 38
    :cond_1
    :goto_0
    return-void

    .line 34
    :cond_2
    iget-object v0, p0, Lcn/kuaipan/android/http/ProcessMonitorInputStream;->mListener:Lcn/kuaipan/android/http/IKscTransferListener;

    invoke-interface {v0, p1, p2}, Lcn/kuaipan/android/http/IKscTransferListener;->received(J)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized mark(I)V
    .locals 2
    .param p1, "readlimit"    # I

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->mark(I)V

    .line 70
    iget-wide v0, p0, Lcn/kuaipan/android/http/ProcessMonitorInputStream;->mCurrent:J

    iput-wide v0, p0, Lcn/kuaipan/android/http/ProcessMonitorInputStream;->mMarkPos:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 43
    .local v0, "result":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 44
    const-wide/16 v2, 0x1

    invoke-direct {p0, v2, v3}, Lcn/kuaipan/android/http/ProcessMonitorInputStream;->process(J)V

    .line 46
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 52
    .local v0, "len":I
    if-lez v0, :cond_0

    .line 53
    int-to-long v2, v0

    invoke-direct {p0, v2, v3}, Lcn/kuaipan/android/http/ProcessMonitorInputStream;->process(J)V

    .line 55
    :cond_0
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
    .line 75
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->reset()V

    .line 76
    iget-wide v0, p0, Lcn/kuaipan/android/http/ProcessMonitorInputStream;->mMarkPos:J

    iput-wide v0, p0, Lcn/kuaipan/android/http/ProcessMonitorInputStream;->mCurrent:J

    .line 78
    iget-object v0, p0, Lcn/kuaipan/android/http/ProcessMonitorInputStream;->mListener:Lcn/kuaipan/android/http/IKscTransferListener;

    if-eqz v0, :cond_0

    .line 79
    iget-boolean v0, p0, Lcn/kuaipan/android/http/ProcessMonitorInputStream;->mSendMode:Z

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcn/kuaipan/android/http/ProcessMonitorInputStream;->mListener:Lcn/kuaipan/android/http/IKscTransferListener;

    iget-wide v2, p0, Lcn/kuaipan/android/http/ProcessMonitorInputStream;->mCurrent:J

    invoke-interface {v0, v2, v3}, Lcn/kuaipan/android/http/IKscTransferListener;->setSendPos(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 82
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcn/kuaipan/android/http/ProcessMonitorInputStream;->mListener:Lcn/kuaipan/android/http/IKscTransferListener;

    iget-wide v2, p0, Lcn/kuaipan/android/http/ProcessMonitorInputStream;->mCurrent:J

    invoke-interface {v0, v2, v3}, Lcn/kuaipan/android/http/IKscTransferListener;->setReceivePos(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 5
    .param p1, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v0

    .line 61
    .local v0, "len":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 62
    invoke-direct {p0, v0, v1}, Lcn/kuaipan/android/http/ProcessMonitorInputStream;->process(J)V

    .line 64
    :cond_0
    return-wide v0
.end method
