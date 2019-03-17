.class public abstract Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView;
.super Landroid/opengl/GLSurfaceView;
.source "MagicBaseView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView$ScaleType;
    }
.end annotation


# instance fields
.field protected gLCubeBuffer:Ljava/nio/FloatBuffer;

.field protected gLTextureBuffer:Ljava/nio/FloatBuffer;

.field protected imageHeight:I

.field protected imageWidth:I

.field protected scaleType:Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView$ScaleType;

.field protected surfaceHeight:I

.field protected surfaceWidth:I

.field protected textureId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView;->textureId:I

    .line 43
    sget-object v0, Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView$ScaleType;->FIT_XY:Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView$ScaleType;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView;->scaleType:Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView$ScaleType;

    .line 51
    sget-object v0, Lcom/miui/filtersdk/utils/TextureRotationUtil;->CUBE:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 52
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView;->gLCubeBuffer:Ljava/nio/FloatBuffer;

    .line 54
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView;->gLCubeBuffer:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/miui/filtersdk/utils/TextureRotationUtil;->CUBE:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 56
    sget-object v0, Lcom/miui/filtersdk/utils/TextureRotationUtil;->TEXTURE_NO_ROTATION:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 57
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView;->gLTextureBuffer:Ljava/nio/FloatBuffer;

    .line 59
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView;->gLTextureBuffer:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/miui/filtersdk/utils/TextureRotationUtil;->TEXTURE_NO_ROTATION:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 61
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView;->setEGLContextClientVersion(I)V

    .line 62
    invoke-virtual {p0, p0}, Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 63
    invoke-virtual {p0, v2}, Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView;->setRenderMode(I)V

    .line 64
    return-void
.end method

.method private addDistance(FF)F
    .locals 1
    .param p1, "coordinate"    # F
    .param p2, "distance"    # F

    .prologue
    .line 137
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .end local p2    # "distance":F
    :goto_0
    return p2

    .restart local p2    # "distance":F
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p2, v0, p2

    goto :goto_0
.end method


