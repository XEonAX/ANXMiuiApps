.class public Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateEvaluator;
.super Ljava/lang/Object;
.source "TranslateEvaluator.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<",
        "Landroid/graphics/Matrix;",
        ">;"
    }
.end annotation


# instance fields
.field private mEnd:[F

.field private mMatrix:Landroid/graphics/Matrix;

.field private mRaw:[F

.field private mStart:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateEvaluator;->mMatrix:Landroid/graphics/Matrix;

    .line 10
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateEvaluator;->mStart:[F

    .line 12
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateEvaluator;->mEnd:[F

    .line 14
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateEvaluator;->mRaw:[F

    return-void
.end method


# virtual methods
.method public evaluate(FLandroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 9
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Landroid/graphics/Matrix;
    .param p3, "endValue"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 18
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateEvaluator;->mStart:[F

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 19
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateEvaluator;->mEnd:[F

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 20
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateEvaluator;->mRaw:[F

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateEvaluator;->mStart:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateEvaluator;->mEnd:[F

    aget v2, v2, v4

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateEvaluator;->mStart:[F

    aget v3, v3, v4

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 22
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateEvaluator;->mRaw:[F

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateEvaluator;->mStart:[F

    aget v1, v1, v5

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateEvaluator;->mEnd:[F

    aget v2, v2, v5

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateEvaluator;->mStart:[F

    aget v3, v3, v5

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    aput v1, v0, v5

    .line 24
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateEvaluator;->mRaw:[F

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateEvaluator;->mStart:[F

    aget v1, v1, v6

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateEvaluator;->mEnd:[F

    aget v2, v2, v6

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateEvaluator;->mStart:[F

    aget v3, v3, v6

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    aput v1, v0, v6

    .line 26
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateEvaluator;->mRaw:[F

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateEvaluator;->mStart:[F

    aget v1, v1, v7

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateEvaluator;->mEnd:[F

    aget v2, v2, v7

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateEvaluator;->mStart:[F

    aget v3, v3, v7

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    aput v1, v0, v7

    .line 28
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateEvaluator;->mRaw:[F

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateEvaluator;->mStart:[F

    aget v1, v1, v8

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateEvaluator;->mEnd:[F

    aget v2, v2, v8

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateEvaluator;->mStart:[F

    aget v3, v3, v8

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    aput v1, v0, v8

    .line 30
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateEvaluator;->mRaw:[F

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateEvaluator;->mStart:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateEvaluator;->mEnd:[F

    const/4 v4, 0x5

    aget v3, v3, v4

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateEvaluator;->mStart:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 32
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateEvaluator;->mRaw:[F

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateEvaluator;->mStart:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    aput v2, v0, v1

    .line 33
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateEvaluator;->mRaw:[F

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateEvaluator;->mStart:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    aput v2, v0, v1

    .line 34
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateEvaluator;->mRaw:[F

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateEvaluator;->mStart:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    aput v2, v0, v1

    .line 35
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateEvaluator;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateEvaluator;->mRaw:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 36
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateEvaluator;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    check-cast p2, Landroid/graphics/Matrix;

    check-cast p3, Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateEvaluator;->evaluate(FLandroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method
