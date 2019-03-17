.class public Lcom/miui/gallery/editor/photo/core/imports/filter/render/OpenGlUtils;
.super Ljava/lang/Object;
.source "OpenGlUtils.java"


# direct methods
.method public static ensureBitmapSize(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "origin"    # Landroid/graphics/Bitmap;

    .prologue
    .line 51
    invoke-static {}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GLESUtils;->getMaxTextureSize()I

    move-result v1

    .line 53
    .local v1, "maxSize":I
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-gt v4, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-le v4, v1, :cond_2

    .line 55
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 56
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v4, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/2addr v4, v5

    const/4 v5, 0x1

    invoke-static {p0, v1, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 71
    :goto_0
    return-object v3

    .line 58
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    mul-int/2addr v4, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/2addr v4, v5

    const/4 v5, 0x1

    invoke-static {p0, v4, v1, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .local v3, "resizeBitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 61
    .end local v3    # "resizeBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 62
    .local v0, "error":Ljava/lang/OutOfMemoryError;
    const-string v4, "OpenGlUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ensureBitmapSize error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 64
    .local v2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "type"

    const-string v5, "filter"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v4, "model"

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v4, "photo_editor"

    const-string v5, "memory_error"

    invoke-static {v4, v5, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 68
    const/4 p0, 0x0

    .end local v0    # "error":Ljava/lang/OutOfMemoryError;
    .end local v2    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    move-object v3, p0

    .line 71
    goto :goto_0
.end method

.method public static loadTexture(Landroid/graphics/Bitmap;IZ)I
    .locals 7
    .param p0, "img"    # Landroid/graphics/Bitmap;
    .param p1, "usedTexId"    # I
    .param p2, "recycle"    # Z

    .prologue
    const v6, 0x47012f00    # 33071.0f

    const v5, 0x46180400    # 9729.0f

    const/4 v1, 0x1

    const/16 v4, 0xde1

    const/4 v2, 0x0

    .line 20
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 21
    :cond_0
    const-string v3, "OpenGlUtils"

    const-string v4, "img is null: %b"

    if-nez p0, :cond_1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    const/4 v1, -0x1

    .line 46
    :goto_1
    return v1

    :cond_1
    move v1, v2

    .line 21
    goto :goto_0

    .line 24
    :cond_2
    new-array v0, v1, [I

    .line 25
    .local v0, "textures":[I
    const/4 v3, -0x1

    if-ne p1, v3, :cond_4

    .line 26
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 27
    aget v1, v0, v2

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 28
    const/16 v1, 0x2800

    invoke-static {v4, v1, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 30
    const/16 v1, 0x2801

    invoke-static {v4, v1, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 32
    const/16 v1, 0x2802

    invoke-static {v4, v1, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 34
    const/16 v1, 0x2803

    invoke-static {v4, v1, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 37
    invoke-static {v4, v2, p0, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 43
    :goto_2
    if-eqz p2, :cond_3

    .line 44
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 46
    :cond_3
    aget v1, v0, v2

    goto :goto_1

    .line 39
    :cond_4
    invoke-static {v4, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 40
    invoke-static {v4, v2, p0, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 41
    aput p1, v0, v2

    goto :goto_2
.end method
