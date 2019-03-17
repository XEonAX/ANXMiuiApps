.class public Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;
.super Ljava/lang/Object;
.source "GPUImageRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# static fields
.field static final CUBE:[F


# instance fields
.field private mBackgroundBlue:F

.field private mBackgroundGreen:F

.field private mBackgroundRed:F

.field private mBoundLinesFilter:Lcom/miui/gallery/editor/photo/core/imports/filter/render/BoundLinesFilter;

.field private mDrawBoundLines:Z

.field private mDrawFilter:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

.field private mDrawForSmallPic:Z

.field private mFilter:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

.field private mFlipHorizontal:Z

.field private mFlipVertical:Z

.field private final mGLCubeBuffer:Ljava/nio/FloatBuffer;

.field private final mGLTextureBuffer:Ljava/nio/FloatBuffer;

.field private mGLTextureId:I

.field private mImageHeight:I

.field private mImageWidth:I

.field private mOutputHeight:I

.field private mOutputWidth:I

.field private mRotation:Lcom/miui/filtersdk/utils/Rotation;

.field private final mRunOnDraw:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunOnDrawEnd:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mScaleType:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage$ScaleType;

.field public final mSurfaceChangedWaiter:Ljava/lang/Object;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->CUBE:[F

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/miui/filtersdk/filter/base/GPUImageFilter;)V
    .locals 3
    .param p1, "filter"    # Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mSurfaceChangedWaiter:Ljava/lang/Object;

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mGLTextureId:I

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 54
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage$ScaleType;->CENTER_INSIDE:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage$ScaleType;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mScaleType:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage$ScaleType;

    .line 56
    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mBackgroundRed:F

    .line 57
    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mBackgroundGreen:F

    .line 58
    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mBackgroundBlue:F

    .line 68
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mFilter:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    .line 69
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mRunOnDraw:Ljava/util/Queue;

    .line 70
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mRunOnDrawEnd:Ljava/util/Queue;

    .line 72
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->CUBE:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 73
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    .line 75
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->CUBE:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 77
    sget-object v0, Lcom/miui/filtersdk/utils/TextureRotationUtil;->TEXTURE_NO_ROTATION:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 78
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    .line 80
    sget-object v0, Lcom/miui/filtersdk/utils/Rotation;->NORMAL:Lcom/miui/filtersdk/utils/Rotation;

    invoke-virtual {p0, v0, v2, v2}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->setRotation(Lcom/miui/filtersdk/utils/Rotation;ZZ)V

    .line 81
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BoundLinesFilter;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BoundLinesFilter;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mBoundLinesFilter:Lcom/miui/gallery/editor/photo/core/imports/filter/render/BoundLinesFilter;

    .line 82
    new-instance v0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    invoke-direct {v0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mDrawFilter:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;)Lcom/miui/filtersdk/filter/base/GPUImageFilter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mFilter:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    return-object v0
.end method

.method static synthetic access$002(Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;Lcom/miui/filtersdk/filter/base/GPUImageFilter;)Lcom/miui/filtersdk/filter/base/GPUImageFilter;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;
    .param p1, "x1"    # Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mFilter:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->initForFilter()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;

    .prologue
    .line 24
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mGLTextureId:I

    return v0
.end method

.method static synthetic access$202(Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;
    .param p1, "x1"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mGLTextureId:I

    return p1
.end method

.method static synthetic access$300(Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;

    .prologue
    .line 24
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mImageWidth:I

    return v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;

    .prologue
    .line 24
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mImageHeight:I

    return v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;)Lcom/miui/gallery/editor/photo/core/imports/filter/render/BoundLinesFilter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mBoundLinesFilter:Lcom/miui/gallery/editor/photo/core/imports/filter/render/BoundLinesFilter;

    return-object v0
.end method

.method private addDistance(FF)F
    .locals 1
    .param p1, "coordinate"    # F
    .param p2, "distance"    # F

    .prologue
    .line 288
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

.method private adjustImageScaling()V
    .locals 19

    .prologue
    .line 242
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mImageWidth:I

    move/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mImageHeight:I

    move/from16 v16, v0

    if-nez v16, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mOutputWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v8, v0

    .line 246
    .local v8, "outputWidth":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mOutputHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v7, v0

    .line 247
    .local v7, "outputHeight":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mRotation:Lcom/miui/filtersdk/utils/Rotation;

    move-object/from16 v16, v0

    sget-object v17, Lcom/miui/filtersdk/utils/Rotation;->ROTATION_270:Lcom/miui/filtersdk/utils/Rotation;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mRotation:Lcom/miui/filtersdk/utils/Rotation;

    move-object/from16 v16, v0

    sget-object v17, Lcom/miui/filtersdk/utils/Rotation;->ROTATION_90:Lcom/miui/filtersdk/utils/Rotation;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 248
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mOutputHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v8, v0

    .line 249
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mOutputWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v7, v0

    .line 252
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mImageWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v9, v8, v16

    .line 253
    .local v9, "ratio1":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mImageHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v10, v7, v16

    .line 254
    .local v10, "ratio2":F
    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 255
    .local v12, "ratioMax":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mImageWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v12

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 256
    .local v6, "imageWidthNew":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mImageHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v12

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 258
    .local v5, "imageHeightNew":I
    int-to-float v0, v6

    move/from16 v16, v0

    div-float v13, v16, v8

    .line 259
    .local v13, "ratioWidth":F
    int-to-float v0, v5

    move/from16 v16, v0

    div-float v11, v16, v7

    .line 261
    .local v11, "ratioHeight":F
    sget-object v2, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->CUBE:[F

    .line 262
    .local v2, "cube":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mRotation:Lcom/miui/filtersdk/utils/Rotation;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mFlipHorizontal:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mFlipVertical:Z

    move/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lcom/miui/filtersdk/utils/TextureRotationUtil;->getRotation(Lcom/miui/filtersdk/utils/Rotation;ZZ)[F

    move-result-object v14

    .line 263
    .local v14, "textureCords":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mScaleType:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage$ScaleType;

    move-object/from16 v16, v0

    sget-object v17, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage$ScaleType;->CENTER_CROP:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage$ScaleType;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_4

    .line 264
    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    div-float v17, v17, v13

    sub-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v3, v16, v17

    .line 265
    .local v3, "distHorizontal":F
    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    div-float v17, v17, v11

    sub-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v4, v16, v17

    .line 266
    .local v4, "distVertical":F
    const/16 v16, 0x8

    move/from16 v0, v16

    new-array v15, v0, [F

    const/16 v16, 0x0

    const/16 v17, 0x0

    aget v17, v14, v17

    .line 267
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v3}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->addDistance(FF)F

    move-result v17

    aput v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x1

    aget v17, v14, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v4}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->addDistance(FF)F

    move-result v17

    aput v17, v15, v16

    const/16 v16, 0x2

    const/16 v17, 0x2

    aget v17, v14, v17

    .line 268
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v3}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->addDistance(FF)F

    move-result v17

    aput v17, v15, v16

    const/16 v16, 0x3

    const/16 v17, 0x3

    aget v17, v14, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v4}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->addDistance(FF)F

    move-result v17

    aput v17, v15, v16

    const/16 v16, 0x4

    const/16 v17, 0x4

    aget v17, v14, v17

    .line 269
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v3}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->addDistance(FF)F

    move-result v17

    aput v17, v15, v16

    const/16 v16, 0x5

    const/16 v17, 0x5

    aget v17, v14, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v4}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->addDistance(FF)F

    move-result v17

    aput v17, v15, v16

    const/16 v16, 0x6

    const/16 v17, 0x6

    aget v17, v14, v17

    .line 270
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v3}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->addDistance(FF)F

    move-result v17

    aput v17, v15, v16

    const/16 v16, 0x7

    const/16 v17, 0x7

    aget v17, v14, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v4}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->addDistance(FF)F

    move-result v17

    aput v17, v15, v16

    .end local v14    # "textureCords":[F
    .local v15, "textureCords":[F
    move-object v14, v15

    .line 281
    .end local v3    # "distHorizontal":F
    .end local v4    # "distVertical":F
    .end local v15    # "textureCords":[F
    .restart local v14    # "textureCords":[F
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 273
    :cond_4
    const/16 v16, 0x8

    move/from16 v0, v16

    new-array v2, v0, [F

    .end local v2    # "cube":[F
    const/16 v16, 0x0

    sget-object v17, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->CUBE:[F

    const/16 v18, 0x0

    aget v17, v17, v18

    div-float v17, v17, v11

    aput v17, v2, v16

    const/16 v16, 0x1

    sget-object v17, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->CUBE:[F

    const/16 v18, 0x1

    aget v17, v17, v18

    div-float v17, v17, v13

    aput v17, v2, v16

    const/16 v16, 0x2

    sget-object v17, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->CUBE:[F

    const/16 v18, 0x2

    aget v17, v17, v18

    div-float v17, v17, v11

    aput v17, v2, v16

    const/16 v16, 0x3

    sget-object v17, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->CUBE:[F

    const/16 v18, 0x3

    aget v17, v17, v18

    div-float v17, v17, v13

    aput v17, v2, v16

    const/16 v16, 0x4

    sget-object v17, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->CUBE:[F

    const/16 v18, 0x4

    aget v17, v17, v18

    div-float v17, v17, v11

    aput v17, v2, v16

    const/16 v16, 0x5

    sget-object v17, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->CUBE:[F

    const/16 v18, 0x5

    aget v17, v17, v18

    div-float v17, v17, v13

    aput v17, v2, v16

    const/16 v16, 0x6

    sget-object v17, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->CUBE:[F

    const/16 v18, 0x6

    aget v17, v17, v18

    div-float v17, v17, v11

    aput v17, v2, v16

    const/16 v16, 0x7

    sget-object v17, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->CUBE:[F

    const/16 v18, 0x7

    aget v17, v17, v18

    div-float v17, v17, v13

    aput v17, v2, v16

    .restart local v2    # "cube":[F
    goto/16 :goto_1
.end method

.method private initForFilter()V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mFilter:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mOutputWidth:I

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mOutputHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->onInputSizeChanged(II)V

    .line 119
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mFilter:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mOutputWidth:I

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mOutputHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->onDisplaySizeChanged(II)V

    .line 120
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mImageWidth:I

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mOutputWidth:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mImageHeight:I

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mOutputHeight:I

    if-ge v0, v1, :cond_0

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mDrawForSmallPic:Z

    .line 122
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mFilter:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mImageWidth:I

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mImageHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->initFrameBuffers(II)V

    .line 126
    :goto_0
    const-string v0, "GPUImageRenderer"

    const-string v1, "initForFilter draw for small:%b"

    iget-boolean v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mDrawForSmallPic:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    return-void

    .line 124
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mDrawForSmallPic:Z

    goto :goto_0
.end method

.method private runAll(Ljava/util/Queue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Runnable;>;"
    if-eqz p1, :cond_1

    .line 169
    monitor-enter p1

    .line 170
    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    :cond_1
    return-void
.end method


# virtual methods
.method public deleteImage()V
    .locals 1

    .prologue
    .line 193
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer$2;-><init>(Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;)V

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->runOnDraw(Ljava/lang/Runnable;)V

    .line 203
    return-void
.end method

.method public isFlippedHorizontally()Z
    .locals 1

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mFlipHorizontal:Z

    return v0
.end method

.method public isFlippedVertically()Z
    .locals 1

    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mFlipVertical:Z

    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/16 v5, 0xbe2

    .line 131
    const/16 v1, 0x4100

    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 132
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mRunOnDraw:Ljava/util/Queue;

    invoke-direct {p0, v1}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->runAll(Ljava/util/Queue;)V

    .line 134
    iget-boolean v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mDrawForSmallPic:Z

    if-eqz v1, :cond_2

    .line 135
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mFilter:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mGLTextureId:I

    invoke-virtual {v1, v2}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->onDrawToTexture(I)I

    move-result v0

    .line 136
    .local v0, "textureId":I
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mDrawFilter:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v0, v2, v3}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->onDrawFrame(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I

    .line 141
    .end local v0    # "textureId":I
    :goto_0
    iget-boolean v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mDrawBoundLines:Z

    if-eqz v1, :cond_0

    .line 142
    invoke-static {v5}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 143
    const/4 v1, 0x1

    const/16 v2, 0x303

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 144
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mBoundLinesFilter:Lcom/miui/gallery/editor/photo/core/imports/filter/render/BoundLinesFilter;

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mGLTextureId:I

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2, v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BoundLinesFilter;->onDrawFrame(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I

    .line 145
    invoke-static {v5}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mRunOnDrawEnd:Ljava/util/Queue;

    invoke-direct {p0, v1}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->runAll(Ljava/util/Queue;)V

    .line 149
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_1

    .line 150
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 152
    :cond_1
    return-void

    .line 138
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mFilter:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mGLTextureId:I

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2, v3, v4}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->onDrawFrame(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I

    goto :goto_0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 100
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mOutputWidth:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mOutputHeight:I

    if-eq v0, p3, :cond_1

    .line 101
    :cond_0
    iput p2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mOutputWidth:I

    .line 102
    iput p3, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mOutputHeight:I

    .line 103
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->adjustImageScaling()V

    .line 105
    :cond_1
    invoke-static {v1, v1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 107
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->initForFilter()V

    .line 108
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mDrawFilter:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    invoke-virtual {v0, p2, p3}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->onInputSizeChanged(II)V

    .line 109
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mBoundLinesFilter:Lcom/miui/gallery/editor/photo/core/imports/filter/render/BoundLinesFilter;

    invoke-virtual {v0, p2, p3}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BoundLinesFilter;->onInputSizeChanged(II)V

    .line 110
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mBoundLinesFilter:Lcom/miui/gallery/editor/photo/core/imports/filter/render/BoundLinesFilter;

    invoke-virtual {v0, p2, p3}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BoundLinesFilter;->onDisplaySizeChanged(II)V

    .line 112
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mSurfaceChangedWaiter:Ljava/lang/Object;

    monitor-enter v1

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mSurfaceChangedWaiter:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 114
    monitor-exit v1

    .line 115
    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 4
    .param p1, "unused"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 87
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mBackgroundRed:F

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mBackgroundGreen:F

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mBackgroundBlue:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 88
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 89
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mFilter:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    invoke-virtual {v0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->init()V

    .line 90
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mBoundLinesFilter:Lcom/miui/gallery/editor/photo/core/imports/filter/render/BoundLinesFilter;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BoundLinesFilter;->init()V

    .line 91
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mDrawFilter:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    invoke-virtual {v0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->init()V

    .line 92
    return-void
.end method

.method protected runOnDraw(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 320
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mRunOnDraw:Ljava/util/Queue;

    monitor-enter v1

    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mRunOnDraw:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 322
    monitor-exit v1

    .line 323
    return-void

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBackgroundColor(FFF)V
    .locals 0
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F

    .prologue
    .line 162
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mBackgroundRed:F

    .line 163
    iput p2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mBackgroundGreen:F

    .line 164
    iput p3, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mBackgroundBlue:F

    .line 165
    return-void
.end method

.method public setDrawBoundLines(Z)V
    .locals 0
    .param p1, "drawBoundLines"    # Z

    .prologue
    .line 332
    iput-boolean p1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mDrawBoundLines:Z

    .line 333
    return-void
.end method

.method public setFilter(Lcom/miui/filtersdk/filter/base/GPUImageFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    .prologue
    .line 178
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer$1;-><init>(Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;Lcom/miui/filtersdk/filter/base/GPUImageFilter;)V

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->runOnDraw(Ljava/lang/Runnable;)V

    .line 190
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;Z)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "recycle"    # Z

    .prologue
    .line 214
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mImageWidth:I

    .line 218
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mImageHeight:I

    .line 219
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer$3;-><init>(Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;Landroid/graphics/Bitmap;Z)V

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->runOnDraw(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setRotation(Lcom/miui/filtersdk/utils/Rotation;)V
    .locals 0
    .param p1, "rotation"    # Lcom/miui/filtersdk/utils/Rotation;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mRotation:Lcom/miui/filtersdk/utils/Rotation;

    .line 298
    return-void
.end method

.method public setRotation(Lcom/miui/filtersdk/utils/Rotation;ZZ)V
    .locals 0
    .param p1, "rotation"    # Lcom/miui/filtersdk/utils/Rotation;
    .param p2, "flipHorizontal"    # Z
    .param p3, "flipVertical"    # Z

    .prologue
    .line 302
    iput-boolean p2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mFlipHorizontal:Z

    .line 303
    iput-boolean p3, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mFlipVertical:Z

    .line 304
    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->setRotation(Lcom/miui/filtersdk/utils/Rotation;)V

    .line 305
    return-void
.end method

.method public setScaleType(Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage$ScaleType;)V
    .locals 0
    .param p1, "scaleType"    # Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage$ScaleType;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->mScaleType:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImage$ScaleType;

    .line 231
    return-void
.end method
