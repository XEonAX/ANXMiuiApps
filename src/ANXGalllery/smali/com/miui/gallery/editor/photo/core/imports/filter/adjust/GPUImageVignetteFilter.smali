.class public Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageVignetteFilter;
.super Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;
.source "GPUImageVignetteFilter.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/core/imports/filter/render/IFilterEmptyValidate;


# instance fields
.field private mVignetteCenter:Landroid/graphics/PointF;

.field private mVignetteCenterLocation:I

.field private mVignetteColor:[F

.field private mVignetteColorLocation:I

.field private mVignetteEnd:F

.field private mVignetteEndLocation:I

.field private mVignetteStart:F

.field private mVignetteStartLocation:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 50
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageVignetteFilter;-><init>(Landroid/graphics/PointF;[F)V

    .line 51
    return-void

    .line 50
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "degree"    # I

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 60
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageVignetteFilter;-><init>(Landroid/graphics/PointF;[F)V

    .line 61
    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageVignetteFilter;->setDegree(I)V

    .line 62
    return-void

    .line 60
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/graphics/PointF;[F)V
    .locals 2
    .param p1, "vignetteCenter"    # Landroid/graphics/PointF;
    .param p2, "vignetteColor"    # [F

    .prologue
    .line 54
    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    const-string v1, " uniform sampler2D inputImageTexture;\n varying highp vec2 textureCoordinate;\n \n uniform lowp vec2 vignetteCenter;\n uniform lowp vec3 vignetteColor;\n uniform highp float vignetteStart;\n uniform highp float vignetteEnd;\n \n void main()\n {\n     /*\n     lowp vec3 rgb = texture2D(inputImageTexture, textureCoordinate).rgb;\n     lowp float d = distance(textureCoordinate, vec2(0.5,0.5));\n     rgb *= (1.0 - smoothstep(vignetteStart, vignetteEnd, d));\n     gl_FragColor = vec4(vec3(rgb),1.0);\n      */\n     \n     lowp vec3 rgb = texture2D(inputImageTexture, textureCoordinate).rgb;\n     lowp float d = distance(textureCoordinate, vec2(vignetteCenter.x, vignetteCenter.y));\n     lowp float percent = smoothstep(vignetteStart, vignetteEnd, d);\n     gl_FragColor = vec4(mix(rgb.x, vignetteColor.x, percent), mix(rgb.y, vignetteColor.y, percent), mix(rgb.z, vignetteColor.z, percent), 1.0);\n }"

    invoke-direct {p0, v0, v1}, Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageVignetteFilter;->mVignetteCenter:Landroid/graphics/PointF;

    .line 56
    iput-object p2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageVignetteFilter;->mVignetteColor:[F

    .line 57
    return-void
.end method


# virtual methods
.method public isDegreeAdjustSupported()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageVignetteFilter;->mDegree:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInit()V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0}, Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;->onInit()V

    .line 86
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageVignetteFilter;->getProgram()I

    move-result v0

    const-string/jumbo v1, "vignetteCenter"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageVignetteFilter;->mVignetteCenterLocation:I

    .line 87
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageVignetteFilter;->getProgram()I

    move-result v0

    const-string/jumbo v1, "vignetteColor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageVignetteFilter;->mVignetteColorLocation:I

    .line 88
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageVignetteFilter;->getProgram()I

    move-result v0

    const-string/jumbo v1, "vignetteStart"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageVignetteFilter;->mVignetteStartLocation:I

    .line 89
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageVignetteFilter;->getProgram()I

    move-result v0

    const-string/jumbo v1, "vignetteEnd"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageVignetteFilter;->mVignetteEndLocation:I

    .line 91
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageVignetteFilter;->mVignetteCenter:Landroid/graphics/PointF;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageVignetteFilter;->setVignetteCenter(Landroid/graphics/PointF;)V

    .line 92
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageVignetteFilter;->mVignetteColor:[F

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageVignetteFilter;->setVignetteColor([F)V

    .line 93
    return-void
.end method

.method public onInitialized()V
    .locals 3

    .prologue
    const/high16 v2, 0x42c80000    # 100.0f

    .line 77
    invoke-super {p0}, Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;->onInitialized()V

    .line 78
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageVignetteFilter;->mDegree:I

    int-to-float v0, v0

    const v1, -0x40fd70a4    # -0.51f

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    const v1, 0x3f35c28f    # 0.71f

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageVignetteFilter;->setVignetteStart(F)V

    .line 79
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageVignetteFilter;->mDegree:I

    int-to-float v0, v0

    const v1, -0x41b33338    # -0.19999993f

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    const v1, 0x3fa66666    # 1.3f

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageVignetteFilter;->setVignetteEnd(F)V

    .line 80
    return-void
.end method

.method public setVignetteCenter(Landroid/graphics/PointF;)V
    .locals 2
    .param p1, "vignetteCenter"    # Landroid/graphics/PointF;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageVignetteFilter;->mVignetteCenter:Landroid/graphics/PointF;

    .line 97
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageVignetteFilter;->mVignetteCenterLocation:I

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageVignetteFilter;->mVignetteCenter:Landroid/graphics/PointF;

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageVignetteFilter;->setPoint(ILandroid/graphics/PointF;)V

    .line 98
    return-void
.end method

.method public setVignetteColor([F)V
    .locals 2
    .param p1, "vignetteColor"    # [F

    .prologue
    .line 101
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageVignetteFilter;->mVignetteColor:[F

    .line 102
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageVignetteFilter;->mVignetteColorLocation:I

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageVignetteFilter;->mVignetteColor:[F

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageVignetteFilter;->setFloatVec3(I[F)V

    .line 103
    return-void
.end method

.method public setVignetteEnd(F)V
    .locals 2
    .param p1, "vignetteEnd"    # F

    .prologue
    .line 111
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageVignetteFilter;->mVignetteEnd:F

    .line 112
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageVignetteFilter;->mVignetteEndLocation:I

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageVignetteFilter;->mVignetteEnd:F

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageVignetteFilter;->setFloat(IF)V

    .line 113
    return-void
.end method

.method public setVignetteStart(F)V
    .locals 2
    .param p1, "vignetteStart"    # F

    .prologue
    .line 106
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageVignetteFilter;->mVignetteStart:F

    .line 107
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageVignetteFilter;->mVignetteStartLocation:I

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageVignetteFilter;->mVignetteStart:F

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageVignetteFilter;->setFloat(IF)V

    .line 108
    return-void
.end method
