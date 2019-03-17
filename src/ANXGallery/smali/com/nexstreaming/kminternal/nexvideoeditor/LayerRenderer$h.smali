.class Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$h;
.super Ljava/lang/Object;
.source "LayerRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:Z


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 7

    .prologue
    const v6, 0x812f

    const/16 v5, 0x2601

    const/16 v4, 0xde1

    const/4 v3, 0x0

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    iput-boolean v3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$h;->e:Z

    .line 337
    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->p()V

    .line 338
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$h;->b:I

    .line 339
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$h;->c:I

    .line 340
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getGenerationId()I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$h;->d:I

    .line 342
    const/4 v0, 0x1

    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->q()[I

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->p()V

    .line 343
    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->q()[I

    move-result-object v0

    aget v0, v0, v3

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$h;->a:I

    .line 344
    const-string v0, "LayerRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Made layer texture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$h;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (generation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$h;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->p()V

    .line 346
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$h;->a:I

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->p()V

    .line 347
    const/16 v0, 0x2801

    invoke-static {v4, v0, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->p()V

    .line 348
    const/16 v0, 0x2800

    invoke-static {v4, v0, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->p()V

    .line 349
    const/16 v0, 0x2802

    invoke-static {v4, v0, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->p()V

    .line 350
    const/16 v0, 0x2803

    invoke-static {v4, v0, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->p()V

    .line 351
    invoke-static {v4, v3, p1, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 352
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    invoke-static {v4, v3, p1, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$h;->a(IILandroid/graphics/Bitmap;I)V

    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->p()V

    .line 355
    :cond_0
    return-void
.end method

.method private static a(IILandroid/graphics/Bitmap;I)V
    .locals 17

    .prologue
    .line 358
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 359
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 361
    mul-int v0, v3, v7

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v16

    .line 362
    invoke-virtual/range {v16 .. v16}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 363
    invoke-virtual/range {v16 .. v16}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v1

    .line 364
    array-length v2, v1

    .line 365
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 366
    aget v4, v1, v0

    .line 367
    const/high16 v5, 0xff0000

    and-int/2addr v5, v4

    shr-int/lit8 v5, v5, 0x10

    and-int/lit16 v6, v4, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    const v6, -0xff0100

    and-int/2addr v4, v6

    or-int/2addr v4, v5

    aput v4, v1, v0

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 369
    :cond_0
    const/16 v10, 0x1908

    const/16 v14, 0x1908

    const/16 v15, 0x1401

    move/from16 v8, p0

    move/from16 v9, p1

    move v11, v3

    move v12, v7

    move/from16 v13, p3

    invoke-static/range {v8 .. v16}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 370
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 391
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$h;->e:Z

    if-nez v0, :cond_0

    .line 392
    const-string v0, "LayerRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destroy texture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$h;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->q()[I

    move-result-object v0

    iget v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$h;->a:I

    aput v1, v0, v3

    .line 394
    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->q()[I

    move-result-object v0

    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->p()V

    .line 395
    iput v3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$h;->a:I

    .line 396
    iput-boolean v4, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$h;->e:Z

    .line 398
    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 6

    .prologue
    const v5, 0x84c0

    const/16 v4, 0xde1

    const/4 v3, 0x0

    .line 373
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getGenerationId()I

    move-result v0

    iget v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$h;->d:I

    if-ne v0, v1, :cond_0

    .line 388
    :goto_0
    return-void

    .line 375
    :cond_0
    const-string v0, "LayerRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update layer texture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$h;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (generation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$h;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getGenerationId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getGenerationId()I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$h;->d:I

    .line 377
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$h;->b:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$h;->c:I

    if-ne v0, v1, :cond_1

    .line 378
    invoke-static {v5}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->p()V

    .line 379
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$h;->a:I

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->p()V

    .line 380
    invoke-static {v4, v3, v3, v3, p1}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->p()V

    goto :goto_0

    .line 382
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$h;->b:I

    .line 383
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$h;->c:I

    .line 384
    invoke-static {v5}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->p()V

    .line 385
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$h;->a:I

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->p()V

    .line 386
    invoke-static {v4, v3, p1, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->p()V

    goto/16 :goto_0
.end method
