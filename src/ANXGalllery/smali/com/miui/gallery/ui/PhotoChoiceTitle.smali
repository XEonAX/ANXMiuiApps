.class public Lcom/miui/gallery/ui/PhotoChoiceTitle;
.super Landroid/widget/TextView;
.source "PhotoChoiceTitle.java"

# interfaces
.implements Lcom/miui/gallery/widget/slip/ISlipAnimView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method

.method private doSlipAnim(F)V
    .locals 3
    .param p1, "progress"    # F

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoChoiceTitle;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 38
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoChoiceTitle;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 39
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/miui/gallery/util/MiscUtil;->floatEquals(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/miui/gallery/ui/PhotoChoiceTitle;->setVisibility(I)V

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/gallery/ui/PhotoChoiceTitle;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public onSlipping(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoChoiceTitle;->doSlipAnim(F)V

    .line 28
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/PhotoChoiceTitle;->setAlpha(F)V

    .line 29
    return-void
.end method
