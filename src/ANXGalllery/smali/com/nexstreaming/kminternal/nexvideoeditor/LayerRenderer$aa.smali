.class Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;
.super Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$o;
.source "LayerRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "aa"
.end annotation


# instance fields
.field a:F

.field final synthetic b:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;

.field private c:I


# direct methods
.method constructor <init>(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;)V
    .locals 1

    .prologue
    .line 844
    iput-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;->b:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;

    invoke-direct {p0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$o;-><init>(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;)V

    .line 846
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;->a(Ljava/lang/String;)V

    .line 847
    const-string v0, "applyUserAlpha"

    invoke-virtual {p0, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;->b(Ljava/lang/String;)V

    .line 848
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;->c(Ljava/lang/String;)V

    .line 849
    const-string/jumbo v0, "uniform highp float u_alpha;\nhighp vec4 applyUserAlpha(highp vec4 color){\n        return color * u_alpha;\n}"

    invoke-virtual {p0, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;->d(Ljava/lang/String;)V

    .line 854
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;->a(F)V

    .line 855
    return-void
.end method


# virtual methods
.method a(F)V
    .locals 0

    .prologue
    .line 859
    iput p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;->a:F

    .line 860
    return-void
.end method

.method public a(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$n;)V
    .locals 2

    .prologue
    .line 841
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;->c:I

    iget v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;->a:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 842
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 835
    const-string/jumbo v0, "u_alpha"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;->c:I

    .line 836
    return-void
.end method
