.class public Lcom/miui/internal/hybrid/WebContainerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private fL:Z

.field private fM:Z

.field private fN:Landroid/view/View;

.field private fO:I

.field private fP:F

.field private fQ:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/hybrid/WebContainerView;->fM:Z

    .line 30
    sget-object v1, Lmiui/R$styleable;->HybridViewStyle:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 32
    sget p2, Lmiui/R$styleable;->HybridViewStyle_hybridPullable:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/miui/internal/hybrid/WebContainerView;->fL:Z

    .line 33
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 35
    invoke-virtual {p0}, Lcom/miui/internal/hybrid/WebContainerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/miui/internal/hybrid/WebContainerView;->fO:I

    .line 37
    return-void
.end method

.method private springBack()V
    .locals 3

    .line 125
    invoke-virtual {p0}, Lcom/miui/internal/hybrid/WebContainerView;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 126
    return-void

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/hybrid/WebContainerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 129
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 130
    invoke-virtual {p0}, Lcom/miui/internal/hybrid/WebContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 131
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 132
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 54
    iget-object v0, p0, Lcom/miui/internal/hybrid/WebContainerView;->fN:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/miui/internal/hybrid/WebContainerView;->fL:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 58
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    .line 62
    const/4 v3, 0x3

    if-eq v0, v3, :cond_6

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    goto :goto_1

    .line 67
    :cond_1
    if-eqz v0, :cond_4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    goto :goto_0

    .line 73
    :cond_2
    iget-boolean v0, p0, Lcom/miui/internal/hybrid/WebContainerView;->fM:Z

    if-eqz v0, :cond_3

    .line 74
    return v3

    .line 77
    :cond_3
    iget v0, p0, Lcom/miui/internal/hybrid/WebContainerView;->fP:F

    sub-float/2addr v0, v2

    .line 78
    iget v4, p0, Lcom/miui/internal/hybrid/WebContainerView;->fQ:F

    sub-float/2addr v4, p1

    .line 80
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 81
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 83
    iput v2, p0, Lcom/miui/internal/hybrid/WebContainerView;->fP:F

    .line 84
    iput p1, p0, Lcom/miui/internal/hybrid/WebContainerView;->fQ:F

    .line 86
    iget-object p1, p0, Lcom/miui/internal/hybrid/WebContainerView;->fN:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, 0x0

    cmpg-float p1, v4, p1

    if-gez p1, :cond_5

    cmpl-float p1, v5, v0

    if-lez p1, :cond_5

    iget p1, p0, Lcom/miui/internal/hybrid/WebContainerView;->fO:I

    int-to-float p1, p1

    cmpl-float p1, v5, p1

    if-lez p1, :cond_5

    .line 89
    iput-boolean v3, p0, Lcom/miui/internal/hybrid/WebContainerView;->fM:Z

    .line 90
    return v3

    .line 69
    :cond_4
    iput v2, p0, Lcom/miui/internal/hybrid/WebContainerView;->fP:F

    .line 70
    iput p1, p0, Lcom/miui/internal/hybrid/WebContainerView;->fQ:F

    .line 71
    nop

    .line 95
    :cond_5
    :goto_0
    return v1

    .line 63
    :cond_6
    :goto_1
    iput-boolean v1, p0, Lcom/miui/internal/hybrid/WebContainerView;->fM:Z

    .line 64
    return v1

    .line 55
    :cond_7
    :goto_2
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 100
    iget-boolean v0, p0, Lcom/miui/internal/hybrid/WebContainerView;->fL:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/internal/hybrid/WebContainerView;->fM:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 104
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    .line 106
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 111
    :pswitch_0
    iget p1, p0, Lcom/miui/internal/hybrid/WebContainerView;->fQ:F

    sub-float p1, v0, p1

    .line 112
    invoke-virtual {p0}, Lcom/miui/internal/hybrid/WebContainerView;->getTranslationY()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr p1, v3

    add-float/2addr v2, p1

    invoke-virtual {p0, v2}, Lcom/miui/internal/hybrid/WebContainerView;->setTranslationY(F)V

    .line 113
    iput v0, p0, Lcom/miui/internal/hybrid/WebContainerView;->fQ:F

    .line 114
    goto :goto_0

    .line 117
    :pswitch_1
    iput-boolean v1, p0, Lcom/miui/internal/hybrid/WebContainerView;->fM:Z

    .line 118
    invoke-direct {p0}, Lcom/miui/internal/hybrid/WebContainerView;->springBack()V

    goto :goto_0

    .line 108
    :pswitch_2
    iput v0, p0, Lcom/miui/internal/hybrid/WebContainerView;->fQ:F

    .line 109
    nop

    .line 121
    :goto_0
    return v1

    .line 101
    :cond_1
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setWebView(Landroid/view/View;)V
    .locals 3

    .line 40
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/miui/internal/hybrid/WebContainerView;->fN:Landroid/view/View;

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/hybrid/WebContainerView;->fN:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/miui/internal/hybrid/WebContainerView;->fN:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/internal/hybrid/WebContainerView;->removeView(Landroid/view/View;)V

    .line 46
    :cond_1
    iput-object p1, p0, Lcom/miui/internal/hybrid/WebContainerView;->fN:Landroid/view/View;

    .line 48
    const/4 v0, 0x0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/internal/hybrid/WebContainerView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 50
    return-void

    .line 41
    :cond_2
    :goto_0
    return-void
.end method
