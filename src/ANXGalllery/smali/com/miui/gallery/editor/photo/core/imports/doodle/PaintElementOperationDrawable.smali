.class public Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PaintElementOperationDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;
    }
.end annotation


# instance fields
.field private mActionPosition:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBound:Landroid/graphics/RectF;

.field private mCurrentMatrix:Landroid/graphics/Matrix;

.field private mDecorationDrawables:[Landroid/graphics/drawable/Drawable;

.field private mDecorationRects:[Landroid/graphics/Rect;

.field private mDrawDecoration:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mPoint:[F

.field private mRectFTemp:Landroid/graphics/RectF;

.field private mRotateCenterX:F

.field private mRotateCenterY:F

.field private mRotateDegree:F

.field private mRotateMatrix:Landroid/graphics/Matrix;

.field private mWindow:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 3
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    const/4 v2, 0x4

    .line 44
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 26
    new-array v1, v2, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mDecorationDrawables:[Landroid/graphics/drawable/Drawable;

    .line 27
    new-array v1, v2, [Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mDecorationRects:[Landroid/graphics/Rect;

    .line 28
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mRectFTemp:Landroid/graphics/RectF;

    .line 29
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mBound:Landroid/graphics/RectF;

    .line 31
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mPoint:[F

    .line 33
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mMatrix:Landroid/graphics/Matrix;

    .line 34
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mRotateMatrix:Landroid/graphics/Matrix;

    .line 35
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mCurrentMatrix:Landroid/graphics/Matrix;

    .line 40
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mDrawDecoration:Z

    .line 42
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mActionPosition:Ljava/util/HashMap;

    .line 45
    const v1, 0x7f0200c4

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mWindow:Landroid/graphics/drawable/Drawable;

    .line 46
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mDecorationRects:[Landroid/graphics/Rect;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mDecorationRects:[Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v1, v0

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_0
    return-void
.end method

.method private static configRectByPointAndSize(Landroid/graphics/Rect;[FFF)V
    .locals 4
    .param p0, "rect"    # Landroid/graphics/Rect;
    .param p1, "point"    # [F
    .param p2, "width"    # F
    .param p3, "height"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 144
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    aget v0, p1, v2

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    aget v1, p1, v3

    sub-float/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    aget v2, p1, v2

    add-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    aget v3, p1, v3

    add-float/2addr v3, p3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public configActionPosition(Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Landroid/content/res/Resources;)V
    .locals 6
    .param p1, "topLeft"    # Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;
    .param p2, "topRight"    # Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;
    .param p3, "bottomRight"    # Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;
    .param p4, "bottomLeft"    # Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;
    .param p5, "resources"    # Landroid/content/res/Resources;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mActionPosition:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 64
    if-eqz p1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mActionPosition:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mDecorationDrawables:[Landroid/graphics/drawable/Drawable;

    iget v1, p1, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->icon:I

    invoke-virtual {p5, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v2

    .line 68
    :cond_0
    if-eqz p2, :cond_1

    .line 69
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mActionPosition:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mDecorationDrawables:[Landroid/graphics/drawable/Drawable;

    iget v1, p2, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->icon:I

    invoke-virtual {p5, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v3

    .line 72
    :cond_1
    if-eqz p3, :cond_2

    .line 73
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mActionPosition:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mDecorationDrawables:[Landroid/graphics/drawable/Drawable;

    iget v1, p3, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->icon:I

    invoke-virtual {p5, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v4

    .line 76
    :cond_2
    if-eqz p4, :cond_3

    .line 77
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mActionPosition:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mDecorationDrawables:[Landroid/graphics/drawable/Drawable;

    iget v1, p4, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->icon:I

    invoke-virtual {p5, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v5

    .line 80
    :cond_3
    return-void
.end method

.method public configDecorationPositon(Landroid/graphics/RectF;Landroid/graphics/Matrix;FFF)V
    .locals 1
    .param p1, "bound"    # Landroid/graphics/RectF;
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "rotateDegree"    # F
    .param p4, "rotateCenterX"    # F
    .param p5, "rotateCenterY"    # F

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mBound:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 53
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 54
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 55
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 56
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p3, p4, p5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 57
    iput p3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mRotateDegree:F

    .line 58
    iput p4, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mRotateCenterX:F

    .line 59
    iput p5, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mRotateCenterY:F

    .line 60
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 84
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mRectFTemp:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mBound:Landroid/graphics/RectF;

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 86
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mPoint:[F

    iget v6, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mRotateCenterX:F

    aput v6, v5, v11

    .line 87
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mPoint:[F

    iget v6, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mRotateCenterY:F

    aput v6, v5, v10

    .line 89
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mRectFTemp:Landroid/graphics/RectF;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 90
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mPoint:[F

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 92
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mWindow:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mRectFTemp:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mRectFTemp:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    float-to-int v7, v7

    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mRectFTemp:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    iget-object v9, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mRectFTemp:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    float-to-int v9, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 94
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 95
    iget v5, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mRotateDegree:F

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mPoint:[F

    aget v6, v6, v11

    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mPoint:[F

    aget v7, v7, v10

    invoke-virtual {p1, v5, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 96
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mWindow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 97
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 99
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mActionPosition:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 101
    .local v1, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Ljava/lang/Integer;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 102
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 103
    .local v3, "position":I
    if-nez v3, :cond_2

    .line 104
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mPoint:[F

    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mBound:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    aput v7, v5, v11

    .line 105
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mPoint:[F

    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mBound:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    aput v7, v5, v10

    .line 116
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 117
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mCurrentMatrix:Landroid/graphics/Matrix;

    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v7}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 118
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mCurrentMatrix:Landroid/graphics/Matrix;

    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v7}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 119
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mCurrentMatrix:Landroid/graphics/Matrix;

    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mPoint:[F

    invoke-virtual {v5, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 120
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mDecorationDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v5, v3

    .line 121
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    div-int/lit8 v4, v5, 0x2

    .line 122
    .local v4, "size":I
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mDecorationRects:[Landroid/graphics/Rect;

    aget-object v5, v5, v3

    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mPoint:[F

    int-to-float v8, v4

    int-to-float v9, v4

    invoke-static {v5, v7, v8, v9}, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->configRectByPointAndSize(Landroid/graphics/Rect;[FFF)V

    .line 123
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mDecorationRects:[Landroid/graphics/Rect;

    aget-object v5, v5, v3

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 124
    iget-boolean v5, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mDrawDecoration:Z

    if-eqz v5, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 106
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "size":I
    :cond_2
    if-ne v3, v10, :cond_3

    .line 107
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mPoint:[F

    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mBound:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    aput v7, v5, v11

    .line 108
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mPoint:[F

    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mBound:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    aput v7, v5, v10

    goto :goto_1

    .line 109
    :cond_3
    const/4 v5, 0x2

    if-ne v3, v5, :cond_4

    .line 110
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mPoint:[F

    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mBound:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    aput v7, v5, v11

    .line 111
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mPoint:[F

    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mBound:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    aput v7, v5, v10

    goto :goto_1

    .line 112
    :cond_4
    const/4 v5, 0x3

    if-ne v3, v5, :cond_1

    .line 113
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mPoint:[F

    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mBound:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    aput v7, v5, v11

    .line 114
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mPoint:[F

    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mBound:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    aput v7, v5, v10

    goto :goto_1

    .line 126
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Ljava/lang/Integer;>;"
    .end local v3    # "position":I
    :cond_5
    return-void
.end method

.method public findLowerDecorationPosition()F
    .locals 7

    .prologue
    .line 160
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mActionPosition:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 161
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mActionPosition:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 162
    .local v1, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Ljava/lang/Integer;>;>;"
    const/4 v3, 0x0

    .line 163
    .local v3, "position":F
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 164
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mDecorationRects:[Landroid/graphics/Rect;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v4, v6, v4

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 165
    .local v0, "bottom":I
    int-to-float v4, v0

    cmpl-float v4, v4, v3

    if-lez v4, :cond_0

    int-to-float v3, v0

    goto :goto_0

    .line 169
    .end local v0    # "bottom":I
    .end local v1    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Ljava/lang/Integer;>;>;"
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Ljava/lang/Integer;>;"
    .end local v3    # "position":F
    :cond_1
    const/4 v3, 0x0

    :cond_2
    return v3
.end method

.method public getDecorationRect(Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Landroid/graphics/RectF;)V
    .locals 3
    .param p1, "action"    # Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;
    .param p2, "dst"    # Landroid/graphics/RectF;

    .prologue
    .line 151
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mActionPosition:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 152
    .local v0, "position":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 153
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mDecorationRects:[Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {p2, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 140
    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 131
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 136
    return-void
.end method

.method public setDrawDecoration(Z)V
    .locals 0
    .param p1, "drawDecoration"    # Z

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->mDrawDecoration:Z

    .line 174
    return-void
.end method
