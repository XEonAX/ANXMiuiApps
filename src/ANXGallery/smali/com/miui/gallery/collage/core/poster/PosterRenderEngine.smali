.class Lcom/miui/gallery/collage/core/poster/PosterRenderEngine;
.super Lcom/miui/gallery/collage/core/RenderEngine;
.source "PosterRenderEngine.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/miui/gallery/collage/BitmapManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmapManager"    # Lcom/miui/gallery/collage/BitmapManager;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/collage/core/RenderEngine;-><init>(Landroid/content/Context;Lcom/miui/gallery/collage/BitmapManager;)V

    .line 16
    return-void
.end method


# virtual methods
.method public render(Lcom/miui/gallery/collage/core/RenderData;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "renderData"    # Lcom/miui/gallery/collage/core/RenderData;

    .prologue
    .line 20
    instance-of v0, p1, Lcom/miui/gallery/collage/core/poster/PosterRenderData;

    if-eqz v0, :cond_0

    .line 21
    check-cast p1, Lcom/miui/gallery/collage/core/poster/PosterRenderData;

    .end local p1    # "renderData":Lcom/miui/gallery/collage/core/RenderData;
    iget-object v8, p1, Lcom/miui/gallery/collage/core/poster/PosterRenderData;->mRenderData:Lcom/miui/gallery/collage/render/CollageRender$RenderData;

    .line 22
    .local v8, "collageRenderData":Lcom/miui/gallery/collage/render/CollageRender$RenderData;
    iget-object v0, v8, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->posterElementRender:Lcom/miui/gallery/collage/render/PosterElementRender;

    iget-object v1, v8, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->posterModel:Lcom/miui/gallery/collage/core/poster/PosterModel;

    iget v2, v8, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->imageWidth:I

    iget v3, v8, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->imageHeight:I

    iget v4, v8, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->scaleOffset:F

    iget-object v5, p0, Lcom/miui/gallery/collage/core/poster/PosterRenderEngine;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/collage/render/PosterElementRender;->initialize(Lcom/miui/gallery/collage/core/poster/PosterModel;IIFLandroid/content/Context;)V

    .line 23
    iget v0, v8, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->imageWidth:I

    iget v1, v8, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->imageHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 24
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 25
    .local v7, "canvas":Landroid/graphics/Canvas;
    iget-object v0, p0, Lcom/miui/gallery/collage/core/poster/PosterRenderEngine;->mBitmapManager:Lcom/miui/gallery/collage/BitmapManager;

    invoke-static {v7, v8, v0}, Lcom/miui/gallery/collage/render/CollageRender;->doRender(Landroid/graphics/Canvas;Lcom/miui/gallery/collage/render/CollageRender$RenderData;Lcom/miui/gallery/collage/BitmapManager;)V

    .line 28
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "collageRenderData":Lcom/miui/gallery/collage/render/CollageRender$RenderData;
    :goto_0
    return-object v6

    .restart local p1    # "renderData":Lcom/miui/gallery/collage/core/RenderData;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method
