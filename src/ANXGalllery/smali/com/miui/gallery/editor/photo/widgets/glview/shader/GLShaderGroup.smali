.class public Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLShaderGroup;
.super Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLTextureSizeShader;
.source "GLShaderGroup.java"


# instance fields
.field private mGLFBOManagers:[Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

.field protected mShaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;",
            ">;"
        }
    .end annotation
.end field

.field protected mTextureHeight:I

.field protected mTextureWidth:I

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 1
    .param p1, "textureWidth"    # I
    .param p2, "textureHeight"    # I
    .param p3, "viewWidth"    # I
    .param p4, "viewHeight"    # I

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLTextureSizeShader;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLShaderGroup;->mShaders:Ljava/util/List;

    .line 23
    iput p1, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLShaderGroup;->mTextureWidth:I

    .line 24
    iput p2, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLShaderGroup;->mTextureHeight:I

    .line 25
    iput p3, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLShaderGroup;->mViewWidth:I

    .line 26
    iput p4, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLShaderGroup;->mViewHeight:I

    .line 27
    return-void
.end method


# virtual methods
.method protected addShader(Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;)V
    .locals 1
    .param p1, "glTextureShader"    # Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLShaderGroup;->mShaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method public destroy()V
    .locals 5

    .prologue
    .line 71
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLShaderGroup;->mShaders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;

    .line 72
    .local v0, "glTextureShader":Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->destroy()V

    goto :goto_0

    .line 74
    .end local v0    # "glTextureShader":Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLShaderGroup;->mGLFBOManagers:[Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

    if-eqz v2, :cond_2

    .line 75
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLShaderGroup;->mGLFBOManagers:[Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v1, v3, v2

    .line 76
    .local v1, "glfboManager":Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;
    if-eqz v1, :cond_1

    .line 77
    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->clear()V

    .line 75
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 81
    .end local v1    # "glfboManager":Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;
    :cond_2
    return-void
.end method

.method public draw(I[F[F)V
    .locals 0
    .param p1, "textureId"    # I
    .param p2, "glPosition"    # [F
    .param p3, "textureCood"    # [F

    .prologue
    .line 56
    return-void
.end method

.method public getEffectedTexture(I)I
    .locals 5
    .param p1, "textureId"    # I

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLShaderGroup;->onPreDraw()V

    .line 39
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLShaderGroup;->mShaders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 40
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLShaderGroup;->mShaders:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;

    .line 41
    .local v0, "glTextureShader":Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLShaderGroup;->mGLFBOManagers:[Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->bind()V

    .line 42
    const/16 v3, 0x4100

    invoke-static {v3}, Landroid/opengl/GLES20;->glClear(I)V

    .line 43
    add-int/lit8 v3, v1, -0x1

    if-ltz v3, :cond_0

    .line 44
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLShaderGroup;->mGLFBOManagers:[Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

    add-int/lit8 v4, v1, -0x1

    aget-object v2, v3, v4

    .line 45
    .local v2, "pre":Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;
    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->getTextureId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->drawFBO(I)V

    .line 49
    .end local v2    # "pre":Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;
    :goto_1
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLShaderGroup;->mGLFBOManagers:[Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->unBind()V

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->draw(I)V

    goto :goto_1

    .line 51
    .end local v0    # "glTextureShader":Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLShaderGroup;->mGLFBOManagers:[Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLShaderGroup;->mGLFBOManagers:[Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->getTextureId()I

    move-result v3

    return v3
.end method

.method protected init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "vertexShader"    # Ljava/lang/String;
    .param p2, "fragmentShader"    # Ljava/lang/String;

    .prologue
    .line 31
    return-void
.end method

.method protected notifyShaderAdded()V
    .locals 7

    .prologue
    .line 59
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLShaderGroup;->mShaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLShaderGroup;->mGLFBOManagers:[Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

    .line 60
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLShaderGroup;->mGLFBOManagers:[Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLShaderGroup;->mGLFBOManagers:[Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

    new-instance v2, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

    iget v3, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLShaderGroup;->mTextureWidth:I

    iget v4, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLShaderGroup;->mTextureHeight:I

    iget v5, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLShaderGroup;->mViewWidth:I

    iget v6, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLShaderGroup;->mViewHeight:I

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;-><init>(IIII)V

    aput-object v2, v1, v0

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_0
    return-void
.end method

.method protected onPreDraw()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method
