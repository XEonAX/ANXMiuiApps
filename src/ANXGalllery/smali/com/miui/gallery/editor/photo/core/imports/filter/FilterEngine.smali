.class public Lcom/miui/gallery/editor/photo/core/imports/filter/FilterEngine;
.super Lcom/miui/gallery/editor/photo/core/RenderEngine;
.source "FilterEngine.java"


# instance fields
.field private mGPUImage:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/RenderEngine;-><init>()V

    .line 19
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;

    invoke-direct {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterEngine;->mGPUImage:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;

    .line 20
    return-void
.end method

.method private smartBeauty(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 65
    invoke-static {}, Lcom/miui/arcsoftbeauty/ArcsoftBeautyJni;->idBeautyAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-static {p1}, Lcom/miui/arcsoftbeauty/ArcsoftBeautyJni;->smartBeauty(Landroid/graphics/Bitmap;)V

    .line 68
    :cond_0
    return-void
.end method


# virtual methods
.method public release()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Lcom/miui/gallery/editor/photo/core/RenderEngine;->release()V

    .line 73
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterEngine;->mGPUImage:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;

    monitor-enter v1

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterEngine;->mGPUImage:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->deleteImage()V

    .line 75
    monitor-exit v1

    .line 76
    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public render(Landroid/graphics/Bitmap;Lcom/miui/gallery/editor/photo/core/Metadata;Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "data"    # Lcom/miui/gallery/editor/photo/core/Metadata;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 49
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    :cond_0
    const/4 v2, 0x0

    .line 57
    :goto_0
    return-object v2

    .line 52
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterEngine;->mGPUImage:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;

    monitor-enter v3

    .line 53
    :try_start_0
    instance-of v2, p2, Lcom/miui/gallery/editor/photo/core/imports/filter/Renderable;

    if-eqz v2, :cond_2

    .line 54
    move-object v0, p2

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/filter/Renderable;

    move-object v1, v0

    .line 55
    .local v1, "renderable":Lcom/miui/gallery/editor/photo/core/imports/filter/Renderable;
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterEngine;->mGPUImage:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;

    invoke-interface {v1}, Lcom/miui/gallery/editor/photo/core/imports/filter/Renderable;->instantiate()Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->setFilter(Lcom/miui/filtersdk/filter/base/GPUImageFilter;)V

    .line 56
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterEngine;->mGPUImage:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;

    invoke-static {p1}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/OpenGlUtils;->ensureBitmapSize(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 57
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterEngine;->mGPUImage:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->getBitmapWithFilterApplied(Z)Landroid/graphics/Bitmap;

    move-result-object v2

    monitor-exit v3

    goto :goto_0

    .line 61
    .end local v1    # "renderable":Lcom/miui/gallery/editor/photo/core/imports/filter/Renderable;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 59
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expect to be Renderable,your type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method public render(Landroid/graphics/Bitmap;Lcom/miui/gallery/editor/photo/core/RenderData;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "renderData"    # Lcom/miui/gallery/editor/photo/core/RenderData;

    .prologue
    .line 24
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 25
    :cond_0
    const/4 v2, 0x0

    .line 39
    :goto_0
    return-object v2

    .line 27
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterEngine;->mGPUImage:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;

    monitor-enter v3

    .line 28
    :try_start_0
    instance-of v2, p2, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;

    if-eqz v2, :cond_4

    .line 29
    move-object v0, p2

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;

    move-object v1, v0

    .line 30
    .local v1, "filterRenderData":Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;
    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 31
    monitor-exit v3

    move-object v2, p1

    goto :goto_0

    .line 33
    :cond_2
    invoke-static {p1}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/OpenGlUtils;->ensureBitmapSize(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 34
    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;->isPortraitBeauty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 35
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterEngine;->smartBeauty(Landroid/graphics/Bitmap;)V

    .line 37
    :cond_3
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterEngine;->mGPUImage:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;->instantiate()Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->setFilter(Lcom/miui/filtersdk/filter/base/GPUImageFilter;)V

    .line 38
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterEngine;->mGPUImage:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 39
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterEngine;->mGPUImage:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage;->getBitmapWithFilterApplied(Z)Landroid/graphics/Bitmap;

    move-result-object v2

    monitor-exit v3

    goto :goto_0

    .line 43
    .end local v1    # "filterRenderData":Lcom/miui/gallery/editor/photo/core/imports/filter/FilterRenderData;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 41
    :cond_4
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expect to be FilterRenderData,your type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method
