.class public Lcn/kuaipan/android/kss/FileTranceListener;
.super Ljava/lang/Object;
.source "FileTranceListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/kuaipan/android/kss/FileTranceListener$ChunkListaner;
    }
.end annotation


# instance fields
.field private mOffset:J

.field private final mSendMode:Z

.field private final mTotalListener:Lcn/kuaipan/android/http/IKscTransferListener;


# direct methods
.method public constructor <init>(Lcn/kuaipan/android/http/IKscTransferListener;Z)V
    .locals 0
    .param p1, "listener"    # Lcn/kuaipan/android/http/IKscTransferListener;
    .param p2, "sendMode"    # Z

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcn/kuaipan/android/kss/FileTranceListener;->mTotalListener:Lcn/kuaipan/android/http/IKscTransferListener;

    .line 14
    iput-boolean p2, p0, Lcn/kuaipan/android/kss/FileTranceListener;->mSendMode:Z

    .line 15
    return-void
.end method

.method static synthetic access$000(Lcn/kuaipan/android/kss/FileTranceListener;J)V
    .locals 1
    .param p0, "x0"    # Lcn/kuaipan/android/kss/FileTranceListener;
    .param p1, "x1"    # J

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Lcn/kuaipan/android/kss/FileTranceListener;->sended(J)V

    return-void
.end method

.method static synthetic access$100(Lcn/kuaipan/android/kss/FileTranceListener;J)V
    .locals 1
    .param p0, "x0"    # Lcn/kuaipan/android/kss/FileTranceListener;
    .param p1, "x1"    # J

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Lcn/kuaipan/android/kss/FileTranceListener;->received(J)V

    return-void
.end method

.method private received(J)V
    .locals 3
    .param p1, "len"    # J

    .prologue
    .line 59
    iget-boolean v0, p0, Lcn/kuaipan/android/kss/FileTranceListener;->mSendMode:Z

    if-eqz v0, :cond_0

    .line 60
    iget-wide v0, p0, Lcn/kuaipan/android/kss/FileTranceListener;->mOffset:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcn/kuaipan/android/kss/FileTranceListener;->mOffset:J

    .line 62
    :cond_0
    iget-object v0, p0, Lcn/kuaipan/android/kss/FileTranceListener;->mTotalListener:Lcn/kuaipan/android/http/IKscTransferListener;

    invoke-interface {v0, p1, p2}, Lcn/kuaipan/android/http/IKscTransferListener;->received(J)V

    .line 63
    return-void
.end method

.method private sended(J)V
    .locals 3
    .param p1, "len"    # J

    .prologue
    .line 52
    iget-boolean v0, p0, Lcn/kuaipan/android/kss/FileTranceListener;->mSendMode:Z

    if-nez v0, :cond_0

    .line 53
    iget-wide v0, p0, Lcn/kuaipan/android/kss/FileTranceListener;->mOffset:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcn/kuaipan/android/kss/FileTranceListener;->mOffset:J

    .line 55
    :cond_0
    iget-object v0, p0, Lcn/kuaipan/android/kss/FileTranceListener;->mTotalListener:Lcn/kuaipan/android/http/IKscTransferListener;

    invoke-interface {v0, p1, p2}, Lcn/kuaipan/android/http/IKscTransferListener;->sended(J)V

    .line 56
    return-void
.end method


# virtual methods
.method public getChunkListaner(J)Lcn/kuaipan/android/http/IKscTransferListener;
    .locals 9
    .param p1, "start"    # J

    .prologue
    .line 18
    iget-boolean v0, p0, Lcn/kuaipan/android/kss/FileTranceListener;->mSendMode:Z

    if-eqz v0, :cond_0

    .line 19
    new-instance v1, Lcn/kuaipan/android/kss/FileTranceListener$ChunkListaner;

    iget-wide v6, p0, Lcn/kuaipan/android/kss/FileTranceListener;->mOffset:J

    move-object v2, p0

    move-object v3, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v7}, Lcn/kuaipan/android/kss/FileTranceListener$ChunkListaner;-><init>(Lcn/kuaipan/android/kss/FileTranceListener;Lcn/kuaipan/android/kss/FileTranceListener;JJ)V

    .line 21
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcn/kuaipan/android/kss/FileTranceListener$ChunkListaner;

    iget-wide v4, p0, Lcn/kuaipan/android/kss/FileTranceListener;->mOffset:J

    move-object v2, p0

    move-object v3, p0

    move-wide v6, p1

    invoke-direct/range {v1 .. v7}, Lcn/kuaipan/android/kss/FileTranceListener$ChunkListaner;-><init>(Lcn/kuaipan/android/kss/FileTranceListener;Lcn/kuaipan/android/kss/FileTranceListener;JJ)V

    goto :goto_0
.end method

.method public setReceiveTotal(J)V
    .locals 5
    .param p1, "total"    # J

    .prologue
    .line 32
    iget-boolean v0, p0, Lcn/kuaipan/android/kss/FileTranceListener;->mSendMode:Z

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcn/kuaipan/android/kss/FileTranceListener;->mTotalListener:Lcn/kuaipan/android/http/IKscTransferListener;

    iget-wide v2, p0, Lcn/kuaipan/android/kss/FileTranceListener;->mOffset:J

    add-long/2addr v2, p1

    invoke-interface {v0, v2, v3}, Lcn/kuaipan/android/http/IKscTransferListener;->setReceiveTotal(J)V

    .line 35
    :cond_0
    return-void
.end method

.method public setSendPos(J)V
    .locals 1
    .param p1, "pos"    # J

    .prologue
    .line 38
    iget-boolean v0, p0, Lcn/kuaipan/android/kss/FileTranceListener;->mSendMode:Z

    if-nez v0, :cond_0

    .line 39
    iput-wide p1, p0, Lcn/kuaipan/android/kss/FileTranceListener;->mOffset:J

    .line 41
    :cond_0
    iget-object v0, p0, Lcn/kuaipan/android/kss/FileTranceListener;->mTotalListener:Lcn/kuaipan/android/http/IKscTransferListener;

    invoke-interface {v0, p1, p2}, Lcn/kuaipan/android/http/IKscTransferListener;->setSendPos(J)V

    .line 42
    return-void
.end method

.method public setSendTotal(J)V
    .locals 5
    .param p1, "total"    # J

    .prologue
    .line 26
    iget-boolean v0, p0, Lcn/kuaipan/android/kss/FileTranceListener;->mSendMode:Z

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lcn/kuaipan/android/kss/FileTranceListener;->mTotalListener:Lcn/kuaipan/android/http/IKscTransferListener;

    iget-wide v2, p0, Lcn/kuaipan/android/kss/FileTranceListener;->mOffset:J

    add-long/2addr v2, p1

    invoke-interface {v0, v2, v3}, Lcn/kuaipan/android/http/IKscTransferListener;->setSendTotal(J)V

    .line 29
    :cond_0
    return-void
.end method
