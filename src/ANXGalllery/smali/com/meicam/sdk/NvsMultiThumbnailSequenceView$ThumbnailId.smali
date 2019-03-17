.class Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailId;
.super Ljava/lang/Object;
.source "NvsMultiThumbnailSequenceView.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThumbnailId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailId;",
        ">;"
    }
.end annotation


# instance fields
.field public m_seqIndex:I

.field public m_timestamp:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput p1, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailId;->m_seqIndex:I

    .line 143
    iput-wide p2, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailId;->m_timestamp:J

    .line 144
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailId;)I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 149
    iget v2, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailId;->m_seqIndex:I

    iget v3, p1, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailId;->m_seqIndex:I

    if-ge v2, v3, :cond_1

    .line 159
    :cond_0
    :goto_0
    return v0

    .line 151
    :cond_1
    iget v2, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailId;->m_seqIndex:I

    iget v3, p1, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailId;->m_seqIndex:I

    if-le v2, v3, :cond_2

    move v0, v1

    .line 152
    goto :goto_0

    .line 154
    :cond_2
    iget-wide v2, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailId;->m_timestamp:J

    iget-wide v4, p1, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailId;->m_timestamp:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 156
    iget-wide v2, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailId;->m_timestamp:J

    iget-wide v4, p1, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailId;->m_timestamp:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    move v0, v1

    .line 157
    goto :goto_0

    .line 159
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 135
    check-cast p1, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailId;

    invoke-virtual {p0, p1}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailId;->compareTo(Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailId;)I

    move-result v0

    return v0
.end method
