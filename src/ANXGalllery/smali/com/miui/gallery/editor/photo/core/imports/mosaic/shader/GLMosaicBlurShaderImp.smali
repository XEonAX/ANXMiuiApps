.class public Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLMosaicBlurShaderImp;
.super Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLShaderGroup;
.source "GLMosaicBlurShaderImp.java"


# instance fields
.field private mRatio:F


# direct methods
.method public constructor <init>(IIII)V
    .locals 1
    .param p1, "textureWidth"    # I
    .param p2, "textureHeight"    # I
    .param p3, "viewWidth"    # I
    .param p4, "viewHeight"    # I

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLShaderGroup;-><init>(IIII)V

    .line 14
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLMosaicBlurShader;

    invoke-direct {v0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLMosaicBlurShader;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLMosaicBlurShaderImp;->addShader(Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;)V

    .line 15
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLMosaicBlurShader;

    invoke-direct {v0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLMosaicBlurShader;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLMosaicBlurShaderImp;->addShader(Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;)V

    .line 16
    const v0, 0x3fd9999a    # 1.7f

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLMosaicBlurShaderImp;->mRatio:F

    .line 17
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLMosaicBlurShaderImp;->notifyShaderAdded()V

    .line 18
    return-void
.end method


# virtual methods
.method protected onPreDraw()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 22
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLMosaicBlurShaderImp;->mShaders:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;

    .line 24
    .local v1, "shader":Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;
    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLMosaicBlurShaderImp;->mRatio:F

    iget v5, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLMosaicBlurShaderImp;->mScale:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLMosaicBlurShaderImp;->mTextureWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLMosaicBlurShaderImp;->mRatio:F

    iget v6, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLMosaicBlurShaderImp;->mScale:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLMosaicBlurShaderImp;->mTextureHeight:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 26
    .local v0, "offset":F
    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->getProgram()I

    move-result v4

    const-string/jumbo v5, "texelWidthOffset"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    .line 27
    .local v3, "texelWidthOffsetLocation":I
    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->getProgram()I

    move-result v4

    const-string/jumbo v5, "texelHeightOffset"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    .line 28
    .local v2, "texelHeightOffsetLocation":I
    invoke-virtual {v1, v3, v0}, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->setFloat(IF)V

    .line 29
    invoke-virtual {v1, v2, v7}, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->setFloat(IF)V

    .line 31
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLMosaicBlurShaderImp;->mShaders:Ljava/util/List;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "shader":Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;
    check-cast v1, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;

    .line 32
    .restart local v1    # "shader":Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;
    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->getProgram()I

    move-result v4

    const-string/jumbo v5, "texelWidthOffset"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    .line 33
    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->getProgram()I

    move-result v4

    const-string/jumbo v5, "texelHeightOffset"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    .line 34
    invoke-virtual {v1, v3, v7}, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->setFloat(IF)V

    .line 35
    invoke-virtual {v1, v2, v0}, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->setFloat(IF)V

    .line 36
    return-void
.end method
