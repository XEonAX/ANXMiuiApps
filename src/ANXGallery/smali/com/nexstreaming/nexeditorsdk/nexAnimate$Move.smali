.class public Lcom/nexstreaming/nexeditorsdk/nexAnimate$Move;
.super Lcom/nexstreaming/nexeditorsdk/nexAnimate;
.source "nexAnimate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/nexeditorsdk/nexAnimate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Move"
.end annotation


# instance fields
.field private mPath:Lcom/nexstreaming/nexeditorsdk/nexAnimate$MoveTrackingPath;


# direct methods
.method protected constructor <init>(IILcom/nexstreaming/nexeditorsdk/nexAnimate$MoveTrackingPath;)V
    .locals 1

    .prologue
    .line 368
    invoke-direct {p0, p1, p2}, Lcom/nexstreaming/nexeditorsdk/nexAnimate;-><init>(II)V

    .line 369
    iput-object p3, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Move;->mPath:Lcom/nexstreaming/nexeditorsdk/nexAnimate$MoveTrackingPath;

    .line 370
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Move;->mPath:Lcom/nexstreaming/nexeditorsdk/nexAnimate$MoveTrackingPath;

    if-nez v0, :cond_0

    .line 371
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Move$1;

    invoke-direct {v0, p0}, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Move$1;-><init>(Lcom/nexstreaming/nexeditorsdk/nexAnimate$Move;)V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Move;->mPath:Lcom/nexstreaming/nexeditorsdk/nexAnimate$MoveTrackingPath;

    .line 378
    :cond_0
    return-void
.end method


# virtual methods
.method protected getTranslatePosition(II)F
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Move;->mPath:Lcom/nexstreaming/nexeditorsdk/nexAnimate$MoveTrackingPath;

    invoke-virtual {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexAnimate$Move;->timeRatio(I)F

    move-result v1

    invoke-interface {v0, p2, v1}, Lcom/nexstreaming/nexeditorsdk/nexAnimate$MoveTrackingPath;->getTranslatePosition(IF)F

    move-result v0

    return v0
.end method
