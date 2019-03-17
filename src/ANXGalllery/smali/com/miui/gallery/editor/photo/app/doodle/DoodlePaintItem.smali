.class Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;
.super Landroid/graphics/drawable/Drawable;
.source "DoodlePaintItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;
    }
.end annotation


# instance fields
.field private mAlphaProgress:F

.field private mBigSize:I

.field private mCurrentColor:I

.field private mPaint:Landroid/graphics/Paint;

.field private mScale:F

.field private mSelect:Z

.field private mSmallDefaultColor:I

.field private mSmallSize:F

.field private mStrokeColor:I

.field public final paintType:Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "paintType"    # Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 28
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->mScale:F

    .line 42
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->paintType:Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;

    .line 43
    const v0, 0x7f0b017a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->mBigSize:I

    .line 44
    sget-object v0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$1;->$SwitchMap$com$miui$gallery$editor$photo$app$doodle$DoodlePaintItem$PaintType:[I

    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 56
    :goto_0
    const v0, 0x7f10004c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->mStrokeColor:I

    .line 57
    const v0, 0x7f10004b

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->mSmallDefaultColor:I

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->mPaint:Landroid/graphics/Paint;

    .line 60
    return-void

    .line 46
    :pswitch_0
    const v0, 0x7f0b017c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->mSmallSize:F

    goto :goto_0

    .line 49
    :pswitch_1
    const v0, 0x7f0b017e

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->mSmallSize:F

    goto :goto_0

    .line 52
    :pswitch_2
    const v0, 0x7f0b017d

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->mSmallSize:F

    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getColorWithAlphaProgress(IF)I
    .locals 4
    .param p0, "color"    # I
    .param p1, "alphaProgress"    # F

    .prologue
    .line 153
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public static getList(Landroid/content/res/Resources;)Ljava/util/List;
    .locals 4
    .param p0, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;

    const/4 v1, 0x0

    new-instance v2, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;

    sget-object v3, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;->LIGHT:Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;

    invoke-direct {v2, v3, p0}, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;-><init>(Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;Landroid/content/res/Resources;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;

    sget-object v3, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;->MEDIUM:Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;

    invoke-direct {v2, v3, p0}, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;-><init>(Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;Landroid/content/res/Resources;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;

    sget-object v3, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;->HEAVY:Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;

    invoke-direct {v2, v3, p0}, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;-><init>(Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem$PaintType;Landroid/content/res/Resources;)V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getSuggestColor(IZ)I
    .locals 1
    .param p1, "color"    # I
    .param p2, "withCurrentAlpha"    # Z

    .prologue
    .line 146
    if-nez p2, :cond_0

    .line 149
    .end local p1    # "color":I
    :goto_0
    return p1

    .restart local p1    # "color":I
    :cond_0
    iget v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->mAlphaProgress:F

    invoke-static {p1, v0}, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->getColorWithAlphaProgress(IF)I

    move-result p1

    goto :goto_0
.end method


# virtual methods
.method public centerX()I
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 69
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    .line 90
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 92
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 93
    iget v2, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->mScale:F

    iget v5, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->mScale:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1, v2, v5, v6, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 95
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->mPaint:Landroid/graphics/Paint;

    iget-boolean v2, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->mSelect:Z

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    invoke-direct {p0, v9, v2}, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->getSuggestColor(IZ)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->mBigSize:I

    int-to-float v6, v6

    div-float/2addr v6, v8

    iget-object v7, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 98
    iget-boolean v2, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->mSelect:Z

    if-eqz v2, :cond_2

    iget v1, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->mCurrentColor:I

    .line 99
    .local v1, "smallColor":I
    :goto_1
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->mPaint:Landroid/graphics/Paint;

    iget-boolean v2, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->mSelect:Z

    if-nez v2, :cond_3

    move v2, v3

    :goto_2
    invoke-direct {p0, v1, v2}, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->getSuggestColor(IZ)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->mSmallSize:F

    div-float/2addr v6, v8

    iget-object v7, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 102
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->mPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 104
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->mStrokeColor:I

    iget-boolean v6, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->mSelect:Z

    if-nez v6, :cond_4

    :goto_3
    invoke-direct {p0, v5, v3}, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->getSuggestColor(IZ)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->mBigSize:I

    int-to-float v4, v4

    div-float/2addr v4, v8

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 106
    if-ne v1, v9, :cond_0

    .line 107
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->mSmallSize:F

    div-float/2addr v4, v8

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 109
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 110
    return-void

    .end local v1    # "smallColor":I
    :cond_1
    move v2, v4

    .line 96
    goto/16 :goto_0

    .line 98
    :cond_2
    iget v1, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->mSmallDefaultColor:I

    goto :goto_1

    .restart local v1    # "smallColor":I
    :cond_3
    move v2, v4

    .line 99
    goto :goto_2

    :cond_4
    move v3, v4

    .line 104
    goto :goto_3
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->mBigSize:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->mBigSize:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 124
    const/4 v0, -0x2

    return v0
.end method

.method public isContain(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 64
    .local v0, "bounds":Landroid/graphics/Rect;
    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    return v1
.end method

.method public offset(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 74
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 75
    return-void
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 138
    iput p1, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->mAlphaProgress:F

    .line 139
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 115
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 120
    return-void
.end method

.method public setCurrentColor(I)V
    .locals 0
    .param p1, "currentColor"    # I

    .prologue
    .line 142
    iput p1, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->mCurrentColor:I

    .line 143
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 157
    iput p1, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->mScale:F

    .line 158
    return-void
.end method

.method public setSelect(Z)V
    .locals 0
    .param p1, "select"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodlePaintItem;->mSelect:Z

    .line 87
    return-void
.end method
