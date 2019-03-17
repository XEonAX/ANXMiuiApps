.class public Lcn/kuaipan/android/http/ProcessMonitorEntity;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "ProcessMonitorEntity.java"


# instance fields
.field private final mListener:Lcn/kuaipan/android/http/IKscTransferListener;

.field private final mMonitor:Lcn/kuaipan/android/http/KscSpeedMonitor;

.field private mMonitorUsed:Z

.field private final mSendMode:Z


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;Lcn/kuaipan/android/http/KscSpeedMonitor;Lcn/kuaipan/android/http/IKscTransferListener;Z)V
    .locals 1
    .param p1, "wrapped"    # Lorg/apache/http/HttpEntity;
    .param p2, "monitor"    # Lcn/kuaipan/android/http/KscSpeedMonitor;
    .param p3, "listener"    # Lcn/kuaipan/android/http/IKscTransferListener;
    .param p4, "sendMode"    # Z

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 20
    iput-object p2, p0, Lcn/kuaipan/android/http/ProcessMonitorEntity;->mMonitor:Lcn/kuaipan/android/http/KscSpeedMonitor;

    .line 21
    iput-object p3, p0, Lcn/kuaipan/android/http/ProcessMonitorEntity;->mListener:Lcn/kuaipan/android/http/IKscTransferListener;

    .line 22
    iput-boolean p4, p0, Lcn/kuaipan/android/http/ProcessMonitorEntity;->mSendMode:Z

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuaipan/android/http/ProcessMonitorEntity;->mMonitorUsed:Z

    .line 24
    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapper;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 29
    .local v0, "result":Ljava/io/InputStream;
    iget-boolean v2, p0, Lcn/kuaipan/android/http/ProcessMonitorEntity;->mMonitorUsed:Z

    if-nez v2, :cond_1

    .line 30
    iget-object v2, p0, Lcn/kuaipan/android/http/ProcessMonitorEntity;->mListener:Lcn/kuaipan/android/http/IKscTransferListener;

    if-eqz v2, :cond_0

    .line 31
    iget-boolean v2, p0, Lcn/kuaipan/android/http/ProcessMonitorEntity;->mSendMode:Z

    if-eqz v2, :cond_2

    .line 32
    iget-object v2, p0, Lcn/kuaipan/android/http/ProcessMonitorEntity;->mListener:Lcn/kuaipan/android/http/IKscTransferListener;

    invoke-virtual {p0}, Lcn/kuaipan/android/http/ProcessMonitorEntity;->getContentLength()J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lcn/kuaipan/android/http/IKscTransferListener;->setSendTotal(J)V

    .line 37
    :cond_0
    :goto_0
    new-instance v1, Lcn/kuaipan/android/http/ProcessMonitorInputStream;

    iget-object v2, p0, Lcn/kuaipan/android/http/ProcessMonitorEntity;->mMonitor:Lcn/kuaipan/android/http/KscSpeedMonitor;

    iget-object v3, p0, Lcn/kuaipan/android/http/ProcessMonitorEntity;->mListener:Lcn/kuaipan/android/http/IKscTransferListener;

    iget-boolean v4, p0, Lcn/kuaipan/android/http/ProcessMonitorEntity;->mSendMode:Z

    invoke-direct {v1, v0, v2, v3, v4}, Lcn/kuaipan/android/http/ProcessMonitorInputStream;-><init>(Ljava/io/InputStream;Lcn/kuaipan/android/http/KscSpeedMonitor;Lcn/kuaipan/android/http/IKscTransferListener;Z)V

    .line 38
    .end local v0    # "result":Ljava/io/InputStream;
    .local v1, "result":Ljava/io/InputStream;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcn/kuaipan/android/http/ProcessMonitorEntity;->mMonitorUsed:Z

    move-object v0, v1

    .line 40
    .end local v1    # "result":Ljava/io/InputStream;
    .restart local v0    # "result":Ljava/io/InputStream;
    :cond_1
    return-object v0

    .line 34
    :cond_2
    iget-object v2, p0, Lcn/kuaipan/android/http/ProcessMonitorEntity;->mListener:Lcn/kuaipan/android/http/IKscTransferListener;

    invoke-virtual {p0}, Lcn/kuaipan/android/http/ProcessMonitorEntity;->getContentLength()J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lcn/kuaipan/android/http/IKscTransferListener;->setReceiveTotal(J)V

    goto :goto_0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    iget-boolean v1, p0, Lcn/kuaipan/android/http/ProcessMonitorEntity;->mMonitorUsed:Z

    if-nez v1, :cond_0

    .line 46
    new-instance v0, Lcn/kuaipan/android/http/ProcessMonitorOutputStream;

    iget-object v1, p0, Lcn/kuaipan/android/http/ProcessMonitorEntity;->mMonitor:Lcn/kuaipan/android/http/KscSpeedMonitor;

    iget-object v2, p0, Lcn/kuaipan/android/http/ProcessMonitorEntity;->mListener:Lcn/kuaipan/android/http/IKscTransferListener;

    iget-boolean v3, p0, Lcn/kuaipan/android/http/ProcessMonitorEntity;->mSendMode:Z

    invoke-direct {v0, p1, v1, v2, v3}, Lcn/kuaipan/android/http/ProcessMonitorOutputStream;-><init>(Ljava/io/OutputStream;Lcn/kuaipan/android/http/KscSpeedMonitor;Lcn/kuaipan/android/http/IKscTransferListener;Z)V

    .line 48
    .end local p1    # "outstream":Ljava/io/OutputStream;
    .local v0, "outstream":Ljava/io/OutputStream;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/kuaipan/android/http/ProcessMonitorEntity;->mMonitorUsed:Z

    move-object p1, v0

    .line 50
    .end local v0    # "outstream":Ljava/io/OutputStream;
    .restart local p1    # "outstream":Ljava/io/OutputStream;
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;->writeTo(Ljava/io/OutputStream;)V

    .line 51
    return-void
.end method
