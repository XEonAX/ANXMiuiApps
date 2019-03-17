.class public Lcom/nexstreaming/nexeditorsdk/nexAnimate$Scale;
.super Lcom/nexstreaming/nexeditorsdk/nexAnimate;
.source "nexAnimate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/nexeditorsdk/nexAnimate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Scale"
.end annotation


# instance fields
.field protected final mLastScaledX:F

.field protected final mLastScaledY:F

.field protected final mLastScaledZ:F

.field private mPath:Lcom/nexstreaming/nexeditorsdk/nexAnimate$MoveTrackingPath;

.field protected final mSetStart:Z

.field protected final mStartScaledX:F

.field protected final mStartScaledY:F

.field protected final mStartScaledZ:F


# direct methods
.method protected constructor <init>(IIFFF)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 585
    invoke-direct {p0, p1, p2}, Lcom/nexstreaming/nexeditorsdk/nexAnimate;-><init>(II)V

    .line 586
    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Scale;->mStartScaledX:F

    .line 587
    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Scale;->mStartScaledY:F

    .line 588
    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Scale;->mStartScaledZ:F

    .line 589
    iput p3, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Scale;->mLastScaledX:F

    .line 590
    iput p4, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Scale;->mLastScaledY:F

    .line 591
    iput p5, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Scale;->mLastScaledZ:F

    .line 592
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Scale;->mSetStart:Z

    .line 593
    return-void
.end method

.method protected constructor <init>(IIFFFFFF)V
    .locals 1

    .prologue
    .line 596
    invoke-direct {p0, p1, p2}, Lcom/nexstreaming/nexeditorsdk/nexAnimate;-><init>(II)V

    .line 597
    iput p3, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Scale;->mStartScaledX:F

    .line 598
    iput p4, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Scale;->mStartScaledY:F

    .line 599
    iput p5, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Scale;->mStartScaledZ:F

    .line 601
    iput p6, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Scale;->mLastScaledX:F

    .line 602
    iput p7, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Scale;->mLastScaledY:F

    .line 603
    iput p8, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Scale;->mLastScaledZ:F

    .line 604
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Scale;->mSetStart:Z

    .line 605
    return-void
.end method

.method protected constructor <init>(IILcom/nexstreaming/nexeditorsdk/nexAnimate$MoveTrackingPath;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 608
    invoke-direct {p0, p1, p2}, Lcom/nexstreaming/nexeditorsdk/nexAnimate;-><init>(II)V

    .line 609
    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Scale;->mStartScaledX:F

    .line 610
    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Scale;->mStartScaledY:F

    .line 611
    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Scale;->mStartScaledZ:F

    .line 613
    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Scale;->mLastScaledX:F

    .line 614
    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Scale;->mLastScaledY:F

    .line 615
    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Scale;->mLastScaledZ:F

    .line 617
    iput-object p3, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Scale;->mPath:Lcom/nexstreaming/nexeditorsdk/nexAnimate$MoveTrackingPath;

    .line 618
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Scale;->mSetStart:Z

    .line 619
    return-void
.end method


# virtual methods
.method protected getScaledRatio(IFI)F
    .locals 2

    .prologue
    .line 624
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Scale;->mPath:Lcom/nexstreaming/nexeditorsdk/nexAnimate$MoveTrackingPath;

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Scale;->mPath:Lcom/nexstreaming/nexeditorsdk/nexAnimate$MoveTrackingPath;

    invoke-virtual {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Scale;->timeRatio(I)F

    move-result v1

    invoke-interface {v0, p3, v1}, Lcom/nexstreaming/nexeditorsdk/nexAnimate$MoveTrackingPath;->getTranslatePosition(IF)F

    move-result v0

    add-float/2addr v0, p2

    .line 653
    :goto_0
    return v0

    .line 630
    :cond_0
    const/4 v0, 0x0

    .line 632
    const/4 v1, 0x1

    if-ne p3, v1, :cond_2

    .line 633
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Scale;->mLastScaledX:F

    .line 635
    iget-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Scale;->mSetStart:Z

    if-eqz v1, :cond_1

    .line 636
    iget p2, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Scale;->mStartScaledX:F

    .line 650
    :cond_1
    :goto_1
    cmpl-float v1, v0, p2

    if-lez v1, :cond_4

    .line 651
    sub-float/2addr v0, p2

    invoke-virtual {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Scale;->timeRatio(I)F

    move-result v1

    mul-float/2addr v0, v1

    add-float/2addr v0, p2

    goto :goto_0

    .line 638
    :cond_2
    const/4 v1, 0x2

    if-ne p3, v1, :cond_3

    .line 639
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Scale;->mLastScaledY:F

    .line 640
    iget-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Scale;->mSetStart:Z

    if-eqz v1, :cond_1

    .line 641
    iget p2, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Scale;->mStartScaledY:F

    goto :goto_1

    .line 643
    :cond_3
    const/4 v1, 0x3

    if-ne p3, v1, :cond_1

    .line 644
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Scale;->mLastScaledZ:F

    .line 645
    iget-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Scale;->mSetStart:Z

    if-eqz v1, :cond_1

    .line 646
    iget p2, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Scale;->mStartScaledZ:F

    goto :goto_1

    .line 653
    :cond_4
    sub-float v0, p2, v0

    invoke-virtual {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Scale;->timeRatio(I)F

    move-result v1

    mul-float/2addr v0, v1

    sub-float v0, p2, v0

    goto :goto_0
.end method
