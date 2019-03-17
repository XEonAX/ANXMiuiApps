.class public Lcom/miui/gallery/editor/photo/widgets/overscroll/HorizontalOverScrollBounceEffectDecorator$MotionAttributesHorizontal;
.super Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;
.source "HorizontalOverScrollBounceEffectDecorator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/widgets/overscroll/HorizontalOverScrollBounceEffectDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MotionAttributesHorizontal"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/widgets/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v4

    if-nez v4, :cond_1

    .line 39
    :cond_0
    :goto_0
    return v2

    .line 29
    :cond_1
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p2, v2, v2}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v5

    sub-float v1, v4, v5

    .line 30
    .local v1, "dy":F
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p2, v2, v2}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v5

    sub-float v0, v4, v5

    .line 31
    .local v0, "dx":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_0

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v4

    iput v4, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/HorizontalOverScrollBounceEffectDecorator$MotionAttributesHorizontal;->mAbsOffset:F

    .line 36
    iput v0, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/HorizontalOverScrollBounceEffectDecorator$MotionAttributesHorizontal;->mDeltaOffset:F

    .line 37
    iget v4, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/HorizontalOverScrollBounceEffectDecorator$MotionAttributesHorizontal;->mDeltaOffset:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    move v2, v3

    :cond_2
    iput-boolean v2, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/HorizontalOverScrollBounceEffectDecorator$MotionAttributesHorizontal;->mDir:Z

    move v2, v3

    .line 39
    goto :goto_0
.end method
