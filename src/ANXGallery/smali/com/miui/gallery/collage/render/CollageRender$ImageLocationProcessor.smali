.class public Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;
.super Ljava/lang/Object;
.source "CollageRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/collage/render/CollageRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageLocationProcessor"
.end annotation


# instance fields
.field private mClipArray:[F

.field private mImageLocation:Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mPathRectF:Landroid/graphics/RectF;

.field private mPathRegion:Landroid/graphics/Region;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mPathRectF:Landroid/graphics/RectF;

    .line 281
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mPathRegion:Landroid/graphics/Region;

    .line 282
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method private enableMargin(FFFZ)V
    .locals 23
    .param p1, "margin"    # F
    .param p2, "parentWidth"    # F
    .param p3, "parentHeight"    # F
    .param p4, "ignoreEdgeMargin"    # Z

    .prologue
    .line 341
    const/16 v17, 0x0

    cmpl-float v17, p1, v17

    if-nez v17, :cond_0

    .line 417
    :goto_0
    return-void

    .line 344
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mImageLocation:Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->mPathForClip:Landroid/graphics/Path;

    .line 345
    .local v8, "pathForClip":Landroid/graphics/Path;
    sget-object v17, Lcom/miui/gallery/collage/render/CollageRender$1;->$SwitchMap$com$miui$gallery$collage$ClipType:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mImageLocation:Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->mClipType:Lcom/miui/gallery/collage/ClipType;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/miui/gallery/collage/ClipType;->ordinal()I

    move-result v18

    aget v17, v17, v18

    packed-switch v17, :pswitch_data_0

    goto :goto_0

    .line 347
    :pswitch_0
    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    .line 348
    new-instance v17, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mClipArray:[F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    add-float v18, v18, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mClipArray:[F

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    add-float v19, v19, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mClipArray:[F

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget v20, v20, v21

    sub-float v20, v20, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mClipArray:[F

    move-object/from16 v21, v0

    const/16 v22, 0x3

    aget v21, v21, v22

    sub-float v21, v21, p1

    invoke-direct/range {v17 .. v21}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v18, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 349
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->round(F)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->round(F)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Path;->offset(FF)V

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mPathRectF:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mPathRegion:Landroid/graphics/Region;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Region;->setEmpty()V

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mPathRegion:Landroid/graphics/Region;

    move-object/from16 v17, v0

    new-instance v18, Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mPathRectF:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mPathRectF:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mPathRectF:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mPathRectF:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    invoke-direct/range {v18 .. v22}, Landroid/graphics/Region;-><init>(IIII)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    goto/16 :goto_0

    .line 355
    :pswitch_1
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 356
    .local v7, "path":Landroid/graphics/Path;
    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    .line 357
    .local v11, "rectF":Landroid/graphics/RectF;
    new-instance v12, Landroid/graphics/Region;

    invoke-direct {v12}, Landroid/graphics/Region;-><init>()V

    .line 358
    .local v12, "region":Landroid/graphics/Region;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mClipArray:[F

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v5, v0, :cond_a

    .line 359
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v10, v0, [F

    .line 360
    .local v10, "pointStart":[F
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v9, v0, [F

    .line 362
    .local v9, "pointEnd":[F
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mClipArray:[F

    move-object/from16 v18, v0

    aget v18, v18, v5

    aput v18, v10, v17

    .line 363
    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mClipArray:[F

    move-object/from16 v18, v0

    add-int/lit8 v19, v5, 0x1

    aget v18, v18, v19

    aput v18, v10, v17

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mClipArray:[F

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x2

    move/from16 v0, v17

    if-ne v5, v0, :cond_4

    .line 365
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mClipArray:[F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    aput v18, v9, v17

    .line 366
    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mClipArray:[F

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    aput v18, v9, v17

    .line 371
    :goto_2
    const/16 v17, 0x0

    aget v14, v10, v17

    .line 372
    .local v14, "xStart":F
    const/16 v17, 0x1

    aget v16, v10, v17

    .line 373
    .local v16, "yStart":F
    const/16 v17, 0x0

    aget v13, v9, v17

    .line 374
    .local v13, "xEnd":F
    const/16 v17, 0x1

    aget v15, v9, v17

    .line 376
    .local v15, "yEnd":F
    move/from16 v6, p1

    .line 377
    .local v6, "marginAdjust":F
    const/4 v4, 0x0

    .line 378
    .local v4, "edge":Z
    cmpl-float v17, v14, v13

    if-nez v17, :cond_6

    .line 379
    const/16 v17, 0x0

    cmpl-float v17, v14, v17

    if-eqz v17, :cond_1

    cmpl-float v17, v14, p2

    if-nez v17, :cond_5

    :cond_1
    const/4 v4, 0x1

    .line 384
    :cond_2
    :goto_3
    if-eqz v4, :cond_3

    .line 385
    if-eqz p4, :cond_9

    const/4 v6, 0x0

    .line 388
    :cond_3
    :goto_4
    const/16 v17, 0x1

    aget v17, v9, v17

    const/16 v18, 0x1

    aget v18, v10, v18

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const/16 v17, 0x0

    aget v17, v9, v17

    const/16 v20, 0x0

    aget v20, v10, v20

    sub-float v17, v17, v20

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    .line 389
    .local v2, "degree":D
    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    .line 390
    const-string v17, "CollageRender"

    const-string/jumbo v18, "xStart:%f yStart:%f xEnd:%f yEnd:%f degree\uff1a%f"

    const/16 v19, 0x5

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    aget v21, v10, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    const/16 v21, 0x1

    aget v21, v10, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    const/16 v21, 0x0

    aget v21, v9, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x3

    const/16 v21, 0x1

    aget v21, v9, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v17 .. v19}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Matrix;->reset()V

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    neg-double v0, v2

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    neg-float v0, v6

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    double-to-float v0, v2

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 398
    const-string v17, "CollageRender"

    const-string/jumbo v18, "xStart:%f yStart:%f"

    const/16 v19, 0x0

    aget v19, v10, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    const/16 v20, 0x1

    aget v20, v10, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    invoke-static/range {v17 .. v20}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 400
    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    .line 401
    move/from16 v0, v16

    invoke-virtual {v7, v14, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 402
    invoke-virtual {v7, v13, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 403
    const/16 v17, 0x0

    aget v17, v9, v17

    const/16 v18, 0x1

    aget v18, v9, v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 404
    const/16 v17, 0x0

    aget v17, v10, v17

    const/16 v18, 0x1

    aget v18, v10, v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 405
    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    .line 406
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v7, v11, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 407
    invoke-virtual {v12}, Landroid/graphics/Region;->setEmpty()V

    .line 408
    new-instance v17, Landroid/graphics/Region;

    iget v0, v11, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    iget v0, v11, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    iget v0, v11, Landroid/graphics/RectF;->right:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    iget v0, v11, Landroid/graphics/RectF;->bottom:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    invoke-direct/range {v17 .. v21}, Landroid/graphics/Region;-><init>(IIII)V

    move-object/from16 v0, v17

    invoke-virtual {v12, v7, v0}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mPathRegion:Landroid/graphics/Region;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v12, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 358
    add-int/lit8 v5, v5, 0x2

    goto/16 :goto_1

    .line 368
    .end local v2    # "degree":D
    .end local v4    # "edge":Z
    .end local v6    # "marginAdjust":F
    .end local v13    # "xEnd":F
    .end local v14    # "xStart":F
    .end local v15    # "yEnd":F
    .end local v16    # "yStart":F
    :cond_4
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mClipArray:[F

    move-object/from16 v18, v0

    add-int/lit8 v19, v5, 0x2

    aget v18, v18, v19

    aput v18, v9, v17

    .line 369
    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mClipArray:[F

    move-object/from16 v18, v0

    add-int/lit8 v19, v5, 0x3

    aget v18, v18, v19

    aput v18, v9, v17

    goto/16 :goto_2

    .line 379
    .restart local v4    # "edge":Z
    .restart local v6    # "marginAdjust":F
    .restart local v13    # "xEnd":F
    .restart local v14    # "xStart":F
    .restart local v15    # "yEnd":F
    .restart local v16    # "yStart":F
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 380
    :cond_6
    cmpl-float v17, v16, v15

    if-nez v17, :cond_2

    .line 381
    const/16 v17, 0x0

    cmpl-float v17, v16, v17

    if-eqz v17, :cond_7

    cmpl-float v17, v16, p3

    if-nez v17, :cond_8

    :cond_7
    const/4 v4, 0x1

    :goto_5
    goto/16 :goto_3

    :cond_8
    const/4 v4, 0x0

    goto :goto_5

    .line 385
    :cond_9
    const/high16 v17, 0x40000000    # 2.0f

    mul-float v6, p1, v17

    goto/16 :goto_4

    .line 411
    .end local v4    # "edge":Z
    .end local v6    # "marginAdjust":F
    .end local v9    # "pointEnd":[F
    .end local v10    # "pointStart":[F
    .end local v13    # "xEnd":F
    .end local v14    # "xStart":F
    .end local v15    # "yEnd":F
    .end local v16    # "yStart":F
    :cond_a
    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mPathRegion:Landroid/graphics/Region;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/graphics/Region;->getBoundaryPath(Landroid/graphics/Path;)Z

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mPathRectF:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    goto/16 :goto_0

    .line 345
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private generateClipArrayBySize(FF)V
    .locals 5
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 306
    iget-object v2, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mImageLocation:Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

    iget-object v0, v2, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->mClipArray:[F

    .line 307
    .local v0, "clipArray":[F
    array-length v2, v0

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mClipArray:[F

    .line 308
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 309
    iget-object v2, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mClipArray:[F

    aget v3, v0, v1

    mul-float/2addr v3, p1

    aput v3, v2, v1

    .line 310
    iget-object v2, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mClipArray:[F

    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v4, v1, 0x1

    aget v4, v0, v4

    mul-float/2addr v4, p2

    aput v4, v2, v3

    .line 308
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 312
    :cond_0
    return-void
.end method

.method private generateLayoutSizeByRect()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mImageLocation:Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

    iget-object v1, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mPathRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->access$002(Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;I)I

    .line 299
    iget-object v0, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mImageLocation:Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

    iget-object v1, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mPathRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->access$102(Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;I)I

    .line 300
    iget-object v0, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mImageLocation:Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

    iget-object v1, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mPathRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->access$202(Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;I)I

    .line 301
    iget-object v0, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mImageLocation:Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

    iget-object v1, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mPathRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->access$302(Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;I)I

    .line 302
    iget-object v0, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mImageLocation:Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

    iget-object v0, v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->mPathRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mPathRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 303
    return-void
.end method

.method private generatePath()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 315
    iget-object v4, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mImageLocation:Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

    iget-object v1, v4, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->mPathForClip:Landroid/graphics/Path;

    .line 316
    .local v1, "pathForClip":Landroid/graphics/Path;
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 317
    sget-object v4, Lcom/miui/gallery/collage/render/CollageRender$1;->$SwitchMap$com$miui$gallery$collage$ClipType:[I

    iget-object v5, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mImageLocation:Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

    iget-object v5, v5, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->mClipType:Lcom/miui/gallery/collage/ClipType;

    invoke-virtual {v5}, Lcom/miui/gallery/collage/ClipType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 323
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mClipArray:[F

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 324
    iget-object v4, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mClipArray:[F

    aget v2, v4, v0

    .line 325
    .local v2, "x":F
    iget-object v4, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mClipArray:[F

    add-int/lit8 v5, v0, 0x1

    aget v3, v4, v5

    .line 326
    .local v3, "y":F
    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 327
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 323
    :goto_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 319
    .end local v0    # "i":I
    .end local v2    # "x":F
    .end local v3    # "y":F
    :pswitch_0
    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mClipArray:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v6, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mClipArray:[F

    aget v6, v6, v10

    iget-object v7, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mClipArray:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    iget-object v8, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mClipArray:[F

    const/4 v9, 0x3

    aget v8, v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 335
    :goto_2
    iget-object v4, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mPathRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v4, v10}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 336
    iget-object v4, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mPathRegion:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->setEmpty()V

    .line 337
    iget-object v4, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mPathRegion:Landroid/graphics/Region;

    new-instance v5, Landroid/graphics/Region;

    iget-object v6, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mPathRectF:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    iget-object v7, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mPathRectF:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    float-to-int v7, v7

    iget-object v8, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mPathRectF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    iget-object v9, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mPathRectF:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    float-to-int v9, v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Region;-><init>(IIII)V

    invoke-virtual {v4, v1, v5}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 338
    return-void

    .line 329
    .restart local v0    # "i":I
    .restart local v2    # "x":F
    .restart local v3    # "y":F
    :cond_0
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 332
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    goto :goto_2

    .line 317
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public processorImageLocation(Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;FFFZ)V
    .locals 1
    .param p1, "imageLocation"    # Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;
    .param p2, "parentWidth"    # F
    .param p3, "parentHeight"    # F
    .param p4, "margin"    # F
    .param p5, "ignoreEdgeMargin"    # Z

    .prologue
    .line 285
    iput-object p1, p0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->mImageLocation:Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

    .line 286
    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_0

    .line 287
    invoke-direct {p0, p2, p3}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->generateClipArrayBySize(FF)V

    .line 288
    invoke-direct {p0}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->generatePath()V

    .line 289
    invoke-direct {p0, p4, p2, p3, p5}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->enableMargin(FFFZ)V

    .line 294
    :goto_0
    invoke-direct {p0}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->generateLayoutSizeByRect()V

    .line 295
    return-void

    .line 291
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->generateClipArrayBySize(FF)V

    .line 292
    invoke-direct {p0}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->generatePath()V

    goto :goto_0
.end method
