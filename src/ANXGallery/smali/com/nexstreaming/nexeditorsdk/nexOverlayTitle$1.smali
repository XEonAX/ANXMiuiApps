.class Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$1;
.super Ljava/lang/Object;
.source "nexOverlayTitle.java"

# interfaces
.implements Lcom/nexstreaming/nexeditorsdk/nexAnimate$MoveTrackingPath;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->a(Landroid/content/Context;Lcom/nexstreaming/nexeditorsdk/nexProject;Ljava/util/List;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:F

.field final synthetic d:F

.field final synthetic e:Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;


# direct methods
.method constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;FFFF)V
    .locals 0

    .prologue
    .line 580
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$1;->e:Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;

    iput p2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$1;->a:F

    iput p3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$1;->b:F

    iput p4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$1;->c:F

    iput p5, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$1;->d:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTranslatePosition(IF)F
    .locals 3

    .prologue
    .line 584
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 586
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$1;->a:F

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$1;->b:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, p2

    .line 587
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$1;->a:F

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$1;->b:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 589
    :goto_0
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$1;->a:F

    add-float/2addr v0, v1

    .line 598
    :goto_1
    return v0

    .line 587
    :cond_0
    neg-float v0, v0

    goto :goto_0

    .line 591
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 593
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$1;->c:F

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$1;->d:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, p2

    .line 594
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$1;->c:F

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$1;->d:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 596
    :goto_2
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$1;->c:F

    add-float/2addr v0, v1

    goto :goto_1

    .line 594
    :cond_2
    neg-float v0, v0

    goto :goto_2

    .line 598
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
