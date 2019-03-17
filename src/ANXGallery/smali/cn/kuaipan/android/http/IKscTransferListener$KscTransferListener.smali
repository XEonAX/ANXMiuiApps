.class public abstract Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;
.super Ljava/lang/Object;
.source "IKscTransferListener.java"

# interfaces
.implements Lcn/kuaipan/android/http/IKscTransferListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/kuaipan/android/http/IKscTransferListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "KscTransferListener"
.end annotation


# instance fields
.field private receiveTotal:J

.field private received:J

.field private sendTotal:J

.field private sended:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const-wide/16 v0, -0x1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide v0, p0, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->sendTotal:J

    .line 23
    iput-wide v0, p0, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->receiveTotal:J

    .line 24
    iput-wide v2, p0, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->sended:J

    .line 25
    iput-wide v2, p0, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->received:J

    return-void
.end method


# virtual methods
.method public abstract onDataReceived(JJ)V
.end method

.method public abstract onDataSended(JJ)V
.end method

.method public final received(J)V
    .locals 7
    .param p1, "len"    # J

    .prologue
    .line 51
    iget-wide v2, p0, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->received:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->received:J

    .line 53
    :try_start_0
    iget-wide v2, p0, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->received:J

    iget-wide v4, p0, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->receiveTotal:J

    invoke-virtual {p0, v2, v3, v4, v5}, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->onDataReceived(JJ)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 59
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Error;
    throw v0

    .line 56
    .end local v0    # "e":Ljava/lang/Error;
    :catch_1
    move-exception v1

    .line 57
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "KscTransferListener"

    const-string v3, "Meet exception in onDataReceived()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final sended(J)V
    .locals 7
    .param p1, "len"    # J

    .prologue
    .line 39
    iget-wide v2, p0, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->sended:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->sended:J

    .line 41
    :try_start_0
    iget-wide v2, p0, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->sended:J

    iget-wide v4, p0, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->sendTotal:J

    invoke-virtual {p0, v2, v3, v4, v5}, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->onDataSended(JJ)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Error;
    throw v0

    .line 44
    .end local v0    # "e":Ljava/lang/Error;
    :catch_1
    move-exception v1

    .line 45
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "KscTransferListener"

    const-string v3, "Meet exception in onDataSended()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final setReceivePos(J)V
    .locals 5
    .param p1, "pos"    # J

    .prologue
    .line 73
    iget-wide v0, p0, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->received:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    iput-wide p1, p0, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->received:J

    .line 77
    iget-wide v0, p0, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->received:J

    iget-wide v2, p0, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->receiveTotal:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->onDataReceived(JJ)V

    goto :goto_0
.end method

.method public final setReceiveTotal(J)V
    .locals 1
    .param p1, "total"    # J

    .prologue
    .line 34
    iput-wide p1, p0, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->receiveTotal:J

    .line 35
    return-void
.end method

.method public final setSendPos(J)V
    .locals 5
    .param p1, "pos"    # J

    .prologue
    .line 63
    iget-wide v0, p0, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->sended:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    iput-wide p1, p0, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->sended:J

    .line 68
    iget-wide v0, p0, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->sended:J

    iget-wide v2, p0, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->sendTotal:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->onDataSended(JJ)V

    goto :goto_0
.end method

.method public final setSendTotal(J)V
    .locals 1
    .param p1, "total"    # J

    .prologue
    .line 29
    iput-wide p1, p0, Lcn/kuaipan/android/http/IKscTransferListener$KscTransferListener;->sendTotal:J

    .line 30
    return-void
.end method
