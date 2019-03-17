.class public Lcom/xiaomi/scanner/ui/PreviewWithRectView;
.super Landroid/view/View;
.source "PreviewWithRectView.java"


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private bottomLeft:Landroid/graphics/Bitmap;

.field private bottomRight:Landroid/graphics/Bitmap;

.field private color:I

.field private linePaint:Landroid/graphics/Paint;

.field private mNeedDrawLine:Z

.field private mPaint:Landroid/graphics/Paint;

.field private previewRect:Landroid/graphics/Rect;

.field private topLeft:Landroid/graphics/Bitmap;

.field private topRight:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "PreviewWithRectView"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaomi/scanner/ui/PreviewWithRectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 42
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/scanner/ui/PreviewWithRectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->mPaint:Landroid/graphics/Paint;

    .line 49
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0200d5

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->topLeft:Landroid/graphics/Bitmap;

    .line 50
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 51
    .local v5, "matrix":Landroid/graphics/Matrix;
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 52
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->topLeft:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->topLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->topLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->topRight:Landroid/graphics/Bitmap;

    .line 53
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->topRight:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->topRight:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->topRight:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->bottomRight:Landroid/graphics/Bitmap;

    .line 54
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->bottomRight:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->bottomRight:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->bottomRight:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->bottomLeft:Landroid/graphics/Bitmap;

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->linePaint:Landroid/graphics/Paint;

    .line 57
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->linePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 59
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public getPreviewRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->previewRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 77
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->previewRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->color:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v11

    .line 83
    .local v11, "width":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v10

    .line 84
    .local v10, "height":I
    iget-object v9, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->previewRect:Landroid/graphics/Rect;

    .line 87
    .local v9, "frame":Landroid/graphics/Rect;
    iget v0, v9, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v9, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 88
    iget v0, v9, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget v0, v9, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    int-to-float v5, v11

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v6, v0

    iget-object v7, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 90
    int-to-float v3, v11

    iget v0, v9, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 91
    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v2, v0

    int-to-float v3, v11

    int-to-float v4, v10

    iget-object v5, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 93
    iget-boolean v0, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->mNeedDrawLine:Z

    if-eqz v0, :cond_1

    .line 94
    iget v0, v9, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v9, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v9, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->linePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 95
    iget v0, v9, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v9, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v9, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->linePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 96
    iget v0, v9, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->linePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 97
    iget v0, v9, Landroid/graphics/Rect;->right:I

    int-to-float v1, v0

    iget v0, v9, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->linePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 101
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->topLeft:Landroid/graphics/Bitmap;

    iget v1, v9, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v9, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 102
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->topRight:Landroid/graphics/Bitmap;

    iget v1, v9, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->topRight:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, v9, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 103
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->bottomLeft:Landroid/graphics/Bitmap;

    iget v1, v9, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->bottomRight:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 104
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->bottomRight:Landroid/graphics/Bitmap;

    iget v1, v9, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->bottomRight:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->bottomRight:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 105
    :catch_0
    move-exception v8

    .line 106
    .local v8, "e":Ljava/lang/Throwable;
    sget-object v0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDraw error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setDataAndDraw(Landroid/graphics/Rect;IZ)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "bgColor"    # I
    .param p3, "drawLine"    # Z

    .prologue
    .line 63
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->previewRect:Landroid/graphics/Rect;

    .line 64
    iput p2, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->color:I

    .line 65
    iput-boolean p3, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->mNeedDrawLine:Z

    .line 66
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->requestLayout()V

    .line 67
    return-void
.end method
