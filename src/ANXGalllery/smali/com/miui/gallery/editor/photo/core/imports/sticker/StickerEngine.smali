.class Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEngine;
.super Lcom/miui/gallery/editor/photo/core/RenderEngine;
.source "StickerEngine.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/RenderEngine;-><init>()V

    return-void
.end method


# virtual methods
.method public render(Landroid/graphics/Bitmap;Lcom/miui/gallery/editor/photo/core/RenderData;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "data"    # Lcom/miui/gallery/editor/photo/core/RenderData;

    .prologue
    .line 15
    const-string v0, "StickerEngine"

    const-string v1, "rendering sticker data"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    instance-of v0, p2, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerRenderData;

    if-eqz v0, :cond_0

    .line 18
    check-cast p2, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerRenderData;

    .end local p2    # "data":Lcom/miui/gallery/editor/photo/core/RenderData;
    iget-object v0, p2, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerRenderData;->mEntry:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$StickerEntry;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$StickerEntry;->apply(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 21
    :goto_0
    return-object v0

    .restart local p2    # "data":Lcom/miui/gallery/editor/photo/core/RenderData;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
