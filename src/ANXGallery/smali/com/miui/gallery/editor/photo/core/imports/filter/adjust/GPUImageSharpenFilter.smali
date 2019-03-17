.class public Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageSharpenFilter;
.super Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;
.source "GPUImageSharpenFilter.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/core/imports/filter/render/IFilterEmptyValidate;


# instance fields
.field private mImageHeightFactorLocation:I

.field private mImageWidthFactorLocation:I

.field private mSharpHeight:I

.field private mSharpWidth:I

.field private mSharpness:F

.field private mSharpnessLocation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageSharpenFilter;-><init>(F)V

    .line 92
    return-void
.end method

.method public constructor <init>(F)V
    .locals 2
    .param p1, "sharpness"    # F

    .prologue
    .line 95
    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n\nuniform float imageWidthFactor; \nuniform float imageHeightFactor; \nuniform float sharpness;\n\nvarying vec2 textureCoordinate;\nvarying vec2 leftTextureCoordinate;\nvarying vec2 rightTextureCoordinate; \nvarying vec2 topTextureCoordinate;\nvarying vec2 bottomTextureCoordinate;\n\nvarying float centerMultiplier;\nvarying float edgeMultiplier;\n\nvoid main()\n{\n    gl_Position = position;\n    \n    mediump vec2 widthStep = vec2(imageWidthFactor, 0.0);\n    mediump vec2 heightStep = vec2(0.0, imageHeightFactor);\n    \n    textureCoordinate = inputTextureCoordinate.xy;\n    leftTextureCoordinate = inputTextureCoordinate.xy - widthStep;\n    rightTextureCoordinate = inputTextureCoordinate.xy + widthStep;\n    topTextureCoordinate = inputTextureCoordinate.xy + heightStep;     \n    bottomTextureCoordinate = inputTextureCoordinate.xy - heightStep;\n    \n    centerMultiplier = 1.0 - 4.0 * sharpness;\n    edgeMultiplier = sharpness;\n}"

    const-string v1, "precision highp float;\n\n            varying highp vec2 textureCoordinate;\n            varying highp vec2 leftTextureCoordinate;\n            varying highp vec2 rightTextureCoordinate;\n            varying highp vec2 topTextureCoordinate;\n            varying highp vec2 bottomTextureCoordinate;\n\n            varying highp float centerMultiplier;\n            varying highp float edgeMultiplier;\n\n            uniform sampler2D inputImageTexture;\n\n            void main()\n            {\n                mediump vec3 textureColor = texture2D(inputImageTexture, textureCoordinate).rgb;\n                mediump vec3 leftTextureColor = texture2D(inputImageTexture, leftTextureCoordinate).rgb;\n                mediump vec3 rightTextureColor = texture2D(inputImageTexture, rightTextureCoordinate).rgb;\n                mediump vec3 topTextureColor = texture2D(inputImageTexture, topTextureCoordinate).rgb;\n                mediump vec3 bottomTextureColor = texture2D(inputImageTexture, bottomTextureCoordinate).rgb;\n\n                mediump vec3 sharpenColor = textureColor * centerMultiplier + (leftTextureColor * edgeMultiplier + rightTextureColor * edgeMultiplier + topTextureColor * edgeMultiplier + bottomTextureColor * edgeMultiplier);\n\n                float weight = 0.3;\n\n                mediump vec3 re = (textureColor - weight * sharpenColor) / (1.0 - weight);\n\n                gl_FragColor = vec4(re , 1.0);\n            }"

    invoke-direct {p0, v0, v1}, Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageSharpenFilter;->mSharpness:F

    .line 97
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "degree"    # I

    .prologue
    .line 100
    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n\nuniform float imageWidthFactor; \nuniform float imageHeightFactor; \nuniform float sharpness;\n\nvarying vec2 textureCoordinate;\nvarying vec2 leftTextureCoordinate;\nvarying vec2 rightTextureCoordinate; \nvarying vec2 topTextureCoordinate;\nvarying vec2 bottomTextureCoordinate;\n\nvarying float centerMultiplier;\nvarying float edgeMultiplier;\n\nvoid main()\n{\n    gl_Position = position;\n    \n    mediump vec2 widthStep = vec2(imageWidthFactor, 0.0);\n    mediump vec2 heightStep = vec2(0.0, imageHeightFactor);\n    \n    textureCoordinate = inputTextureCoordinate.xy;\n    leftTextureCoordinate = inputTextureCoordinate.xy - widthStep;\n    rightTextureCoordinate = inputTextureCoordinate.xy + widthStep;\n    topTextureCoordinate = inputTextureCoordinate.xy + heightStep;     \n    bottomTextureCoordinate = inputTextureCoordinate.xy - heightStep;\n    \n    centerMultiplier = 1.0 - 4.0 * sharpness;\n    edgeMultiplier = sharpness;\n}"

    const-string v1, "precision highp float;\n\n            varying highp vec2 textureCoordinate;\n            varying highp vec2 leftTextureCoordinate;\n            varying highp vec2 rightTextureCoordinate;\n            varying highp vec2 topTextureCoordinate;\n            varying highp vec2 bottomTextureCoordinate;\n\n            varying highp float centerMultiplier;\n            varying highp float edgeMultiplier;\n\n            uniform sampler2D inputImageTexture;\n\n            void main()\n            {\n                mediump vec3 textureColor = texture2D(inputImageTexture, textureCoordinate).rgb;\n                mediump vec3 leftTextureColor = texture2D(inputImageTexture, leftTextureCoordinate).rgb;\n                mediump vec3 rightTextureColor = texture2D(inputImageTexture, rightTextureCoordinate).rgb;\n                mediump vec3 topTextureColor = texture2D(inputImageTexture, topTextureCoordinate).rgb;\n                mediump vec3 bottomTextureColor = texture2D(inputImageTexture, bottomTextureCoordinate).rgb;\n\n                mediump vec3 sharpenColor = textureColor * centerMultiplier + (leftTextureColor * edgeMultiplier + rightTextureColor * edgeMultiplier + topTextureColor * edgeMultiplier + bottomTextureColor * edgeMultiplier);\n\n                float weight = 0.3;\n\n                mediump vec3 re = (textureColor - weight * sharpenColor) / (1.0 - weight);\n\n                gl_FragColor = vec4(re , 1.0);\n            }"

    invoke-direct {p0, v0, v1}, Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageSharpenFilter;->setDegree(I)V

    .line 102
    return-void
