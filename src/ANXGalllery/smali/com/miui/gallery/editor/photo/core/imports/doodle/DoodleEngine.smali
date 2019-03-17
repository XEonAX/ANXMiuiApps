.class Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEngine;
.super Lcom/miui/gallery/editor/photo/core/RenderEngine;
.source "DoodleEngine.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/RenderEngine;-><init>()V

    return-void
.end method


# virtual methods
.method public render(Landroid/graphics/Bitmap;Lcom/miui/gallery/editor/photo/core/RenderData;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "data"    # Lcom/miui/gallery/editor/photo/core/RenderData;

    .prologue
    .line 12
    instance-of v0, p2, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleRenderData;

    if-eqz v0, :cond_0

    .line 13
    check-cast p2, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleRenderData;

    .end local p2    # "data":Lcom/miui/gallery/editor/photo/core/RenderData;
    iget-object v0, p2, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleRenderData;->mDoodleEntry:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$DoodleEntry;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$DoodleEntry;->apply(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 15
    :goto_0
    return-object v0

    .restart local p2    # "data":Lcom/miui/gallery/editor/photo/core/RenderData;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
