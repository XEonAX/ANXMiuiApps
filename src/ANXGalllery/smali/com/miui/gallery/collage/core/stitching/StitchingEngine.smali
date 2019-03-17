.class Lcom/miui/gallery/collage/core/stitching/StitchingEngine;
.super Lcom/miui/gallery/collage/core/RenderEngine;
.source "StitchingEngine.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/miui/gallery/collage/BitmapManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmapManager"    # Lcom/miui/gallery/collage/BitmapManager;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/collage/core/RenderEngine;-><init>(Landroid/content/Context;Lcom/miui/gallery/collage/BitmapManager;)V

    .line 20
    return-void
.end method


# virtual methods
.method public render(Lcom/miui/gallery/collage/core/RenderData;)Landroid/graphics/Bitmap;
    .locals 28
    .param p1, "renderData"    # Lcom/miui/gallery/collage/core/RenderData;

    .prologue
    .line 24
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/miui/gallery/collage/core/stitching/StitchingRenderData;

    move/from16 v24, v0

    if-eqz v24, :cond_2

    move-object/from16 v19, p1

    .line 25
    check-cast v19, Lcom/miui/gallery/collage/core/stitching/StitchingRenderData;

    .line 26
    .local v19, "stitchingRenderData":Lcom/miui/gallery/collage/core/stitching/StitchingRenderData;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/miui/gallery/collage/core/stitching/StitchingRenderData;->mRenderData:Lcom/miui/gallery/collage/widget/CollageStitchingLayout$RenderData;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v7, v0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$RenderData;->bitmapRenderDatas:[Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;

    .line 27
    .local v7, "bitmapRenderDatas":[Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/miui/gallery/collage/core/stitching/StitchingRenderData;->mRenderData:Lcom/miui/gallery/collage/widget/CollageStitchingLayout$RenderData;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$RenderData;->stitchingModel:Lcom/miui/gallery/collage/core/stitching/StitchingModel;

    move-object/from16 v18, v0

    .line 29
    .local v18, "stitchingModel":Lcom/miui/gallery/collage/core/stitching/StitchingModel;
    move-object/from16 v0, v19

    iget v0, v0, Lcom/miui/gallery/collage/core/stitching/StitchingRenderData;->mWidth:I

    move/from16 v23, v0

    .line 30
    .local v23, "width":I
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/miui/gallery/collage/core/stitching/StitchingRenderData;->mRenderData:Lcom/miui/gallery/collage/widget/CollageStitchingLayout$RenderData;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$RenderData;->viewWidth:I

    move/from16 v22, v0

    .line 31
    .local v22, "viewWidth":I
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v16, v24, v25

    .line 33
    .local v16, "scale":F
    new-instance v5, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$BitmapPositionHolder;

    array-length v0, v7

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-direct {v5, v0}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$BitmapPositionHolder;-><init>(I)V

    .line 34
    .local v5, "bitmapPositionHolder":Lcom/miui/gallery/collage/widget/CollageStitchingLayout$BitmapPositionHolder;
    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1, v5, v7}, Lcom/miui/gallery/collage/core/stitching/StitchingModel;->countHeight(ILcom/miui/gallery/collage/widget/CollageStitchingLayout$BitmapPositionHolder;[Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;)V

    .line 35
    iget v12, v5, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$BitmapPositionHolder;->height:I

    .line 36
    .local v12, "height":I
    iget v0, v5, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$BitmapPositionHolder;->verticalOffset:I

    move/from16 v21, v0

    .line 37
    .local v21, "verticalOffset":I
    iget v13, v5, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$BitmapPositionHolder;->horizontalOffset:I

    .line 40
    .local v13, "horizontalOffset":I
    new-instance v4, Lcom/miui/gallery/collage/render/BitmapItemRender;

    invoke-direct {v4}, Lcom/miui/gallery/collage/render/BitmapItemRender;-><init>()V

    .line 42
    .local v4, "bitmapItemRender":Lcom/miui/gallery/collage/render/BitmapItemRender;
    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    .line 43
    .local v11, "dst":Landroid/graphics/RectF;
    sget-object v24, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v12, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 44
    .local v15, "out":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v15}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 45
    .local v9, "canvas":Landroid/graphics/Canvas;
    const/16 v24, -0x1

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 46
    const/4 v10, 0x0

    .line 47
    .local v10, "currentTop":I
    if-lez v13, :cond_0

    .line 48
    add-int v10, v10, v21

    .line 50
    :cond_0
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    array-length v0, v7

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v14, v0, :cond_3

    .line 51
    aget-object v6, v7, v14

    .line 53
    .local v6, "bitmapRenderData":Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;
    iget-object v0, v6, Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    .line 54
    .local v17, "smallBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/core/stitching/StitchingEngine;->mBitmapManager:Lcom/miui/gallery/collage/BitmapManager;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1

    .line 55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/core/stitching/StitchingEngine;->mBitmapManager:Lcom/miui/gallery/collage/BitmapManager;

    move-object/from16 v24, v0

    iget-object v0, v6, Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/miui/gallery/collage/BitmapManager;->getOriginUriByBitmap(Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v20

    .line 56
    .local v20, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/core/stitching/StitchingEngine;->mBitmapManager:Lcom/miui/gallery/collage/BitmapManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v23

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v12, v2}, Lcom/miui/gallery/collage/BitmapManager;->loadSuitableBitmapBySize(IILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v6, Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;->bitmap:Landroid/graphics/Bitmap;

    .line 59
    .end local v20    # "uri":Landroid/net/Uri;
    :cond_1
    iget-object v0, v5, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$BitmapPositionHolder;->bitmapHeights:[I

    move-object/from16 v24, v0

    aget v24, v24, v14

    add-int v8, v10, v24

    .line 60
    .local v8, "bottom":I
    int-to-float v0, v13

    move/from16 v24, v0

    int-to-float v0, v10

    move/from16 v25, v0

    iget v0, v5, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$BitmapPositionHolder;->bitmapWidth:I

    move/from16 v26, v0

    add-int v26, v26, v13

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    int-to-float v0, v8

    move/from16 v27, v0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 62
    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    .line 63
    invoke-virtual {v9, v11}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 64
    move/from16 v0, v16

    invoke-virtual {v4, v6, v11, v9, v0}, Lcom/miui/gallery/collage/render/BitmapItemRender;->drawBitmapItem(Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;Landroid/graphics/RectF;Landroid/graphics/Canvas;F)V

    .line 65
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 67
    move v10, v8

    .line 68
    add-int v10, v10, v21

    .line 70
    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;->bitmap:Landroid/graphics/Bitmap;

    .line 50
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 74
    .end local v4    # "bitmapItemRender":Lcom/miui/gallery/collage/render/BitmapItemRender;
    .end local v5    # "bitmapPositionHolder":Lcom/miui/gallery/collage/widget/CollageStitchingLayout$BitmapPositionHolder;
    .end local v6    # "bitmapRenderData":Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;
    .end local v7    # "bitmapRenderDatas":[Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;
    .end local v8    # "bottom":I
    .end local v9    # "canvas":Landroid/graphics/Canvas;
    .end local v10    # "currentTop":I
    .end local v11    # "dst":Landroid/graphics/RectF;
    .end local v12    # "height":I
    .end local v13    # "horizontalOffset":I
    .end local v14    # "i":I
    .end local v15    # "out":Landroid/graphics/Bitmap;
    .end local v16    # "scale":F
    .end local v17    # "smallBitmap":Landroid/graphics/Bitmap;
    .end local v18    # "stitchingModel":Lcom/miui/gallery/collage/core/stitching/StitchingModel;
    .end local v19    # "stitchingRenderData":Lcom/miui/gallery/collage/core/stitching/StitchingRenderData;
    .end local v21    # "verticalOffset":I
    .end local v22    # "viewWidth":I
    .end local v23    # "width":I
    :cond_2
    const/4 v15, 0x0

    :cond_3
    return-object v15
.end method
