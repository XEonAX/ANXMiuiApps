.class Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;
.super Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$o;
.source "LayerRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;

.field private b:I

.field private c:I

.field private d:I

.field private f:I

.field private g:[F

.field private h:[F

.field private i:[F


# direct methods
.method constructor <init>(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;)V
    .locals 4

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    const v3, 0x3e99999a    # 0.3f

    .line 891
    iput-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;

    invoke-direct {p0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$o;-><init>(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;)V

    .line 892
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;->g:[F

    .line 893
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;->h:[F

    .line 894
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;->i:[F

    .line 896
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;->a(Ljava/lang/String;)V

    .line 897
    const-string v0, "applyChromakey"

    invoke-virtual {p0, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;->b(Ljava/lang/String;)V

    .line 898
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;->c(Ljava/lang/String;)V

    .line 899
    const-string/jumbo v0, "uniform highp vec3 u_keyvalue;\nuniform highp vec3 u_strength;\nuniform highp vec4 u_division;\nuniform int CKMaskOnOff;\nhighp float proportionalstep(highp float edge0, highp float edge1, highp float x){\nx = clamp((x - edge0) / (edge1 - edge0), 0.0, 1.0);\nreturn x;\n}\nhighp vec4 applyChromakey(highp vec4 color){\nconst highp mat4 rgbyuv = mat4(\n\t\t\t0.300, 0.589, 0.111, -0.003,\n\t\t\t-0.169, -0.332, 0.502, 0.502,\n\t\t\t0.499, -0.420, -0.079, 0.502,\n\t\t\t0.000, 0.000, 0.000, 1.000);\nconst highp mat4 yuvrgb = mat4(\n\t\t\t1.000, 0.000, 1.402, -0.701,\n\t\t\t1.000, -0.334, -0.714, 0.529,\n\t\t\t1.000, 1.772, 0.000, -0.886,\n\t\t\t0.000, 0.000, 0.000, 1.000);\nhighp vec4 yuv = color * rgbyuv;\nhighp vec4 yuv_key = vec4(u_keyvalue, 1.0) * rgbyuv;\nhighp float radius = length(vec2(yuv.gb) - vec2(yuv_key.gb));\nhighp float alpha = proportionalstep(u_division.x, u_division.y, radius) * u_strength.x\n+ proportionalstep(u_division.y, u_division.z, radius) * u_strength.y\n+ proportionalstep(u_division.z, u_division.w, radius) * u_strength.z;\nif(CKMaskOnOff == 1){\ncolor = color * 0.000001 + vec4(alpha, alpha, alpha, 1.0);}\nelse{\ncolor = color * alpha;}\n\t\treturn color;\n\t}"

    invoke-virtual {p0, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;->d(Ljava/lang/String;)V

    .line 931
    const/16 v0, 0xff

    invoke-virtual {p0, v1, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;->a(III)V

    .line 932
    const v0, 0x3ecccccd    # 0.4f

    const v1, 0x3ee66666    # 0.45f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;->a(FFFF)V

    .line 933
    const v0, 0x3d4ccccd    # 0.05f

    const v1, 0x3f266666    # 0.65f

    invoke-virtual {p0, v0, v3, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;->a(FFF)V

    .line 934
    return-void
.end method


# virtual methods
.method public a(FFF)V
    .locals 2

    .prologue
    .line 960
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;->i:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 961
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;->i:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 962
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;->i:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 963
    return-void
.end method

.method public a(FFFF)V
    .locals 2

    .prologue
    .line 952
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;->h:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 953
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;->h:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 954
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;->h:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 955
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;->h:[F

    const/4 v1, 0x3

    aput p4, v0, v1

    .line 956
    return-void
.end method

.method public a(III)V
    .locals 4

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    .line 938
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;->g:[F

    const/4 v1, 0x0

    int-to-float v2, p1

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 939
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;->g:[F

    const/4 v1, 0x1

    int-to-float v2, p2

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 940
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;->g:[F

    const/4 v1, 0x2

    int-to-float v2, p3

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 941
    return-void
.end method

.method public a(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$n;)V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 884
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->e()I

    move-result v0

    .line 885
    iget v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;->b:I

    iget-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;->g:[F

    aget v2, v2, v7

    iget-object v3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;->g:[F

    aget v3, v3, v8

    iget-object v4, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;->g:[F

    aget v4, v4, v9

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    .line 886
    iget v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;->c:I

    iget-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;->h:[F

    aget v2, v2, v7

    iget-object v3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;->h:[F

    aget v3, v3, v8

    iget-object v4, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;->h:[F

    aget v4, v4, v9

    iget-object v5, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;->h:[F

    const/4 v6, 0x3

    aget v5, v5, v6

    invoke-static {v1, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 887
    iget v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;->d:I

    iget-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;->i:[F

    aget v2, v2, v7

    iget-object v3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;->i:[F

    aget v3, v3, v8

    iget-object v4, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;->i:[F

    aget v4, v4, v9

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    .line 888
    iget v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;->f:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 889
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 876
    const-string/jumbo v0, "u_keyvalue"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;->b:I

    .line 877
    const-string/jumbo v0, "u_division"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;->c:I

    .line 878
    const-string/jumbo v0, "u_strength"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;->d:I

    .line 879
    const-string v0, "CKMaskOnOff"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;->f:I

    .line 880
    return-void
.end method
