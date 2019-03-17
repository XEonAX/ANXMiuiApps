.class public Lcom/miui/gallery/collage/drawable/RectTimeDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RectTimeDrawable.java"


# instance fields
.field private mDateLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

.field private mDateOffsetY:F

.field private mDateRectF:Landroid/graphics/RectF;

.field private mShortLineLength:F

.field private mShortLineOffsetY:F

.field private mShotLineStartX:F

.field private mStrokePaint:Landroid/graphics/Paint;

.field private mStrokeRect:Landroid/graphics/Rect;

.field private mYearLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

.field private mYearWidth:F


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel;)V
    .locals 27
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "model"    # Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel;

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 28
    new-instance v24, Landroid/graphics/Rect;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/gallery/collage/drawable/RectTimeDrawable;->mStrokeRect:Landroid/graphics/Rect;

    .line 29
    new-instance v24, Landroid/graphics/Paint;

    const/16 v25, 0x1

    invoke-direct/range {v24 .. v25}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/gallery/collage/drawable/RectTimeDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 37
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel;->extras:Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel$Extras;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v10, v0, Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel$Extras;->letterSpace:F

    .line 38
    .local v10, "letterSpace":F
    const v24, 0x7f0b0135

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 39
    .local v6, "datePaintSize":F
    const v24, 0x7f0b013c

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v21

    .line 40
    .local v21, "yearPaintSize":F
    const v24, 0x7f0b013a

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    .line 41
    .local v15, "strokeWidth":F
    const v24, 0x7f0b0137

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    .line 42
    .local v12, "shortLineLength":F
    const v24, 0x7f0b0139

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    .line 43
    .local v14, "shortLineStartOffset":F
    const v24, 0x7f0b0134

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 44
    .local v4, "dateOffsetY":F
    const v24, 0x7f0b0138

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    .line 45
    .local v13, "shortLineOffsetY":F
    const v24, 0x7f0b013b

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    .line 46
    .local v18, "width":F
    const v24, 0x7f0b0136

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    .line 48
    .local v8, "height":F
    const-string v24, "#80000000"

    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    .line 50
    .local v11, "paintColor":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 51
    .local v16, "time":J
    move-wide/from16 v0, v16

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/collage/drawable/RectTimeDrawable;->getDateString(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v7

    .line 52
    .local v7, "dateString":Ljava/lang/String;
    move-wide/from16 v0, v16

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/collage/drawable/RectTimeDrawable;->getYearString(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v23

    .line 54
    .local v23, "yearString":Ljava/lang/String;
    new-instance v24, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    invoke-direct/range {v24 .. v24}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/gallery/collage/drawable/RectTimeDrawable;->mDateLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    .line 55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/drawable/RectTimeDrawable;->mDateLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->setText(Ljava/lang/String;)V

    .line 56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/drawable/RectTimeDrawable;->mDateLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->setLetterSpace(F)V

    .line 57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/drawable/RectTimeDrawable;->mDateLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    .line 58
    .local v5, "datePaint":Landroid/graphics/Paint;
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 59
    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/drawable/RectTimeDrawable;->mDateLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->countText()V

    .line 62
    new-instance v24, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    invoke-direct/range {v24 .. v24}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/gallery/collage/drawable/RectTimeDrawable;->mYearLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    .line 63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/drawable/RectTimeDrawable;->mYearLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->setText(Ljava/lang/String;)V

    .line 64
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/drawable/RectTimeDrawable;->mYearLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->setLetterSpace(F)V

    .line 65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/drawable/RectTimeDrawable;->mYearLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->getPaint()Landroid/graphics/Paint;

    move-result-object v20

    .line 66
    .local v20, "yearPaint":Landroid/graphics/Paint;
    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 67
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/drawable/RectTimeDrawable;->mYearLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->countText()V

    .line 70
    const/high16 v24, 0x40000000    # 2.0f

    div-float v24, v18, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v19

    .line 71
    .local v19, "widthHalf":I
    const/high16 v24, 0x40000000    # 2.0f

    div-float v24, v8, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 72
    .local v9, "heightHalf":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/drawable/RectTimeDrawable;->mStrokeRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v25, v0

    neg-int v0, v9

    move/from16 v26, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/drawable/RectTimeDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    sget-object v25, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/drawable/RectTimeDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/drawable/RectTimeDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    new-instance v22, Landroid/graphics/RectF;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/RectF;-><init>()V

    .line 79
    .local v22, "yearRectF":Landroid/graphics/RectF;
    new-instance v24, Landroid/graphics/RectF;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/gallery/collage/drawable/RectTimeDrawable;->mDateRectF:Landroid/graphics/RectF;

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/drawable/RectTimeDrawable;->mYearLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->getTextRect(Landroid/graphics/RectF;)V

    .line 81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/drawable/RectTimeDrawable;->mDateLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/drawable/RectTimeDrawable;->mDateRectF:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->getTextRect(Landroid/graphics/RectF;)V

    .line 82
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->height()F

    move-result v24

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/drawable/RectTimeDrawable;->mDateRectF:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/RectF;->height()F

    move-result v25

    const/high16 v26, 0x40000000    # 2.0f

    div-float v25, v25, v26

    add-float v24, v24, v25

    add-float v24, v24, v4

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/gallery/collage/drawable/RectTimeDrawable;->mDateOffsetY:F

    .line 83
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->height()F

    move-result v24

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    add-float v24, v24, v13

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/gallery/collage/drawable/RectTimeDrawable;->mShortLineOffsetY:F

    .line 84
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->width()F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/gallery/collage/drawable/RectTimeDrawable;->mYearWidth:F

    .line 85
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/collage/drawable/RectTimeDrawable;->mYearWidth:F

    move/from16 v24, v0

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    move/from16 v0, v24

    neg-float v0, v0

    move/from16 v24, v0

    add-float v24, v24, v14

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/gallery/collage/drawable/RectTimeDrawable;->mShotLineStartX:F

    .line 86
    move-object/from16 v0, p0

    iput v12, v0, Lcom/miui/gallery/collage/drawable/RectTimeDrawable;->mShortLineLength:F

    .line 87
    return-void
.end method

.method private static getDateString(JLandroid/content/res/Resources;)Ljava/lang/String;
    .locals 4
    .param p0, "time"    # J
    .param p2, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 133
    invoke-static {}, Lcom/miui/gallery/util/BuildUtil;->isInternational()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 134
    .local v0, "locale":Ljava/util/Locale;
    :goto_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const v2, 0x7f0c0110

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 135
    .local v1, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 133
    .end local v0    # "locale":Ljava/util/Locale;
    .end local v1    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_0
.end method

.method private static getYearString(JLandroid/content/res/Resources;)Ljava/lang/String;
    .locals 4
    .param p0, "time"    # J
    .param p2, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 127
    invoke-static {}, Lcom/miui/gallery/util/BuildUtil;->isInternational()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 128
    .local v0, "locale":Ljava/util/Locale;
    :goto_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const v2, 0x7f0c0111

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 129
    .local v1, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 127
    .end local v0    # "locale":Ljava/util/Locale;
    .end local v1    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 91
    invoke-virtual {p0}, Lcom/miui/gallery/collage/drawable/RectTimeDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 92
    .local v6, "bound":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v9, v0

    .line 93
    .local v9, "targetWidth":F
    invoke-virtual {p0}, Lcom/miui/gallery/collage/drawable/RectTimeDrawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v7, v0

    .line 94
    .local v7, "intrinsicWidth":F
    div-float v10, v9, v7

    .line 95
    .local v10, "wholeScale":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 96
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 97
    invoke-virtual {p1, v10, v10}, Landroid/graphics/Canvas;->scale(FF)V

    .line 98
    iget-object v0, p0, Lcom/miui/gallery/collage/drawable/RectTimeDrawable;->mStrokeRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/gallery/collage/drawable/RectTimeDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 99
    iget-object v0, p0, Lcom/miui/gallery/collage/drawable/RectTimeDrawable;->mYearLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->draw(Landroid/graphics/Canvas;)V

    .line 100
    iget v0, p0, Lcom/miui/gallery/collage/drawable/RectTimeDrawable;->mDateOffsetY:F

    neg-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 101
    iget v0, p0, Lcom/miui/gallery/collage/drawable/RectTimeDrawable;->mYearWidth:F

    iget-object v1, p0, Lcom/miui/gallery/collage/drawable/RectTimeDrawable;->mDateRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float v8, v0, v1

    .line 102
    .local v8, "scale":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 103
    invoke-virtual {p1, v8, v8, v2, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 104
    iget-object v0, p0, Lcom/miui/gallery/collage/drawable/RectTimeDrawable;->mDateLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->draw(Landroid/graphics/Canvas;)V

    .line 105
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 106
    iget v0, p0, Lcom/miui/gallery/collage/drawable/RectTimeDrawable;->mDateOffsetY:F

    iget v1, p0, Lcom/miui/gallery/collage/drawable/RectTimeDrawable;->mShortLineOffsetY:F

    add-float/2addr v0, v1

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 107
    iget v1, p0, Lcom/miui/gallery/collage/drawable/RectTimeDrawable;->mShotLineStartX:F

    iget v0, p0, Lcom/miui/gallery/collage/drawable/RectTimeDrawable;->mShotLineStartX:F

    iget v3, p0, Lcom/miui/gallery/collage/drawable/RectTimeDrawable;->mShortLineLength:F

    add-float/2addr v3, v0

    iget-object v5, p0, Lcom/miui/gallery/collage/drawable/RectTimeDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 108
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 109
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/miui/gallery/collage/drawable/RectTimeDrawable;->mStrokeRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/miui/gallery/collage/drawable/RectTimeDrawable;->mStrokeRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 123
    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 114
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 119
    return-void
.end method
