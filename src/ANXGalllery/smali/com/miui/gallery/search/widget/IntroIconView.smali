.class public Lcom/miui/gallery/search/widget/IntroIconView;
.super Landroid/view/View;
.source "IntroIconView.java"


# instance fields
.field private mBackgroundColor:I

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mLandPaint:Landroid/graphics/Paint;

.field private mLandPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/search/widget/IntroIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/search/widget/IntroIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v5, 0x1

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-virtual {p0}, Lcom/miui/gallery/search/widget/IntroIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/R$styleable;->IntroIconView:[I

    invoke-virtual {v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 44
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/search/widget/IntroIconView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 45
    const/4 v2, 0x1

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100078

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 45
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/search/widget/IntroIconView;->mBackgroundColor:I

    .line 47
    const/4 v2, 0x2

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100079

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 47
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 50
    .local v1, "landColor":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/miui/gallery/search/widget/IntroIconView;->mLandPaint:Landroid/graphics/Paint;

    .line 54
    iget-object v2, p0, Lcom/miui/gallery/search/widget/IntroIconView;->mLandPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 55
    iget-object v2, p0, Lcom/miui/gallery/search/widget/IntroIconView;->mLandPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/miui/gallery/search/widget/IntroIconView;->mLandPath:Landroid/graphics/Path;

    .line 57
    return-void

    .line 50
    .end local v1    # "landColor":I
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v2
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 61
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v10

    .line 62
    .local v10, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    .line 65
    .local v4, "height":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/miui/gallery/search/widget/IntroIconView;->mBackgroundColor:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 67
    int-to-float v11, v4

    const/high16 v12, 0x3f400000    # 0.75f

    mul-float v7, v11, v12

    .line 68
    .local v7, "landStartY":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/gallery/search/widget/IntroIconView;->mLandPath:Landroid/graphics/Path;

    invoke-virtual {v11}, Landroid/graphics/Path;->reset()V

    .line 69
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/gallery/search/widget/IntroIconView;->mLandPath:Landroid/graphics/Path;

    int-to-float v12, v10

    invoke-virtual {v11, v12, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 70
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/gallery/search/widget/IntroIconView;->mLandPath:Landroid/graphics/Path;

    int-to-float v12, v10

    int-to-float v13, v4

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 71
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/gallery/search/widget/IntroIconView;->mLandPath:Landroid/graphics/Path;

    const/4 v12, 0x0

    int-to-float v13, v4

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 72
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/gallery/search/widget/IntroIconView;->mLandPath:Landroid/graphics/Path;

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 73
    const v11, 0x3cf5c28f    # 0.03f

    int-to-float v12, v4

    mul-float/2addr v11, v12

    float-to-int v9, v11

    .line 74
    .local v9, "waveAmplitude":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v10, :cond_0

    .line 75
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/gallery/search/widget/IntroIconView;->mLandPath:Landroid/graphics/Path;

    int-to-float v12, v6

    float-to-double v14, v7

    int-to-double v0, v9

    move-wide/from16 v16, v0

    add-int v13, v6, v10

    int-to-float v13, v13

    int-to-float v0, v10

    move/from16 v18, v0

    div-float v13, v13, v18

    float-to-double v0, v13

    move-wide/from16 v18, v0

    const-wide v20, 0x3fe999999999999aL    # 0.8

    mul-double v18, v18, v20

    const-wide v20, 0x3fe3333333333333L    # 0.6

    add-double v18, v18, v20

    const-wide v20, 0x400921fb54442d18L    # Math.PI

    mul-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    sub-double v14, v14, v16

    double-to-float v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 74
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 77
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/gallery/search/widget/IntroIconView;->mLandPath:Landroid/graphics/Path;

    invoke-virtual {v11}, Landroid/graphics/Path;->close()V

    .line 78
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/gallery/search/widget/IntroIconView;->mLandPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/gallery/search/widget/IntroIconView;->mLandPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 80
    int-to-float v11, v4

    const v12, 0x3f2e147b    # 0.68f

    mul-float v2, v11, v12

    .line 81
    .local v2, "drawableHeight":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/gallery/search/widget/IntroIconView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/gallery/search/widget/IntroIconView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    int-to-float v12, v12

    div-float v3, v11, v12

    .line 82
    .local v3, "drawableWidth":F
    int-to-float v11, v10

    sub-float/2addr v11, v3

    float-to-int v11, v11

    div-int/lit8 v5, v11, 0x2

    .line 83
    .local v5, "horizontalPadding":I
    int-to-float v11, v4

    sub-float/2addr v11, v2

    float-to-int v11, v11

    div-int/lit8 v8, v11, 0x2

    .line 84
    .local v8, "verticalPadding":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/gallery/search/widget/IntroIconView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    sub-int v12, v10, v5

    sub-int v13, v4, v8

    invoke-virtual {v11, v5, v8, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 85
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/gallery/search/widget/IntroIconView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 87
    return-void
.end method
