.class public Lcom/miui/gallery/widget/CircleProgressBar;
.super Landroid/widget/ProgressBar;
.source "CircleProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/widget/CircleProgressBar$OnProgressChangedListener;
    }
.end annotation


# instance fields
.field private mArcPath:Landroid/graphics/Path;

.field private mArcRect:Landroid/graphics/RectF;

.field private mBitmapForSoftLayer:Landroid/graphics/Bitmap;

.field private mCanvasForSoftLayer:Landroid/graphics/Canvas;

.field private mChangeProgressAnimator:Landroid/animation/Animator;

.field private mCurrentLevel:I

.field private mLevelsBackDrawable:[Landroid/graphics/drawable/Drawable;

.field private mLevelsForeDrawable:[Landroid/graphics/drawable/Drawable;

.field private mLevelsMiddleDrawable:[Landroid/graphics/drawable/Drawable;

.field private mPaint:Landroid/graphics/Paint;

.field private mPrevAlpha:I

.field private mPrevLevel:I

.field private mProgressChangedListener:Lcom/miui/gallery/widget/CircleProgressBar$OnProgressChangedListener;

.field private mProgressLevels:[I

.field private mRotateVelocity:I

.field private mThumb:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/widget/CircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/widget/CircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mArcPath:Landroid/graphics/Path;

    .line 62
    const/16 v0, 0x12c

    iput v0, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mRotateVelocity:I

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/CircleProgressBar;->setIndeterminate(Z)V

    .line 77
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 78
    iget-object v0, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    return-void
.end method

.method private calcDuration(I)I
    .locals 2
    .param p1, "angle"    # I

    .prologue
    .line 279
    mul-int/lit16 v0, p1, 0x3e8

    iget v1, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mRotateVelocity:I

    div-int/2addr v0, v1

    return v0
.end method

.method private drawLayer(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FI)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "back"    # Landroid/graphics/drawable/Drawable;
    .param p3, "fore"    # Landroid/graphics/drawable/Drawable;
    .param p4, "middle"    # Landroid/graphics/drawable/Drawable;
    .param p5, "rate"    # F
    .param p6, "alpha"    # I

    .prologue
    .line 377
    if-eqz p2, :cond_0

    .line 378
    move/from16 v0, p6

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 379
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 383
    :cond_0
    if-eqz p4, :cond_1

    .line 384
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 385
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v2

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v2

    .line 386
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v5, v2

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v2

    const/4 v7, 0x0

    move-object v2, p1

    .line 385
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    .line 388
    iget-object v3, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mArcRect:Landroid/graphics/RectF;

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float v5, v2, p5

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 390
    move-object/from16 v0, p4

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 391
    move-object/from16 v0, p4

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 392
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 413
    :cond_1
    :goto_0
    iget-object v9, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 414
    .local v9, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_2

    .line 415
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 416
    invoke-virtual {p0}, Lcom/miui/gallery/widget/CircleProgressBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/gallery/widget/CircleProgressBar;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/miui/gallery/widget/CircleProgressBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v11, v2, 0x2

    .line 417
    .local v11, "x":I
    invoke-virtual {p0}, Lcom/miui/gallery/widget/CircleProgressBar;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/gallery/widget/CircleProgressBar;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/miui/gallery/widget/CircleProgressBar;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v12, v2, 0x2

    .line 418
    .local v12, "y":I
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    .line 419
    .local v10, "w":I
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 420
    .local v8, "h":I
    const/high16 v2, 0x43b40000    # 360.0f

    invoke-virtual {p0}, Lcom/miui/gallery/widget/CircleProgressBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/miui/gallery/widget/CircleProgressBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, v11

    int-to-float v4, v12

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 421
    div-int/lit8 v2, v10, 0x2

    sub-int v2, v11, v2

    div-int/lit8 v3, v8, 0x2

    sub-int v3, v12, v3

    div-int/lit8 v4, v10, 0x2

    add-int/2addr v4, v11

    div-int/lit8 v5, v8, 0x2

    add-int/2addr v5, v12

    invoke-virtual {v9, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 422
    invoke-virtual {v9, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 423
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 427
    .end local v8    # "h":I
    .end local v10    # "w":I
    .end local v11    # "x":I
    .end local v12    # "y":I
    :cond_2
    if-eqz p3, :cond_3

    .line 428
    move-object/from16 v0, p3

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 429
    move-object/from16 v0, p3

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 431
    :cond_3
    return-void

    .line 394
    .end local v9    # "thumb":Landroid/graphics/drawable/Drawable;
    :cond_4
    iget-object v2, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mBitmapForSoftLayer:Landroid/graphics/Bitmap;

    if-nez v2, :cond_5

    .line 395
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 396
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 395
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mBitmapForSoftLayer:Landroid/graphics/Bitmap;

    .line 397
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mBitmapForSoftLayer:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mCanvasForSoftLayer:Landroid/graphics/Canvas;

    .line 400
    :cond_5
    iget-object v2, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mBitmapForSoftLayer:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 401
    iget-object v2, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mCanvasForSoftLayer:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 402
    iget-object v2, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mCanvasForSoftLayer:Landroid/graphics/Canvas;

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 403
    iget-object v2, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mCanvasForSoftLayer:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mArcRect:Landroid/graphics/RectF;

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/high16 v5, 0x43b40000    # 360.0f

    mul-float v5, v5, p5

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 404
    move-object/from16 v0, p4

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 405
    iget-object v2, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mCanvasForSoftLayer:Landroid/graphics/Canvas;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 406
    iget-object v2, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mCanvasForSoftLayer:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 408
    iget-object v2, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mBitmapForSoftLayer:Landroid/graphics/Bitmap;

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method private getCenterAlignRect(Landroid/graphics/Rect;IIII)Landroid/graphics/Rect;
    .locals 4
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "outWidth"    # I
    .param p3, "outHeight"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 208
    sub-int v0, p2, p4

    div-int/lit8 v0, v0, 0x2

    sub-int v1, p3, p5

    div-int/lit8 v1, v1, 0x2

    add-int v2, p2, p4

    div-int/lit8 v2, v2, 0x2

    add-int v3, p3, p5

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 210
    return-object p1
.end method

.method private getDrawables([I)[Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "resourceIds"    # [I

    .prologue
    .line 165
    if-nez p1, :cond_1

    .line 166
    const/4 v0, 0x0

    .line 173
    :cond_0
    return-object v0

    .line 168
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/widget/CircleProgressBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 169
    .local v2, "resources":Landroid/content/res/Resources;
    array-length v3, p1

    new-array v0, v3, [Landroid/graphics/drawable/Drawable;

    .line 170
    .local v0, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 171
    aget v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v0, v1

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getIntrinsicHeight()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 347
    invoke-virtual {p0, v2}, Lcom/miui/gallery/widget/CircleProgressBar;->getMiddleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 348
    .local v0, "minHeight":I
    iget-object v1, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mLevelsForeDrawable:[Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 349
    iget-object v1, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mLevelsForeDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 350
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mLevelsBackDrawable:[Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 351
    iget-object v1, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mLevelsBackDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 352
    :cond_1
    return v0
.end method

.method private getIntrinsicWidth()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 335
    const/4 v0, 0x0

    .line 336
    .local v0, "minWidth":I
    iget-object v1, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mLevelsMiddleDrawable:[Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 337
    invoke-virtual {p0, v2}, Lcom/miui/gallery/widget/CircleProgressBar;->getMiddleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 339
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mLevelsForeDrawable:[Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 340
    iget-object v1, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mLevelsForeDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 341
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mLevelsBackDrawable:[Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 342
    iget-object v1, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mLevelsBackDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 343
    :cond_2
    return v0
.end method

.method private updateDrawableBounds()V
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 178
    invoke-direct {p0}, Lcom/miui/gallery/widget/CircleProgressBar;->getIntrinsicWidth()I

    move-result v2

    .line 179
    .local v2, "outWidth":I
    invoke-direct {p0}, Lcom/miui/gallery/widget/CircleProgressBar;->getIntrinsicHeight()I

    move-result v3

    .line 180
    .local v3, "outHeight":I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 181
    .local v1, "rect":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mLevelsBackDrawable:[Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 182
    iget-object v10, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mLevelsBackDrawable:[Landroid/graphics/drawable/Drawable;

    array-length v11, v10

    move v9, v8

    :goto_0
    if-ge v9, v11, :cond_0

    aget-object v6, v10, v9

    .line 184
    .local v6, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    move-object v0, p0

    .line 183
    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/widget/CircleProgressBar;->getCenterAlignRect(Landroid/graphics/Rect;IIII)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 182
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    .line 187
    .end local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mLevelsMiddleDrawable:[Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 188
    iget-object v10, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mLevelsMiddleDrawable:[Landroid/graphics/drawable/Drawable;

    array-length v11, v10

    move v9, v8

    :goto_1
    if-ge v9, v11, :cond_1

    aget-object v6, v10, v9

    .line 190
    .restart local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    move-object v0, p0

    .line 189
    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/widget/CircleProgressBar;->getCenterAlignRect(Landroid/graphics/Rect;IIII)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 188
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_1

    .line 192
    .end local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mLevelsMiddleDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v7, v0, v8

    .line 195
    .local v7, "middle":Landroid/graphics/drawable/Drawable;
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v4, -0x5

    int-to-float v4, v4

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/lit8 v5, v5, -0x5

    int-to-float v5, v5

    .line 196
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/lit8 v9, v9, 0x5

    int-to-float v9, v9

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v10, v10, 0x5

    int-to-float v10, v10

    invoke-direct {v0, v4, v5, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mArcRect:Landroid/graphics/RectF;

    .line 198
    .end local v7    # "middle":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mLevelsForeDrawable:[Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 199
    iget-object v9, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mLevelsForeDrawable:[Landroid/graphics/drawable/Drawable;

    array-length v10, v9

    :goto_2
    if-ge v8, v10, :cond_3

    aget-object v6, v9, v8

    .line 201
    .restart local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    move-object v0, p0

    .line 200
    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/widget/CircleProgressBar;->getCenterAlignRect(Landroid/graphics/Rect;IIII)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 199
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_2

    .line 204
    .end local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 4

    .prologue
    .line 284
    invoke-super {p0}, Landroid/widget/ProgressBar;->drawableStateChanged()V

    .line 285
    invoke-virtual {p0}, Lcom/miui/gallery/widget/CircleProgressBar;->getProgressLevelCount()I

    move-result v1

    .line 286
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 287
    iget-object v2, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mLevelsBackDrawable:[Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mLevelsBackDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v0

    invoke-virtual {p0}, Lcom/miui/gallery/widget/CircleProgressBar;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 288
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mLevelsMiddleDrawable:[Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mLevelsMiddleDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v0

    invoke-virtual {p0}, Lcom/miui/gallery/widget/CircleProgressBar;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 289
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mLevelsForeDrawable:[Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mLevelsForeDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v0

    invoke-virtual {p0}, Lcom/miui/gallery/widget/CircleProgressBar;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 286
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 291
    :cond_3
    invoke-virtual {p0}, Lcom/miui/gallery/widget/CircleProgressBar;->invalidate()V

    .line 292
    return-void
.end method

.method protected getBackDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 215
    iget-object v0, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mLevelsBackDrawable:[Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mLevelsBackDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method protected getCurrentLevel()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mCurrentLevel:I

    return v0
.end method

.method protected getForeDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 225
    iget-object v0, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mLevelsForeDrawable:[Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mLevelsForeDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method protected getMiddleDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 220
    iget-object v0, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mLevelsMiddleDrawable:[Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mLevelsMiddleDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getPrevAlpha()I
    .locals 1

    .prologue
    .line 447
    iget v0, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mPrevAlpha:I

    return v0
.end method

.method public getProgressLevelCount()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mProgressLevels:[I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mProgressLevels:[I

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected getRate()F
    .locals 2

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/miui/gallery/widget/CircleProgressBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/miui/gallery/widget/CircleProgressBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 363
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mCurrentLevel:I

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/CircleProgressBar;->getBackDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v0, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mCurrentLevel:I

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/CircleProgressBar;->getForeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v0, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mCurrentLevel:I

    .line 364
    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/CircleProgressBar;->getMiddleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0}, Lcom/miui/gallery/widget/CircleProgressBar;->getRate()F

    move-result v5

    iget v0, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mPrevAlpha:I

    rsub-int v6, v0, 0xff

    move-object v0, p0

    move-object v1, p1

    .line 363
    invoke-direct/range {v0 .. v6}, Lcom/miui/gallery/widget/CircleProgressBar;->drawLayer(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FI)V

    .line 368
    iget v0, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mPrevAlpha:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 369
    iget v0, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mPrevLevel:I

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/CircleProgressBar;->getBackDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v0, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mPrevLevel:I

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/CircleProgressBar;->getForeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v0, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mPrevLevel:I

    .line 370
    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/CircleProgressBar;->getMiddleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0}, Lcom/miui/gallery/widget/CircleProgressBar;->getRate()F

    move-result v5

    iget v6, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mPrevAlpha:I

    move-object v0, p0

    move-object v1, p1

    .line 369
    invoke-direct/range {v0 .. v6}, Lcom/miui/gallery/widget/CircleProgressBar;->drawLayer(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    :cond_0
    monitor-exit p0

    return-void

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 357
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/miui/gallery/widget/CircleProgressBar;->getIntrinsicWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/miui/gallery/widget/CircleProgressBar;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/widget/CircleProgressBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    monitor-exit p0

    return-void

    .line 357
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDrawablesForLevels([I[I[I)V
    .locals 3
    .param p1, "resourceIdBacks"    # [I
    .param p2, "resourceIdMiddles"    # [I
    .param p3, "resourceIdFores"    # [I

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/CircleProgressBar;->getDrawables([I)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/miui/gallery/widget/CircleProgressBar;->getDrawables([I)[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 158
    invoke-direct {p0, p3}, Lcom/miui/gallery/widget/CircleProgressBar;->getDrawables([I)[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 157
    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/gallery/widget/CircleProgressBar;->setDrawablesForLevels([Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;)V

    .line 161
    invoke-direct {p0}, Lcom/miui/gallery/widget/CircleProgressBar;->updateDrawableBounds()V

    .line 162
    return-void
.end method

.method public setDrawablesForLevels([Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "backs"    # [Landroid/graphics/drawable/Drawable;
    .param p2, "middles"    # [Landroid/graphics/drawable/Drawable;
    .param p3, "fores"    # [Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 109
    iput-object p1, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mLevelsBackDrawable:[Landroid/graphics/drawable/Drawable;

    .line 110
    iput-object p2, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mLevelsMiddleDrawable:[Landroid/graphics/drawable/Drawable;

    .line 111
    iput-object p3, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mLevelsForeDrawable:[Landroid/graphics/drawable/Drawable;

    .line 114
    if-eqz p1, :cond_0

    .line 115
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 116
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 115
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    if-eqz p2, :cond_1

    .line 120
    array-length v3, p2

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v0, p2, v2

    .line 121
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 120
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 124
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    if-eqz p3, :cond_2

    .line 125
    array-length v3, p3

    move v2, v1

    :goto_2
    if-ge v2, v3, :cond_2

    aget-object v0, p3, v2

    .line 126
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 125
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 130
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    if-eqz p2, :cond_5

    .line 132
    array-length v2, p2

    :goto_3
    if-ge v1, v2, :cond_5

    aget-object v0, p2, v1

    .line 133
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v3, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_3

    .line 134
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 132
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 136
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    instance-of v3, v0, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v3, :cond_4

    .line 137
    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_4

    .line 140
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\'middles\' must a bitmap or nine patch drawable."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    return-void
.end method

.method public setOnProgressChangedListener(Lcom/miui/gallery/widget/CircleProgressBar$OnProgressChangedListener;)V
    .locals 0
    .param p1, "progressChangedListener"    # Lcom/miui/gallery/widget/CircleProgressBar$OnProgressChangedListener;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mProgressChangedListener:Lcom/miui/gallery/widget/CircleProgressBar$OnProgressChangedListener;

    .line 250
    return-void
.end method

.method public setPrevAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 438
    iput p1, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mPrevAlpha:I

    .line 439
    invoke-virtual {p0}, Lcom/miui/gallery/widget/CircleProgressBar;->invalidate()V

    .line 440
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 8
    .param p1, "progress"    # I

    .prologue
    .line 296
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 298
    const/4 v2, -0x1

    .line 299
    .local v2, "newLevel":I
    iget-object v4, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mProgressLevels:[I

    if-nez v4, :cond_3

    .line 300
    const/4 v2, 0x0

    .line 313
    :cond_0
    :goto_0
    iget v4, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mCurrentLevel:I

    if-eq v2, v4, :cond_1

    .line 315
    iget v4, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mCurrentLevel:I

    iput v4, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mPrevLevel:I

    .line 316
    iput v2, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mCurrentLevel:I

    .line 317
    const/16 v4, 0xff

    invoke-virtual {p0, v4}, Lcom/miui/gallery/widget/CircleProgressBar;->setPrevAlpha(I)V

    .line 318
    const-string v4, "prevAlpha"

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 319
    .local v0, "fadeOutAnimator":Landroid/animation/Animator;
    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 320
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 321
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 324
    .end local v0    # "fadeOutAnimator":Landroid/animation/Animator;
    :cond_1
    iget-object v4, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mProgressChangedListener:Lcom/miui/gallery/widget/CircleProgressBar$OnProgressChangedListener;

    if-eqz v4, :cond_2

    .line 325
    iget-object v4, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mProgressChangedListener:Lcom/miui/gallery/widget/CircleProgressBar$OnProgressChangedListener;

    invoke-interface {v4}, Lcom/miui/gallery/widget/CircleProgressBar$OnProgressChangedListener;->onProgressChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    :cond_2
    monitor-exit p0

    return-void

    .line 302
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mProgressLevels:[I

    array-length v3, v4

    .line 303
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 304
    iget-object v4, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mProgressLevels:[I

    aget v4, v4, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ge p1, v4, :cond_5

    .line 305
    move v2, v1

    .line 309
    :cond_4
    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 310
    move v2, v3

    goto :goto_0

    .line 303
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 296
    .end local v1    # "i":I
    .end local v2    # "newLevel":I
    .end local v3    # "size":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public setProgressByAnimator(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/widget/CircleProgressBar;->setProgressByAnimator(ILandroid/animation/Animator$AnimatorListener;)V

    .line 242
    return-void
.end method

.method public setProgressByAnimator(ILandroid/animation/Animator$AnimatorListener;)V
    .locals 4
    .param p1, "progress"    # I
    .param p2, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/miui/gallery/widget/CircleProgressBar;->stopProgressAnimator()V

    .line 259
    invoke-virtual {p0}, Lcom/miui/gallery/widget/CircleProgressBar;->getProgress()I

    move-result v1

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/miui/gallery/widget/CircleProgressBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 260
    .local v0, "offsetAngle":I
    const-string v1, "progress"

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mChangeProgressAnimator:Landroid/animation/Animator;

    .line 261
    iget-object v1, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mChangeProgressAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/miui/gallery/widget/CircleProgressBar;->calcDuration(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 262
    iget-object v1, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mChangeProgressAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Lcom/miui/gallery/widget/CircleProgressBar;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 263
    if-eqz p2, :cond_0

    .line 264
    iget-object v1, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mChangeProgressAnimator:Landroid/animation/Animator;

    invoke-virtual {v1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 266
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mChangeProgressAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 267
    return-void
.end method

.method public setProgressLevels([I)V
    .locals 0
    .param p1, "progressLevels"    # [I

    .prologue
    .line 86
    iput-object p1, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mProgressLevels:[I

    .line 87
    return-void
.end method

.method public setRotateVelocity(I)V
    .locals 0
    .param p1, "velocity"    # I

    .prologue
    .line 233
    iput p1, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mRotateVelocity:I

    .line 234
    return-void
.end method

.method public setThumb(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 455
    invoke-virtual {p0}, Lcom/miui/gallery/widget/CircleProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/CircleProgressBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 456
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 463
    iput-object p1, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 464
    return-void
.end method

.method public stopProgressAnimator()V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mChangeProgressAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mChangeProgressAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/miui/gallery/widget/CircleProgressBar;->mChangeProgressAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 276
    :cond_0
    return-void
.end method
