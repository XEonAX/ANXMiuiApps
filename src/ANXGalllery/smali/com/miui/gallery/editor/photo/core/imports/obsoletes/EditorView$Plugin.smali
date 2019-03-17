.class public abstract Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;
.super Ljava/lang/Object;
.source "EditorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Plugin"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin$BoundsFixListener;,
        Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin$BoundsFixCallback;
    }
.end annotation


# instance fields
.field private mEditorView:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;

.field private mEventHandler:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EventHandler;

.field protected mImageAnimator:Landroid/animation/ValueAnimator;

.field private mTransValues:Landroid/animation/PropertyValuesHolder;

.field private mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin$1;-><init>(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 214
    return-void
.end method

.method static synthetic access$502(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;)Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;
    .param p1, "x1"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->mEditorView:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;

    return-object p1
.end method

.method static synthetic access$602(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EventHandler;)Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EventHandler;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;
    .param p1, "x1"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EventHandler;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->mEventHandler:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EventHandler;

    return-object p1
.end method

.method private ensureStarted()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->mEditorView:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Current plugin is not installed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    return-void
.end method

.method protected static resolveScale(Landroid/graphics/RectF;Landroid/graphics/RectF;)F
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/RectF;
    .param p1, "cropArea"    # Landroid/graphics/RectF;

    .prologue
    .line 166
    const/high16 v0, 0x3f800000    # 1.0f

    .line 167
    .local v0, "scale":F
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 168
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float v0, v1, v2

    .line 170
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 171
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 173
    :cond_1
    return v0
.end method

.method protected static resolveTranslate(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;)V
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/RectF;
    .param p1, "cropArea"    # Landroid/graphics/RectF;
    .param p2, "result"    # Landroid/graphics/PointF;

    .prologue
    const/4 v3, 0x0

    .line 144
    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 145
    const/4 v0, 0x0

    .local v0, "offsetX":F
    const/4 v1, 0x0

    .line 146
    .local v1, "offsetY":F
    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p0, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 147
    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p0, Landroid/graphics/RectF;->top:F

    sub-float v1, v2, v3

    .line 151
    :cond_0
    :goto_0
    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 152
    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Landroid/graphics/RectF;->left:F

    sub-float v0, v2, v3

    .line 156
    :cond_1
    :goto_1
    iput v0, p2, Landroid/graphics/PointF;->x:F

    .line 157
    iput v1, p2, Landroid/graphics/PointF;->y:F

    .line 162
    .end local v0    # "offsetX":F
    .end local v1    # "offsetY":F
    :goto_2
    return-void

    .line 148
    .restart local v0    # "offsetX":F
    .restart local v1    # "offsetY":F
    :cond_2
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 149
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v2, v3

    goto :goto_0

    .line 153
    :cond_3
    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 154
    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p0, Landroid/graphics/RectF;->right:F

    sub-float v0, v2, v3

    goto :goto_1

    .line 159
    .end local v0    # "offsetX":F
    .end local v1    # "offsetY":F
    :cond_4
    iput v3, p2, Landroid/graphics/PointF;->x:F

    .line 160
    iput v3, p2, Landroid/graphics/PointF;->y:F

    goto :goto_2
.end method


# virtual methods
.method protected config(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 61
    return-void
.end method

.method protected draw(Landroid/graphics/Canvas;)Z
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method protected drawOverlay(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 68
    return-void
.end method

.method protected fixImageBounds(Landroid/graphics/RectF;Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin$BoundsFixCallback;)V
    .locals 10
    .param p1, "displayArea"    # Landroid/graphics/RectF;
    .param p2, "callback"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin$BoundsFixCallback;

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 178
    .local v2, "imageMatrix":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->getImageBounds()Landroid/graphics/RectF;

    move-result-object v1

    .line 179
    .local v1, "image":Landroid/graphics/RectF;
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 180
    .local v3, "invertMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 181
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 182
    .local v4, "invertRect":Landroid/graphics/RectF;
    invoke-virtual {v3, v4, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 184
    invoke-virtual {v1, v4}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 185
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 186
    .local v7, "start":Landroid/graphics/Matrix;
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 187
    .local v0, "end":Landroid/graphics/Matrix;
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v8

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v9

    cmpl-float v8, v8, v9

    if-gtz v8, :cond_0

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v8

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    .line 189
    :cond_0
    invoke-static {v1, v4}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->resolveScale(Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result v6

    .line 190
    .local v6, "scale":F
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    invoke-virtual {v0, v6, v6, v8, v9}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 194
    .end local v6    # "scale":F
    :cond_1
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 195
    invoke-virtual {v3, v4, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 196
    invoke-virtual {v1, v4}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 197
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    .line 198
    .local v5, "offset":Landroid/graphics/PointF;
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->getImageBounds()Landroid/graphics/RectF;

    move-result-object v8

    invoke-static {v8, v4, v5}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->resolveTranslate(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;)V

    .line 199
    iget v8, v5, Landroid/graphics/PointF;->x:F

    iget v9, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 201
    .end local v5    # "offset":Landroid/graphics/PointF;
    :cond_2
    if-nez p2, :cond_4

    const/4 v8, 0x0

    :goto_0
    invoke-virtual {p0, v7, v0, v8}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->setupImageAnimator(Landroid/graphics/Matrix;Landroid/graphics/Matrix;Lcom/miui/gallery/editor/photo/core/imports/obsoletes/OneShotAnimateListener;)V

    .line 202
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->mImageAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->start()V

    .line 208
    .end local v0    # "end":Landroid/graphics/Matrix;
    .end local v7    # "start":Landroid/graphics/Matrix;
    :cond_3
    :goto_1
    return-void

    .line 201
    .restart local v0    # "end":Landroid/graphics/Matrix;
    .restart local v7    # "start":Landroid/graphics/Matrix;
    :cond_4
    new-instance v8, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin$BoundsFixListener;

    invoke-direct {v8, p0, p2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin$BoundsFixListener;-><init>(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin$BoundsFixCallback;)V

    goto :goto_0

    .line 204
    .end local v0    # "end":Landroid/graphics/Matrix;
    .end local v7    # "start":Landroid/graphics/Matrix;
    :cond_5
    if-eqz p2, :cond_3

    .line 205
    invoke-interface {p2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin$BoundsFixCallback;->onDone()V

    goto :goto_1
.end method

.method protected final getBounds()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->ensureStarted()V

    .line 87
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->mEditorView:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->access$100(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method protected final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->mEditorView:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected final getEventHandler()Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EventHandler;
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->ensureStarted()V

    .line 72
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->mEventHandler:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EventHandler;

    return-object v0
.end method

.method protected final getImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->mEditorView:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->access$400(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected final getImageBounds()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->ensureStarted()V

    .line 92
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->mEditorView:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->access$200(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method protected final getImageDisplayBounds()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->ensureStarted()V

    .line 97
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->mEditorView:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->access$300(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method protected final getImageMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->ensureStarted()V

    .line 82
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->mEditorView:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->access$000(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method protected final invalidate()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->ensureStarted()V

    .line 77
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->mEditorView:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->invalidate()V

    .line 78
    return-void
.end method

.method protected onMatrixChanged()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method protected abstract onStart()V
.end method

.method protected abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method protected setupImageAnimator(Landroid/graphics/Matrix;Landroid/graphics/Matrix;Lcom/miui/gallery/editor/photo/core/imports/obsoletes/OneShotAnimateListener;)V
    .locals 6
    .param p1, "start"    # Landroid/graphics/Matrix;
    .param p2, "end"    # Landroid/graphics/Matrix;
    .param p3, "listener"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/OneShotAnimateListener;

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 115
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->mImageAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->mImageAnimator:Landroid/animation/ValueAnimator;

    .line 117
    const-string v0, "matrix"

    new-instance v1, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateEvaluator;

    invoke-direct {v1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateEvaluator;-><init>()V

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v5

    invoke-static {v0, v1, v2}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->mTransValues:Landroid/animation/PropertyValuesHolder;

    .line 119
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->mImageAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->mTransValues:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->mImageAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->mTransValues:Landroid/animation/PropertyValuesHolder;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->mImageAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 125
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->mImageAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v5, [Landroid/animation/PropertyValuesHolder;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->mTransValues:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 126
    if-eqz p3, :cond_1

    .line 127
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->mImageAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 129
    :cond_1
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->onStart()V

    .line 42
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->invalidate()V

    .line 43
    return-void
.end method
