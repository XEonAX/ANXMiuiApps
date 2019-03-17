.class public Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;
.super Landroid/view/View;
.source "EditorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapBounds:Landroid/graphics/RectF;

.field private mBitmapDisplayBounds:Landroid/graphics/RectF;

.field private mBitmapToCanvas:Landroid/graphics/Matrix;

.field private mCanvasBounds:Landroid/graphics/RectF;

.field private mDrawBoundLine:Z

.field private mEventHandler:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EventHandler;

.field private mPaint:Landroid/graphics/Paint;

.field private mPlugin:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;

.field private mRect:Landroid/graphics/Rect;

.field private mStrokeImageHelper:Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 254
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 232
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mCanvasBounds:Landroid/graphics/RectF;

    .line 234
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mBitmapBounds:Landroid/graphics/RectF;

    .line 236
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mBitmapDisplayBounds:Landroid/graphics/RectF;

    .line 238
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mBitmapToCanvas:Landroid/graphics/Matrix;

    .line 242
    iput-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mPlugin:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;

    .line 245
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mRect:Landroid/graphics/Rect;

    .line 247
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mPaint:Landroid/graphics/Paint;

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mDrawBoundLine:Z

    .line 255
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->initialize()V

    .line 256
    invoke-virtual {p0, v2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 257
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 260
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 261
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v2, 0x0

    .line 264
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 232
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mCanvasBounds:Landroid/graphics/RectF;

    .line 234
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mBitmapBounds:Landroid/graphics/RectF;

    .line 236
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mBitmapDisplayBounds:Landroid/graphics/RectF;

    .line 238
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mBitmapToCanvas:Landroid/graphics/Matrix;

    .line 242
    iput-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mPlugin:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;

    .line 245
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mRect:Landroid/graphics/Rect;

    .line 247
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mPaint:Landroid/graphics/Paint;

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mDrawBoundLine:Z

    .line 265
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->initialize()V

    .line 266
    invoke-virtual {p0, v2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 267
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mBitmapToCanvas:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mCanvasBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mBitmapBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mBitmapDisplayBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private initialize()V
    .locals 2

    .prologue
    .line 270
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EventHandler;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EventHandler;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mEventHandler:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EventHandler;

    .line 271
    new-instance v0, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mStrokeImageHelper:Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;

    .line 272
    return-void
.end method

.method private notifyMatrixChanged()V
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mPlugin:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mPlugin:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->onMatrixChanged()V

    .line 407
    :cond_0
    return-void
.end method

.method private resetMatrix()V
    .locals 4

    .prologue
    .line 397
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mBitmapToCanvas:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mBitmapBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mCanvasBounds:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 398
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mBitmapDisplayBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mBitmapBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 399
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mBitmapToCanvas:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mBitmapDisplayBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mBitmapBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 400
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->notifyMatrixChanged()V

    .line 401
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public install(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;)V
    .locals 1
    .param p1, "plugin"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;

    .prologue
    .line 372
    invoke-static {p1, p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->access$502(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;)Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;

    .line 373
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mEventHandler:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EventHandler;

    invoke-static {p1, v0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->access$602(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EventHandler;)Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EventHandler;

    .line 374
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mPlugin:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;

    .line 375
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 327
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 328
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 329
    .local v0, "count":I
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mPlugin:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;

    if-eqz v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mPlugin:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->config(Landroid/graphics/Canvas;)V

    .line 332
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mPlugin:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mPlugin:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->draw(Landroid/graphics/Canvas;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 333
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 334
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mBitmapToCanvas:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 338
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mPlugin:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->drawOverlay(Landroid/graphics/Canvas;)V

    .line 341
    iget-boolean v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mDrawBoundLine:Z

    if-eqz v1, :cond_3

    .line 342
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mStrokeImageHelper:Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mBitmapBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mBitmapToCanvas:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1, v2, v3}, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 344
    :cond_3
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 345
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v12, 0x0

    const/high16 v11, -0x80000000

    .line 276
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 277
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    if-ne v10, v11, :cond_2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    if-ne v10, v11, :cond_2

    .line 279
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 280
    .local v9, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 282
    .local v1, "height":I
    iget-object v10, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_0

    .line 283
    int-to-float v10, v9

    iget-object v11, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float v7, v10, v11

    .line 284
    .local v7, "pW":F
    int-to-float v10, v1

    iget-object v11, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float v3, v10, v11

    .line 285
    .local v3, "pH":F
    cmpl-float v10, v7, v3

    if-lez v10, :cond_1

    .line 286
    int-to-float v10, v9

    mul-float/2addr v10, v3

    div-float/2addr v10, v7

    float-to-int v9, v10

    .line 291
    .end local v3    # "pH":F
    .end local v7    # "pW":F
    :cond_0
    :goto_0
    invoke-virtual {p0, v9, v1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->setMeasuredDimension(II)V

    .line 311
    :goto_1
    return-void

    .line 288
    .restart local v3    # "pH":F
    .restart local v7    # "pW":F
    :cond_1
    int-to-float v10, v1

    mul-float/2addr v10, v7

    div-float/2addr v10, v3

    float-to-int v1, v10

    goto :goto_0

    .line 293
    .end local v1    # "height":I
    .end local v3    # "pH":F
    .end local v7    # "pW":F
    .end local v9    # "width":I
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->getPaddingLeft()I

    move-result v4

    .line 294
    .local v4, "pLeft":I
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->getPaddingRight()I

    move-result v5

    .line 295
    .local v5, "pRight":I
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->getPaddingTop()I

    move-result v6

    .line 296
    .local v6, "pTop":I
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->getPaddingBottom()I

    move-result v2

    .line 297
    .local v2, "pBottom":I
    add-int v8, v4, v5

    .line 298
    .local v8, "w":I
    iget-object v10, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_3

    .line 299
    iget-object v10, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    add-int/2addr v8, v10

    .line 301
    :cond_3
    add-int v0, v6, v2

    .line 302
    .local v0, "h":I
    iget-object v10, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_4

    .line 303
    iget-object v10, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    add-int/2addr v0, v10

    .line 305
    :cond_4
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->getSuggestedMinimumWidth()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 306
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->getSuggestedMinimumHeight()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 307
    invoke-static {v8, p1, v12}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->resolveSizeAndState(III)I

    move-result v9

    .line 308
    .restart local v9    # "width":I
    invoke-static {v0, p2, v12}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->resolveSizeAndState(III)I

    move-result v1

    .line 309
    .restart local v1    # "height":I
    invoke-virtual {p0, v9, v1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->setMeasuredDimension(II)V

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 315
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 316
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mCanvasBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mCanvasBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 318
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mCanvasBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 319
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mCanvasBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->getPaddingRight()I

    move-result v1

    sub-int v1, p1, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 320
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mCanvasBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->getPaddingBottom()I

    move-result v1

    sub-int v1, p2, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 321
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->resetMatrix()V

    .line 323
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 349
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mPlugin:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mPlugin:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 353
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mBitmap:Landroid/graphics/Bitmap;

    .line 354
    if-nez p1, :cond_0

    .line 355
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mBitmapBounds:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 356
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mBitmapBounds:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 361
    :goto_0
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->resetMatrix()V

    .line 362
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->invalidate()V

    .line 363
    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mBitmapBounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 359
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mBitmapBounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method public setCanvasBounds(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 366
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mCanvasBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 367
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->resetMatrix()V

    .line 368
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->invalidate()V

    .line 369
    return-void
.end method

.method public setDrawBoundLine(Z)V
    .locals 0
    .param p1, "drawBoundLine"    # Z

    .prologue
    .line 410
    iput-boolean p1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView;->mDrawBoundLine:Z

    .line 411
    return-void
.end method
