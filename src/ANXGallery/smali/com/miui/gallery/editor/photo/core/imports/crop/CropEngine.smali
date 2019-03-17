.class public Lcom/miui/gallery/editor/photo/core/imports/crop/CropEngine;
.super Lcom/miui/gallery/editor/photo/core/RenderEngine;
.source "CropEngine.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/RenderEngine;-><init>()V

    return-void
.end method


# virtual methods
.method public render(Landroid/graphics/Bitmap;Lcom/miui/gallery/editor/photo/core/RenderData;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "renderData"    # Lcom/miui/gallery/editor/photo/core/RenderData;

    .prologue
    .line 13
    move-object v0, p2

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropStateData;

    .line 14
    .local v0, "data":Lcom/miui/gallery/editor/photo/core/imports/crop/CropStateData;
    iget-object v1, v0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropStateData;->mEntry:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$CropEntry;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$CropEntry;->apply(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method
