.class public Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;
.super Ljava/lang/Object;
.source "GLFBOManager.java"


# instance fields
.field private mFramebufferId:I

.field private mHeight:I

.field private mTextureId:I

.field private mViewHeight:I

.field private mViewWidth:I

.field private mWidth:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewWidth"    # I
    .param p4, "viewHeight"    # I

    .prologue
    .line 18
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;-><init>(IIIIZ)V

    .line 19
    return-void
.end method

.method public constructor <init>(IIIIZ)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewWidth"    # I
    .param p4, "viewHeight"    # I
    .param p5, "alpha"    # Z

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->mWidth:I

    .line 23
    iput p2, p0, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->mHeight:I

    .line 24
    iput p3, p0, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->mViewWidth:I

    .line 25
    iput p4, p0, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->mViewHeight:I

    .line 26
    invoke-direct {p0, p5}, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->init(Z)V

    .line 27
    return-void
.end method

.method private init(Z)V
    .locals 11
    .param p1, "alpha"    # Z

    .prologue
    const v5, 0x47012f00    # 33071.0f

    const v4, 0x46180400    # 9729.0f

    const/4 v3, 0x1

    const/16 v0, 0xde1

    const/4 v1, 0x0

    .line 31
    new-array v9, v3, [I

    .line 32
    .local v9, "frameBuffers":[I
    invoke-static {v3, v9, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 33
    aget v2, v9, v1

    iput v2, p0, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->mFramebufferId:I

    .line 36
    new-array v10, v3, [I

    .line 37
    .local v10, "textures":[I
    invoke-static {v3, v10, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 38
    aget v2, v10, v1

    iput v2, p0, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->mTextureId:I

    .line 39
    iget v2, p0, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->mTextureId:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 40
    const/16 v2, 0x2801

    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 41
    const/16 v2, 0x2800

    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 42
    const/16 v2, 0x2802

    invoke-static {v0, v2, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 43
    const/16 v2, 0x2803

    invoke-static {v0, v2, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 44
    if-eqz p1, :cond_0

    .line 45
    const/16 v2, 0x1908

    iget v3, p0, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->mWidth:I

    iget v4, p0, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->mHeight:I

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v5, v1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    const/16 v2, 0x1907

    iget v3, p0, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->mWidth:I

    iget v4, p0, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->mHeight:I

    const/16 v6, 0x1907

    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v5, v1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    goto :goto_0
.end method


# virtual methods
.method public bind()V
    .locals 5

    .prologue
    const/16 v4, 0xde1

    const v3, 0x8d40

    const/4 v2, 0x0

    .line 52
    iget v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->mFramebufferId:I

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 53
    iget v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->mTextureId:I

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 54
    const v0, 0x8ce0

    iget v1, p0, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->mTextureId:I

    invoke-static {v3, v0, v4, v1, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 55
    invoke-static {v3}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v0

    const v1, 0x8cd5

    if-eq v0, v1, :cond_0

    .line 56
    const-string v0, "FBOManager"

    const-string v1, "Framebuffer error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_0
    iget v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->mWidth:I

    iget v1, p0, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->mHeight:I

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 59
    return-void
.end method

.method public clear()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    new-array v0, v3, [I

    iget v1, p0, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->mFramebufferId:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 73
    new-array v0, v3, [I

    iget v1, p0, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->mTextureId:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 74
    return-void
.end method

.method public getTextureId()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->mTextureId:I

    return v0
.end method

.method public unBind()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    const v0, 0x8d40

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 63
    const/16 v0, 0xde1

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 64
    iget v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->mViewWidth:I

    iget v1, p0, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->mViewHeight:I

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 65
    return-void
.end method
