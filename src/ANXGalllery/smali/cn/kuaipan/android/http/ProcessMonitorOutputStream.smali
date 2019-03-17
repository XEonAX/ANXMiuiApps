.class public Lcn/kuaipan/android/http/ProcessMonitorOutputStream;
.super Ljava/io/FilterOutputStream;
.source "ProcessMonitorOutputStream.java"


# instance fields
.field private final mListener:Lcn/kuaipan/android/http/IKscTransferListener;

.field private final mMonitor:Lcn/kuaipan/android/http/KscSpeedMonitor;

.field private final mSendMode:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcn/kuaipan/android/http/KscSpeedMonitor;Lcn/kuaipan/android/http/IKscTransferListener;Z)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "monitor"    # Lcn/kuaipan/android/http/KscSpeedMonitor;
    .param p3, "listener"    # Lcn/kuaipan/android/http/IKscTransferListener;
    .param p4, "sendMode"    # Z

    .prologue
    .line 15
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 16
    iput-object p2, p0, Lcn/kuaipan/android/http/ProcessMonitorOutputStream;->mMonitor:Lcn/kuaipan/android/http/KscSpeedMonitor;

    .line 17
    iput-object p3, p0, Lcn/kuaipan/android/http/ProcessMonitorOutputStream;->mListener:Lcn/kuaipan/android/http/IKscTransferListener;

    .line 18
    iput-boolean p4, p0, Lcn/kuaipan/android/http/ProcessMonitorOutputStream;->mSendMode:Z

    .line 19
    return-void
.end method

.method private process(J)V
    .locals 3
    .param p1, "len"    # J

    .prologue
    .line 22
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 23
    iget-object v0, p0, Lcn/kuaipan/android/http/ProcessMonitorOutputStream;->mMonitor:Lcn/kuaipan/android/http/KscSpeedMonitor;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcn/kuaipan/android/http/ProcessMonitorOutputStream;->mMonitor:Lcn/kuaipan/android/http/KscSpeedMonitor;

    invoke-virtual {v0, p1, p2}, Lcn/kuaipan/android/http/KscSpeedMonitor;->recode(J)V

    .line 26
    :cond_0
    iget-object v0, p0, Lcn/kuaipan/android/http/ProcessMonitorOutputStream;->mListener:Lcn/kuaipan/android/http/IKscTransferListener;

    if-eqz v0, :cond_1

    .line 27
    iget-boolean v0, p0, Lcn/kuaipan/android/http/ProcessMonitorOutputStream;->mSendMode:Z

    if-eqz v0, :cond_2

    .line 28
    iget-object v0, p0, Lcn/kuaipan/android/http/ProcessMonitorOutputStream;->mListener:Lcn/kuaipan/android/http/IKscTransferListener;

    invoke-interface {v0, p1, p2}, Lcn/kuaipan/android/http/IKscTransferListener;->sended(J)V

    .line 34
    :cond_1
    :goto_0
    return-void

    .line 30
    :cond_2
    iget-object v0, p0, Lcn/kuaipan/android/http/ProcessMonitorOutputStream;->mListener:Lcn/kuaipan/android/http/IKscTransferListener;

    invoke-interface {v0, p1, p2}, Lcn/kuaipan/android/http/IKscTransferListener;->received(J)V

    goto :goto_0
.end method


# virtual methods
.method public write(I)V
    .locals 2
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write(I)V

    .line 45
    const-wide/16 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcn/kuaipan/android/http/ProcessMonitorOutputStream;->process(J)V

    .line 46
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcn/kuaipan/android/http/ProcessMonitorOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 39
    int-to-long v0, p3

    invoke-direct {p0, v0, v1}, Lcn/kuaipan/android/http/ProcessMonitorOutputStream;->process(J)V

    .line 40
    return-void
.end method
