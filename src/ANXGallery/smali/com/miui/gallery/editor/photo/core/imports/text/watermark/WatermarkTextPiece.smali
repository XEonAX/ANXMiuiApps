.class public Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;
.super Ljava/lang/Object;
.source "WatermarkTextPiece.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextSetting;


# instance fields
.field private mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

.field private mColor:I

.field private final mCountSizeSpacing:F

.field private final mDefaultTextSize:F

.field private mDrawOutline:Z

.field private mIsBoldText:Z

.field private mIsRTL:Z

.field private mIsShadow:Z

.field private final mMaxTextSize:F

.field private final mMinTextSize:F

.field private mOutlineDisplayRect:Landroid/graphics/RectF;

.field private mOutlineRect:Landroid/graphics/RectF;

.field private mPaint:Landroid/graphics/Paint;

.field private mText:Ljava/lang/String;

.field private mTextInDialogRect:Landroid/graphics/RectF;

.field private final mTextPaddingInsert:F

.field private mTextPieceInfo:Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo$TextPieceInfo;

.field private mTextRect:Landroid/graphics/RectF;

.field private mTextStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

.field private mTextTransparent:F


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo$TextPieceInfo;FFF)V
    .locals 9
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "textPieceInfo"    # Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo$TextPieceInfo;
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "scaleMultipleOrigin"    # F

    .prologue
    const/high16 v8, 0x40400000    # 3.0f

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mIsRTL:Z

    .line 51
    iput-boolean v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mDrawOutline:Z

    .line 53
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mTextRect:Landroid/graphics/RectF;

    .line 56
    iput-object p2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mTextPieceInfo:Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo$TextPieceInfo;

    .line 58
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 59
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 60
    iput-boolean v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mIsRTL:Z

    .line 62
    :cond_0
    iget v1, p2, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo$TextPieceInfo;->size:F

    cmpl-float v1, v1, v6

    if-nez v1, :cond_1

    .line 63
    const v1, 0x7f0b0337

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, p5

    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mDefaultTextSize:F

    .line 67
    :goto_0
    iget v1, p2, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo$TextPieceInfo;->minSize:F

    cmpl-float v1, v1, v6

    if-lez v1, :cond_2

    .line 68
    iget v1, p2, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo$TextPieceInfo;->minSize:F

    invoke-static {v1}, Lcom/miui/gallery/util/ScreenUtils;->dpToPixel(F)F

    move-result v1

    mul-float/2addr v1, p5

    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mMinTextSize:F

    .line 72
    :goto_1
    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mDefaultTextSize:F

    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mMaxTextSize:F

    .line 73
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mCountSizeSpacing:F

    .line 74
    const v1, 0x7f0b036b

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mTextPaddingInsert:F

    .line 76
    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mColor:I

    .line 77
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mTextStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    .line 78
    iput v6, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mTextTransparent:F

    .line 79
    iput-boolean v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mIsBoldText:Z

    .line 80
    iput-boolean v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mIsShadow:Z

    .line 82
    new-instance v1, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    invoke-direct {v1}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    .line 83
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mDefaultTextSize:F

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 84
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    const v4, 0x7f0b0344

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->setLineHeightOffset(F)V

    .line 85
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    iget-boolean v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mIsRTL:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;->RIGHT:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    :goto_2
    invoke-virtual {v4, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->setTextAlignment(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;)V

    .line 86
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mTextPieceInfo:Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo$TextPieceInfo;

    iget v1, v1, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo$TextPieceInfo;->isVerticalText:I

    if-ne v1, v2, :cond_4

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->setSingleVerticalText(Z)V

    .line 87
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mTextPieceInfo:Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo$TextPieceInfo;

    iget-object v4, v4, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo$TextPieceInfo;->text:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->setText(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mTextPieceInfo:Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo$TextPieceInfo;

    iget v4, v4, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo$TextPieceInfo;->letterSpacing:F

    invoke-virtual {v1, v4}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->setLetterSpace(F)V

    .line 89
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mTextPieceInfo:Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo$TextPieceInfo;

    iget v4, v4, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo$TextPieceInfo;->lines:I

    invoke-virtual {v1, v4}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->setMaxLines(I)V

    .line 91
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mPaint:Landroid/graphics/Paint;

    .line 92
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mPaint:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 94
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 95
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/DashPathEffect;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-direct {v4, v5, v6}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 96
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x7f10014a

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v4, v6, v6, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 98
    new-instance v1, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mTextPieceInfo:Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo$TextPieceInfo;

    iget-object v4, v4, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo$TextPieceInfo;->frameRect:[F

    aget v3, v4, v3

    invoke-static {v3}, Lcom/miui/gallery/util/ScreenUtils;->dpToPixel(F)F

    move-result v3

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mTextPieceInfo:Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo$TextPieceInfo;

    iget-object v4, v4, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo$TextPieceInfo;->frameRect:[F

    aget v2, v4, v2

    invoke-static {v2}, Lcom/miui/gallery/util/ScreenUtils;->dpToPixel(F)F

    move-result v2

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mTextPieceInfo:Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo$TextPieceInfo;

    iget-object v4, v4, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo$TextPieceInfo;->frameRect:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-static {v4}, Lcom/miui/gallery/util/ScreenUtils;->dpToPixel(F)F

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mTextPieceInfo:Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo$TextPieceInfo;

    iget-object v5, v5, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo$TextPieceInfo;->frameRect:[F

    const/4 v6, 0x3

    aget v5, v5, v6

    invoke-static {v5}, Lcom/miui/gallery/util/ScreenUtils;->dpToPixel(F)F

    move-result v5

    invoke-direct {v1, v3, v2, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mOutlineRect:Landroid/graphics/RectF;

    .line 99
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mOutlineRect:Landroid/graphics/RectF;

    neg-float v2, p3

    div-float/2addr v2, v7

    neg-float v3, p4

    div-float/2addr v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 100
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mTextPieceInfo:Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo$TextPieceInfo;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo$TextPieceInfo;->text:Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mText:Ljava/lang/String;

    .line 101
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mTextInDialogRect:Landroid/graphics/RectF;

    .line 102
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mOutlineRect:Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mOutlineDisplayRect:Landroid/graphics/RectF;

    .line 103
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mOutlineDisplayRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v8

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 104
    return-void

    .line 65
    :cond_1
    iget v1, p2, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo$TextPieceInfo;->size:F

    invoke-static {v1}, Lcom/miui/gallery/util/ScreenUtils;->dpToPixel(F)F

    move-result v1

    mul-float/2addr v1, p5

    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mDefaultTextSize:F

    goto/16 :goto_0

    .line 70
    :cond_2
    const v1, 0x7f0b036a

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mMinTextSize:F

    goto/16 :goto_1

    .line 85
    :cond_3
    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;->LEFT:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    goto/16 :goto_2

    :cond_4
    move v1, v3

    .line 86
    goto/16 :goto_3

    .line 95
    :array_0
    .array-data 4
        0x41000000    # 8.0f
        0x40800000    # 4.0f
    .end array-data
.end method

.method private getAlphaByConfig()I
    .locals 3

    .prologue
    .line 162
    const/high16 v0, 0x437f0000    # 255.0f

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mTextTransparent:F

    const/high16 v2, 0x43660000    # 230.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public configTextPaint()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 134
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 135
    .local v0, "textPaint":Landroid/graphics/Paint;
    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mTextStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    if-nez v2, :cond_0

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 137
    .local v1, "typeface":Landroid/graphics/Typeface;
    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 138
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->getAlphaByConfig()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 139
    iget-boolean v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mIsBoldText:Z

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 140
    iget-boolean v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mIsShadow:Z

    if-eqz v2, :cond_1

    .line 141
    const/high16 v2, 0x66000000

    invoke-virtual {v0, v3, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 145
    :goto_1
    return-void

    .line 136
    .end local v1    # "typeface":Landroid/graphics/Typeface;
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mTextStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->getTypeFace()Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_0

    .line 143
    .restart local v1    # "typeface":Landroid/graphics/Typeface;
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Paint;->clearShadowLayer()V

    goto :goto_1
.end method

.method public countTextInDialog()V
    .locals 10

    .prologue
    .line 148
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->setText(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mTextInDialogRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mOutlineRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 153
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mTextInDialogRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mTextPaddingInsert:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 155
    .local v6, "a":J
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mTextInDialogRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mTextInDialogRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mMinTextSize:F

    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mMaxTextSize:F

    iget v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mCountSizeSpacing:F

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->countTextArea(FFFFF)V

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 157
    .local v8, "b":J
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mTextRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->getTextRect(Landroid/graphics/RectF;)V

    .line 158
    const-string v0, "WatermarkTextPiece"

    const-string v1, "count text time\uff1a %d"

    sub-long v2, v8, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 107
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 108
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mDrawOutline:Z

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mOutlineDisplayRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mOutlineRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mOutlineRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 112
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mTextRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v2

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mTextRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 114
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mTextPieceInfo:Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo$TextPieceInfo;

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo$TextPieceInfo;->align:I

    packed-switch v0, :pswitch_data_0

    .line 128
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->draw(Landroid/graphics/Canvas;)V

    .line 130
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 131
    return-void

    .line 116
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mTextRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    neg-float v0, v0

    div-float/2addr v0, v2

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mTextRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    neg-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 119
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mTextInDialogRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v2

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mTextRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mTextRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    neg-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 122
    :pswitch_2
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mTextInDialogRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    neg-float v0, v0

    div-float/2addr v0, v2

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mTextRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    neg-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mColor:I

    return v0
.end method

.method public getOutlineRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mOutlineRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextAlignment()Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->getTextAlignment()Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    move-result-object v0

    return-object v0
.end method

.method public getTextStyle()Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mTextStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    return-object v0
.end method

.method public getTextTransparent()F
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mTextTransparent:F

    return v0
.end method

.method public isBoldText()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mIsBoldText:Z

    return v0
.end method

.method public isShadow()Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mIsShadow:Z

    return v0
.end method

.method public setBoldText(Z)V
    .locals 0
    .param p1, "textBold"    # Z

    .prologue
    .line 193
    iput-boolean p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mIsBoldText:Z

    .line 194
    return-void
.end method

.method public setColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 167
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mColor:I

    .line 168
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    return-void
.end method

.method public setDrawOutline(Z)V
    .locals 0
    .param p1, "drawOutline"    # Z

    .prologue
    .line 237
    iput-boolean p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mDrawOutline:Z

    .line 238
    return-void
.end method

.method public setShadow(Z)V
    .locals 0
    .param p1, "shadow"    # Z

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mIsShadow:Z

    .line 179
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mText:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setTextAlignment(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;)V
    .locals 1
    .param p1, "textAlignment"    # Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->setTextAlignment(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;)V

    .line 234
    return-void
.end method

.method public setTextStyle(Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;)V
    .locals 0
    .param p1, "textStyle"    # Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mTextStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    .line 189
    return-void
.end method

.method public setTextTransparent(F)V
    .locals 0
    .param p1, "transparentProgress"    # F

    .prologue
    .line 183
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkTextPiece;->mTextTransparent:F

    .line 184
    return-void
.end method
