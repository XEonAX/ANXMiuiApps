.class public Lcom/miui/gallery/search/transitions/ChangeTextView;
.super Landroid/transition/Transition;
.source "ChangeTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/search/transitions/ChangeTextView$ValueHolder;,
        Lcom/miui/gallery/search/transitions/ChangeTextView$TextAnimationUpdater;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    .line 148
    return-void
.end method

.method static synthetic access$000(FI)I
    .locals 1
    .param p0, "x0"    # F
    .param p1, "x1"    # I

    .prologue
    .line 21
    invoke-static {p0, p1}, Lcom/miui/gallery/search/transitions/ChangeTextView;->colorWithAlpha(FI)I

    move-result v0

    return v0
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 4
    .param p1, "values"    # Landroid/transition/TransitionValues;

    .prologue
    .line 30
    iget-object v1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 31
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 32
    .local v0, "textView":Landroid/widget/TextView;
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "customtransition:change_text_view:text"

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/miui/gallery/search/transitions/ChangeTextView;->nullToEmpty(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "customtransition:change_text_view:text_color"

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "customtransition:change_text_view:hint"

    invoke-virtual {v0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/miui/gallery/search/transitions/ChangeTextView;->nullToEmpty(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "customtransition:change_text_view:hint_color"

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentHintTextColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .end local v0    # "textView":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private static colorWithAlpha(FI)I
    .locals 4
    .param p0, "alpha"    # F
    .param p1, "color"    # I

    .prologue
    .line 145
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p0

    float-to-int v0, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private nullToEmpty(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p1, "string"    # Ljava/lang/CharSequence;

    .prologue
    .line 40
    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/transitions/ChangeTextView;->captureValues(Landroid/transition/TransitionValues;)V

    .line 51
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/transitions/ChangeTextView;->captureValues(Landroid/transition/TransitionValues;)V

    .line 46
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 5
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    const/4 v0, 0x0

    .line 57
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-object v0

    .line 60
    :cond_1
    iget-object v2, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 61
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 62
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/miui/gallery/search/transitions/ChangeTextView$TextAnimationUpdater;

    iget-object v2, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Lcom/miui/gallery/search/transitions/ChangeTextView$ValueHolder;

    invoke-direct {v3, p2}, Lcom/miui/gallery/search/transitions/ChangeTextView$ValueHolder;-><init>(Landroid/transition/TransitionValues;)V

    new-instance v4, Lcom/miui/gallery/search/transitions/ChangeTextView$ValueHolder;

    invoke-direct {v4, p3}, Lcom/miui/gallery/search/transitions/ChangeTextView$ValueHolder;-><init>(Landroid/transition/TransitionValues;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/search/transitions/ChangeTextView$TextAnimationUpdater;-><init>(Landroid/widget/TextView;Lcom/miui/gallery/search/transitions/ChangeTextView$ValueHolder;Lcom/miui/gallery/search/transitions/ChangeTextView$ValueHolder;)V

    .line 64
    .local v1, "listener":Lcom/miui/gallery/search/transitions/ChangeTextView$TextAnimationUpdater;
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 65
    invoke-virtual {v1}, Lcom/miui/gallery/search/transitions/ChangeTextView$TextAnimationUpdater;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 61
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
