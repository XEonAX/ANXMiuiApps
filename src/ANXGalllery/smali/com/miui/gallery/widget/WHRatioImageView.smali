.class public Lcom/miui/gallery/widget/WHRatioImageView;
.super Lcom/miui/gallery/widget/ForegroundImageView;
.source "WHRatioImageView.java"


# instance fields
.field private mWHRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/ForegroundImageView;-><init>(Landroid/content/Context;)V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/widget/WHRatioImageView;->mWHRatio:F

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/widget/WHRatioImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/widget/ForegroundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    iput v2, p0, Lcom/miui/gallery/widget/WHRatioImageView;->mWHRatio:F

    .line 23
    sget-object v1, Lcom/miui/gallery/R$styleable;->WHRatioImageView:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 25
    .local v0, "a":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/miui/gallery/widget/WHRatioImageView;->mWHRatio:F

    .line 27
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 29
    :cond_0
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 40
    iget v4, p0, Lcom/miui/gallery/widget/WHRatioImageView;->mWHRatio:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 41
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 42
    .local v2, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 43
    .local v3, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 44
    .local v0, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 46
    .local v1, "heightSize":I
    if-ne v2, v6, :cond_2

    .line 47
    const/high16 v0, 0x40000000    # 2.0f

    .line 48
    int-to-float v4, v3

    iget v5, p0, Lcom/miui/gallery/widget/WHRatioImageView;->mWHRatio:F

    div-float/2addr v4, v5

    float-to-int v1, v4

    .line 54
    :cond_0
    :goto_0
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 55
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 57
    .end local v0    # "heightMode":I
    .end local v1    # "heightSize":I
    .end local v2    # "widthMode":I
    .end local v3    # "widthSize":I
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/widget/ForegroundImageView;->onMeasure(II)V

    .line 58
    return-void

    .line 49
    .restart local v0    # "heightMode":I
    .restart local v1    # "heightSize":I
    .restart local v2    # "widthMode":I
    .restart local v3    # "widthSize":I
    :cond_2
    if-ne v0, v6, :cond_0

    .line 50
    const/high16 v2, 0x40000000    # 2.0f

    .line 51
    int-to-float v4, v1

    iget v5, p0, Lcom/miui/gallery/widget/WHRatioImageView;->mWHRatio:F

    mul-float/2addr v4, v5

    float-to-int v3, v4

    goto :goto_0
.end method

.method public setWHRatio(F)V
    .locals 1
    .param p1, "ratio"    # F

    .prologue
    .line 32
    iget v0, p0, Lcom/miui/gallery/widget/WHRatioImageView;->mWHRatio:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iput p1, p0, Lcom/miui/gallery/widget/WHRatioImageView;->mWHRatio:F

    .line 34
    invoke-virtual {p0}, Lcom/miui/gallery/widget/WHRatioImageView;->requestLayout()V

    .line 36
    :cond_0
    return-void
.end method
