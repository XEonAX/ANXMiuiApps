.class public Lcom/miui/gallery/ui/PhotoChoiceContainer;
.super Landroid/widget/FrameLayout;
.source "PhotoChoiceContainer.java"

# interfaces
.implements Lcom/miui/gallery/widget/slip/ISlipAnimView;


# instance fields
.field private mInitPadding:I

.field private mSlipPadding:I

.field private mSlipPaddingRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/ui/PhotoChoiceContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/ui/PhotoChoiceContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 11
    iput v0, p0, Lcom/miui/gallery/ui/PhotoChoiceContainer;->mInitPadding:I

    .line 12
    iput v0, p0, Lcom/miui/gallery/ui/PhotoChoiceContainer;->mSlipPadding:I

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/ui/PhotoChoiceContainer;->mSlipPaddingRatio:F

    .line 25
    return-void
.end method

.method private doSlipAnim(F)V
    .locals 4
    .param p1, "progress"    # F

    .prologue
    .line 54
    iget v1, p0, Lcom/miui/gallery/ui/PhotoChoiceContainer;->mSlipPadding:I

    if-lez v1, :cond_0

    .line 55
    iget v1, p0, Lcom/miui/gallery/ui/PhotoChoiceContainer;->mInitPadding:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/gallery/ui/PhotoChoiceContainer;->mSlipPadding:I

    iget v3, p0, Lcom/miui/gallery/ui/PhotoChoiceContainer;->mInitPadding:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 56
    .local v0, "curPaddingTop":I
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoChoiceContainer;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoChoiceContainer;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoChoiceContainer;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/miui/gallery/ui/PhotoChoiceContainer;->setPadding(IIII)V

    .line 58
    .end local v0    # "curPaddingTop":I
    :cond_0
    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 29
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 30
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoChoiceContainer;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/PhotoChoiceContainer;->mInitPadding:I

    .line 31
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoChoiceContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0008

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/PhotoChoiceContainer;->mSlipPaddingRatio:F

    .line 32
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 42
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 43
    iget v0, p0, Lcom/miui/gallery/ui/PhotoChoiceContainer;->mSlipPadding:I

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 44
    :cond_0
    sub-int v0, p5, p3

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/gallery/ui/PhotoChoiceContainer;->mSlipPaddingRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/gallery/ui/PhotoChoiceContainer;->mSlipPadding:I

    .line 46
    :cond_1
    return-void
.end method

.method public onSlipping(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoChoiceContainer;->doSlipAnim(F)V

    .line 37
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/PhotoChoiceContainer;->setAlpha(F)V

    .line 38
    return-void
.end method
