.class Lcom/miui/gallery/editor/photo/core/imports/longcrop/CropRenderData;
.super Lcom/miui/gallery/editor/photo/core/RenderData;
.source "CropRenderData.java"


# instance fields
.field final mEntry:Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropEditorView$Entry;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropEditorView$Entry;)V
    .locals 0
    .param p1, "entry"    # Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropEditorView$Entry;

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/RenderData;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/longcrop/CropRenderData;->mEntry:Lcom/miui/gallery/editor/photo/core/imports/longcrop/LongScreenshotCropEditorView$Entry;

    .line 10
    return-void
.end method
