.class Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;
.super Landroid/view/animation/Animation;
.source "SlideShowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/SlideShowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlideAnimation"
.end annotation


# instance fields
.field private mBaseMatrix:Landroid/graphics/Matrix;

.field private mHeight:I

.field private mMovingVector:Landroid/graphics/PointF;

.field private mRotation:I

.field private mScalePoint:Landroid/graphics/PointF;

.field private mWidth:I

.field final synthetic this$0:Lcom/miui/gallery/widget/SlideShowView;


# direct methods
.method constructor <init>(Lcom/miui/gallery/widget/SlideShowView;IIIJ)V
    .locals 13
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "rotation"    # I
    .param p5, "duration"    # J

    .prologue
    .line 223
    iput-object p1, p0, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;->this$0:Lcom/miui/gallery/widget/SlideShowView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 224
    iput p2, p0, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;->mWidth:I

    .line 225
    move/from16 v0, p3

    iput v0, p0, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;->mHeight:I

    .line 226
    move/from16 v0, p4

    iput v0, p0, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;->mRotation:I

    .line 227
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    .line 228
    .local v5, "random":Ljava/util/Random;
    new-instance v7, Landroid/graphics/PointF;

    const v8, 0x3e4ccccd    # 0.2f

    iget v9, p0, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;->mWidth:I

    int-to-float v9, v9

    mul-float/2addr v8, v9

    .line 229
    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v9

    const/high16 v10, 0x3f000000    # 0.5f

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    const v9, 0x3e4ccccd    # 0.2f

    iget v10, p0, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;->mHeight:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    .line 230
    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v10

    const/high16 v11, 0x3f000000    # 0.5f

    sub-float/2addr v10, v11

    mul-float/2addr v9, v10

    invoke-direct {v7, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v7, p0, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;->mMovingVector:Landroid/graphics/PointF;

    .line 232
    new-instance v3, Landroid/graphics/RectF;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/miui/gallery/widget/SlideShowView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p1}, Lcom/miui/gallery/widget/SlideShowView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-direct {v3, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 233
    .local v3, "mTempDst":Landroid/graphics/RectF;
    invoke-static {p1}, Lcom/miui/gallery/widget/SlideShowView;->access$000(Lcom/miui/gallery/widget/SlideShowView;)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 249
    new-instance v4, Landroid/graphics/RectF;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p0, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;->mWidth:I

    int-to-float v9, v9

    iget v10, p0, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;->mHeight:I

    int-to-float v10, v10

    invoke-direct {v4, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 252
    .local v4, "mTempSrc":Landroid/graphics/RectF;
    :goto_0
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    iput-object v7, p0, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 253
    iget-object v7, p0, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v8, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v7, v4, v3, v8}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 254
    move-wide/from16 v0, p5

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;->setDuration(J)V

    .line 255
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, v7}, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 256
    return-void

    .line 235
    .end local v4    # "mTempSrc":Landroid/graphics/RectF;
    :pswitch_0
    iget v7, p0, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;->mHeight:I

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;->mWidth:I

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Lcom/miui/gallery/widget/SlideShowView;->getWidth()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Lcom/miui/gallery/widget/SlideShowView;->getHeight()I

    move-result v7

    if-nez v7, :cond_1

    .line 236
    :cond_0
    new-instance v4, Landroid/graphics/RectF;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p0, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;->mWidth:I

    int-to-float v9, v9

    iget v10, p0, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;->mHeight:I

    int-to-float v10, v10

    invoke-direct {v4, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v4    # "mTempSrc":Landroid/graphics/RectF;
    goto :goto_0

    .line 238
    .end local v4    # "mTempSrc":Landroid/graphics/RectF;
    :cond_1
    iget v7, p0, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;->mHeight:I

    int-to-float v7, v7

    iget v8, p0, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;->mWidth:I

    int-to-float v8, v8

    div-float v2, v7, v8

    .line 239
    .local v2, "imageRatio":F
    invoke-virtual {p1}, Lcom/miui/gallery/widget/SlideShowView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1}, Lcom/miui/gallery/widget/SlideShowView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float v6, v7, v8

    .line 240
    .local v6, "viewRatio":F
    cmpl-float v7, v2, v6

    if-lez v7, :cond_2

    .line 241
    new-instance v4, Landroid/graphics/RectF;

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    iget v9, p0, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;->mHeight:I

    int-to-float v9, v9

    iget v10, p0, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;->mWidth:I

    int-to-float v10, v10

    mul-float/2addr v10, v6

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    iget v9, p0, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;->mWidth:I

    int-to-float v9, v9

    const/high16 v10, 0x3f000000    # 0.5f

    iget v11, p0, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;->mHeight:I

    int-to-float v11, v11

    iget v12, p0, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;->mWidth:I

    int-to-float v12, v12

    mul-float/2addr v12, v6

    add-float/2addr v11, v12

    mul-float/2addr v10, v11

    invoke-direct {v4, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v4    # "mTempSrc":Landroid/graphics/RectF;
    goto :goto_0

    .line 243
    .end local v4    # "mTempSrc":Landroid/graphics/RectF;
    :cond_2
    new-instance v4, Landroid/graphics/RectF;

    const/high16 v7, 0x3f000000    # 0.5f

    iget v8, p0, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;->mWidth:I

    int-to-float v8, v8

    iget v9, p0, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;->mHeight:I

    int-to-float v9, v9

    div-float/2addr v9, v6

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    const/4 v8, 0x0

    const/high16 v9, 0x3f000000    # 0.5f

    iget v10, p0, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;->mWidth:I

    int-to-float v10, v10

    iget v11, p0, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;->mHeight:I

    int-to-float v11, v11

    div-float/2addr v11, v6

    add-float/2addr v10, v11

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;->mHeight:I

    int-to-float v10, v10

    invoke-direct {v4, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v4    # "mTempSrc":Landroid/graphics/RectF;
    goto/16 :goto_0

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 12
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    const/4 v9, 0x2

    const/high16 v11, 0x3f800000    # 1.0f

    const v10, 0x3e4ccccd    # 0.2f

    .line 261
    iget-object v6, p0, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;->this$0:Lcom/miui/gallery/widget/SlideShowView;

    invoke-static {v6}, Lcom/miui/gallery/widget/SlideShowView;->access$100(Lcom/miui/gallery/widget/SlideShowView;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 263
    iget-object v6, p0, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;->mScalePoint:Landroid/graphics/PointF;

    if-nez v6, :cond_0

    .line 264
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 265
    .local v2, "random":Ljava/util/Random;
    new-instance v6, Landroid/graphics/PointF;

    invoke-virtual {v2, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    iget-object v8, p0, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;->this$0:Lcom/miui/gallery/widget/SlideShowView;

    invoke-virtual {v8}, Lcom/miui/gallery/widget/SlideShowView;->getWidth()I

    move-result v8

    mul-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v2, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    iget-object v9, p0, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;->this$0:Lcom/miui/gallery/widget/SlideShowView;

    invoke-virtual {v9}, Lcom/miui/gallery/widget/SlideShowView;->getHeight()I

    move-result v9

    mul-int/2addr v8, v9

    int-to-float v8, v8

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v6, p0, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;->mScalePoint:Landroid/graphics/PointF;

    .line 267
    .end local v2    # "random":Ljava/util/Random;
    :cond_0
    iget-object v6, p0, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;->mScalePoint:Landroid/graphics/PointF;

    iget v0, v6, Landroid/graphics/PointF;->x:F

    .line 268
    .local v0, "px":F
    iget-object v6, p0, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;->mScalePoint:Landroid/graphics/PointF;

    iget v1, v6, Landroid/graphics/PointF;->y:F

    .line 269
    .local v1, "py":F
    mul-float v6, v10, p1

    add-float v3, v11, v6

    .line 270
    .local v3, "scale":F
    const/4 v4, 0x0

    .line 271
    .local v4, "translateX":F
    const/4 v5, 0x0

    .line 280
    .local v5, "translateY":F
    :goto_0
    iget v6, p0, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;->mRotation:I

    if-lez v6, :cond_1

    .line 281
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    iget v7, p0, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;->mRotation:I

    int-to-float v7, v7

    invoke-virtual {v6, v7, v0, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 283
    :cond_1
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 284
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 285
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6, v3, v3, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 286
    return-void

    .line 273
    .end local v0    # "px":F
    .end local v1    # "py":F
    .end local v3    # "scale":F
    .end local v4    # "translateX":F
    .end local v5    # "translateY":F
    :cond_2
    iget-object v6, p0, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;->this$0:Lcom/miui/gallery/widget/SlideShowView;

    invoke-virtual {v6}, Lcom/miui/gallery/widget/SlideShowView;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v0, v6

    .line 274
    .restart local v0    # "px":F
    iget-object v6, p0, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;->this$0:Lcom/miui/gallery/widget/SlideShowView;

    invoke-virtual {v6}, Lcom/miui/gallery/widget/SlideShowView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v1, v6

    .line 275
    .restart local v1    # "py":F
    mul-float v6, v10, p1

    add-float v3, v11, v6

    .line 276
    .restart local v3    # "scale":F
    iget-object v6, p0, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;->mMovingVector:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    mul-float v4, v6, p1

    .line 277
    .restart local v4    # "translateX":F
    iget-object v6, p0, Lcom/miui/gallery/widget/SlideShowView$SlideAnimation;->mMovingVector:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    mul-float v5, v6, p1

    .restart local v5    # "translateY":F
    goto :goto_0
.end method
