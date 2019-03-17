.class public Lcom/miui/gallery/search/transitions/ChangeImage;
.super Landroid/transition/Transition;
.source "ChangeImage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;Z)V
    .locals 3
    .param p1, "values"    # Landroid/transition/TransitionValues;
    .param p2, "start"    # Z

    .prologue
    .line 23
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 24
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "customtransition:change_image:drawable"

    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :goto_0
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "customtransition:change_image:start"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    return-void

    .line 26
    :cond_0
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "customtransition:change_image:drawable"

    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 1
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/search/transitions/ChangeImage;->captureValues(Landroid/transition/TransitionValues;Z)V

    .line 39
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 1
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 33
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/search/transitions/ChangeImage;->captureValues(Landroid/transition/TransitionValues;Z)V

    .line 34
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 6
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 44
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 45
    :cond_0
    const/4 v0, 0x0

    .line 74
    :goto_0
    return-object v0

    .line 48
    :cond_1
    iget-object v3, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 49
    .local v3, "view":Landroid/view/View;
    iget-object v4, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "customtransition:change_image:drawable"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 50
    .local v2, "startDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v4, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "customtransition:change_image:drawable"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 51
    .local v1, "endDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 53
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v4, Lcom/miui/gallery/search/transitions/ChangeImage$1;

    invoke-direct {v4, p0, v3, v1, v2}, Lcom/miui/gallery/search/transitions/ChangeImage$1;-><init>(Lcom/miui/gallery/search/transitions/ChangeImage;Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 51
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
