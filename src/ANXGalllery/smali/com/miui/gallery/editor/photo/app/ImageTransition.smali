.class Lcom/miui/gallery/editor/photo/app/ImageTransition;
.super Landroid/transition/ChangeBounds;
.source "ImageTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/app/ImageTransition$ConfigCropType;
    }
.end annotation


# static fields
.field private static PROPERTY_MATRIX:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/widget/ImageView;",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEnter:Z

.field private mImageHeight:I

.field private mImageWidth:I

.field private mMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 126
    new-instance v0, Lcom/miui/gallery/editor/photo/app/ImageTransition$1;

    const-class v1, Landroid/graphics/Matrix;

    const-string v2, "matrix"

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/editor/photo/app/ImageTransition$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/gallery/editor/photo/app/ImageTransition;->PROPERTY_MATRIX:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(ZLandroid/graphics/Matrix;II)V
    .locals 1
    .param p1, "enter"    # Z
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "imageWidth"    # I
    .param p4, "imageHeight"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/transition/ChangeBounds;-><init>()V

    .line 24
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/ImageTransition;->mMatrix:Landroid/graphics/Matrix;

    .line 29
    iput-boolean p1, p0, Lcom/miui/gallery/editor/photo/app/ImageTransition;->mEnter:Z

    .line 30
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/ImageTransition;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 31
    iput p3, p0, Lcom/miui/gallery/editor/photo/app/ImageTransition;->mImageWidth:I

    .line 32
    iput p4, p0, Lcom/miui/gallery/editor/photo/app/ImageTransition;->mImageHeight:I

    .line 33
    return-void
.end method

