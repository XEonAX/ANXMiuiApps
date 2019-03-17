.class Lcn/kuaipan/android/kss/FileTranceListener$ChunkListaner;
.super Ljava/lang/Object;
.source "FileTranceListener.java"

# interfaces
.implements Lcn/kuaipan/android/http/IKscTransferListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/kuaipan/android/kss/FileTranceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChunkListaner"
.end annotation


# instance fields
.field private mParent:Lcn/kuaipan/android/kss/FileTranceListener;

.field private mReceiveOffset:J

.field private mSendOffset:J

.field final synthetic this$0:Lcn/kuaipan/android/kss/FileTranceListener;


# direct methods
.method constructor <init>(Lcn/kuaipan/android/kss/FileTranceListener;Lcn/kuaipan/android/kss/FileTranceListener;JJ)V
    .locals 2
    .param p1, "this$0"    # Lcn/kuaipan/android/kss/FileTranceListener;
    .param p2, "parent"    # Lcn/kuaipan/android/kss/FileTranceListener;
    .param p3, "sended"    # J
    .param p5, "received"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 75
    iput-object p1, p0, Lcn/kuaipan/android/kss/FileTranceListener$ChunkListaner;->this$0:Lcn/kuaipan/android/kss/FileTranceListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p2, p0, Lcn/kuaipan/android/kss/FileTranceListener$ChunkListaner;->mParent:Lcn/kuaipan/android/kss/FileTranceListener;

    .line 79
    iput-wide v0, p0, Lcn/kuaipan/android/kss/FileTranceListener$ChunkListaner;->mSendOffset:J

    .line 80
    iput-wide v0, p0, Lcn/kuaipan/android/kss/FileTranceListener$ChunkListaner;->mReceiveOffset:J

    .line 82
    invoke-virtual {p0, v0, v1}, Lcn/kuaipan/android/kss/FileTranceListener$ChunkListaner;->setSendPos(J)V

    .line 83
    invoke-virtual {p0, v0, v1}, Lcn/kuaipan/android/kss/FileTranceListener$ChunkListaner;->setReceivePos(J)V

    .line 84
    return-void
.end method


# virtual methods
.method public received(J)V
    .locals 3
    .param p1, "len"    # J

    .prologue
    .line 118
    iget-object v0, p0, Lcn/kuaipan/android/kss/FileTranceListener$ChunkListaner;->mParent:Lcn/kuaipan/android/kss/FileTranceListener;

    invoke-static {v0, p1, p2}, Lcn/kuaipan/android/kss/FileTranceListener;->access$100(Lcn/kuaipan/android/kss/FileTranceListener;J)V

    .line 119
    iget-wide v0, p0, Lcn/kuaipan/android/kss/FileTranceListener$ChunkListaner;->mReceiveOffset:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcn/kuaipan/android/kss/FileTranceListener$ChunkListaner;->mReceiveOffset:J

    .line 120
    return-void
.end method

.method public sended(J)V
    .locals 3
    .param p1, "len"    # J

    .prologue
    .line 112
    iget-object v0, p0, Lcn/kuaipan/android/kss/FileTranceListener$ChunkListaner;->mParent:Lcn/kuaipan/android/kss/FileTranceListener;

    invoke-static {v0, p1, p2}, Lcn/kuaipan/android/kss/FileTranceListener;->access$000(Lcn/kuaipan/android/kss/FileTranceListener;J)V

    .line 113
    iget-wide v0, p0, Lcn/kuaipan/android/kss/FileTranceListener$ChunkListaner;->mSendOffset:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcn/kuaipan/android/kss/FileTranceListener$ChunkListaner;->mSendOffset:J

    .line 114
    return-void
.end method

.method public setReceivePos(J)V
    .locals 5
    .param p1, "pos"    # J

    .prologue
    .line 105
    iget-wide v2, p0, Lcn/kuaipan/android/kss/FileTranceListener$ChunkListaner;->mReceiveOffset:J

    sub-long v0, p1, v2

    .line 106
    .local v0, "dur":J
    invoke-virtual {p0, v0, v1}, Lcn/kuaipan/android/kss/FileTranceListener$ChunkListaner;->received(J)V

    .line 108
    return-void
.end method

.method public setReceiveTotal(J)V
    .locals 1
    .param p1, "total"    # J

    .prologue
    .line 93
    iget-object v0, p0, Lcn/kuaipan/android/kss/FileTranceListener$ChunkListaner;->mParent:Lcn/kuaipan/android/kss/FileTranceListener;

    invoke-virtual {v0, p1, p2}, Lcn/kuaipan/android/kss/FileTranceListener;->setReceiveTotal(J)V

    .line 94
    return-void
.end method

.method public setSendPos(J)V
    .locals 5
    .param p1, "pos"    # J

    .prologue
    .line 98
    iget-wide v2, p0, Lcn/kuaipan/android/kss/FileTranceListener$ChunkListaner;->mSendOffset:J

    sub-long v0, p1, v2

    .line 99
    .local v0, "dur":J
    invoke-virtual {p0, v0, v1}, Lcn/kuaipan/android/kss/FileTranceListener$ChunkListaner;->sended(J)V

    .line 101
    return-void
.end method

.method public setSendTotal(J)V
    .locals 1
    .param p1, "total"    # J

    .prologue
    .line 88
    iget-object v0, p0, Lcn/kuaipan/android/kss/FileTranceListener$ChunkListaner;->mParent:Lcn/kuaipan/android/kss/FileTranceListener;

    invoke-virtual {v0, p1, p2}, Lcn/kuaipan/android/kss/FileTranceListener;->setSendTotal(J)V

    .line 89
    return-void
.end method
