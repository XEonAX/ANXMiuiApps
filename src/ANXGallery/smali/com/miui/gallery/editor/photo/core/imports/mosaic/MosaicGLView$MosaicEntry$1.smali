.class Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView$MosaicEntry$1;
.super Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;
.source "MosaicGLView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView$MosaicEntry;->apply(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView$MosaicEntry;

.field final synthetic val$finalScale:F


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView$MosaicEntry;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView$MosaicEntry;
    .param p2, "originBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "penMask"    # Landroid/graphics/Bitmap;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView$MosaicEntry$1;->this$0:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView$MosaicEntry;

    iput p4, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView$MosaicEntry$1;->val$finalScale:F

    invoke-direct {p0, p2, p3}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 315
    invoke-super {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 316
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 11
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v10, 0x0

    .line 298
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 299
    new-instance v6, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$InitTask;

    invoke-direct {v6, p0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$InitTask;-><init>(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;)V

    invoke-virtual {v6}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$InitTask;->run()V

    .line 301
    const-string v6, "MosaicEntry"

    const-string v7, "MosaicEntry init finish begin apply operation item, size : %d"

    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView$MosaicEntry$1;->this$0:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView$MosaicEntry;

    invoke-static {v8}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView$MosaicEntry;->access$1300(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView$MosaicEntry;)Ljava/util/LinkedList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 303
    .local v2, "applyOperationStart":J
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView$MosaicEntry$1;->this$0:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView$MosaicEntry;

    invoke-static {v6}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView$MosaicEntry;->access$1300(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView$MosaicEntry;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem;

    .line 304
    .local v5, "mosaicOperationItem":Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem;
    iget-object v4, v5, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem;->mosaicGLEntity:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;

    .line 305
    .local v4, "mosaicGLEntity":Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;
    new-instance v7, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$EnableEntityTask;

    iget v8, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView$MosaicEntry$1;->val$finalScale:F

    invoke-direct {v7, p0, v4, v8}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$EnableEntityTask;-><init>(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;F)V

    invoke-virtual {v7}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$EnableEntityTask;->run()V

    .line 306
    iget-object v7, v5, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem;->paintingItems:Ljava/util/LinkedList;

    invoke-virtual {p0, v7}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView$MosaicEntry$1;->drawMaskPaintingItems(Ljava/util/LinkedList;)V

    goto :goto_0

    .line 308
    .end local v4    # "mosaicGLEntity":Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;
    .end local v5    # "mosaicOperationItem":Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 309
    .local v0, "applyOperationEnd":J
    const-string v6, "MosaicEntry"

    const-string v7, "MosaicEntry apply operation item coast : %d"

    sub-long v8, v0, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 310
    sget-object v6, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->CUBE:[F

    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView$MosaicEntry$1;->mGLPosition:[F

    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView$MosaicEntry$1;->mGLPosition:[F

    array-length v8, v8

    invoke-static {v6, v10, v7, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 311
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 292
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 293
    const-string v0, "MosaicEntry"

    const-string v1, "MosaicEntry onSurfaceCreated"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    return-void
.end method
