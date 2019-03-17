.class Lcom/miui/gallery/collage/core/layout/LayoutRenderEngine;
.super Lcom/miui/gallery/collage/core/RenderEngine;
.source "LayoutRenderEngine.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/miui/gallery/collage/BitmapManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmapManager"    # Lcom/miui/gallery/collage/BitmapManager;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/collage/core/RenderEngine;-><init>(Landroid/content/Context;Lcom/miui/gallery/collage/BitmapManager;)V

    .line 15
    return-void
.end method


# virtual methods
.method public render(Lcom/miui/gallery/collage/core/RenderData;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "renderData"    # Lcom/miui/gallery/collage/core/RenderData;

    .prologue
    .line 19
    instance-of v3, p1, Lcom/miui/gallery/collage/core/layout/LayoutRenderData;

    if-eqz v3, :cond_0

    .line 20
    check-cast p1, Lcom/miui/gallery/collage/core/layout/LayoutRenderData;

    .end local p1    # "renderData":Lcom/miui/gallery/collage/core/RenderData;
    iget-object v2, p1, Lcom/miui/gallery/collage/core/layout/LayoutRenderData;->mRenderData:Lcom/miui/gallery/collage/render/CollageRender$RenderData;

    .line 21
    .local v2, "collageRenderData":Lcom/miui/gallery/collage/render/CollageRender$RenderData;
    iget v3, v2, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->imageWidth:I

    iget v4, v2, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->imageHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 22
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 23
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget-object v3, p0, Lcom/miui/gallery/collage/core/layout/LayoutRenderEngine;->mBitmapManager:Lcom/miui/gallery/collage/BitmapManager;

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/collage/render/CollageRender;->doRender(Landroid/graphics/Canvas;Lcom/miui/gallery/collage/render/CollageRender$RenderData;Lcom/miui/gallery/collage/BitmapManager;)V

    .line 26
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "collageRenderData":Lcom/miui/gallery/collage/render/CollageRender$RenderData;
    :goto_0
    return-object v0

    .restart local p1    # "renderData":Lcom/miui/gallery/collage/core/RenderData;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
