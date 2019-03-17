.class public abstract Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLTextureSizeShader;
.super Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;
.source "GLTextureSizeShader.java"


# instance fields
.field protected mGLAttrScale:I

.field protected mGLAttrTextureHeight:I

.field protected mGLAttrTextureWidth:I

.field protected mScale:F

.field protected mTextureHeight:I

.field protected mTextureWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "fragmentShader"    # Ljava/lang/String;
    .param p2, "textureWidth"    # I
    .param p3, "textureHeight"    # I

    .prologue
    .line 22
    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLTextureSizeShader;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p1, "vertexShader"    # Ljava/lang/String;
    .param p2, "fragmentShader"    # Ljava/lang/String;
    .param p3, "textureWidth"    # I
    .param p4, "textureHeight"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLTextureSizeShader;->mScale:F

    .line 17
    iput p3, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLTextureSizeShader;->mTextureWidth:I

    .line 18
    iput p4, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLTextureSizeShader;->mTextureHeight:I

    .line 19
    return-void
.end method


# virtual methods
.method protected init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "vertexShader"    # Ljava/lang/String;
    .param p2, "fragmentShader"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLTextureSizeShader;->getProgram()I

    move-result v0

    const-string/jumbo v1, "textureWidth"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLTextureSizeShader;->mGLAttrTextureWidth:I

    .line 29
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLTextureSizeShader;->getProgram()I

    move-result v0

    const-string/jumbo v1, "textureHeight"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLTextureSizeShader;->mGLAttrTextureHeight:I

    .line 30
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLTextureSizeShader;->getProgram()I

    move-result v0

    const-string v1, "scale"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLTextureSizeShader;->mGLAttrScale:I

    .line 31
    return-void
.end method

.method protected onPreDraw()V
    .locals 2

    .prologue
    .line 39
    invoke-super {p0}, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->onPreDraw()V

    .line 40
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLTextureSizeShader;->mGLAttrTextureWidth:I

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLTextureSizeShader;->mTextureWidth:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 41
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLTextureSizeShader;->mGLAttrTextureHeight:I

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLTextureSizeShader;->mTextureHeight:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 42
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLTextureSizeShader;->mGLAttrScale:I

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLTextureSizeShader;->mScale:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 43
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 34
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLTextureSizeShader;->mScale:F

    .line 35
    return-void
.end method
