.class public Lcom/miui/gallery/widget/SlideShowView;
.super Landroid/view/View;
.source "SlideShowView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/widget/SlideShowView$OnRefreshedListener;,
        Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;,
        Lcom/miui/gallery/widget/SlideShowView$FloatAnimation;
    }
.end annotation


# instance fields
.field private mAlphaAnim:Landroid/view/animation/AlphaAnimation;

.field private mCurrentAnim:Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;

.field private mCurrentBitmap:Landroid/graphics/Bitmap;

.field private mIsAnimEnable:Z

.field private mIsScaleOnlyMode:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPreAnim:Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;

.field private mPreBitmap:Landroid/graphics/Bitmap;

.field private mRefreshedListener:Lcom/miui/gallery/widget/SlideShowView$OnRefreshedListener;

.field private mScaleMode:I

.field private mSlideDuration:I

.field private mTransFormation:Landroid/view/animation/Transformation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/widget/SlideShowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/widget/SlideShowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    const/16 v1, 0xdac

    iput v1, p0, Lcom/miui/gallery/widget/SlideShowView;->mSlideDuration:I

    .line 47
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/gallery/widget/SlideShowView;->mIsAnimEnable:Z

    .line 62
    sget-object v1, Lcom/miui/gallery/R$styleable;->SlideShowView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 63
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/widget/SlideShowView;->mScaleMode:I

    .line 64
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    invoke-direct {p0}, Lcom/miui/gallery/widget/SlideShowView;->initParams()V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/widget/SlideShowView;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/SlideShowView;

    .prologue
    .line 22
    iget v0, p0, Lcom/miui/gallery/widget/SlideShowView;->mScaleMode:I

    return v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/widget/SlideShowView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/SlideShowView;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/miui/gallery/widget/SlideShowView;->mIsScaleOnlyMode:Z

    return v0
.end method

.method private initParams()V
    .locals 6

    .prologue
    .line 92
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/widget/SlideShowView;->mPaint:Landroid/graphics/Paint;

    .line 93
    iget-object v0, p0, Lcom/miui/gallery/widget/SlideShowView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 94
    iget-object v0, p0, Lcom/miui/gallery/widget/SlideShowView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 95
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/widget/SlideShowView;->mTransFormation:Landroid/view/animation/Transformation;

    .line 96
    new-instance v0, Lcom/miui/gallery/widget/SlideShowView$FloatAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/widget/SlideShowView$FloatAnimation;-><init>(Lcom/miui/gallery/widget/SlideShowView;FFJ)V

    iput-object v0, p0, Lcom/miui/gallery/widget/SlideShowView;->mAlphaAnim:Landroid/view/animation/AlphaAnimation;

    .line 97
    return-void
.end method

.method private invalidateView()V
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/miui/gallery/widget/SlideShowView;->invalidate()V

    .line 86
    iget-object v0, p0, Lcom/miui/gallery/widget/SlideShowView;->mRefreshedListener:Lcom/miui/gallery/widget/SlideShowView$OnRefreshedListener;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/miui/gallery/widget/SlideShowView;->mRefreshedListener:Lcom/miui/gallery/widget/SlideShowView$OnRefreshedListener;

    invoke-interface {v0}, Lcom/miui/gallery/widget/SlideShowView$OnRefreshedListener;->onRefreshed()V

    .line 89
    :cond_0
    return-void
.end method

