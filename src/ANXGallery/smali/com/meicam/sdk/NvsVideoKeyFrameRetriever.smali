.class public Lcom/meicam/sdk/NvsVideoKeyFrameRetriever;
.super Ljava/lang/Object;
.source "NvsVideoKeyFrameRetriever.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meicam/sdk/NvsVideoKeyFrameRetriever$KeyFrame;
    }
.end annotation


# instance fields
.field m_internalObject:J

.field m_videoFrameHeight:I


# direct methods
.method constructor <init>(Ljava/lang/String;IZ)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meicam/sdk/NvsVideoKeyFrameRetriever;->m_internalObject:J

    .line 37
    invoke-direct {p0, p1, p3}, Lcom/meicam/sdk/NvsVideoKeyFrameRetriever;->nativeCreateVideoRetrieverReader(Ljava/lang/String;Z)V

    .line 38
    iput p2, p0, Lcom/meicam/sdk/NvsVideoKeyFrameRetriever;->m_videoFrameHeight:I

    .line 39
    return-void
.end method

.method private native nativeCleanup(J)V
.end method

.method private native nativeCreateVideoRetrieverReader(Ljava/lang/String;Z)V
.end method

.method private native nativeGetNextKeyFrame(JI)Lcom/meicam/sdk/NvsVideoKeyFrameRetriever$KeyFrame;
.end method

.method private native nativeStartGettingKeyFrame(JJ)V
.end method


# virtual methods
.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 63
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoKeyFrameRetriever;->m_internalObject:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 64
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoKeyFrameRetriever;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoKeyFrameRetriever;->nativeCleanup(J)V

    .line 65
    iput-wide v2, p0, Lcom/meicam/sdk/NvsVideoKeyFrameRetriever;->m_internalObject:J

    .line 68
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 69
    return-void
.end method

.method public getNextKeyFrame()Lcom/meicam/sdk/NvsVideoKeyFrameRetriever$KeyFrame;
    .locals 4

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoKeyFrameRetriever;->m_internalObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 58
    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoKeyFrameRetriever;->m_internalObject:J

    iget v2, p0, Lcom/meicam/sdk/NvsVideoKeyFrameRetriever;->m_videoFrameHeight:I

    invoke-direct {p0, v0, v1, v2}, Lcom/meicam/sdk/NvsVideoKeyFrameRetriever;->nativeGetNextKeyFrame(JI)Lcom/meicam/sdk/NvsVideoKeyFrameRetriever$KeyFrame;

    move-result-object v0

    goto :goto_0
.end method

.method public release()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 43
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoKeyFrameRetriever;->m_internalObject:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 44
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoKeyFrameRetriever;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoKeyFrameRetriever;->nativeCleanup(J)V

    .line 45
    iput-wide v2, p0, Lcom/meicam/sdk/NvsVideoKeyFrameRetriever;->m_internalObject:J

    .line 47
    :cond_0
    return-void
.end method

.method public startGettingKeyFrame(J)V
    .locals 3

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoKeyFrameRetriever;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsVideoKeyFrameRetriever;->nativeStartGettingKeyFrame(JJ)V

    .line 52
    return-void
.end method
