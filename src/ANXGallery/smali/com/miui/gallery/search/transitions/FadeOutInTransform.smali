.class public Lcom/miui/gallery/search/transitions/FadeOutInTransform;
.super Landroid/transition/Transition;
.source "FadeOutInTransform.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;Z)V
    .locals 3
    .param p1, "values"    # Landroid/transition/TransitionValues;
    .param p2, "start"    # Z

    .prologue
    .line 20
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "customtransition:fade_transform:alpha"

    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "customtransition:fade_transform:start"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 1
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/search/transitions/FadeOutInTransform;->captureValues(Landroid/transition/TransitionValues;Z)V

    .line 32
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 1
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 26
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/search/transitions/FadeOutInTransform;->captureValues(Landroid/transition/TransitionValues;Z)V

    .line 27
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 7
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 38
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    .line 42
    :cond_1
    iget-object v3, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 44
    .local v3, "view":Landroid/view/View;
    iget-object v4, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "customtransition:fade_transform:alpha"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 45
    .local v1, "startAlpha":F
    iget-object v4, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "customtransition:fade_transform:alpha"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float v2, v4, v1

    .line 46
    .local v2, "total":F
    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    aput v2, v4, v5

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 47
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v4, Lcom/miui/gallery/search/transitions/FadeOutInTransform$1;

    invoke-direct {v4, p0, v3, v1}, Lcom/miui/gallery/search/transitions/FadeOutInTransform$1;-><init>(Lcom/miui/gallery/search/transitions/FadeOutInTransform;Landroid/view/View;F)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0
.end method
