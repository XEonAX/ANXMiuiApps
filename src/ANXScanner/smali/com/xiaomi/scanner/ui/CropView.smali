.class public Lcom/xiaomi/scanner/ui/CropView;
.super Landroid/view/View;
.source "CropView.java"


# static fields
.field private static final MIN_CROP_HEIGHT:I

.field private static final MIN_CROP_WIDTH:I

.field private static final MOVE_BLOCK:I = 0x10

.field private static final MOVE_BOTTOM:I = 0x8

.field private static final MOVE_LEFT:I = 0x1

.field private static final MOVE_RIGHT:I = 0x4

.field private static final MOVE_TOP:I = 0x2

.field private static final TEXT_ROW_HEIGHT:I

.field private static final TOUCH_TOLERANCE:I


# instance fields
.field private final mCropBounds:Landroid/graphics/RectF;

.field private final mCropRectDrawable:Landroid/graphics/drawable/Drawable;

.field private final mDefaultBounds:Landroid/graphics/RectF;

.field private final mDisplayBounds:Landroid/graphics/RectF;

.field private mLastX:F

.field private mLastY:F

.field private mMovingEdges:I

.field private mPromptBounds:Landroid/graphics/Rect;

.field private mPromptMarginTop:I

.field private final mPromptPaint:Landroid/graphics/Paint;

.field private final mPromptText:Ljava/lang/String;

.field private final mSelectPaint:Landroid/graphics/Paint;

.field private mTextCrop:Z

.field private final mTextRangeDrawable:Landroid/graphics/drawable/Drawable;

.field private final mTextRectBounds:Landroid/graphics/RectF;

.field private mTextTapCenterX:F

.field private mTextTapCenterY:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/high16 v1, 0x41a00000    # 20.0f

    .line 27
    const/high16 v0, 0x42800000    # 64.0f

    invoke-static {v0}, Lcom/xiaomi/scanner/util/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/xiaomi/scanner/ui/CropView;->MIN_CROP_WIDTH:I

    .line 28
    invoke-static {v1}, Lcom/xiaomi/scanner/util/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/xiaomi/scanner/ui/CropView;->MIN_CROP_HEIGHT:I

    .line 29
    invoke-static {v1}, Lcom/xiaomi/scanner/util/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/xiaomi/scanner/ui/CropView;->TEXT_ROW_HEIGHT:I

    .line 30
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lcom/xiaomi/scanner/util/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/xiaomi/scanner/ui/CropView;->TOUCH_TOLERANCE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    .line 35
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/scanner/ui/CropView;->mDefaultBounds:Landroid/graphics/RectF;

    .line 36
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/scanner/ui/CropView;->mDisplayBounds:Landroid/graphics/RectF;

    .line 37
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/scanner/ui/CropView;->mTextRectBounds:Landroid/graphics/RectF;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 54
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f020082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropRectDrawable:Landroid/graphics/drawable/Drawable;

    .line 55
    const v1, 0x7f0200db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/scanner/ui/CropView;->mTextRangeDrawable:Landroid/graphics/drawable/Drawable;

    .line 56
    const v1, 0x7f0700c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/scanner/ui/CropView;->mPromptText:Ljava/lang/String;

    .line 58
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/scanner/ui/CropView;->mPromptPaint:Landroid/graphics/Paint;

    .line 59
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/CropView;->mPromptPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/CropView;->mPromptPaint:Landroid/graphics/Paint;

    const v2, 0x7f0800b7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 61
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/scanner/ui/CropView;->mPromptBounds:Landroid/graphics/Rect;

    .line 63
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/scanner/ui/CropView;->mSelectPaint:Landroid/graphics/Paint;

    .line 64
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/CropView;->mSelectPaint:Landroid/graphics/Paint;

    const v2, -0x55705042

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/CropView;->mPromptPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/CropView;->mPromptText:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/xiaomi/scanner/ui/CropView;->mPromptText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/xiaomi/scanner/ui/CropView;->mPromptBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 67
    const v1, 0x7f0800a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/xiaomi/scanner/ui/CropView;->mPromptMarginTop:I

    .line 68
    return-void
