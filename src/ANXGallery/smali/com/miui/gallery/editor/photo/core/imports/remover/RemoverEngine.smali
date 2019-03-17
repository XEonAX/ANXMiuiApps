.class public Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverEngine;
.super Lcom/miui/gallery/editor/photo/core/RenderEngine;
.source "RemoverEngine.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/RenderEngine;-><init>()V

    return-void
.end method


# virtual methods
.method public release()V
    .locals 0

    .prologue
    .line 46
    invoke-static {}, Lcom/miui/gallery/editor/photo/app/remover/Inpaint;->release()V

    .line 47
    return-void
.end method

.method public render(Landroid/graphics/Bitmap;Lcom/miui/gallery/editor/photo/core/RenderData;)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "data"    # Lcom/miui/gallery/editor/photo/core/RenderData;

    .prologue
    .line 16
    instance-of v0, p2, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderData;

    if-eqz v0, :cond_3

    .line 17
    check-cast p2, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderData;

    .end local p2    # "data":Lcom/miui/gallery/editor/photo/core/RenderData;
    iget-object v10, p2, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverRenderData;->mPaintData:Ljava/util/List;

    .line 18
    .local v10, "paintDataList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;>;"
    if-eqz v10, :cond_0

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    .end local v10    # "paintDataList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;>;"
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p1

    .line 21
    .restart local v10    # "paintDataList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;>;"
    .restart local p1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {}, Lcom/miui/gallery/editor/photo/app/remover/Inpaint;->initialize()Z

    .line 22
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 23
    .local v1, "maskBitmap":Landroid/graphics/Bitmap;
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;

    .line 24
    .local v9, "paintData":Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;
    iget-object v0, v9, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mCurves:Ljava/util/List;

    invoke-static {v1, v9, v0}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->export(Landroid/graphics/Bitmap;Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;Ljava/util/List;)V

    .line 25
    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    .line 26
    .local v11, "rect":Landroid/graphics/RectF;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v3, v9, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mCurves:Ljava/util/List;

    invoke-static {v11, v0, v2, v9, v3}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->getMaskBounds(Landroid/graphics/RectF;IILcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;Ljava/util/List;)V

    .line 28
    invoke-virtual {v11}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 31
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget v0, v11, Landroid/graphics/RectF;->left:F

    float-to-int v4, v0

    iget v0, v11, Landroid/graphics/RectF;->top:F

    float-to-int v5, v0

    iget v0, v11, Landroid/graphics/RectF;->right:F

    float-to-int v6, v0

    iget v0, v11, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v0

    iget-object v8, v9, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mRemoverNNFData:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Lcom/miui/gallery/editor/photo/app/remover/Inpaint;->upsampleBmpData(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIIIIILcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;)V

    goto :goto_1

    .line 36
    .end local v1    # "maskBitmap":Landroid/graphics/Bitmap;
    .end local v9    # "paintData":Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;
    .end local v10    # "paintDataList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;>;"
    .end local v11    # "rect":Landroid/graphics/RectF;
    .restart local p2    # "data":Lcom/miui/gallery/editor/photo/core/RenderData;
    :cond_3
    const/4 p1, 0x0

    goto :goto_0
.end method
