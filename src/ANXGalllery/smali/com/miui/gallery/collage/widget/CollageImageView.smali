.class public Lcom/miui/gallery/collage/widget/CollageImageView;
.super Landroid/view/View;
.source "CollageImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/collage/widget/CollageImageView$MatrixListener;
    }
.end annotation


# instance fields
.field private final MAX_SCALE:F

.field private final MAX_SCALE_TOUCH:F

.field private mActivating:Z

.field private mAnimTargetMatrix:Landroid/graphics/Matrix;

.field private mBackgroundColor:I

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mBitmapDisplayInitRect:Landroid/graphics/RectF;

.field private mBitmapDisplayRect:Landroid/graphics/RectF;

.field private mBitmapMatrix:Landroid/graphics/Matrix;

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapRect:Landroid/graphics/RectF;

.field private mCanvasMatrix:Landroid/graphics/Matrix;

.field private mDisplayInitRect:Landroid/graphics/RectF;

.field private mDisplayRect:Landroid/graphics/RectF;

.field private mDrawBitmap:Z

.field private mDrawingMatrix:Landroid/graphics/Matrix;

.field private mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mMask:Landroid/graphics/drawable/Drawable;

.field private mMatrixListener:Lcom/miui/gallery/collage/widget/CollageImageView$MatrixListener;

.field private mMatrixTransition:Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;

