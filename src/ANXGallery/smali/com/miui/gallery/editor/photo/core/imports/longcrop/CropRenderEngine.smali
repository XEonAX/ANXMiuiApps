.class Lcom/miui/gallery/editor/photo/core/imports/longcrop/CropRenderEngine;
.super Lcom/miui/gallery/editor/photo/core/RenderEngine;
.source "CropRenderEngine.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/RenderEngine;-><init>()V

    return-void
.end method


# virtual methods
.method public render(Landroid/graphics/Bitmap;Lcom/miui/gallery/editor/photo/core/RenderData;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "renderData"    # Lcom/miui/gallery/editor/photo/core/RenderData;

    .prologue
    .line 12
    check-cast p2, Lcom/miui/gallery/editor/photo/core/imports/longcrop/CropRenderData;

    .end local p2    # "renderData":Lcom/miui/gallery/editor/photo/core/RenderData;
    iget-object v0, p2, Lcom/miui/gallery/editor/photo/core/imports/longcrop/CropRenderData;->mEntry:Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropEditorView$Entry;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropEditorView$Entry;->apply(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