# virtual methods
.method protected adjustSize(IIIIIZZLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 17
    .param p1, "imageWidth"    # I
    .param p2, "imageHeight"    # I
    .param p3, "outputWidth"    # I
    .param p4, "outputHeight"    # I
    .param p5, "rotation"    # I
    .param p6, "flipHorizontal"    # Z
    .param p7, "flipVertical"    # Z
    .param p8, "gLCubeBuffer"    # Ljava/nio/FloatBuffer;
    .param p9, "gLTextureBuffer"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 93
    invoke-static/range {p5 .. p5}, Lcom/miui/filtersdk/utils/Rotation;->fromInt(I)Lcom/miui/filtersdk/utils/Rotation;

    move-result-object v14

    move/from16 v0, p6

    move/from16 v1, p7

    invoke-static {v14, v0, v1}, Lcom/miui/filtersdk/utils/TextureRotationUtil;->getRotation(Lcom/miui/filtersdk/utils/Rotation;ZZ)[F

    move-result-object v12

    .line 95
    .local v12, "textureCords":[F
    sget-object v2, Lcom/miui/filtersdk/utils/TextureRotationUtil;->CUBE:[F

    .line 96
    .local v2, "cube":[F
    move/from16 v0, p3

    int-to-float v14, v0

    move/from16 v0, p1

    int-to-float v15, v0

    div-float v7, v14, v15

    .line 97
    .local v7, "ratio1":F
    move/from16 v0, p4

    int-to-float v14, v0

    move/from16 v0, p2

    int-to-float v15, v0

    div-float v8, v14, v15

    .line 98
    .local v8, "ratio2":F
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 99
    .local v10, "ratioMax":F
    move/from16 v0, p1

    int-to-float v14, v0

    mul-float/2addr v14, v10

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 100
    .local v6, "imageWidthNew":I
    move/from16 v0, p2

    int-to-float v14, v0

    mul-float/2addr v14, v10

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 102
    .local v5, "imageHeightNew":I
    int-to-float v14, v6

    move/from16 v0, p3

    int-to-float v15, v0

    div-float v11, v14, v15

    .line 103
    .local v11, "ratioWidth":F
    int-to-float v14, v5

    move/from16 v0, p4

    int-to-float v15, v0

    div-float v9, v14, v15

    .line 105
    .local v9, "ratioHeight":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView;->scaleType:Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView$ScaleType;

    sget-object v15, Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView$ScaleType;->CENTER_INSIDE:Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView$ScaleType;

    if-ne v14, v15, :cond_1

    .line 106
    const/16 v14, 0x8

    new-array v2, v14, [F

    .end local v2    # "cube":[F
    const/4 v14, 0x0

    sget-object v15, Lcom/miui/filtersdk/utils/TextureRotationUtil;->CUBE:[F

    const/16 v16, 0x0

    aget v15, v15, v16

    div-float/2addr v15, v9

    aput v15, v2, v14

    const/4 v14, 0x1

    sget-object v15, Lcom/miui/filtersdk/utils/TextureRotationUtil;->CUBE:[F

    const/16 v16, 0x1

    aget v15, v15, v16

    div-float/2addr v15, v11

    aput v15, v2, v14

    const/4 v14, 0x2

    sget-object v15, Lcom/miui/filtersdk/utils/TextureRotationUtil;->CUBE:[F

    const/16 v16, 0x2

    aget v15, v15, v16

    div-float/2addr v15, v9

    aput v15, v2, v14

    const/4 v14, 0x3

    sget-object v15, Lcom/miui/filtersdk/utils/TextureRotationUtil;->CUBE:[F

    const/16 v16, 0x3

    aget v15, v15, v16

    div-float/2addr v15, v11

    aput v15, v2, v14

    const/4 v14, 0x4

    sget-object v15, Lcom/miui/filtersdk/utils/TextureRotationUtil;->CUBE:[F

    const/16 v16, 0x4

    aget v15, v15, v16

    div-float/2addr v15, v9

    aput v15, v2, v14

    const/4 v14, 0x5

    sget-object v15, Lcom/miui/filtersdk/utils/TextureRotationUtil;->CUBE:[F

    const/16 v16, 0x5

    aget v15, v15, v16

    div-float/2addr v15, v11

    aput v15, v2, v14

    const/4 v14, 0x6

    sget-object v15, Lcom/miui/filtersdk/utils/TextureRotationUtil;->CUBE:[F

    const/16 v16, 0x6

    aget v15, v15, v16

    div-float/2addr v15, v9

    aput v15, v2, v14

    const/4 v14, 0x7

    sget-object v15, Lcom/miui/filtersdk/utils/TextureRotationUtil;->CUBE:[F

    const/16 v16, 0x7

    aget v15, v15, v16

    div-float/2addr v15, v11

    aput v15, v2, v14

    .line 130
    .restart local v2    # "cube":[F
    :cond_0
    :goto_0
    invoke-virtual/range {p8 .. p8}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 131
    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 132
    invoke-virtual/range {p9 .. p9}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 133
    move-object/from16 v0, p9

    invoke-virtual {v0, v12}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 134
    return-void

    .line 112
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView;->scaleType:Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView$ScaleType;

    sget-object v15, Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView$ScaleType;->FIT_XY:Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView$ScaleType;

    if-eq v14, v15, :cond_0

    .line 114
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView;->scaleType:Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView$ScaleType;

    sget-object v15, Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView$ScaleType;->CENTER_CROP:Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView$ScaleType;

    if-ne v14, v15, :cond_0

    .line 116
    invoke-static/range {p5 .. p5}, Lcom/miui/filtersdk/utils/Rotation;->fromInt(I)Lcom/miui/filtersdk/utils/Rotation;

    move-result-object v14

    sget-object v15, Lcom/miui/filtersdk/utils/Rotation;->ROTATION_90:Lcom/miui/filtersdk/utils/Rotation;

    if-eq v14, v15, :cond_2

    invoke-static/range {p5 .. p5}, Lcom/miui/filtersdk/utils/Rotation;->fromInt(I)Lcom/miui/filtersdk/utils/Rotation;

    move-result-object v14

    sget-object v15, Lcom/miui/filtersdk/utils/Rotation;->ROTATION_270:Lcom/miui/filtersdk/utils/Rotation;

    if-eq v14, v15, :cond_2

    .line 117
    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    div-float/2addr v15, v11

    sub-float/2addr v14, v15

    const/high16 v15, 0x40000000    # 2.0f

    div-float v4, v14, v15

    .line 118
    .local v4, "distVertical":F
    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    div-float/2addr v15, v9

    sub-float/2addr v14, v15

    const/high16 v15, 0x40000000    # 2.0f

    div-float v3, v14, v15

    .line 123
    .local v3, "distHorizontal":F
    :goto_1
    const/16 v14, 0x8

    new-array v13, v14, [F

    const/4 v14, 0x0

    const/4 v15, 0x0

    aget v15, v12, v15

    .line 124
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v4}, Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView;->addDistance(FF)F

    move-result v15

    aput v15, v13, v14

    const/4 v14, 0x1

    const/4 v15, 0x1

    aget v15, v12, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v3}, Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView;->addDistance(FF)F

    move-result v15

    aput v15, v13, v14

    const/4 v14, 0x2

    const/4 v15, 0x2

    aget v15, v12, v15

    .line 125
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v4}, Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView;->addDistance(FF)F

    move-result v15

    aput v15, v13, v14

    const/4 v14, 0x3

    const/4 v15, 0x3

    aget v15, v12, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v3}, Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView;->addDistance(FF)F

    move-result v15

    aput v15, v13, v14

    const/4 v14, 0x4

    const/4 v15, 0x4

    aget v15, v12, v15

    .line 126
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v4}, Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView;->addDistance(FF)F

    move-result v15

    aput v15, v13, v14

    const/4 v14, 0x5

    const/4 v15, 0x5

    aget v15, v12, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v3}, Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView;->addDistance(FF)F

    move-result v15

    aput v15, v13, v14

    const/4 v14, 0x6

    const/4 v15, 0x6

    aget v15, v12, v15

    .line 127
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v4}, Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView;->addDistance(FF)F

    move-result v15

    aput v15, v13, v14

    const/4 v14, 0x7

    const/4 v15, 0x7

    aget v15, v12, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v3}, Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView;->addDistance(FF)F

    move-result v15

    aput v15, v13, v14

    .end local v12    # "textureCords":[F
    .local v13, "textureCords":[F
    move-object v12, v13

    .end local v13    # "textureCords":[F
    .restart local v12    # "textureCords":[F
    goto/16 :goto_0

    .line 120
    .end local v3    # "distHorizontal":F
    .end local v4    # "distVertical":F
    :cond_2
    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    div-float/2addr v15, v11

    sub-float/2addr v14, v15

    const/high16 v15, 0x40000000    # 2.0f

    div-float v3, v14, v15

    .line 121
    .restart local v3    # "distHorizontal":F
    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    div-float/2addr v15, v9

    sub-float/2addr v14, v15

    const/high16 v15, 0x40000000    # 2.0f

    div-float v4, v14, v15

    .restart local v4    # "distVertical":F
    goto :goto_1
.end method

.method protected adjustSize(IZZ)V
    .locals 10
    .param p1, "rotation"    # I
    .param p2, "flipHorizontal"    # Z
    .param p3, "flipVertical"    # Z

    .prologue
    .line 88
    iget v1, p0, Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView;->imageWidth:I

    iget v2, p0, Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView;->imageHeight:I

    iget v3, p0, Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView;->surfaceWidth:I

    iget v4, p0, Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView;->surfaceHeight:I

    iget-object v8, p0, Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView;->gLCubeBuffer:Ljava/nio/FloatBuffer;

    iget-object v9, p0, Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView;->gLTextureBuffer:Ljava/nio/FloatBuffer;

    move-object v0, p0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v0 .. v9}, Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView;->adjustSize(IIIIIZZLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 89
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 84
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 85
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-static {v0, v0, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 77
    iput p2, p0, Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView;->surfaceWidth:I

    .line 78
    iput p3, p0, Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView;->surfaceHeight:I

    .line 79
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/4 v1, 0x0

    .line 68
    const/16 v0, 0xbd0

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 69
    invoke-static {v1, v1, v1, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 70
    const/16 v0, 0xb44

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 71
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 72
    return-void
.end method
