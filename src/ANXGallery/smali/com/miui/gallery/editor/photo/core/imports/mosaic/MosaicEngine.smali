.class Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicEngine;
.super Lcom/miui/gallery/editor/photo/core/RenderEngine;
.source "MosaicEngine.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/RenderEngine;-><init>()V

    return-void
.end method


# virtual methods
.method public render(Landroid/graphics/Bitmap;Lcom/miui/gallery/editor/photo/core/RenderData;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "data"    # Lcom/miui/gallery/editor/photo/core/RenderData;

    .prologue
    .line 22
    instance-of v0, p2, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRenderData;

    if-eqz v0, :cond_0

    .line 23
    check-cast p2, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRenderData;

    .end local p2    # "data":Lcom/miui/gallery/editor/photo/core/RenderData;
    iget-object v0, p2, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRenderData;->mMosaicEntry:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView$MosaicEntry;

    invoke-static {p1}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/OpenGlUtils;->ensureBitmapSize(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView$MosaicEntry;->apply(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 25
    :goto_0
    return-object v0

    .restart local p2    # "data":Lcom/miui/gallery/editor/photo/core/RenderData;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
