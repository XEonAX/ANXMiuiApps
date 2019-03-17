.class public Lcom/miui/gallery/collage/render/CollageRender;
.super Ljava/lang/Object;
.source "CollageRender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;,
        Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;,
        Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;,
        Lcom/miui/gallery/collage/render/CollageRender$RenderData;
    }
.end annotation


# direct methods
.method public static doRender(Landroid/graphics/Canvas;Lcom/miui/gallery/collage/render/CollageRender$RenderData;Lcom/miui/gallery/collage/BitmapManager;)V
    .locals 11
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "renderData"    # Lcom/miui/gallery/collage/render/CollageRender$RenderData;
    .param p2, "bitmapManager"    # Lcom/miui/gallery/collage/BitmapManager;

    .prologue
    .line 149
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    .line 150
    .local v5, "width":I
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    .line 152
    .local v3, "height":I
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 155
    .local v2, "collageRect":Landroid/graphics/RectF;
    iget-object v6, p1, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->posterModel:Lcom/miui/gallery/collage/core/poster/PosterModel;

    if-eqz v6, :cond_1

    .line 156
    iget-object v6, p1, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->posterModel:Lcom/miui/gallery/collage/core/poster/PosterModel;

    iget-object v6, v6, Lcom/miui/gallery/collage/core/poster/PosterModel;->collagePositions:[Lcom/miui/gallery/collage/core/poster/CollagePositionModel;

    iget-object v7, p1, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->bitmapRenders:[Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;

    array-length v7, v7

    invoke-static {v6, v7}, Lcom/miui/gallery/collage/core/poster/CollagePositionModel;->getCollagePositionModelByImageSize([Lcom/miui/gallery/collage/core/poster/CollagePositionModel;I)Lcom/miui/gallery/collage/core/poster/CollagePositionModel;

    move-result-object v1

    .line 157
    .local v1, "collagePositionModel":Lcom/miui/gallery/collage/core/poster/CollagePositionModel;
    iget-object v0, v1, Lcom/miui/gallery/collage/core/poster/CollagePositionModel;->position:[F

    .line 161
    .end local v1    # "collagePositionModel":Lcom/miui/gallery/collage/core/poster/CollagePositionModel;
    .local v0, "collagePosition":[F
    :goto_0
    int-to-float v6, v5

    const/4 v7, 0x0

    aget v7, v0, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    int-to-float v6, v6

    int-to-float v7, v3

    const/4 v8, 0x1

    aget v8, v0, v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    int-to-float v7, v7

    int-to-float v8, v5

    const/4 v9, 0x2

    aget v9, v0, v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    int-to-float v8, v8

    int-to-float v9, v3

    const/4 v10, 0x3

    aget v10, v0, v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 162
    const/4 v6, -0x1

    invoke-virtual {p0, v6}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 163
    invoke-static {p0, p1, v2, p2}, Lcom/miui/gallery/collage/render/CollageRender;->drawBitmap(Landroid/graphics/Canvas;Lcom/miui/gallery/collage/render/CollageRender$RenderData;Landroid/graphics/RectF;Lcom/miui/gallery/collage/BitmapManager;)V

    .line 165
    iget-object v4, p1, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->posterElementRender:Lcom/miui/gallery/collage/render/PosterElementRender;

    .line 166
    .local v4, "posterElementRender":Lcom/miui/gallery/collage/render/PosterElementRender;
    if-eqz v4, :cond_0

    .line 167
    invoke-virtual {v4, p0}, Lcom/miui/gallery/collage/render/PosterElementRender;->draw(Landroid/graphics/Canvas;)V

    .line 169
    :cond_0
    return-void

    .line 159
    .end local v0    # "collagePosition":[F
    .end local v4    # "posterElementRender":Lcom/miui/gallery/collage/render/PosterElementRender;
    :cond_1
    sget-object v0, Lcom/miui/gallery/collage/widget/PosterLayout;->DEFAULT_LAYOUT_PARAMS:[F

    .restart local v0    # "collagePosition":[F
    goto :goto_0
.end method

.method private static drawBitmap(Landroid/graphics/Canvas;Lcom/miui/gallery/collage/render/CollageRender$RenderData;Landroid/graphics/RectF;Lcom/miui/gallery/collage/BitmapManager;)V
    .locals 18
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "renderData"    # Lcom/miui/gallery/collage/render/CollageRender$RenderData;
    .param p2, "collageRect"    # Landroid/graphics/RectF;
    .param p3, "bitmapManager"    # Lcom/miui/gallery/collage/BitmapManager;

    .prologue
    .line 172
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->layoutModel:Lcom/miui/gallery/collage/core/layout/LayoutModel;

    .line 173
    .local v14, "layoutModel":Lcom/miui/gallery/collage/core/layout/LayoutModel;
    move-object/from16 v0, p1

    iget v15, v0, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->margin:F

    .line 174
    .local v15, "margin":F
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->bitmapRenders:[Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;

    .line 175
    .local v10, "bitmapRenderDataArray":[Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;
    new-instance v2, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;

    invoke-direct {v2}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;-><init>()V

    .line 176
    .local v2, "imageLocationProcessor":Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;
    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    .line 177
    .local v11, "canvasBound":Landroid/graphics/RectF;
    new-instance v8, Lcom/miui/gallery/collage/render/BitmapItemRender;

    invoke-direct {v8}, Lcom/miui/gallery/collage/render/BitmapItemRender;-><init>()V

    .line 179
    .local v8, "bitmapItemRender":Lcom/miui/gallery/collage/render/BitmapItemRender;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    iget-object v4, v14, Lcom/miui/gallery/collage/core/layout/LayoutModel;->items:[Lcom/miui/gallery/collage/core/layout/LayoutItemModel;

    array-length v4, v4

    if-ge v12, v4, :cond_2

    .line 180
    array-length v4, v10

    if-lt v12, v4, :cond_0

    .line 179
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 183
    :cond_0
    iget-object v4, v14, Lcom/miui/gallery/collage/core/layout/LayoutModel;->items:[Lcom/miui/gallery/collage/core/layout/LayoutItemModel;

    aget-object v13, v4, v12

    .line 184
    .local v13, "layoutItemModel":Lcom/miui/gallery/collage/core/layout/LayoutItemModel;
    new-instance v3, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

    iget-object v4, v13, Lcom/miui/gallery/collage/core/layout/LayoutItemModel;->clipType:Lcom/miui/gallery/collage/ClipType;

    iget-object v5, v13, Lcom/miui/gallery/collage/core/layout/LayoutItemModel;->data:[F

    invoke-direct {v3, v4, v5}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;-><init>(Lcom/miui/gallery/collage/ClipType;[F)V

    .line 185
    .local v3, "imageLocation":Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v5

    move-object/from16 v0, p1

    iget v6, v0, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->scaleOffset:F

    mul-float/2addr v6, v15

    move-object/from16 v0, p1

    iget-boolean v7, v0, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->igonreMarginEdge:Z

    invoke-virtual/range {v2 .. v7}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->processorImageLocation(Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;FFFZ)V

    .line 186
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Canvas;->save()I

    .line 187
    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 188
    iget-object v4, v3, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->mPathForClip:Landroid/graphics/Path;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 190
    invoke-static {v3}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->access$000(Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->access$100(Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v3}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->access$200(Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v3}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->access$300(Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v11, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 191
    aget-object v9, v10, v12

    .line 193
    .local v9, "bitmapRenderData":Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;
    iget-object v0, v9, Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    .line 194
    .local v16, "smallBitmap":Landroid/graphics/Bitmap;
    if-eqz p3, :cond_1

    .line 195
    iget-object v4, v9, Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/miui/gallery/collage/BitmapManager;->getOriginUriByBitmap(Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v17

    .line 196
    .local v17, "uri":Landroid/net/Uri;
    move-object/from16 v0, p1

    iget v4, v0, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->imageWidth:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->imageHeight:I

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v5, v1}, Lcom/miui/gallery/collage/BitmapManager;->loadSuitableBitmapBySize(IILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v9, Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;->bitmap:Landroid/graphics/Bitmap;

    .line 199
    .end local v17    # "uri":Landroid/net/Uri;
    :cond_1
    move-object/from16 v0, p1

    iget v4, v0, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->scaleOffset:F

    move-object/from16 v0, p0

    invoke-virtual {v8, v9, v11, v0, v4}, Lcom/miui/gallery/collage/render/BitmapItemRender;->drawBitmapItem(Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;Landroid/graphics/RectF;Landroid/graphics/Canvas;F)V

    .line 200
    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;->bitmap:Landroid/graphics/Bitmap;

    .line 202
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_1

    .line 204
    .end local v3    # "imageLocation":Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;
    .end local v9    # "bitmapRenderData":Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;
    .end local v13    # "layoutItemModel":Lcom/miui/gallery/collage/core/layout/LayoutItemModel;
    .end local v16    # "smallBitmap":Landroid/graphics/Bitmap;
    :cond_2
    return-void
.end method

.method public static generateRenderData(Landroid/content/Context;Lcom/miui/gallery/collage/core/poster/PosterModel;Lcom/miui/gallery/collage/core/layout/LayoutModel;Lcom/miui/gallery/collage/widget/CollageLayout;I)Lcom/miui/gallery/collage/render/CollageRender$RenderData;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "posterModel"    # Lcom/miui/gallery/collage/core/poster/PosterModel;
    .param p2, "layoutModel"    # Lcom/miui/gallery/collage/core/layout/LayoutModel;
    .param p3, "collageLayout"    # Lcom/miui/gallery/collage/widget/CollageLayout;
    .param p4, "viewWidth"    # I

    .prologue
    .line 110
    invoke-virtual {p3}, Lcom/miui/gallery/collage/widget/CollageLayout;->getChildCount()I

    move-result v1

    .line 111
    .local v1, "childCount":I
    new-array v0, v1, [Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;

    .line 112
    .local v0, "bitmapRenderDataArray":[Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 113
    invoke-virtual {p3, v3}, Lcom/miui/gallery/collage/widget/CollageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/collage/widget/CollageImageView;

    .line 114
    .local v2, "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    invoke-virtual {v2}, Lcom/miui/gallery/collage/widget/CollageImageView;->generateBitmapRenderData()Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;

    move-result-object v5

    aput-object v5, v0, v3

    .line 112
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 116
    .end local v2    # "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, p1, p2, v0}, Lcom/miui/gallery/collage/render/CollageRender;->generateRenderData(Landroid/content/res/Resources;Lcom/miui/gallery/collage/core/poster/PosterModel;Lcom/miui/gallery/collage/core/layout/LayoutModel;[Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;)Lcom/miui/gallery/collage/render/CollageRender$RenderData;

    move-result-object v4

    .line 117
    .local v4, "renderData":Lcom/miui/gallery/collage/render/CollageRender$RenderData;
    iget v5, v4, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->imageWidth:I

    int-to-float v5, v5

    int-to-float v6, p4

    div-float/2addr v5, v6

    iput v5, v4, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->scaleOffset:F

    .line 118
    invoke-virtual {p3}, Lcom/miui/gallery/collage/widget/CollageLayout;->getMargin()F

    move-result v5

    iput v5, v4, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->margin:F

    .line 119
    invoke-virtual {p3}, Lcom/miui/gallery/collage/widget/CollageLayout;->isIgnoreEdgeMargin()Z

    move-result v5

    iput-boolean v5, v4, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->igonreMarginEdge:Z

    .line 120
    if-eqz p1, :cond_1

    .line 121
    new-instance v5, Lcom/miui/gallery/collage/render/PosterElementRender;

    invoke-direct {v5}, Lcom/miui/gallery/collage/render/PosterElementRender;-><init>()V

    iput-object v5, v4, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->posterElementRender:Lcom/miui/gallery/collage/render/PosterElementRender;

    .line 123
    :cond_1
    return-object v4
.end method

.method private static generateRenderData(Landroid/content/res/Resources;Lcom/miui/gallery/collage/core/poster/PosterModel;Lcom/miui/gallery/collage/core/layout/LayoutModel;[Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;)Lcom/miui/gallery/collage/render/CollageRender$RenderData;
    .locals 5
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "posterModel"    # Lcom/miui/gallery/collage/core/poster/PosterModel;
    .param p2, "layoutModel"    # Lcom/miui/gallery/collage/core/layout/LayoutModel;
    .param p3, "bitmapRenderDataArray"    # [Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;

    .prologue
    const/4 v4, 0x0

    .line 127
    new-instance v2, Lcom/miui/gallery/collage/render/CollageRender$RenderData;

    invoke-direct {v2}, Lcom/miui/gallery/collage/render/CollageRender$RenderData;-><init>()V

    .line 130
    .local v2, "renderData":Lcom/miui/gallery/collage/render/CollageRender$RenderData;
    if-eqz p1, :cond_0

    iget v3, p1, Lcom/miui/gallery/collage/core/poster/PosterModel;->ratio:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    .line 131
    iget v0, p1, Lcom/miui/gallery/collage/core/poster/PosterModel;->ratio:F

    .line 140
    .local v0, "ratio":F
    :goto_0
    const/16 v3, 0x870

    iput v3, v2, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->imageWidth:I

    .line 141
    iget v3, v2, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->imageWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->imageHeight:I

    .line 142
    iput-object p1, v2, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->posterModel:Lcom/miui/gallery/collage/core/poster/PosterModel;

    .line 143
    iput-object p2, v2, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->layoutModel:Lcom/miui/gallery/collage/core/layout/LayoutModel;

    .line 144
    iput-object p3, v2, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->bitmapRenders:[Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;

    .line 145
    return-object v2

    .line 132
    .end local v0    # "ratio":F
    :cond_0
    if-eqz p2, :cond_1

    iget v3, p2, Lcom/miui/gallery/collage/core/layout/LayoutModel;->ratio:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    .line 133
    iget v0, p2, Lcom/miui/gallery/collage/core/layout/LayoutModel;->ratio:F

    .restart local v0    # "ratio":F
    goto :goto_0

    .line 135
    .end local v0    # "ratio":F
    :cond_1
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 136
    .local v1, "ratioValue":Landroid/util/TypedValue;
    const v3, 0x7f0b028b

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v1, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 137
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    .restart local v0    # "ratio":F
    goto :goto_0
.end method

.method public static initBitmapMatrix(Landroid/graphics/RectF;Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 6
    .param p0, "bitmapRect"    # Landroid/graphics/RectF;
    .param p1, "bitmapMatrix"    # Landroid/graphics/Matrix;
    .param p2, "displayRect"    # Landroid/graphics/RectF;
    .param p3, "rectBuffer"    # Landroid/graphics/RectF;

    .prologue
    const/4 v3, 0x0

    .line 207
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/collage/render/CollageRender;->initBitmapMatrix(Landroid/graphics/RectF;Landroid/graphics/Matrix;Landroid/graphics/RectF;ZILandroid/graphics/RectF;)V

    .line 208
    return-void
.end method

.method public static initBitmapMatrix(Landroid/graphics/RectF;Landroid/graphics/Matrix;Landroid/graphics/RectF;ZILandroid/graphics/RectF;)V
    .locals 7
    .param p0, "bitmapRect"    # Landroid/graphics/RectF;
    .param p1, "bitmapMatrix"    # Landroid/graphics/Matrix;
    .param p2, "displayRect"    # Landroid/graphics/RectF;
    .param p3, "mirror"    # Z
    .param p4, "rotateDegree"    # I
    .param p5, "bitmapDisplayInitRect"    # Landroid/graphics/RectF;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 215
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 216
    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, p0, p2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 218
    invoke-virtual {p5, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 219
    invoke-virtual {p1, p5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 221
    if-eqz p3, :cond_0

    .line 222
    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {p5}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {p5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {p1, v3, v6, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 224
    :cond_0
    int-to-float v3, p4

    invoke-virtual {p5}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {p5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 226
    invoke-virtual {p5, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 227
    invoke-virtual {p1, p5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 229
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float v2, v3, v4

    .line 230
    .local v2, "scaleVertical":F
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float v1, v3, v4

    .line 231
    .local v1, "scaleHorizontal":F
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 232
    .local v0, "scale":F
    cmpl-float v3, v0, v6

    if-eqz v3, :cond_1

    .line 233
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {p1, v0, v0, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 234
    invoke-virtual {p5, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 235
    invoke-virtual {p1, p5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 237
    :cond_1
    return-void
.end method
