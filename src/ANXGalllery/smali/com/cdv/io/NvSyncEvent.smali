.class public Lcom/cdv/io/NvSyncEvent;
.super Ljava/lang/Object;
.source "NvSyncEvent.java"


# instance fields
.field private m_manualReset:Z

.field private volatile m_signaled:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v0, p0, Lcom/cdv/io/NvSyncEvent;->m_manualReset:Z

    .line 25
    iput-boolean v0, p0, Lcom/cdv/io/NvSyncEvent;->m_signaled:Z

    .line 29
    iput-boolean p1, p0, Lcom/cdv/io/NvSyncEvent;->m_manualReset:Z

    .line 30
    return-void
.end method

.method private waitEventWithTimeout(J)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 82
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :try_start_1
    iget-boolean v2, p0, Lcom/cdv/io/NvSyncEvent;->m_signaled:Z

    if-eqz v2, :cond_1

    .line 84
    iget-boolean v2, p0, Lcom/cdv/io/NvSyncEvent;->m_manualReset:Z

    if-nez v2, :cond_0

    .line 85
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/cdv/io/NvSyncEvent;->m_signaled:Z

    .line 86
    :cond_0
    monitor-exit p0

    .line 111
    :goto_0
    return v0

    .line 90
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 91
    :goto_1
    iget-boolean v4, p0, Lcom/cdv/io/NvSyncEvent;->m_signaled:Z

    if-nez v4, :cond_3

    .line 92
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 94
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 95
    sub-long v2, v4, v2

    .line 96
    cmp-long v6, v2, p1

    if-ltz v6, :cond_2

    .line 97
    monitor-exit p0

    move v0, v1

    goto :goto_0

    .line 99
    :cond_2
    sub-long/2addr p1, v2

    move-wide v2, v4

    .line 101
    goto :goto_1

    .line 103
    :cond_3
    iget-boolean v2, p0, Lcom/cdv/io/NvSyncEvent;->m_manualReset:Z

    if-nez v2, :cond_4

    .line 104
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/cdv/io/NvSyncEvent;->m_signaled:Z

    .line 105
    :cond_4
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    const-string v2, "SyncEvent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    .line 111
    goto :goto_0
.end method


# virtual methods
.method public resetEvent()V
    .locals 1

    .prologue
    .line 44
    monitor-enter p0

    .line 45
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/cdv/io/NvSyncEvent;->m_signaled:Z

    .line 46
    monitor-exit p0

    .line 47
    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setEvent()V
    .locals 1

    .prologue
    .line 34
    monitor-enter p0

    .line 35
    :try_start_0
    iget-boolean v0, p0, Lcom/cdv/io/NvSyncEvent;->m_signaled:Z

    if-nez v0, :cond_0

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cdv/io/NvSyncEvent;->m_signaled:Z

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 39
    :cond_0
    monitor-exit p0

    .line 40
    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public waitEvent(J)Z
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 54
    cmp-long v1, p1, v2

    if-nez v1, :cond_0

    .line 55
    monitor-enter p0

    .line 56
    :try_start_0
    iget-boolean v0, p0, Lcom/cdv/io/NvSyncEvent;->m_signaled:Z

    monitor-exit p0

    .line 75
    :goto_0
    return v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 58
    :cond_0
    cmp-long v1, p1, v2

    if-lez v1, :cond_1

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/cdv/io/NvSyncEvent;->waitEventWithTimeout(J)Z

    move-result v0

    goto :goto_0

    .line 63
    :cond_1
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 64
    :goto_1
    :try_start_2
    iget-boolean v1, p0, Lcom/cdv/io/NvSyncEvent;->m_signaled:Z

    if-nez v1, :cond_2

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 69
    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 72
    :catch_0
    move-exception v1

    .line 73
    const-string v2, "SyncEvent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 67
    :cond_2
    :try_start_4
    iget-boolean v1, p0, Lcom/cdv/io/NvSyncEvent;->m_manualReset:Z

    if-nez v1, :cond_3

    .line 68
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cdv/io/NvSyncEvent;->m_signaled:Z

    .line 69
    :cond_3
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 71
    const/4 v0, 0x1

    goto :goto_0
.end method
