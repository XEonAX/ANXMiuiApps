.class public Lcom/miui/gallery/editor/photo/core/imports/filter/render/BoundLinesFilter;
.super Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;
.source "BoundLinesFilter.java"


# instance fields
.field private mBoundLocation:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    const-string v1, "precision highp float;\n\nuniform vec2 bound;\nuniform sampler2D inputImageTexture;\nvarying vec2 textureCoordinate;\n\nvoid main() {\n    if( (textureCoordinate.x > 0.0 + bound.x * 0.2 && textureCoordinate.x <= bound.x * 1.2 ) ||     (textureCoordinate.x < 1.0 - bound.x * 0.2 && textureCoordinate.x >= 1.0 - bound.x * 1.2) ||\n    (textureCoordinate.y > 0.0 + bound.y * 0.2 && textureCoordinate.y <= bound.y * 1.2 ) ||      (textureCoordinate.y < 1.0 - bound.y * 0.2 && textureCoordinate.y >= 1.0 - bound.y * 1.2 )){\n        gl_FragColor.rgb = vec3(0,0,0);\n        gl_FragColor.a = 0.20;\n    }\n    else{\n        gl_FragColor.rgb = vec3(0.0,0.0,0.0);\n        gl_FragColor.a = 0.0;\n    }\n }"

    invoke-direct {p0, v0, v1}, Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected onInit()V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;->onInit()V

    .line 42
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BoundLinesFilter;->getProgram()I

    move-result v0

    const-string v1, "bound"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BoundLinesFilter;->mBoundLocation:I

    .line 43
    return-void
.end method

.method public setImageSize(II)V
    .locals 9
    .param p1, "imageWidth"    # I
    .param p2, "imageHeight"    # I

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 46
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BoundLinesFilter;->mOutputWidth:I

    int-to-float v4, v4

    int-to-float v5, p1

    div-float v2, v4, v5

    .line 51
    .local v2, "ratioWidth":F
    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BoundLinesFilter;->mOutputHeight:I

    int-to-float v4, v4

    int-to-float v5, p2

    div-float v1, v4, v5

    .line 54
    .local v1, "ratioHeight":F
    cmpl-float v4, v2, v1

    if-lez v4, :cond_2

    .line 55
    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BoundLinesFilter;->mOutputHeight:I

    int-to-float v0, v4

    .line 56
    .local v0, "height":F
    int-to-float v4, p1

    mul-float/2addr v4, v0

    int-to-float v5, p2

    div-float v3, v4, v5

    .line 61
    .local v3, "width":F
    :goto_1
    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BoundLinesFilter;->mBoundLocation:I

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    div-float v7, v8, v3

    aput v7, v5, v6

    const/4 v6, 0x1

    div-float v7, v8, v0

    aput v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BoundLinesFilter;->setFloatVec2(I[F)V

    goto :goto_0

    .line 58
    .end local v0    # "height":F
    .end local v3    # "width":F
    :cond_2
    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BoundLinesFilter;->mOutputWidth:I

    int-to-float v3, v4

    .line 59
    .restart local v3    # "width":F
    int-to-float v4, p2

    mul-float/2addr v4, v3

    int-to-float v5, p1

    div-float v0, v4, v5

    .restart local v0    # "height":F
    goto :goto_1
.end method
