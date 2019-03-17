.class public Lcom/meicam/sdk/NvsVideoFrameRetriever;
.super Ljava/lang/Object;
.source "NvsVideoFrameRetriever.java"


# static fields
.field public static final VIDEO_FRAME_HEIGHT_GRADE_360:I = 0x0

.field public static final VIDEO_FRAME_HEIGHT_GRADE_480:I = 0x1

.field public static final VIDEO_FRAME_HEIGHT_GRADE_720:I = 0x2


# instance fields
.field m_internalObject:J


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meicam/sdk/NvsVideoFrameRetriever;->m_internalObject:J

    .line 77
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsVideoFrameRetriever;->nativeCreateVideoRetrieverReader(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method private native nativeCleanup(J)V
.end method

.method private native nativeCreateVideoRetrieverReader(Ljava/lang/String;)V
.end method

.method private native nativeGetFrameAtTime(JJII)Landroid/graphics/Bitmap;
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

    .line 82
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoFrameRetriever;->m_internalObject:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 83
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoFrameRetriever;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoFrameRetriever;->nativeCleanup(J)V

    .line 84
    iput-wide v2, p0, Lcom/meicam/sdk/NvsVideoFrameRetriever;->m_internalObject:J

    .line 87
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 88
    return-void
.end method

.method public getFrameAtTime(JI)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoFrameRetriever;->m_internalObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    :cond_0
    iget-wide v2, p0, Lcom/meicam/sdk/NvsVideoFrameRetriever;->m_internalObject:J

    const/4 v7, 0x0

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/meicam/sdk/NvsVideoFrameRetriever;->nativeGetFrameAtTime(JJII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getFrameAtTimeWithCustomVideoFrameHeight(JI)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoFrameRetriever;->m_internalObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    if-gtz p3, :cond_1

    .line 70
    :cond_0
    const/4 v0, 0x0

    .line 72
    :goto_0
    return-object v0

    :cond_1
    iget-wide v2, p0, Lcom/meicam/sdk/NvsVideoFrameRetriever;->m_internalObject:J

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v4, p1

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/meicam/sdk/NvsVideoFrameRetriever;->nativeGetFrameAtTime(JJII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public release()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 54
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoFrameRetriever;->m_internalObject:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 55
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoFrameRetriever;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoFrameRetriever;->nativeCleanup(J)V

    .line 56
    iput-wide v2, p0, Lcom/meicam/sdk/NvsVideoFrameRetriever;->m_internalObject:J

    .line 58
    :cond_0
    return-void
.end method
