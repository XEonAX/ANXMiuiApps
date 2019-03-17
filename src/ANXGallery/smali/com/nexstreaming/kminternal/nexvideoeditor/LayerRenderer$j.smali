.class Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;
.super Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$o;
.source "LayerRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "j"
.end annotation


# instance fields
.field final synthetic a:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;

.field private b:I

.field private c:I

.field private d:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Ljava/nio/FloatBuffer;

.field private j:Ljava/nio/FloatBuffer;

.field private k:I

.field private l:I

.field private m:[F

.field private n:F

.field private o:I

.field private p:[F

.field private q:I

.field private r:[F


# direct methods
.method constructor <init>(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 1530
    iput-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;

    invoke-direct {p0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$o;-><init>(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;)V

    .line 1531
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->p:[F

    .line 1532
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->r:[F

    .line 1534
    const-string v0, "doMosaicBaseVertexWork"

    invoke-virtual {p0, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->a(Ljava/lang/String;)V

    .line 1535
    const-string v0, "mosaicBase"

    invoke-virtual {p0, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->b(Ljava/lang/String;)V

    .line 1536
    const-string v0, "//Base Vertex Block\nattribute vec4 a_position;\nattribute vec2 a_texCoord;uniform mat4 u_mvp_matrix;\nvarying highp vec2 v_texCoord;\nvoid doMosaicBaseVertexWork(){\n        v_texCoord = a_texCoord;\n        gl_Position = a_position * u_mvp_matrix;\n}"

    invoke-virtual {p0, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->c(Ljava/lang/String;)V

    .line 1547
    const-string/jumbo v0, "varying highp vec2 v_texCoord;\nuniform sampler2D u_textureSampler;\nuniform sampler2D u_maskSampler;\nuniform highp float u_alpha_test;\nuniform highp vec2 u_block_size;\nuniform highp vec2 u_texture_size;\nhighp vec4 mosaicBase(){\n   highp vec2 uv = v_texCoord;\n   highp vec4 mask = texture2D(u_maskSampler, uv);\n   if(mask.x == 0.0) return vec4(0, 0, 0, 0);\n   highp float dx = u_block_size.x * (1.0 / u_texture_size.x);\n   highp float dy = u_block_size.y * (1.0 / u_texture_size.y);\n   highp vec2 coord = vec2(dx*floor(uv.x / dx) + 1. / u_texture_size.x, dy*floor(uv.y / dy) + 1. / u_texture_size.y);\n   highp vec4 color = texture2D(u_textureSampler, coord);\n   if(color.a < u_alpha_test) return vec4(0,0,0,0);\n   return color;\n}"

    invoke-virtual {p0, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->d(Ljava/lang/String;)V

    .line 1566
    return-void
.end method


# virtual methods
.method public a(FF)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x42440000    # 49.0f

    const/4 v1, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1476
    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    cmpl-float v0, p2, v1

    if-nez v0, :cond_0

    .line 1477
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->p:[F

    aput v4, v0, v6

    .line 1478
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->p:[F

    aput v4, v0, v7

    .line 1484
    :goto_0
    return-void

    .line 1481
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->p:[F

    mul-float v1, p1, v5

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v1, v2

    add-float/2addr v1, v4

    aput v1, v0, v6

    .line 1482
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->p:[F

    mul-float v1, p2, v5

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v1, v2

    add-float/2addr v1, v4

    aput v1, v0, v7

    goto :goto_0
.end method

.method public a(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$n;)V
    .locals 12

    .prologue
    const v4, 0x84c0

    const/16 v8, 0x1406

    const/16 v3, 0xde1

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 1505
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->f()F

    move-result v0

    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;

    invoke-virtual {v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->f()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->a(FF)V

    .line 1506
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->c()F

    move-result v0

    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;

    invoke-virtual {v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->d()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->b(FF)V

    .line 1507
    invoke-virtual {p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$n;->a()I

    move-result v0

    .line 1508
    add-int v1, v4, v0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->p()V

    .line 1509
    iget v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->k:I

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->p()V

    .line 1510
    iget v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->d:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->p()V

    .line 1512
    invoke-virtual {p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$n;->a()I

    move-result v0

    .line 1513
    add-int v1, v4, v0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->p()V

    .line 1514
    iget v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->l:I

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->p()V

    .line 1515
    iget v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->f:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->p()V

    .line 1517
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->h:I

    iget v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->n:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1518
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->p()V

    .line 1519
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->c:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->p()V

    .line 1521
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;

    iget v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->g:I

    iget-object v4, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->m:[F

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;IIZ[FI)V

    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->p()V

    .line 1523
    iget v6, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->b:I

    const/4 v7, 0x4

    iget-object v11, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->i:Ljava/nio/FloatBuffer;

    move v9, v5

    move v10, v5

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->p()V

    .line 1524
    iget v6, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->c:I

    const/4 v7, 0x2

    iget-object v11, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->j:Ljava/nio/FloatBuffer;

    move v9, v5

    move v10, v5

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->p()V

    .line 1526
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->o:I

    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->p:[F

    aget v1, v1, v5

    iget-object v3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->p:[F

    aget v3, v3, v2

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 1527
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->q:I

    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->r:[F

    aget v1, v1, v5

    iget-object v3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->r:[F

    aget v2, v3, v2

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 1528
    return-void
.end method

.method public a(Ljava/nio/FloatBuffer;)V
    .locals 0

    .prologue
    .line 1453
    iput-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->i:Ljava/nio/FloatBuffer;

    .line 1454
    return-void
.end method

.method public a([F)V
    .locals 0

    .prologue
    .line 1472
    iput-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->m:[F

    .line 1473
    return-void
.end method

.method public b(FF)V
    .locals 2

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->r:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1488
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->r:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 1489
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 1493
    const-string v0, "a_position"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->b:I

    .line 1494
    const-string v0, "a_texCoord"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->c:I

    .line 1495
    const-string/jumbo v0, "u_mvp_matrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->g:I

    .line 1496
    const-string/jumbo v0, "u_textureSampler"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->d:I

    .line 1497
    const-string/jumbo v0, "u_maskSampler"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->f:I

    .line 1498
    const-string/jumbo v0, "u_alpha_test"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->h:I

    .line 1499
    const-string/jumbo v0, "u_block_size"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->o:I

    .line 1500
    const-string/jumbo v0, "u_texture_size"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->q:I

    .line 1501
    return-void
.end method

.method public b(Ljava/nio/FloatBuffer;)V
    .locals 0

    .prologue
    .line 1458
    iput-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->j:Ljava/nio/FloatBuffer;

    .line 1459
    return-void
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 1467
    iput p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->l:I

    .line 1468
    return-void
.end method

.method public f_(I)V
    .locals 0

    .prologue
    .line 1463
    iput p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$j;->k:I

    .line 1464
    return-void
.end method