.field private mMatrixValues:[F

.field private mMaxWidth:F

.field private mMaxWidthScale:F

.field private mMirror:Z

.field private mOriginBitmap:Landroid/graphics/Bitmap;

.field private mRadius:F

.field private mRectFTemp:Landroid/graphics/RectF;

.field private mRotateDegree:I

.field private mXfermodeSrcIn:Landroid/graphics/PorterDuffXfermode;

.field private mXfermodeSrcOut:Landroid/graphics/PorterDuffXfermode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayRect:Landroid/graphics/RectF;

    .line 24
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayInitRect:Landroid/graphics/RectF;

    .line 25
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapRect:Landroid/graphics/RectF;

    .line 26
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    .line 27
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayRect:Landroid/graphics/RectF;

    .line 29
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mCanvasMatrix:Landroid/graphics/Matrix;

    .line 30
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapMatrix:Landroid/graphics/Matrix;

    .line 31
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDrawingMatrix:Landroid/graphics/Matrix;

    .line 32
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mAnimTargetMatrix:Landroid/graphics/Matrix;

    .line 36
    new-instance v0, Lcom/miui/gallery/collage/widget/CollageImageView$MatrixListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/collage/widget/CollageImageView$MatrixListener;-><init>(Lcom/miui/gallery/collage/widget/CollageImageView;Lcom/miui/gallery/collage/widget/CollageImageView$1;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMatrixListener:Lcom/miui/gallery/collage/widget/CollageImageView$MatrixListener;

    .line 38
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMatrixValues:[F

    .line 39
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mRectFTemp:Landroid/graphics/RectF;

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mRadius:F

    .line 52
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mXfermodeSrcIn:Landroid/graphics/PorterDuffXfermode;

    .line 53
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mXfermodeSrcOut:Landroid/graphics/PorterDuffXfermode;

    .line 54
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDrawBitmap:Z

    .line 58
    iput-boolean v2, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMirror:Z

    .line 59
    iput v2, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mRotateDegree:I

    .line 61
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->MAX_SCALE:F

    .line 62
    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->MAX_SCALE_TOUCH:F

    .line 64
    iput-boolean v2, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mActivating:Z

    .line 68
    invoke-direct {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->init()V

    .line 69
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/collage/widget/CollageImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageImageView;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->refreshBitmapDisplayRect()V

    return-void
.end method

.method static synthetic access$202(Lcom/miui/gallery/collage/widget/CollageImageView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageImageView;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mActivating:Z

    return p1
.end method

.method private drawBitmap(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 127
    iget-boolean v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDrawBitmap:Z

    if-nez v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mOriginBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDrawingMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawBitmapWithMask(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 154
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 155
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMask:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/collage/widget/CollageImageView;->drawBitmapWithMaskDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Z)V

    .line 156
    return-void
.end method

.method private drawBitmapWithMaskDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Z)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mask"    # Landroid/graphics/drawable/Drawable;
    .param p3, "reverse"    # Z

    .prologue
    const/4 v2, 0x0

    .line 134
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayRect:Landroid/graphics/RectF;

    const/16 v1, 0x1f

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 135
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 137
    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBackgroundPaint:Landroid/graphics/Paint;

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mXfermodeSrcOut:Landroid/graphics/PorterDuffXfermode;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 138
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mXfermodeSrcIn:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 140
    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/widget/CollageImageView;->drawBitmap(Landroid/graphics/Canvas;)V

    .line 142
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 143
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 144
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 145
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mXfermodeSrcIn:Landroid/graphics/PorterDuffXfermode;

    goto :goto_0
.end method

.method private drawBitmapWithRadius(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 148
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 149
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mRadius:F

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 150
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p0, p1, v0, v3}, Lcom/miui/gallery/collage/widget/CollageImageView;->drawBitmapWithMaskDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Z)V

    .line 151
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 82
    new-instance v0, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMatrixTransition:Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;

    .line 83
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMatrixTransition:Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMatrixListener:Lcom/miui/gallery/collage/widget/CollageImageView$MatrixListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;->setMatrixUpdateListener(Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition$MatrixUpdateListener;)V

    .line 84
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBackgroundColor:I

    .line 85
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 86
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBackgroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 88
    return-void
.end method

.method private refreshBitmapDisplayRect()V
    .locals 3

    .prologue
    .line 392
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mCanvasMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 393
    return-void
.end method

.method private resetBitmapMatrix()V
    .locals 6

    .prologue
    .line 159
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayInitRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayInitRect:Landroid/graphics/RectF;

    iget-boolean v3, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMirror:Z

    iget v4, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mRotateDegree:I

    iget-object v5, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/collage/render/CollageRender;->initBitmapMatrix(Landroid/graphics/RectF;Landroid/graphics/Matrix;Landroid/graphics/RectF;ZILandroid/graphics/RectF;)V

    .line 164
    invoke-direct {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->resetInitParams()V

    .line 166
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mCanvasMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 168
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->invalidate()V

    goto :goto_0
.end method

.method private resetBitmapMatrixWithAnim()V
    .locals 6

    .prologue
    .line 172
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayInitRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mAnimTargetMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayInitRect:Landroid/graphics/RectF;

    iget-boolean v3, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMirror:Z

    iget v4, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mRotateDegree:I

    iget-object v5, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/collage/render/CollageRender;->initBitmapMatrix(Landroid/graphics/RectF;Landroid/graphics/Matrix;Landroid/graphics/RectF;ZILandroid/graphics/RectF;)V

    .line 176
    invoke-direct {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->resetInitParams()V

    .line 177
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMatrixTransition:Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/Matrix;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapMatrix:Landroid/graphics/Matrix;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mAnimTargetMatrix:Landroid/graphics/Matrix;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mCanvasMatrix:Landroid/graphics/Matrix;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;->animMatrix([Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method private resetInitParams()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 183
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMaxWidth:F

    .line 184
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMaxWidthScale:F

    .line 185
    return-void
.end method

.method private resetMatrixWithAnim()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 188
    iput-boolean v5, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mActivating:Z

    .line 189
    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mCanvasMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMatrixValues:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 190
    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMatrixValues:[F

    aget v0, v1, v4

    .line 191
    .local v0, "scaleX":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mAnimTargetMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1}, Lcom/miui/gallery/collage/widget/CollageImageView;->countAnimMatrixWhenZoomOut(Landroid/graphics/Matrix;)V

    .line 196
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMatrixTransition:Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mCanvasMatrix:Landroid/graphics/Matrix;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mAnimTargetMatrix:Landroid/graphics/Matrix;

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;->animMatrix([Landroid/graphics/Matrix;)V

    .line 197
    return-void

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mAnimTargetMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1}, Lcom/miui/gallery/collage/widget/CollageImageView;->countAnimMatrixWhenZoomIn(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method private resolvePadding(Landroid/graphics/RectF;)V
    .locals 5
    .param p1, "dst"    # Landroid/graphics/RectF;

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->getPaddingLeft()I

    move-result v4

    int-to-float v1, v4

    .line 292
    .local v1, "paddingLeft":F
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->getPaddingRight()I

    move-result v4

    int-to-float v2, v4

    .line 293
    .local v2, "paddingRight":F
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->getPaddingTop()I

    move-result v4

    int-to-float v3, v4

    .line 294
    .local v3, "paddingTop":F
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->getPaddingBottom()I

    move-result v4

    int-to-float v0, v4

    .line 295
    .local v0, "paddingBottom":F
    iget v4, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v1

    iput v4, p1, Landroid/graphics/RectF;->left:F

    .line 296
    iget v4, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v2

    iput v4, p1, Landroid/graphics/RectF;->right:F

    .line 297
    iget v4, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v3

    iput v4, p1, Landroid/graphics/RectF;->top:F

    .line 298
    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v0

    iput v4, p1, Landroid/graphics/RectF;->bottom:F

    .line 299
    return-void
.end method


# virtual methods
.method public appendScale(FFF)V
    .locals 3
    .param p1, "scale"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 377
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMaxWidthScale:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 385
    :goto_0
    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mCanvasMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p2, v1

    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p3, v2

    invoke-virtual {v0, p1, p1, v1, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 383
    invoke-direct {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->refreshBitmapDisplayRect()V

    .line 384
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->invalidate()V

    goto :goto_0
.end method

.method protected countAnimMatrixWhenZoomIn(Landroid/graphics/Matrix;)V
    .locals 23
    .param p1, "animTargetMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/widget/CollageImageView;->mCanvasMatrix:Landroid/graphics/Matrix;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/widget/CollageImageView;->mRectFTemp:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 232
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/gallery/collage/widget/CollageImageView;->mRectFTemp:Landroid/graphics/RectF;

    .line 234
    .local v11, "currentBitmapRect":Landroid/graphics/RectF;
    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMaxWidth:F

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_0

    .line 235
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMaxWidth:F

    move/from16 v21, v0

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v22

    div-float v20, v21, v22

    .line 236
    .local v20, "scale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayInitRect:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/RectF;->centerX()F

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayInitRect:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->centerY()F

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v11, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 240
    .end local v20    # "scale":F
    :cond_0
    const/16 v18, 0x0

    .line 241
    .local v18, "offsetX":F
    const/16 v19, 0x0

    .line 243
    .local v19, "offsetY":F
    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v10

    .line 244
    .local v10, "bitmapWidth":F
    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v6

    .line 245
    .local v6, "bitmapHeight":F
    iget v7, v11, Landroid/graphics/RectF;->left:F

    .line 246
    .local v7, "bitmapLeft":F
    iget v8, v11, Landroid/graphics/RectF;->right:F

    .line 247
    .local v8, "bitmapRight":F
    iget v9, v11, Landroid/graphics/RectF;->top:F

    .line 248
    .local v9, "bitmapTop":F
    iget v5, v11, Landroid/graphics/RectF;->bottom:F

    .line 250
    .local v5, "bitmapBottom":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/RectF;->width()F

    move-result v17

    .line 251
    .local v17, "displayWidth":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/RectF;->height()F

    move-result v13

    .line 252
    .local v13, "displayHeight":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v14, v0, Landroid/graphics/RectF;->left:F

    .line 253
    .local v14, "displayLeft":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v15, v0, Landroid/graphics/RectF;->right:F

    .line 254
    .local v15, "displayRight":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v16, v0

    .line 255
    .local v16, "displayTop":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayRect:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v12, v0, Landroid/graphics/RectF;->bottom:F

    .line 257
    .local v12, "displayBottom":F
    cmpl-float v21, v7, v14

    if-lez v21, :cond_4

    .line 258
    cmpl-float v21, v10, v17

    if-lez v21, :cond_3

    .line 259
    sub-float v21, v7, v14

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v18, v0

    .line 272
    :cond_1
    :goto_0
    cmpl-float v21, v9, v16

    if-lez v21, :cond_7

    .line 273
    cmpl-float v21, v6, v13

    if-lez v21, :cond_6

    .line 274
    sub-float v21, v9, v16

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v19, v0

    .line 287
    :cond_2
    :goto_1
    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 288
    return-void

    .line 261
    :cond_3
    sub-float v21, v7, v14

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v18, v0

    .line 262
    sub-float v21, v17, v10

    const/high16 v22, 0x3f000000    # 0.5f

    mul-float v21, v21, v22

    add-float v18, v18, v21

    goto :goto_0

    .line 264
    :cond_4
    cmpg-float v21, v8, v15

    if-gez v21, :cond_1

    .line 265
    cmpl-float v21, v10, v17

    if-lez v21, :cond_5

    .line 266
    sub-float v18, v15, v8

    goto :goto_0

    .line 268
    :cond_5
    sub-float v18, v15, v8

    .line 269
    sub-float v21, v17, v10

    const/high16 v22, 0x3f000000    # 0.5f

    mul-float v21, v21, v22

    sub-float v18, v18, v21

    goto :goto_0

    .line 276
    :cond_6
    sub-float v21, v9, v16

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v19, v0

    .line 277
    sub-float v21, v13, v6

    const/high16 v22, 0x3f000000    # 0.5f

    mul-float v21, v21, v22

    add-float v19, v19, v21

    goto :goto_1

    .line 279
    :cond_7
    cmpg-float v21, v5, v12

    if-gez v21, :cond_2

    .line 280
    cmpl-float v21, v6, v13

    if-lez v21, :cond_8

    .line 281
    sub-float v19, v12, v5

    goto :goto_1

    .line 283
    :cond_8
    sub-float v19, v12, v5

    .line 284
    sub-float v21, v13, v6

    const/high16 v22, 0x3f000000    # 0.5f

    mul-float v21, v21, v22

    sub-float v19, v19, v21

    goto :goto_1
.end method

.method protected countAnimMatrixWhenZoomOut(Landroid/graphics/Matrix;)V
    .locals 6
    .param p1, "animTargetMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 200
    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mCanvasMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 201
    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMatrixValues:[F

    invoke-virtual {p1, v4}, Landroid/graphics/Matrix;->getValues([F)V

    .line 203
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mRectFTemp:Landroid/graphics/RectF;

    .line 204
    .local v0, "bitmapRect":Landroid/graphics/RectF;
    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 206
    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMatrixValues:[F

    const/4 v5, 0x0

    aget v3, v4, v5

    .line 207
    .local v3, "scale":F
    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    .line 209
    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayInitRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayInitRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {p1, v3, v3, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 211
    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 212
    const/4 v1, 0x0

    .line 213
    .local v1, "offsetX":F
    const/4 v2, 0x0

    .line 214
    .local v2, "offsetY":F
    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayInitRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 215
    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayInitRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v0, Landroid/graphics/RectF;->left:F

    sub-float v1, v4, v5

    .line 220
    :cond_0
    :goto_0
    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayInitRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 221
    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayInitRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v0, Landroid/graphics/RectF;->top:F

    sub-float v2, v4, v5

    .line 225
    :cond_1
    :goto_1
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 226
    return-void

    .line 216
    :cond_2
    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayInitRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 217
    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayInitRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget v5, v0, Landroid/graphics/RectF;->right:F

    sub-float v1, v4, v5

    goto :goto_0

    .line 222
    :cond_3
    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayInitRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 223
    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayInitRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v2, v4, v5

    goto :goto_1
.end method

.method public generateBitmapRenderData()Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;
    .locals 5

    .prologue
    .line 396
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 397
    .local v2, "invert":Landroid/graphics/Matrix;
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 398
    .local v1, "insideRect":Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mCanvasMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 399
    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 400
    iget v3, v1, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v3, v4

    iput v3, v1, Landroid/graphics/RectF;->left:F

    .line 401
    iget v3, v1, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v3, v4

    iput v3, v1, Landroid/graphics/RectF;->right:F

    .line 402
    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v3, v4

    iput v3, v1, Landroid/graphics/RectF;->top:F

    .line 403
    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v3, v4

    iput v3, v1, Landroid/graphics/RectF;->bottom:F

    .line 405
    new-instance v0, Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;

    invoke-direct {v0}, Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;-><init>()V

    .line 406
    .local v0, "bitmapRenderData":Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;
    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mOriginBitmap:Landroid/graphics/Bitmap;

    iput-object v3, v0, Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;->bitmap:Landroid/graphics/Bitmap;

    .line 407
    iget v3, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mRotateDegree:I

    iput v3, v0, Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;->rotate:I

    .line 408
    iget-boolean v3, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMirror:Z

    iput-boolean v3, v0, Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;->mirror:Z

    .line 409
    iget-object v3, v0, Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;->bitmapInsideRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 410
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;->transition:Z

    .line 411
    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMask:Landroid/graphics/drawable/Drawable;

    iput-object v3, v0, Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;->maskDrawable:Landroid/graphics/drawable/Drawable;

    .line 412
    iget v3, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mRadius:F

    iput v3, v0, Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;->radius:F

    .line 413
    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mOriginBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCanvasMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "dst"    # Landroid/graphics/Matrix;

    .prologue
    .line 427
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mCanvasMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 428
    return-void
.end method

.method public getDisplayRect(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "dst"    # Landroid/graphics/RectF;

    .prologue
    .line 435
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 436
    return-void
.end method

.method public getRotateDegree()I
    .locals 1

    .prologue
    .line 443
    iget v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mRotateDegree:I

    return v0
.end method

.method public isActivating()Z
    .locals 1

    .prologue
    .line 447
    iget-boolean v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mActivating:Z

    return v0
.end method

.method public isMirror()Z
    .locals 1

    .prologue
    .line 439
    iget-boolean v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMirror:Z

    return v0
.end method

.method public mirror()V
    .locals 1

    .prologue
    .line 317
    iget-boolean v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMirror:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMirror:Z

    .line 318
    invoke-direct {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->resetBitmapMatrix()V

    .line 319
    return-void

    .line 317
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mOriginBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDrawingMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 111
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDrawingMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 112
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDrawingMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mCanvasMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 113
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 114
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 115
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMask:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 116
    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/widget/CollageImageView;->drawBitmapWithMask(Landroid/graphics/Canvas;)V

    .line 122
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 117
    :cond_1
    iget v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 118
    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/widget/CollageImageView;->drawBitmapWithRadius(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 120
    :cond_2
    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/widget/CollageImageView;->drawBitmap(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v3, 0x0

    .line 92
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 93
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayRect:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 94
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayInitRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 95
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayInitRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/miui/gallery/collage/widget/CollageImageView;->resolvePadding(Landroid/graphics/RectF;)V

    .line 96
    invoke-direct {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->resetBitmapMatrix()V

    .line 97
    return-void
.end method

.method public resetBitmapLocation()V
    .locals 0

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->resetMatrixWithAnim()V

    .line 389
    return-void
.end method

.method public resetDrawData(Landroid/graphics/Bitmap;IZ)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "rotateDegree"    # I
    .param p3, "mirror"    # Z

    .prologue
    const/4 v5, 0x0

    .line 322
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 323
    .local v1, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 324
    .local v0, "height":I
    iput-object p1, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mOriginBitmap:Landroid/graphics/Bitmap;

    .line 325
    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapRect:Landroid/graphics/RectF;

    int-to-float v3, v1

    int-to-float v4, v0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 327
    iput p2, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mRotateDegree:I

    .line 328
    iput-boolean p3, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMirror:Z

    .line 329
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDrawBitmap:Z

    .line 330
    invoke-direct {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->resetBitmapMatrix()V

    .line 331
    return-void
.end method

.method public rotate()V
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mRotateDegree:I

    add-int/lit8 v0, v0, -0x5a

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mRotateDegree:I

    .line 312
    iget v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mRotateDegree:I

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mRotateDegree:I

    .line 313
    invoke-direct {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->resetBitmapMatrixWithAnim()V

    .line 314
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "backgroundColor"    # I

    .prologue
    .line 452
    iput p1, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBackgroundColor:I

    .line 453
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    .line 100
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 101
    .local v1, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 102
    .local v0, "height":I
    iput-object p1, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mOriginBitmap:Landroid/graphics/Bitmap;

    .line 103
    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapRect:Landroid/graphics/RectF;

    int-to-float v3, v1

    int-to-float v4, v0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 104
    invoke-direct {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->resetBitmapMatrix()V

    .line 105
    return-void
.end method

.method public setDrawBitmap(Z)V
    .locals 0
    .param p1, "drawBitmap"    # Z

    .prologue
    .line 306
    iput-boolean p1, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDrawBitmap:Z

    .line 307
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->invalidate()V

    .line 308
    return-void
.end method

.method public setMask(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "mask"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 417
    iput-object p1, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mMask:Landroid/graphics/drawable/Drawable;

    .line 418
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->invalidate()V

    .line 419
    return-void
.end method

.method public setRadius(F)V
    .locals 0
    .param p1, "radius"    # F

    .prologue
    .line 422
    iput p1, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mRadius:F

    .line 423
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->invalidate()V

    .line 424
    return-void
.end method

.method public transition(FF)V
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, 0x0

    .line 353
    const/high16 v3, 0x3f800000    # 1.0f

    .line 354
    .local v3, "ratioX":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 355
    .local v4, "ratioY":F
    iget-object v6, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float v5, v6, v7

    .line 356
    .local v5, "width":F
    iget-object v6, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float v2, v6, v7

    .line 357
    .local v2, "height":F
    iget-object v6, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 358
    .local v0, "centerX":F
    iget-object v6, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 359
    .local v1, "centerY":F
    cmpl-float v6, p1, v8

    if-lez v6, :cond_2

    iget-object v6, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    .line 360
    iget-object v6, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    sub-float v6, v0, v6

    div-float v3, v6, v5

    .line 364
    :cond_0
    :goto_0
    cmpl-float v6, p2, v8

    if-lez v6, :cond_3

    iget-object v6, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    .line 365
    iget-object v6, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sub-float v6, v1, v6

    div-float v4, v6, v2

    .line 369
    :cond_1
    :goto_1
    mul-float/2addr p1, v3

    .line 370
    mul-float/2addr p2, v4

    .line 371
    iget-object v6, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mCanvasMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 372
    invoke-direct {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->refreshBitmapDisplayRect()V

    .line 373
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->invalidate()V

    .line 374
    return-void

    .line 361
    :cond_2
    cmpg-float v6, p1, v8

    if-gez v6, :cond_0

    iget-object v6, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget-object v7, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    .line 362
    iget-object v6, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v0

    div-float v3, v6, v5

    goto :goto_0

    .line 366
    :cond_3
    cmpg-float v6, p2, v8

    if-gez v6, :cond_1

    iget-object v6, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    iget-object v7, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mDisplayRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    .line 367
    iget-object v6, p0, Lcom/miui/gallery/collage/widget/CollageImageView;->mBitmapDisplayRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v1

    div-float v4, v6, v2

    goto :goto_1
.end method
