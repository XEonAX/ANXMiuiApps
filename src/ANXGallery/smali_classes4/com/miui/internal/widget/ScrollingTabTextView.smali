.class public Lcom/miui/internal/widget/ScrollingTabTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field private vB:Landroid/content/res/ColorStateList;

.field private vC:I

.field private vD:I

.field private vE:Landroid/animation/ValueAnimator;

.field private vF:I

.field private vG:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-direct {p0}, Lcom/miui/internal/widget/ScrollingTabTextView;->bR()V

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/miui/internal/widget/ScrollingTabTextView;I)I
    .locals 0

    .line 18
    iput p1, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->vF:I

    return p1
.end method

.method private bR()V
    .locals 4

    .line 33
    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabTextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->vB:Landroid/content/res/ColorStateList;

    .line 34
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->vB:Landroid/content/res/ColorStateList;

    sget-object v1, Lcom/miui/internal/widget/ScrollingTabTextView;->ENABLED_STATE_SET:[I

    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/internal/R$color;->action_bar_tab_text_color_normal_light:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->vC:I

    .line 36
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->vB:Landroid/content/res/ColorStateList;

    sget-object v1, Lcom/miui/internal/widget/ScrollingTabTextView;->ENABLED_SELECTED_STATE_SET:[I

    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/internal/R$color;->action_bar_tab_text_color_selected_light:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->vD:I

    .line 38
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 48
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->vE:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->vE:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 54
    :cond_0
    iget-boolean v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->vG:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabTextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->vG:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabTextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 55
    :cond_2
    iget v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->vC:I

    goto :goto_0

    .line 57
    :cond_3
    iget v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->vD:I

    .line 59
    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ScrollingTabTextView;->setTextColor(I)V

    .line 61
    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    .line 63
    nop

    .line 64
    nop

    .line 65
    iget v2, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->vF:I

    .line 66
    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabTextView;->getHeight()I

    move-result v3

    .line 68
    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 69
    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabTextView;->getScrollX()I

    move-result v5

    add-int/2addr v5, v4

    .line 70
    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabTextView;->getScrollX()I

    move-result v6

    add-int/2addr v2, v6

    goto :goto_1

    .line 73
    :cond_4
    move v5, v4

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 74
    invoke-virtual {p1, v5, v4, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 75
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 76
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 78
    iget v2, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->vC:I

    if-ne v0, v2, :cond_5

    .line 79
    iget v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->vD:I

    goto :goto_2

    .line 80
    :cond_5
    iget v2, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->vD:I

    if-ne v0, v2, :cond_6

    .line 81
    iget v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->vC:I

    .line 83
    :cond_6
    :goto_2
    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ScrollingTabTextView;->setTextColor(I)V

    .line 85
    iget v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->vF:I

    .line 86
    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabTextView;->getWidth()I

    move-result v2

    .line 88
    if-eqz v1, :cond_7

    .line 89
    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabTextView;->getScrollX()I

    move-result v1

    add-int/2addr v0, v1

    .line 90
    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabTextView;->getScrollX()I

    move-result v1

    add-int/2addr v2, v1

    .line 93
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 94
    invoke-virtual {p1, v0, v4, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 95
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 96
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 98
    iget-object p1, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->vB:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ScrollingTabTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 99
    return-void

    .line 49
    :cond_8
    :goto_3
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 50
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 43
    invoke-direct {p0}, Lcom/miui/internal/widget/ScrollingTabTextView;->bR()V

    .line 44
    return-void
.end method

.method public startScrollAnimation(Z)V
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->vE:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->vE:Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->vE:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 108
    :goto_0
    iput-boolean p1, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->vG:Z

    .line 112
    iget-boolean p1, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->vG:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 113
    nop

    .line 114
    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabTextView;->getWidth()I

    move-result p1

    .line 120
    move v1, p1

    move p1, v0

    goto :goto_1

    .line 116
    :cond_1
    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabTextView;->getWidth()I

    move-result p1

    .line 117
    nop

    .line 120
    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->vE:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput p1, v3, v0

    const/4 p1, 0x1

    aput v1, v3, p1

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 121
    iget-object p1, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->vE:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 122
    iget-object p1, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->vE:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/miui/internal/widget/ScrollingTabTextView$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/ScrollingTabTextView$1;-><init>(Lcom/miui/internal/widget/ScrollingTabTextView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 129
    iget-object p1, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->vE:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/miui/internal/widget/ScrollingTabTextView$2;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/ScrollingTabTextView$2;-><init>(Lcom/miui/internal/widget/ScrollingTabTextView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 136
    iget-object p1, p0, Lcom/miui/internal/widget/ScrollingTabTextView;->vE:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 137
    return-void
.end method