.end method


# virtual methods
.method public initFrameBuffers(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 139
    invoke-super {p0, p1, p2}, Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;->initFrameBuffers(II)V

    .line 140
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageSharpenFilter;->mSharpWidth:I

    .line 141
    iput p2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageSharpenFilter;->mSharpHeight:I

    .line 142
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageSharpenFilter;->mImageWidthFactorLocation:I

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageSharpenFilter;->mSharpWidth:I

    int-to-float v1, v1

    div-float v1, v2, v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageSharpenFilter;->setFloat(IF)V

    .line 143
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageSharpenFilter;->mImageHeightFactorLocation:I

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageSharpenFilter;->mSharpHeight:I

    int-to-float v1, v1

    div-float v1, v2, v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageSharpenFilter;->setFloat(IF)V

    .line 144
    return-void
.end method

.method public isDegreeAdjustSupported()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageSharpenFilter;->mDegree:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDisplaySizeChanged(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 125
    invoke-super {p0, p1, p2}, Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;->onDisplaySizeChanged(II)V

    .line 126
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageSharpenFilter;->mSharpWidth:I

    .line 127
    iput p2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageSharpenFilter;->mSharpHeight:I

    .line 128
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageSharpenFilter;->mImageWidthFactorLocation:I

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageSharpenFilter;->mSharpWidth:I

    int-to-float v1, v1

    div-float v1, v2, v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageSharpenFilter;->setFloat(IF)V

    .line 129
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageSharpenFilter;->mImageHeightFactorLocation:I

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageSharpenFilter;->mSharpHeight:I

    int-to-float v1, v1

    div-float v1, v2, v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageSharpenFilter;->setFloat(IF)V

    .line 130
    return-void
.end method

.method public onInit()V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0}, Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;->onInit()V

    .line 118
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageSharpenFilter;->getProgram()I

    move-result v0

    const-string/jumbo v1, "sharpness"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageSharpenFilter;->mSharpnessLocation:I

    .line 119
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageSharpenFilter;->getProgram()I

    move-result v0

    const-string v1, "imageWidthFactor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageSharpenFilter;->mImageWidthFactorLocation:I

    .line 120
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageSharpenFilter;->getProgram()I

    move-result v0

    const-string v1, "imageHeightFactor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageSharpenFilter;->mImageHeightFactorLocation:I

    .line 121
    return-void
.end method

.method public onInitialized()V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;->onInitialized()V

    .line 112
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageSharpenFilter;->mDegree:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const/4 v1, 0x0

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageSharpenFilter;->setSharpness(F)V

    .line 113
    return-void
.end method

.method public setSharpness(F)V
    .locals 2
    .param p1, "sharpness"    # F

    .prologue
    .line 147
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageSharpenFilter;->mSharpness:F

    .line 148
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageSharpenFilter;->mSharpnessLocation:I

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageSharpenFilter;->mSharpness:F

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/filter/adjust/GPUImageSharpenFilter;->setFloat(IF)V

    .line 149
    return-void
.end method
