.class Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$e;
.super Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$o;
.source "LayerRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;

.field private b:I

.field private c:[F


# direct methods
.method constructor <init>(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;)V
    .locals 1

    .prologue
    .line 766
    iput-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$e;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;

    invoke-direct {p0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$o;-><init>(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;)V

    .line 768
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$e;->a(Ljava/lang/String;)V

    .line 769
    const-string v0, "applyColorConv"

    invoke-virtual {p0, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$e;->b(Ljava/lang/String;)V

    .line 770
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$e;->c(Ljava/lang/String;)V

    .line 771
    const-string/jumbo v0, "uniform highp mat4 u_colorconv;\nhighp vec4 applyColorConv(highp vec4 color){\n        color = color * u_colorconv;\n        color = clamp(color, 0.0, 1.0);\n        return color;\n}"

    invoke-virtual {p0, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$e;->d(Ljava/lang/String;)V

    .line 779
    return-void
.end method


# virtual methods
.method public a(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$n;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 763
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$e;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;

    iget v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$e;->b:I

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$e;->c:[F

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;IIZ[FI)V

    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->p()V

    .line 764
    return-void
.end method

.method public a([F)V
    .locals 0

    .prologue
    .line 752
    iput-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$e;->c:[F

    .line 753
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 757
    const-string/jumbo v0, "u_colorconv"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$e;->b:I

    .line 758
    return-void
.end method
