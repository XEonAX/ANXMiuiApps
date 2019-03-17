.class Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;
.super Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$o;
.source "LayerRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;

.field private b:I

.field private c:I

.field private d:I

.field private f:I

.field private g:I

.field private h:Ljava/nio/FloatBuffer;

.field private i:Ljava/nio/FloatBuffer;

.field private j:I

.field private k:[F

.field private l:F


# direct methods
.method constructor <init>(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;)V
    .locals 1

    .prologue
    .line 716
    iput-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;

    invoke-direct {p0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$o;-><init>(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;)V

    .line 718
    const-string v0, "doBaseVertexWork"

    invoke-virtual {p0, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;->a(Ljava/lang/String;)V

    .line 719
    const-string v0, "applyBase"

    invoke-virtual {p0, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;->b(Ljava/lang/String;)V

    .line 720
    const-string v0, "//Base Vertex Block\nattribute vec4 a_position;\nattribute vec2 a_texCoord;uniform mat4 u_mvp_matrix;\nvarying highp vec2 v_texCoord;\nvoid doBaseVertexWork(){\n        v_texCoord = a_texCoord;\n        gl_Position = a_position * u_mvp_matrix;\n}"

    invoke-virtual {p0, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;->c(Ljava/lang/String;)V

    .line 731
    const-string/jumbo v0, "varying highp vec2 v_texCoord;\nuniform sampler2D u_textureSampler;\nuniform highp float u_alpha_test;\nhighp vec4 applyBase(){\n        highp vec4 color;\n        color.rgba = (texture2D(u_textureSampler, v_texCoord)).bgra;\n        if(color.a < u_alpha_test) return vec4(0,0,0,0);\n        return color;\n}"

    invoke-virtual {p0, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;->d(Ljava/lang/String;)V

    .line 742
    return-void
.end method


# virtual methods
.method public a(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$n;)V
    .locals 9

    .prologue
    const/16 v8, 0x1406

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 702
    invoke-virtual {p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$n;->a()I

    move-result v0

    .line 703
    const v1, 0x84c0

    add-int/2addr v1, v0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->p()V

    .line 704
    const/16 v1, 0xde1

    iget v3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;->j:I

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->p()V

    .line 705
    iget v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;->d:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->p()V

    .line 706
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;->g:I

    iget v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;->l:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 707
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->p()V

    .line 708
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;->c:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->p()V

    .line 710
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;

    iget v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;->f:I

    iget-object v4, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;->k:[F

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;IIZ[FI)V

    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->p()V

    .line 712
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;->b:I

    const/4 v3, 0x4

    iget-object v7, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;->h:Ljava/nio/FloatBuffer;

    move v4, v8

    move v6, v5

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->p()V

    .line 713
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;->c:I

    const/4 v3, 0x2

    iget-object v7, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;->i:Ljava/nio/FloatBuffer;

    move v4, v8

    move v6, v5

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->p()V

    .line 714
    return-void
.end method

.method public a(Ljava/nio/FloatBuffer;)V
    .locals 0

    .prologue
    .line 668
    iput-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;->h:Ljava/nio/FloatBuffer;

    .line 669
    return-void
.end method

.method public a([F)V
    .locals 0

    .prologue
    .line 688
    iput-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;->k:[F

    .line 689
    return-void
.end method

.method public a_(I)V
    .locals 0

    .prologue
    .line 678
    iput p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;->j:I

    .line 679
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 693
    const-string v0, "a_position"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;->b:I

    .line 694
    const-string v0, "a_texCoord"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;->c:I

    .line 695
    const-string/jumbo v0, "u_mvp_matrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;->f:I

    .line 696
    const-string/jumbo v0, "u_textureSampler"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;->d:I

    .line 697
    const-string/jumbo v0, "u_alpha_test"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;->g:I

    .line 698
    return-void
.end method

.method public b(Ljava/nio/FloatBuffer;)V
    .locals 0

    .prologue
    .line 673
    iput-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;->i:Ljava/nio/FloatBuffer;

    .line 674
    return-void
.end method