.end method

.method private detectMovingEdges(FF)V
    .locals 11
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v6, 0x1

    const/16 v10, 0x10

    const/4 v7, 0x0

    .line 86
    iput v7, p0, Lcom/xiaomi/scanner/ui/CropView;->mMovingEdges:I

    .line 89
    iget-boolean v8, p0, Lcom/xiaomi/scanner/ui/CropView;->mTextCrop:Z

    if-nez v8, :cond_7

    .line 91
    iget-object v8, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    cmpg-float v8, p2, v8

    if-gtz v8, :cond_0

    iget-object v8, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    cmpg-float v8, v8, p2

    if-gtz v8, :cond_0

    .line 92
    iget-object v8, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    sub-float v8, p1, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 93
    .local v1, "left":F
    iget-object v8, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    sub-float v8, p1, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 94
    .local v4, "right":F
    sget v8, Lcom/xiaomi/scanner/ui/CropView;->TOUCH_TOLERANCE:I

    int-to-float v8, v8

    cmpg-float v8, v1, v8

    if-gtz v8, :cond_3

    cmpg-float v8, v1, v4

    if-gez v8, :cond_3

    .line 95
    iget v8, p0, Lcom/xiaomi/scanner/ui/CropView;->mMovingEdges:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/xiaomi/scanner/ui/CropView;->mMovingEdges:I

    .line 102
    .end local v1    # "left":F
    .end local v4    # "right":F
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    cmpg-float v8, p1, v8

    if-gtz v8, :cond_1

    iget-object v8, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    cmpg-float v8, v8, p1

    if-gtz v8, :cond_1

    .line 103
    iget-object v8, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    sub-float v8, p2, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 104
    .local v5, "top":F
    iget-object v8, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    sub-float v8, p2, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 105
    .local v0, "bottom":F
    sget v8, Lcom/xiaomi/scanner/ui/CropView;->TOUCH_TOLERANCE:I

    int-to-float v8, v8

    cmpg-float v8, v5, v8

    if-gtz v8, :cond_4

    move v8, v6

    :goto_1
    cmpg-float v9, v5, v0

    if-gez v9, :cond_5

    :goto_2
    and-int/2addr v6, v8

    if-eqz v6, :cond_6

    .line 106
    iget v6, p0, Lcom/xiaomi/scanner/ui/CropView;->mMovingEdges:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/xiaomi/scanner/ui/CropView;->mMovingEdges:I

    .line 113
    .end local v0    # "bottom":F
    .end local v5    # "top":F
    :cond_1
    :goto_3
    iget-object v6, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v6, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v6

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/xiaomi/scanner/ui/CropView;->mMovingEdges:I

    if-nez v6, :cond_2

    .line 114
    iput v10, p0, Lcom/xiaomi/scanner/ui/CropView;->mMovingEdges:I

    .line 146
    :cond_2
    :goto_4
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/CropView;->invalidate()V

    .line 147
    return-void

    .line 96
    .restart local v1    # "left":F
    .restart local v4    # "right":F
    :cond_3
    sget v8, Lcom/xiaomi/scanner/ui/CropView;->TOUCH_TOLERANCE:I

    int-to-float v8, v8

    cmpg-float v8, v4, v8

    if-gtz v8, :cond_0

    .line 97
    iget v8, p0, Lcom/xiaomi/scanner/ui/CropView;->mMovingEdges:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/xiaomi/scanner/ui/CropView;->mMovingEdges:I

    goto :goto_0

    .end local v1    # "left":F
    .end local v4    # "right":F
    .restart local v0    # "bottom":F
    .restart local v5    # "top":F
    :cond_4
    move v8, v7

    .line 105
    goto :goto_1

    :cond_5
    move v6, v7

    goto :goto_2

    .line 107
    :cond_6
    sget v6, Lcom/xiaomi/scanner/ui/CropView;->TOUCH_TOLERANCE:I

    int-to-float v6, v6

    cmpg-float v6, v0, v6

    if-gtz v6, :cond_1

    .line 108
    iget v6, p0, Lcom/xiaomi/scanner/ui/CropView;->mMovingEdges:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/xiaomi/scanner/ui/CropView;->mMovingEdges:I

    goto :goto_3

    .line 118
    .end local v0    # "bottom":F
    .end local v5    # "top":F
    :cond_7
    new-instance v2, Landroid/graphics/PointF;

    iget-object v6, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget v7, p0, Lcom/xiaomi/scanner/ui/CropView;->mTextTapCenterX:F

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget v8, p0, Lcom/xiaomi/scanner/ui/CropView;->mTextTapCenterY:F

    add-float/2addr v7, v8

    invoke-direct {v2, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 121
    .local v2, "ltCorner":Landroid/graphics/PointF;
    iget v6, v2, Landroid/graphics/PointF;->x:F

    sub-float v6, p1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sget v7, Lcom/xiaomi/scanner/ui/CropView;->TOUCH_TOLERANCE:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_9

    iget v6, v2, Landroid/graphics/PointF;->y:F

    sub-float v6, p2, v6

    .line 122
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sget v7, Lcom/xiaomi/scanner/ui/CropView;->TOUCH_TOLERANCE:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_9

    .line 123
    const/4 v6, 0x3

    iput v6, p0, Lcom/xiaomi/scanner/ui/CropView;->mMovingEdges:I

    .line 136
    :cond_8
    :goto_5
    iget v6, p0, Lcom/xiaomi/scanner/ui/CropView;->mMovingEdges:I

    if-nez v6, :cond_2

    .line 137
    iget-object v6, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    sget v7, Lcom/xiaomi/scanner/ui/CropView;->TEXT_ROW_HEIGHT:I

    mul-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_a

    iget-object v6, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v6, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 138
    iput v10, p0, Lcom/xiaomi/scanner/ui/CropView;->mMovingEdges:I

    goto :goto_4

    .line 126
    :cond_9
    new-instance v3, Landroid/graphics/PointF;

    iget-object v6, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget v7, p0, Lcom/xiaomi/scanner/ui/CropView;->mTextTapCenterX:F

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    sget v8, Lcom/xiaomi/scanner/ui/CropView;->TEXT_ROW_HEIGHT:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/xiaomi/scanner/ui/CropView;->mTextTapCenterY:F

    add-float/2addr v7, v8

    invoke-direct {v3, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 129
    .local v3, "rbCorner":Landroid/graphics/PointF;
    iget v6, v3, Landroid/graphics/PointF;->x:F

    sub-float v6, p1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sget v7, Lcom/xiaomi/scanner/ui/CropView;->TOUCH_TOLERANCE:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_8

    iget v6, v3, Landroid/graphics/PointF;->y:F

    sub-float v6, p2, v6

    .line 130
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sget v7, Lcom/xiaomi/scanner/ui/CropView;->TOUCH_TOLERANCE:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_8

    .line 131
    const/16 v6, 0xc

    iput v6, p0, Lcom/xiaomi/scanner/ui/CropView;->mMovingEdges:I

    goto :goto_5

    .line 139
    .end local v3    # "rbCorner":Landroid/graphics/PointF;
    :cond_a
    iget-object v6, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    cmpg-float v6, v6, p2

    if-gtz v6, :cond_b

    iget-object v6, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sget v7, Lcom/xiaomi/scanner/ui/CropView;->TEXT_ROW_HEIGHT:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    cmpg-float v6, p2, v6

    if-gtz v6, :cond_b

    iget-object v6, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    cmpl-float v6, p1, v6

    if-gtz v6, :cond_d

    :cond_b
    iget-object v6, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sget v7, Lcom/xiaomi/scanner/ui/CropView;->TEXT_ROW_HEIGHT:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    cmpg-float v6, v6, p2

    if-gez v6, :cond_c

    iget-object v6, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    sget v7, Lcom/xiaomi/scanner/ui/CropView;->TEXT_ROW_HEIGHT:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    cmpg-float v6, p2, v6

    if-ltz v6, :cond_d

    :cond_c
    iget-object v6, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    cmpg-float v6, p2, v6

    if-gtz v6, :cond_2

    iget-object v6, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    sget v7, Lcom/xiaomi/scanner/ui/CropView;->TEXT_ROW_HEIGHT:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    cmpl-float v6, p2, v6

    if-ltz v6, :cond_2

    iget-object v6, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    cmpg-float v6, p1, v6

    if-gez v6, :cond_2

    .line 142
    :cond_d
    iput v10, p0, Lcom/xiaomi/scanner/ui/CropView;->mMovingEdges:I

    goto/16 :goto_4
.end method

.method private drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFZ)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "indicator"    # Landroid/graphics/drawable/Drawable;
    .param p3, "left"    # F
    .param p4, "top"    # F
    .param p5, "mirror"    # Z

    .prologue
    .line 259
    new-instance v0, Landroid/graphics/RectF;

    .line 260
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p3

    .line 261
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, p4

    invoke-direct {v0, p3, p4, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 262
    .local v0, "rect":Landroid/graphics/RectF;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 263
    if-eqz p5, :cond_0

    .line 264
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 266
    :cond_0
    iget v1, v0, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, v0, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 268
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 269
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 270
    return-void
.end method

.method private moveEdges(FF)V
    .locals 8
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .prologue
    const/16 v4, 0x10

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    .line 151
    iget-boolean v3, p0, Lcom/xiaomi/scanner/ui/CropView;->mTextCrop:Z

    if-nez v3, :cond_8

    .line 152
    iget v3, p0, Lcom/xiaomi/scanner/ui/CropView;->mMovingEdges:I

    if-ne v3, v4, :cond_3

    .line 154
    cmpl-float v3, p1, v6

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/xiaomi/scanner/ui/CropView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v4

    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 156
    :goto_0
    cmpl-float v3, p2, v6

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/xiaomi/scanner/ui/CropView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    invoke-static {v3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 158
    :goto_1
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 222
    :cond_0
    :goto_2
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/CropView;->onCropChange()V

    .line 223
    return-void

    .line 154
    :cond_1
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/CropView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    .line 155
    invoke-static {v3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_0

    .line 156
    :cond_2
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/CropView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    .line 157
    invoke-static {v3, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    goto :goto_1

    .line 161
    :cond_3
    sget v3, Lcom/xiaomi/scanner/ui/CropView;->MIN_CROP_WIDTH:I

    int-to-float v2, v3

    .line 162
    .local v2, "minWidth":F
    sget v3, Lcom/xiaomi/scanner/ui/CropView;->MIN_CROP_HEIGHT:I

    int-to-float v1, v3

    .line 163
    .local v1, "minHeight":F
    iget v3, p0, Lcom/xiaomi/scanner/ui/CropView;->mMovingEdges:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    .line 164
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, p1

    iget-object v5, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 166
    :cond_4
    iget v3, p0, Lcom/xiaomi/scanner/ui/CropView;->mMovingEdges:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_5

    .line 167
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, p2

    iget-object v5, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 169
    :cond_5
    iget v3, p0, Lcom/xiaomi/scanner/ui/CropView;->mMovingEdges:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_6

    .line 170
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, p1

    iget-object v5, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v3, Landroid/graphics/RectF;->right:F

    .line 172
    :cond_6
    iget v3, p0, Lcom/xiaomi/scanner/ui/CropView;->mMovingEdges:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_7

    .line 173
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, p2

    iget-object v5, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 175
    :cond_7
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/xiaomi/scanner/ui/CropView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    goto/16 :goto_2

    .line 179
    .end local v1    # "minHeight":F
    .end local v2    # "minWidth":F
    :cond_8
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/CropView;->mTextRangeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v2, v3

    .line 180
    .restart local v2    # "minWidth":F
    iget v3, p0, Lcom/xiaomi/scanner/ui/CropView;->mMovingEdges:I

    if-ne v3, v4, :cond_b

    .line 182
    cmpl-float v3, p1, v6

    if-lez v3, :cond_9

    iget-object v3, p0, Lcom/xiaomi/scanner/ui/CropView;->mTextRectBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 184
    :goto_3
    cmpl-float v3, p2, v6

    if-lez v3, :cond_a

    iget-object v3, p0, Lcom/xiaomi/scanner/ui/CropView;->mTextRectBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    invoke-static {v3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 186
    :goto_4
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    goto/16 :goto_2

    .line 182
    :cond_9
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/CropView;->mTextRectBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    .line 183
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_3

    .line 184
    :cond_a
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/CropView;->mTextRectBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    .line 185
    invoke-static {v3, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    goto :goto_4

    .line 188
    :cond_b
    sget v3, Lcom/xiaomi/scanner/ui/CropView;->TEXT_ROW_HEIGHT:I

    int-to-float v1, v3

    .line 189
    .restart local v1    # "minHeight":F
    iget v3, p0, Lcom/xiaomi/scanner/ui/CropView;->mMovingEdges:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_d

    .line 190
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, p1

    iget-object v5, p0, Lcom/xiaomi/scanner/ui/CropView;->mTextRectBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/xiaomi/scanner/ui/CropView;->mTextRectBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    invoke-static {v4, v5, v6}, Lcom/xiaomi/scanner/util/Util;->clamp(FFF)F

    move-result v4

    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 192
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, p2

    iget-object v5, p0, Lcom/xiaomi/scanner/ui/CropView;->mTextRectBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v1

    invoke-static {v4, v5, v6}, Lcom/xiaomi/scanner/util/Util;->clamp(FFF)F

    move-result v4

    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 194
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    sget v4, Lcom/xiaomi/scanner/ui/CropView;->TEXT_ROW_HEIGHT:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    iget-object v3, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    mul-float v4, v7, v2

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 197
    sget v3, Lcom/xiaomi/scanner/ui/CropView;->TEXT_ROW_HEIGHT:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float v0, v3, v4

    .line 198
    .local v0, "dy":F
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v0

    iget-object v4, p0, Lcom/xiaomi/scanner/ui/CropView;->mTextRectBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_c

    .line 199
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v0

    iput v4, v3, Landroid/graphics/RectF;->top:F

    goto/16 :goto_2

    .line 201
    :cond_c
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    mul-float v5, v7, v2

    sub-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->left:F

    goto/16 :goto_2

    .line 204
    .end local v0    # "dy":F
    :cond_d
    iget v3, p0, Lcom/xiaomi/scanner/ui/CropView;->mMovingEdges:I

    const/16 v4, 0xc

    if-ne v3, v4, :cond_0

    .line 205
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, p1

    iget-object v5, p0, Lcom/xiaomi/scanner/ui/CropView;->mTextRectBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/xiaomi/scanner/ui/CropView;->mTextRectBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    invoke-static {v4, v5, v6}, Lcom/xiaomi/scanner/util/Util;->clamp(FFF)F

    move-result v4

    iput v4, v3, Landroid/graphics/RectF;->right:F

    .line 207
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, p2

    iget-object v5, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v1

    iget-object v6, p0, Lcom/xiaomi/scanner/ui/CropView;->mTextRectBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4, v5, v6}, Lcom/xiaomi/scanner/util/Util;->clamp(FFF)F

    move-result v4

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 209
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    sget v4, Lcom/xiaomi/scanner/ui/CropView;->TEXT_ROW_HEIGHT:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    iget-object v3, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    mul-float v4, v7, v2

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 212
    sget v3, Lcom/xiaomi/scanner/ui/CropView;->TEXT_ROW_HEIGHT:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float v0, v3, v4

    .line 213
    .restart local v0    # "dy":F
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/xiaomi/scanner/ui/CropView;->mTextRectBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_e

    .line 214
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v0

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_2

    .line 216
    :cond_e
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    mul-float v5, v7, v2

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->right:F

    goto/16 :goto_2
.end method

.method private onCropChange()V
    .locals 0

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/CropView;->invalidate()V

    .line 83
    return-void
.end method


# virtual methods
.method public getCropRect(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/xiaomi/scanner/ui/CropView;->mTextCrop:Z

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CropView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    sget v2, Lcom/xiaomi/scanner/ui/CropView;->MIN_CROP_HEIGHT:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/CropView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    .line 318
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/CropView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    sget v4, Lcom/xiaomi/scanner/ui/CropView;->MIN_CROP_HEIGHT:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/xiaomi/scanner/ui/CropView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    .line 320
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 317
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 325
    :goto_0
    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public getDisplayRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 312
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CropView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/xiaomi/scanner/util/CameraUtil;->rectFToRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 313
    return-void
.end method

.method public getRelativeCropRect(Landroid/graphics/RectF;)V
    .locals 6
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 345
    iget-boolean v1, p0, Lcom/xiaomi/scanner/ui/CropView;->mTextCrop:Z

    if-eqz v1, :cond_0

    .line 346
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/CropView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    sget v3, Lcom/xiaomi/scanner/ui/CropView;->MIN_CROP_HEIGHT:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/xiaomi/scanner/ui/CropView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    .line 347
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lcom/xiaomi/scanner/ui/CropView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    sget v5, Lcom/xiaomi/scanner/ui/CropView;->MIN_CROP_HEIGHT:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/xiaomi/scanner/ui/CropView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    .line 349
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 350
    .local v0, "textCropRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 351
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 352
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 353
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 350
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 357
    .end local v0    # "textCropRect":Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 355
    :cond_0
    invoke-virtual {p1, v2, v2, v3, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0
.end method

.method public isMoveBlock()Z
    .locals 2

    .prologue
    .line 341
    iget v0, p0, Lcom/xiaomi/scanner/ui/CropView;->mMovingEdges:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMovingEdges()Z
    .locals 1

    .prologue
    .line 337
    iget v0, p0, Lcom/xiaomi/scanner/ui/CropView;->mMovingEdges:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/xiaomi/scanner/ui/CropView;->mTextCrop:Z

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    sget v1, Lcom/xiaomi/scanner/ui/CropView;->TEXT_ROW_HEIGHT:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/xiaomi/scanner/ui/CropView;->mSelectPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 290
    :goto_0
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/CropView;->mTextRangeDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/CropView;->mTextRangeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v3, v0, v1

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->top:F

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/scanner/ui/CropView;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFZ)V

    .line 294
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/CropView;->mTextRangeDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sget v1, Lcom/xiaomi/scanner/ui/CropView;->TEXT_ROW_HEIGHT:I

    int-to-float v1, v1

    sub-float v4, v0, v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/scanner/ui/CropView;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFZ)V

    .line 305
    :goto_1
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CropView;->mPromptText:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/CropView;->mDisplayBounds:Landroid/graphics/RectF;

    .line 306
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/CropView;->mPromptBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcom/xiaomi/scanner/ui/CropView;->mPromptMarginTop:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/xiaomi/scanner/ui/CropView;->mPromptBounds:Landroid/graphics/Rect;

    .line 307
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/xiaomi/scanner/ui/CropView;->mPromptPaint:Landroid/graphics/Paint;

    .line 305
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 309
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CropView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sget v4, Lcom/xiaomi/scanner/ui/CropView;->TEXT_ROW_HEIGHT:I

    int-to-float v4, v4

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/xiaomi/scanner/ui/CropView;->mSelectPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 283
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CropView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sget v2, Lcom/xiaomi/scanner/ui/CropView;->TEXT_ROW_HEIGHT:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CropView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sget v4, Lcom/xiaomi/scanner/ui/CropView;->TEXT_ROW_HEIGHT:I

    int-to-float v4, v4

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/xiaomi/scanner/ui/CropView;->mSelectPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 285
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CropView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sget v2, Lcom/xiaomi/scanner/ui/CropView;->TEXT_ROW_HEIGHT:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/xiaomi/scanner/ui/CropView;->mSelectPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropRectDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 301
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropRectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v5, 0x0

    .line 72
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CropView;->mDisplayBounds:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 73
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CropView;->mTextRectBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/CropView;->mTextRangeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/CropView;->mTextRangeDrawable:Landroid/graphics/drawable/Drawable;

    .line 74
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int v2, p1, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/xiaomi/scanner/ui/CropView;->mTextRangeDrawable:Landroid/graphics/drawable/Drawable;

    .line 75
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int v3, p2, v3

    sget v4, Lcom/xiaomi/scanner/ui/CropView;->TEXT_ROW_HEIGHT:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 73
    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 76
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CropView;->mDefaultBounds:Landroid/graphics/RectF;

    mul-int/lit8 v1, p1, 0x3

    div-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    mul-int/lit8 v2, p2, 0x2

    div-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    mul-int/lit8 v3, p1, 0x7

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    mul-int/lit8 v4, p2, 0x3

    div-int/lit8 v4, v4, 0x5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 77
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CropView;->mCropBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/CropView;->mDefaultBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 78
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/CropView;->onCropChange()V

    .line 79
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 226
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/CropView;->isShown()Z

    move-result v4

    if-nez v4, :cond_1

    .line 255
    :cond_0
    :goto_0
    return v3

    .line 227
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/CropView;->isMovingEdges()Z

    move-result v0

    .line 228
    .local v0, "last":Z
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/CropView;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 229
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 230
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 232
    .local v2, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 255
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/CropView;->isMovingEdges()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    .line 234
    .restart local v1    # "x":F
    .restart local v2    # "y":F
    :pswitch_0
    invoke-direct {p0, v1, v2}, Lcom/xiaomi/scanner/ui/CropView;->detectMovingEdges(FF)V

    .line 235
    iput v1, p0, Lcom/xiaomi/scanner/ui/CropView;->mLastX:F

    .line 236
    iput v2, p0, Lcom/xiaomi/scanner/ui/CropView;->mLastY:F

    goto :goto_1

    .line 240
    :pswitch_1
    iget v4, p0, Lcom/xiaomi/scanner/ui/CropView;->mMovingEdges:I

    if-eqz v4, :cond_4

    .line 241
    iget v4, p0, Lcom/xiaomi/scanner/ui/CropView;->mLastX:F

    sub-float v4, v1, v4

    iget v5, p0, Lcom/xiaomi/scanner/ui/CropView;->mLastY:F

    sub-float v5, v2, v5

    invoke-direct {p0, v4, v5}, Lcom/xiaomi/scanner/ui/CropView;->moveEdges(FF)V

    .line 243
    :cond_4
    iput v1, p0, Lcom/xiaomi/scanner/ui/CropView;->mLastX:F

    .line 244
    iput v2, p0, Lcom/xiaomi/scanner/ui/CropView;->mLastY:F

    goto :goto_1

    .line 249
    :pswitch_2
    iput v3, p0, Lcom/xiaomi/scanner/ui/CropView;->mMovingEdges:I

    .line 250
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/CropView;->invalidate()V

    goto :goto_1

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setTextCrop(Z)V
    .locals 2
    .param p1, "textCrop"    # Z

    .prologue
    .line 328
    iput-boolean p1, p0, Lcom/xiaomi/scanner/ui/CropView;->mTextCrop:Z

    .line 329
    iget-boolean v0, p0, Lcom/xiaomi/scanner/ui/CropView;->mTextCrop:Z

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CropView;->mTextRangeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/xiaomi/scanner/ui/CropView;->mTextTapCenterX:F

    .line 332
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CropView;->mTextRangeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f428f5c    # 0.76f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/xiaomi/scanner/ui/CropView;->mTextTapCenterY:F

    .line 334
    :cond_0
    return-void
.end method
