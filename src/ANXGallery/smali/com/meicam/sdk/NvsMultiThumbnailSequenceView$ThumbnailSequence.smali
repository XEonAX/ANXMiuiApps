.class Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequence;
.super Ljava/lang/Object;
.source "NvsMultiThumbnailSequenceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThumbnailSequence"
.end annotation


# instance fields
.field m_inPoint:J

.field m_index:I

.field m_mediaFilePath:Ljava/lang/String;

.field m_outPoint:J

.field m_stillImageHint:Z

.field m_trimDuration:J

.field m_trimIn:J

.field m_width:I

.field m_x:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequence;->m_index:I

    .line 116
    iput-wide v2, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequence;->m_inPoint:J

    .line 117
    iput-wide v2, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequence;->m_outPoint:J

    .line 118
    iput-wide v2, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequence;->m_trimIn:J

    .line 119
    iput-wide v2, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequence;->m_trimDuration:J

    .line 120
    iput-boolean v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequence;->m_stillImageHint:Z

    .line 121
    iput v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequence;->m_x:I

    .line 122
    iput v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequence;->m_width:I

    .line 123
    return-void
.end method


# virtual methods
.method public calcTimestampFromX(I)J
    .locals 6

    .prologue
    .line 127
    iget-wide v0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequence;->m_trimIn:J

    iget v2, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequence;->m_x:I

    sub-int v2, p1, v2

    int-to-double v2, v2

    iget v4, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequence;->m_width:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    iget-wide v4, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequence;->m_trimDuration:J

    long-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method