.method private isCurValid()Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/miui/gallery/widget/SlideShowView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/widget/SlideShowView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPreValid()Z
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/miui/gallery/widget/SlideShowView;->mPreBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/widget/SlideShowView;->mPreBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public next(Landroid/graphics/Bitmap;I)V
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "rotation"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/miui/gallery/widget/SlideShowView;->mAlphaAnim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->start()V

    .line 101
    invoke-direct {p0}, Lcom/miui/gallery/widget/SlideShowView;->isPreValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/miui/gallery/widget/SlideShowView;->mPreBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/widget/SlideShowView;->mPreBitmap:Landroid/graphics/Bitmap;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/widget/SlideShowView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/miui/gallery/widget/SlideShowView;->mPreBitmap:Landroid/graphics/Bitmap;

    .line 106
    iget-object v0, p0, Lcom/miui/gallery/widget/SlideShowView;->mCurrentAnim:Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;

    iput-object v0, p0, Lcom/miui/gallery/widget/SlideShowView;->mPreAnim:Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;

    .line 108
    iput-object p1, p0, Lcom/miui/gallery/widget/SlideShowView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    .line 109
    div-int/lit8 v0, p2, 0x5a

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 110
    new-instance v1, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget v0, p0, Lcom/miui/gallery/widget/SlideShowView;->mSlideDuration:I

    int-to-long v6, v0

    move-object v2, p0

    move v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;-><init>(Lcom/miui/gallery/widget/SlideShowView;IIIJ)V

    iput-object v1, p0, Lcom/miui/gallery/widget/SlideShowView;->mCurrentAnim:Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;

    .line 116
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/widget/SlideShowView;->mCurrentAnim:Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;->start()V

    .line 118
    invoke-direct {p0}, Lcom/miui/gallery/widget/SlideShowView;->invalidateView()V

    .line 119
    return-void

    .line 113
    :cond_1
    new-instance v1, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget v0, p0, Lcom/miui/gallery/widget/SlideShowView;->mSlideDuration:I

    int-to-long v6, v0

    move-object v2, p0

    move v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;-><init>(Lcom/miui/gallery/widget/SlideShowView;IIIJ)V

    iput-object v1, p0, Lcom/miui/gallery/widget/SlideShowView;->mCurrentAnim:Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/miui/gallery/widget/SlideShowView;->getDrawingTime()J

    move-result-wide v2

    .line 124
    .local v2, "currentTime":J
    iget-object v10, p0, Lcom/miui/gallery/widget/SlideShowView;->mTransFormation:Landroid/view/animation/Transformation;

    invoke-virtual {v10}, Landroid/view/animation/Transformation;->clear()V

    .line 125
    iget-object v10, p0, Lcom/miui/gallery/widget/SlideShowView;->mAlphaAnim:Landroid/view/animation/AlphaAnimation;

    iget-object v11, p0, Lcom/miui/gallery/widget/SlideShowView;->mTransFormation:Landroid/view/animation/Transformation;

    invoke-virtual {v10, v2, v3, v11}, Landroid/view/animation/AlphaAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v7

    .line 126
    .local v7, "more":Z
    iget-object v10, p0, Lcom/miui/gallery/widget/SlideShowView;->mPreBitmap:Landroid/graphics/Bitmap;

    if-nez v10, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 128
    .local v0, "alpha":F
    :goto_0
    iget-boolean v10, p0, Lcom/miui/gallery/widget/SlideShowView;->mIsAnimEnable:Z

    if-nez v10, :cond_4

    .line 129
    const/4 v1, 0x0

    .line 130
    .local v1, "bit":Landroid/graphics/Bitmap;
    invoke-direct {p0}, Lcom/miui/gallery/widget/SlideShowView;->isPreValid()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 131
    iget-object v1, p0, Lcom/miui/gallery/widget/SlideShowView;->mPreBitmap:Landroid/graphics/Bitmap;

    .line 135
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/miui/gallery/widget/SlideShowView;->getWidth()I

    move-result v9

    .line 137
    .local v9, "vwidth":I
    invoke-virtual {p0}, Lcom/miui/gallery/widget/SlideShowView;->getHeight()I

    move-result v8

    .line 138
    .local v8, "vheight":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 139
    .local v5, "dwidth":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 140
    .local v4, "dheight":I
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 141
    .local v6, "matrix":Landroid/graphics/Matrix;
    sub-int v10, v9, v5

    int-to-float v10, v10

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    int-to-float v10, v10

    sub-int v11, v8, v4

    int-to-float v11, v11

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v11, v12

    .line 142
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    int-to-float v11, v11

    .line 141
    invoke-virtual {v6, v10, v11}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 143
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 144
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 145
    iget-object v10, p0, Lcom/miui/gallery/widget/SlideShowView;->mPaint:Landroid/graphics/Paint;

    const/16 v11, 0xff

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 146
    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/miui/gallery/widget/SlideShowView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 147
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 148
    invoke-direct {p0}, Lcom/miui/gallery/widget/SlideShowView;->invalidateView()V

    .line 173
    .end local v1    # "bit":Landroid/graphics/Bitmap;
    .end local v4    # "dheight":I
    .end local v5    # "dwidth":I
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    .end local v8    # "vheight":I
    .end local v9    # "vwidth":I
    :cond_1
    :goto_2
    return-void

    .line 126
    .end local v0    # "alpha":F
    :cond_2
    iget-object v10, p0, Lcom/miui/gallery/widget/SlideShowView;->mTransFormation:Landroid/view/animation/Transformation;

    invoke-virtual {v10}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v0

    goto :goto_0

    .line 132
    .restart local v0    # "alpha":F
    .restart local v1    # "bit":Landroid/graphics/Bitmap;
    :cond_3
    invoke-direct {p0}, Lcom/miui/gallery/widget/SlideShowView;->isCurValid()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 133
    iget-object v1, p0, Lcom/miui/gallery/widget/SlideShowView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 152
    .end local v1    # "bit":Landroid/graphics/Bitmap;
    :cond_4
    invoke-direct {p0}, Lcom/miui/gallery/widget/SlideShowView;->isPreValid()Z

    move-result v10

    if-eqz v10, :cond_5

    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v10, v0, v10

    if-gez v10, :cond_5

    .line 153
    iget-object v10, p0, Lcom/miui/gallery/widget/SlideShowView;->mTransFormation:Landroid/view/animation/Transformation;

    invoke-virtual {v10}, Landroid/view/animation/Transformation;->clear()V

    .line 154
    iget-object v10, p0, Lcom/miui/gallery/widget/SlideShowView;->mPreAnim:Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;

    iget-object v11, p0, Lcom/miui/gallery/widget/SlideShowView;->mTransFormation:Landroid/view/animation/Transformation;

    invoke-virtual {v10, v2, v3, v11}, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v10

    or-int/2addr v7, v10

    .line 155
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 156
    iget-object v10, p0, Lcom/miui/gallery/widget/SlideShowView;->mTransFormation:Landroid/view/animation/Transformation;

    invoke-virtual {v10}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v10

    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 157
    iget-object v10, p0, Lcom/miui/gallery/widget/SlideShowView;->mPaint:Landroid/graphics/Paint;

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v11, v0

    const/high16 v12, 0x437f0000    # 255.0f

    mul-float/2addr v11, v12

    float-to-int v11, v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 158
    iget-object v10, p0, Lcom/miui/gallery/widget/SlideShowView;->mPreBitmap:Landroid/graphics/Bitmap;

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/miui/gallery/widget/SlideShowView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 159
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 161
    :cond_5
    invoke-direct {p0}, Lcom/miui/gallery/widget/SlideShowView;->isCurValid()Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v10, 0x0

    cmpl-float v10, v0, v10

    if-lez v10, :cond_6

    .line 162
    iget-object v10, p0, Lcom/miui/gallery/widget/SlideShowView;->mTransFormation:Landroid/view/animation/Transformation;

    invoke-virtual {v10}, Landroid/view/animation/Transformation;->clear()V

    .line 163
    iget-object v10, p0, Lcom/miui/gallery/widget/SlideShowView;->mCurrentAnim:Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;

    iget-object v11, p0, Lcom/miui/gallery/widget/SlideShowView;->mTransFormation:Landroid/view/animation/Transformation;

    invoke-virtual {v10, v2, v3, v11}, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v10

    or-int/2addr v7, v10

    .line 164
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 165
    iget-object v10, p0, Lcom/miui/gallery/widget/SlideShowView;->mTransFormation:Landroid/view/animation/Transformation;

    invoke-virtual {v10}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v10

    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 166
    iget-object v10, p0, Lcom/miui/gallery/widget/SlideShowView;->mPaint:Landroid/graphics/Paint;

    const/high16 v11, 0x437f0000    # 255.0f

    mul-float/2addr v11, v0

    float-to-int v11, v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 167
    iget-object v10, p0, Lcom/miui/gallery/widget/SlideShowView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/miui/gallery/widget/SlideShowView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 168
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 170
    :cond_6
    if-eqz v7, :cond_1

    .line 171
    invoke-direct {p0}, Lcom/miui/gallery/widget/SlideShowView;->invalidateView()V

    goto/16 :goto_2
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 184
    invoke-direct {p0}, Lcom/miui/gallery/widget/SlideShowView;->isPreValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/miui/gallery/widget/SlideShowView;->mPreBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 186
    iput-object v1, p0, Lcom/miui/gallery/widget/SlideShowView;->mPreBitmap:Landroid/graphics/Bitmap;

    .line 188
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/widget/SlideShowView;->isCurValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/miui/gallery/widget/SlideShowView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 190
    iput-object v1, p0, Lcom/miui/gallery/widget/SlideShowView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/widget/SlideShowView;->mAlphaAnim:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_2

    .line 193
    iget-object v0, p0, Lcom/miui/gallery/widget/SlideShowView;->mAlphaAnim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/widget/SlideShowView;->mPreAnim:Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;

    if-eqz v0, :cond_3

    .line 196
    iget-object v0, p0, Lcom/miui/gallery/widget/SlideShowView;->mPreAnim:Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;->cancel()V

    .line 198
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/widget/SlideShowView;->mCurrentAnim:Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;

    if-eqz v0, :cond_4

    .line 199
    iget-object v0, p0, Lcom/miui/gallery/widget/SlideShowView;->mCurrentAnim:Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;->cancel()V

    .line 201
    :cond_4
    return-void
.end method

.method public setRefreshListener(Lcom/miui/gallery/widget/SlideShowView$OnRefreshedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/widget/SlideShowView$OnRefreshedListener;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/miui/gallery/widget/SlideShowView;->mRefreshedListener:Lcom/miui/gallery/widget/SlideShowView$OnRefreshedListener;

    .line 82
    return-void
.end method

.method public setScaleOnlyMode(Z)V
    .locals 0
    .param p1, "isScaleOnly"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/miui/gallery/widget/SlideShowView;->mIsScaleOnlyMode:Z

    .line 78
    return-void
.end method

.method public setSlideAnimEnable(Z)V
    .locals 0
    .param p1, "isEnable"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/miui/gallery/widget/SlideShowView;->mIsAnimEnable:Z

    .line 74
    return-void
.end method

.method public setSlideDuration(I)V
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 69
    const/16 v0, 0xdac

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/widget/SlideShowView;->mSlideDuration:I

    .line 70
    return-void
.end method
