.class public Lcom/nexstreaming/nexeditorsdk/nexAnimate$Rotate;
.super Lcom/nexstreaming/nexeditorsdk/nexAnimate;
.source "nexAnimate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/nexeditorsdk/nexAnimate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Rotate"
.end annotation


# instance fields
.field private mCenter:Lcom/nexstreaming/nexeditorsdk/nexAnimate$MoveTrackingPath;

.field private final mClockWise:Z

.field private final mXAxisRotateDegree:F

.field private final mYAxisRotateDegree:F

.field private final mZAxisRotateDegree:F


# direct methods
.method protected constructor <init>(IIZFILcom/nexstreaming/nexeditorsdk/nexAnimate$MoveTrackingPath;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 443
    invoke-direct {p0, p1, p2}, Lcom/nexstreaming/nexeditorsdk/nexAnimate;-><init>(II)V

    .line 444
    iput-boolean p3, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Rotate;->mClockWise:Z

    .line 446
    const/4 v0, 0x1

    if-ne p5, v0, :cond_1

    .line 447
    iput p4, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Rotate;->mXAxisRotateDegree:F

    .line 448
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Rotate;->mYAxisRotateDegree:F

    .line 449
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Rotate;->mZAxisRotateDegree:F

    .line 460
    :goto_0
    iput-object p6, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Rotate;->mCenter:Lcom/nexstreaming/nexeditorsdk/nexAnimate$MoveTrackingPath;

    .line 461
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Rotate;->mCenter:Lcom/nexstreaming/nexeditorsdk/nexAnimate$MoveTrackingPath;

    if-nez v0, :cond_0

    .line 462
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Rotate$1;

    invoke-direct {v0, p0}, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Rotate$1;-><init>(Lcom/nexstreaming/nexeditorsdk/nexAnimate$Rotate;)V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Rotate;->mCenter:Lcom/nexstreaming/nexeditorsdk/nexAnimate$MoveTrackingPath;

    .line 469
    :cond_0
    return-void

    .line 450
    :cond_1
    const/4 v0, 0x2

    if-ne p5, v0, :cond_2

    .line 451
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Rotate;->mXAxisRotateDegree:F

    .line 452
    iput p4, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Rotate;->mYAxisRotateDegree:F

    .line 453
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Rotate;->mZAxisRotateDegree:F

    goto :goto_0

    .line 455
    :cond_2
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Rotate;->mXAxisRotateDegree:F

    .line 456
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Rotate;->mYAxisRotateDegree:F

    .line 457
    iput p4, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Rotate;->mZAxisRotateDegree:F

    goto :goto_0
.end method


# virtual methods
.method protected getAngleDegree(IFI)F
    .locals 2

    .prologue
    .line 473
    const/4 v0, 0x0

    .line 474
    const/4 v1, 0x3

    if-ne p3, v1, :cond_2

    .line 475
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Rotate;->mZAxisRotateDegree:F

    invoke-virtual {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Rotate;->timeRatio(I)F

    move-result v1

    mul-float/2addr v0, v1

    .line 482
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Rotate;->mClockWise:Z

    if-nez v1, :cond_1

    .line 483
    const/high16 v1, -0x40800000    # -1.0f

    mul-float/2addr v0, v1

    .line 485
    :cond_1
    add-float/2addr v0, p2

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    return v0

    .line 476
    :cond_2
    const/4 v1, 0x1

    if-ne p3, v1, :cond_3

    .line 477
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Rotate;->mXAxisRotateDegree:F

    invoke-virtual {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Rotate;->timeRatio(I)F

    move-result v1

    mul-float/2addr v0, v1

    goto :goto_0

    .line 478
    :cond_3
    const/4 v1, 0x2

    if-ne p3, v1, :cond_0

    .line 479
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Rotate;->mYAxisRotateDegree:F

    invoke-virtual {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Rotate;->timeRatio(I)F

    move-result v1

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method protected getTranslatePosition(II)F
    .locals 2

    .prologue
    .line 490
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Rotate;->mCenter:Lcom/nexstreaming/nexeditorsdk/nexAnimate$MoveTrackingPath;

    invoke-virtual {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Rotate;->timeRatio(I)F

    move-result v1

    invoke-interface {v0, p2, v1}, Lcom/nexstreaming/nexeditorsdk/nexAnimate$MoveTrackingPath;->getTranslatePosition(IF)F

    move-result v0

    return v0
.end method
