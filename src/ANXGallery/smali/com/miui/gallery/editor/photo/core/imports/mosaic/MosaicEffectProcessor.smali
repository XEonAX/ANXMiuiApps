.class Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicEffectProcessor;
.super Ljava/lang/Object;
.source "MosaicEffectProcessor.java"


# instance fields
.field private final mOriginTextureHeight:I

.field private final mOriginTextureWidth:I

.field private mTextureCood:[F

.field private final mViewHeight:I

.field private final mViewWidth:I


# direct methods
.method constructor <init>(IIII)V
    .locals 1
    .param p1, "originTextureWidth"    # I
    .param p2, "originTextureHeight"    # I
    .param p3, "viewWidth"    # I
    .param p4, "viewHeight"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicEffectProcessor;->mTextureCood:[F

    .line 25
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicEffectProcessor;->mOriginTextureWidth:I

    .line 26
    iput p2, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicEffectProcessor;->mOriginTextureHeight:I

    .line 27
    iput p3, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicEffectProcessor;->mViewWidth:I

    .line 28
    iput p4, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicEffectProcessor;->mViewHeight:I

    .line 29
    return-void
.end method

.method private drawEffect(Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEffectEntity;Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;IF)V
    .locals 8
    .param p1, "effectFBO"    # Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;
    .param p2, "mosaicGLEntity"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEffectEntity;
    .param p3, "standardShader"    # Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;
    .param p4, "currentTexture"    # I
    .param p5, "scale"    # F

    .prologue
    const/16 v7, 0x4100

    .line 63
    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicEffectProcessor;->mOriginTextureWidth:I

    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicEffectProcessor;->mOriginTextureHeight:I

    iget v5, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicEffectProcessor;->mViewWidth:I

    iget v6, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicEffectProcessor;->mViewHeight:I

    invoke-virtual {p2, v3, v4, v5, v6}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEffectEntity;->generateSpecificShader(IIII)Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLTextureSizeShader;

    move-result-object v2

    .line 64
    .local v2, "glSpecificShader":Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLTextureSizeShader;
    if-eqz v2, :cond_0

    .line 65
    invoke-virtual {v2, p5}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLTextureSizeShader;->setScale(F)V

    .line 66
    instance-of v3, v2, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLShaderGroup;

    if-eqz v3, :cond_1

    move-object v1, v2

    .line 67
    check-cast v1, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLShaderGroup;

    .line 68
    .local v1, "glShaderGroup":Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLShaderGroup;
    invoke-virtual {v1, p4}, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLShaderGroup;->getEffectedTexture(I)I

    move-result v0

    .line 69
    .local v0, "effectedTexture":I
    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->bind()V

    .line 70
    invoke-static {v7}, Landroid/opengl/GLES20;->glClear(I)V

    .line 71
    invoke-virtual {p3, v0}, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->draw(I)V

    .line 72
    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->unBind()V

    .line 79
    .end local v0    # "effectedTexture":I
    .end local v1    # "glShaderGroup":Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLShaderGroup;
    :goto_0
    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLTextureSizeShader;->destroy()V

    .line 81
    :cond_0
    return-void

    .line 74
    :cond_1
    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->bind()V

    .line 75
    invoke-static {v7}, Landroid/opengl/GLES20;->glClear(I)V

    .line 76
    invoke-virtual {v2, p4}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLTextureSizeShader;->drawFBO(I)V

    .line 77
    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->unBind()V

    goto :goto_0
.end method

.method private drawOrigin(Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;I)V
    .locals 0
    .param p1, "standardShader"    # Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;
    .param p2, "originTexture"    # I

    .prologue
    .line 59
    invoke-virtual {p1, p2}, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->draw(I)V

    .line 60
    return-void
.end method

.method private drawResource(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLResourceEntity;Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;F)V
    .locals 11
    .param p1, "mosaicGLEntity"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLResourceEntity;
    .param p2, "standardShader"    # Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;
    .param p3, "scale"    # F

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 84
    iget-object v5, p1, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLResourceEntity;->mTileMode:Ljava/lang/String;

    .line 85
    .local v5, "tileMode":Ljava/lang/String;
    iget-object v3, p1, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLResourceEntity;->mResourcePath:Ljava/lang/String;

    .line 87
    .local v3, "resourcePath":Ljava/lang/String;
    const-string v7, "EDGE"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 88
    const v1, 0x812f

    .line 94
    .local v1, "glTileMode":I
    :goto_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 95
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 96
    iget v7, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicEffectProcessor;->mOriginTextureWidth:I

    int-to-float v7, v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float v6, v7, v8

    .line 97
    .local v6, "widthSize":F
    iget v7, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicEffectProcessor;->mOriginTextureHeight:I

    int-to-float v7, v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v2, v7, v8

    .line 98
    .local v2, "heightSize":F
    div-float/2addr v6, p3

    .line 99
    div-float/2addr v2, p3

    .line 100
    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicEffectProcessor;->mTextureCood:[F

    invoke-static {v7, v6, v2}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicEffectProcessor;->getTextureCood([FFF)V

    .line 101
    invoke-static {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicEffectProcessor;->loadTexture(Landroid/graphics/Bitmap;I)I

    move-result v4

    .line 102
    .local v4, "resourceTextureId":I
    sget-object v7, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->CUBE:[F

    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicEffectProcessor;->mTextureCood:[F

    invoke-virtual {p2, v4, v7, v8}, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->draw(I[F[F)V

    .line 103
    new-array v7, v10, [I

    aput v4, v7, v9

    invoke-static {v10, v7, v9}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 105
    .end local v2    # "heightSize":F
    .end local v4    # "resourceTextureId":I
    .end local v6    # "widthSize":F
    :cond_0
    return-void

    .line 89
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "glTileMode":I
    :cond_1
    const-string v7, "REPEAT"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 90
    const/16 v1, 0x2901

    .restart local v1    # "glTileMode":I
    goto :goto_0

    .line 92
    .end local v1    # "glTileMode":I
    :cond_2
    const/16 v1, 0x2901

    .restart local v1    # "glTileMode":I
    goto :goto_0
.end method

.method private static getTextureCood([FFF)V
    .locals 2
    .param p0, "dst"    # [F
    .param p1, "widthSize"    # F
    .param p2, "heightSize"    # F

    .prologue
    const/4 v1, 0x0

    .line 108
    const/4 v0, 0x0

    aput v1, p0, v0

    .line 109
    const/4 v0, 0x1

    aput p2, p0, v0

    .line 110
    const/4 v0, 0x2

    aput p1, p0, v0

    .line 111
    const/4 v0, 0x3

    aput p2, p0, v0

    .line 112
    const/4 v0, 0x4

    aput v1, p0, v0

    .line 113
    const/4 v0, 0x5

    aput v1, p0, v0

    .line 114
    const/4 v0, 0x6

    aput p1, p0, v0

    .line 115
    const/4 v0, 0x7

    aput v1, p0, v0

    .line 116
    return-void
.end method

.method private static loadTexture(Landroid/graphics/Bitmap;I)I
    .locals 5
    .param p0, "img"    # Landroid/graphics/Bitmap;
    .param p1, "tileMode"    # I

    .prologue
    const/4 v1, 0x1

    const v2, 0x46180400    # 9729.0f

    const/4 v4, 0x0

    const/16 v3, 0xde1

    .line 119
    new-array v0, v1, [I

    .line 120
    .local v0, "textures":[I
    invoke-static {v1, v0, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 121
    aget v1, v0, v4

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 122
    const/16 v1, 0x2800

    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 124
    const/16 v1, 0x2801

    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 126
    const/16 v1, 0x2802

    int-to-float v2, p1

    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 128
    const/16 v1, 0x2803

    int-to-float v2, p1

    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 130
    invoke-static {v3, v4, p0, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 131
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 132
    aget v1, v0, v4

    return v1
.end method


# virtual methods
.method public draw(Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;IILcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;)V
    .locals 7
    .param p1, "effectFBO"    # Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;
    .param p2, "mosaicGLEntity"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;
    .param p3, "currentTexture"    # I
    .param p4, "originTexture"    # I
    .param p5, "standardShader"    # Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;

    .prologue
    .line 32
    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicEffectProcessor;->draw(Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;IILcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;F)V

    .line 33
    return-void
.end method

.method public draw(Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;IILcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;F)V
    .locals 6
    .param p1, "effectFBO"    # Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;
    .param p2, "mosaicGLEntity"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;
    .param p3, "currentTexture"    # I
    .param p4, "originTexture"    # I
    .param p5, "standardShader"    # Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;
    .param p6, "scale"    # F

    .prologue
    const/16 v2, 0x4100

    .line 36
    if-nez p2, :cond_0

    .line 56
    .end local p2    # "mosaicGLEntity":Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;
    :goto_0
    return-void

    .line 39
    .restart local p2    # "mosaicGLEntity":Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;
    :cond_0
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicEffectProcessor$1;->$SwitchMap$com$miui$gallery$editor$photo$core$imports$mosaic$MosaicGLEntity$TYPE:[I

    iget-object v1, p2, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;->type:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity$TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 41
    :pswitch_0
    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->bind()V

    .line 42
    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 43
    invoke-direct {p0, p5, p4}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicEffectProcessor;->drawOrigin(Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;I)V

    .line 44
    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->unBind()V

    goto :goto_0

    .line 47
    :pswitch_1
    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->bind()V

    .line 48
    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 49
    check-cast p2, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLResourceEntity;

    .end local p2    # "mosaicGLEntity":Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;
    invoke-direct {p0, p2, p5, p6}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicEffectProcessor;->drawResource(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLResourceEntity;Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;F)V

    .line 50
    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->unBind()V

    goto :goto_0

    .restart local p2    # "mosaicGLEntity":Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;
    :pswitch_2
    move-object v2, p2

    .line 53
    check-cast v2, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEffectEntity;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p5

    move v4, p3

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicEffectProcessor;->drawEffect(Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEffectEntity;Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;IF)V

    goto :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
