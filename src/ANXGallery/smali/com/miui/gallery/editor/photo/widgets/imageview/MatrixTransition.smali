.class public Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;
.super Ljava/lang/Object;
.source "MatrixTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition$MatrixUpdateListener;
    }
.end annotation


# instance fields
.field private mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mCurrentMatrix:[Landroid/graphics/Matrix;

.field private mMatrixUpdateListener:Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition$MatrixUpdateListener;

.field private mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition$1;-><init>(Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 63
    new-instance v0, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition$2;-><init>(Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 19
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 20
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 21
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 22
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;)[Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;->mCurrentMatrix:[Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$002(Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;[Landroid/graphics/Matrix;)[Landroid/graphics/Matrix;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;
    .param p1, "x1"    # [Landroid/graphics/Matrix;

    .prologue
    .line 10
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;->mCurrentMatrix:[Landroid/graphics/Matrix;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;)Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition$MatrixUpdateListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;->mMatrixUpdateListener:Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition$MatrixUpdateListener;

    return-object v0
.end method


# virtual methods
.method public varargs animMatrix([Landroid/graphics/Matrix;)V
    .locals 11
    .param p1, "values"    # [Landroid/graphics/Matrix;

    .prologue
    .line 32
    array-length v6, p1

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_0

    .line 33
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "values length should be a even number !"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 35
    :cond_0
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->cancel()V

    .line 36
    array-length v6, p1

    div-int/lit8 v3, v6, 0x2

    .line 37
    .local v3, "size":I
    new-array v6, v3, [Landroid/graphics/Matrix;

    iput-object v6, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;->mCurrentMatrix:[Landroid/graphics/Matrix;

    .line 38
    new-array v2, v3, [Landroid/animation/PropertyValuesHolder;

    .line 39
    .local v2, "propertyValuesHolders":[Landroid/animation/PropertyValuesHolder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, p1

    if-ge v1, v6, :cond_1

    .line 40
    aget-object v4, p1, v1

    .line 41
    .local v4, "start":Landroid/graphics/Matrix;
    add-int/lit8 v6, v1, 0x1

    aget-object v0, p1, v6

    .line 42
    .local v0, "end":Landroid/graphics/Matrix;
    div-int/lit8 v5, v1, 0x2

    .line 43
    .local v5, "subIndex":I
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;->mCurrentMatrix:[Landroid/graphics/Matrix;

    aput-object v4, v6, v5

    .line 44
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "property_matrix"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/miui/gallery/editor/photo/app/MatrixEvaluator;

    invoke-direct {v7}, Lcom/miui/gallery/editor/photo/app/MatrixEvaluator;-><init>()V

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10, v4}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v0, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v2, v5

    .line 39
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 46
    .end local v0    # "end":Landroid/graphics/Matrix;
    .end local v4    # "start":Landroid/graphics/Matrix;
    .end local v5    # "subIndex":I
    :cond_1
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6, v2}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 47
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    .line 48
    return-void
.end method

.method public setMatrixUpdateListener(Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition$MatrixUpdateListener;)V
    .locals 0
    .param p1, "matrixUpdateListener"    # Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition$MatrixUpdateListener;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;->mMatrixUpdateListener:Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition$MatrixUpdateListener;

    .line 95
    return-void
.end method
