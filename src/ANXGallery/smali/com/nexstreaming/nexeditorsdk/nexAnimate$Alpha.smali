.class public Lcom/nexstreaming/nexeditorsdk/nexAnimate$Alpha;
.super Lcom/nexstreaming/nexeditorsdk/nexAnimate;
.source "nexAnimate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/nexeditorsdk/nexAnimate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Alpha"
.end annotation


# instance fields
.field private final mEnd:F

.field private final mStart:F


# direct methods
.method protected constructor <init>(IIFF)V
    .locals 0

    .prologue
    .line 391
    invoke-direct {p0, p1, p2}, Lcom/nexstreaming/nexeditorsdk/nexAnimate;-><init>(II)V

    .line 392
    iput p3, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Alpha;->mStart:F

    .line 393
    iput p4, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Alpha;->mEnd:F

    .line 394
    return-void
.end method


# virtual methods
.method protected getAlpha(I)F
    .locals 4

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 398
    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Alpha;->mEnd:F

    iget v3, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Alpha;->mStart:F

    sub-float/2addr v2, v3

    invoke-virtual {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Alpha;->timeRatio(I)F

    move-result v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Alpha;->mStart:F

    add-float/2addr v2, v3

    .line 399
    cmpl-float v3, v2, v0

    if-lez v3, :cond_0

    .line 404
    :goto_0
    return v0

    .line 401
    :cond_0
    cmpg-float v0, v2, v1

    if-gez v0, :cond_1

    move v0, v1

    .line 402
    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method