.method private captureInitialMatrix(Landroid/transition/TransitionValues;)V
    .locals 7
    .param p1, "values"    # Landroid/transition/TransitionValues;

    .prologue
    const/4 v6, 0x0

    .line 56
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 57
    .local v2, "originBounds":Landroid/graphics/RectF;
    iget v4, p0, Lcom/miui/gallery/editor/photo/app/ImageTransition;->mImageWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/miui/gallery/editor/photo/app/ImageTransition;->mImageHeight:I

    int-to-float v5, v5

    invoke-virtual {v2, v6, v6, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 59
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 60
    .local v0, "imgBounds":Landroid/graphics/RectF;
    iget-object v3, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    check-cast v3, Landroid/widget/ImageView;

    .line 61
    .local v3, "view":Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v6, v6, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 63
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 64
    .local v1, "matrix":Landroid/graphics/Matrix;
    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v0, v2, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 66
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/ImageTransition;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 67
    iget-object v4, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "image-matrix"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method

.method private captureMatrix(Landroid/transition/TransitionValues;)V
    .locals 7
    .param p1, "values"    # Landroid/transition/TransitionValues;

    .prologue
    const/4 v6, 0x0

    .line 71
    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageView;

    .line 72
    .local v2, "view":Landroid/widget/ImageView;
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 73
    .local v1, "matrix":Landroid/graphics/Matrix;
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 74
    .local v3, "viewBounds":Landroid/graphics/RectF;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 75
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 76
    .local v0, "imgBounds":Landroid/graphics/RectF;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v6, v6, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 77
    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v0, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 78
    iget-object v4, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "image-matrix"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 1
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/transition/ChangeBounds;->captureEndValues(Landroid/transition/TransitionValues;)V

    .line 48
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/ImageTransition;->mEnter:Z

    if-nez v0, :cond_0

    .line 49
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/app/ImageTransition;->captureInitialMatrix(Landroid/transition/TransitionValues;)V

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/app/ImageTransition;->captureMatrix(Landroid/transition/TransitionValues;)V

    goto :goto_0
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 1
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/transition/ChangeBounds;->captureStartValues(Landroid/transition/TransitionValues;)V

    .line 38
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/ImageTransition;->mEnter:Z

    if-eqz v0, :cond_0

    .line 39
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/app/ImageTransition;->captureInitialMatrix(Landroid/transition/TransitionValues;)V

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/app/ImageTransition;->captureMatrix(Landroid/transition/TransitionValues;)V

    goto :goto_0
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 16
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 92
    invoke-super/range {p0 .. p3}, Landroid/transition/ChangeBounds;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v2

    .line 93
    .local v2, "bounds":Landroid/animation/Animator;
    const/4 v6, 0x0

    .line 94
    .local v6, "scaleChanged":Z
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/miui/gallery/editor/photo/app/ImageTransition;->mEnter:Z

    if-nez v10, :cond_0

    .line 95
    move-object/from16 v0, p2

    iget-object v10, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    check-cast v10, Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 96
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    const/high16 v10, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v11, v0, Lcom/miui/gallery/editor/photo/app/ImageTransition;->mImageWidth:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/miui/gallery/editor/photo/app/ImageTransition;->mImageHeight:I

    int-to-float v11, v11

    div-float v8, v10, v11

    .line 97
    .local v8, "targetScale":F
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v10, v11

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    int-to-float v11, v11

    div-float v3, v10, v11

    .line 98
    .local v3, "currentScale":F
    const v10, 0x3c23d70a    # 0.01f

    invoke-static {v8, v3, v10}, Lcom/miui/gallery/util/MiscUtil;->floatNear(FFF)Z

    move-result v10

    if-nez v10, :cond_1

    const/4 v6, 0x1

    .line 102
    .end local v3    # "currentScale":F
    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v8    # "targetScale":F
    :cond_0
    :goto_0
    if-eqz v6, :cond_2

    .line 103
    move-object/from16 v0, p2

    iget-object v10, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    const-string/jumbo v11, "transitionAlpha"

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v14, v12, v13

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 117
    .local v1, "animator":Landroid/animation/Animator;
    :goto_1
    if-eqz v2, :cond_3

    .line 118
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 119
    .local v7, "set":Landroid/animation/AnimatorSet;
    const/4 v10, 0x2

    new-array v10, v10, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    const/4 v11, 0x1

    aput-object v1, v10, v11

    invoke-virtual {v7, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 122
    .end local v7    # "set":Landroid/animation/AnimatorSet;
    :goto_2
    return-object v7

    .line 98
    .end local v1    # "animator":Landroid/animation/Animator;
    .restart local v3    # "currentScale":F
    .restart local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v8    # "targetScale":F
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 105
    .end local v3    # "currentScale":F
    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v8    # "targetScale":F
    :cond_2
    new-instance v5, Landroid/animation/ObjectAnimator;

    invoke-direct {v5}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 106
    .local v5, "imageMatrix":Landroid/animation/ObjectAnimator;
    sget-object v11, Lcom/miui/gallery/editor/photo/app/ImageTransition;->PROPERTY_MATRIX:Landroid/util/Property;

    new-instance v12, Lcom/miui/gallery/editor/photo/app/MatrixEvaluator;

    invoke-direct {v12}, Lcom/miui/gallery/editor/photo/app/MatrixEvaluator;-><init>()V

    const/4 v10, 0x2

    new-array v13, v10, [Landroid/graphics/Matrix;

    const/4 v14, 0x0

    move-object/from16 v0, p2

    iget-object v10, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v15, "image-matrix"

    .line 108
    invoke-interface {v10, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Matrix;

    aput-object v10, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p3

    iget-object v10, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v15, "image-matrix"

    .line 109
    invoke-interface {v10, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Matrix;

    aput-object v10, v13, v14

    .line 106
    invoke-static {v11, v12, v13}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 111
    .local v9, "values":Landroid/animation/PropertyValuesHolder;
    const/4 v10, 0x1

    new-array v10, v10, [Landroid/animation/PropertyValuesHolder;

    const/4 v11, 0x0

    aput-object v9, v10, v11

    invoke-virtual {v5, v10}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 112
    move-object/from16 v0, p3

    iget-object v10, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 113
    new-instance v10, Lcom/miui/gallery/editor/photo/app/ImageTransition$ConfigCropType;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lcom/miui/gallery/editor/photo/app/ImageTransition$ConfigCropType;-><init>(Lcom/miui/gallery/editor/photo/app/ImageTransition$1;)V

    invoke-virtual {v5, v10}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 114
    move-object v1, v5

    .restart local v1    # "animator":Landroid/animation/Animator;
    goto :goto_1

    .end local v5    # "imageMatrix":Landroid/animation/ObjectAnimator;
    .end local v9    # "values":Landroid/animation/PropertyValuesHolder;
    :cond_3
    move-object v7, v1

    .line 122
    goto :goto_2
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 83
    invoke-super {p0}, Landroid/transition/ChangeBounds;->getTransitionProperties()[Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "boundsProperties":[Ljava/lang/String;
    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 85
    .local v1, "properties":[Ljava/lang/String;
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    array-length v2, v0

    const-string v3, "image-matrix"

    aput-object v3, v1, v2

    .line 87
    return-object v1
.end method
