.class Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;
.super Lcom/miui/gallery/editor/photo/widgets/glview/AbstractRender;
.source "MosaicRender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$EnableCaptureTask;,
        Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$CaptureTask;,
        Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$EnableEntityTask;,
        Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$DrawMaskTask;,
        Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$InitTask;
    }
.end annotation


# instance fields
.field private mCurrentEntity:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;

.field private mEffectFBOManager:Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

.field mGLPosition:[F

.field private mGLTextureShader:Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;

.field private mGLTransparentDrawable:Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLTransparentShader;

.field private mIterator:Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF$Iterator;

.field private mLastRect:Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;

.field private mMaskFBOManager:Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

.field private mMaskPosition:[F

.field private mMosaicEffectProcessor:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicEffectProcessor;

.field private mOriginBitmap:Landroid/graphics/Bitmap;

.field private mOriginFBOManager:Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

.field private mOriginTextureId:I

.field private mPenMask:Landroid/graphics/Bitmap;

.field private mPenTexture:I

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "originBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "penMask"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v1, 0x8

    .line 43
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/widgets/glview/AbstractRender;-><init>()V

    .line 35
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mMaskPosition:[F

    .line 38
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mGLPosition:[F

    .line 40
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mLastRect:Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;

    .line 44
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mOriginBitmap:Landroid/graphics/Bitmap;

    .line 45
    iput-object p2, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mPenMask:Landroid/graphics/Bitmap;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;

    .prologue
    .line 19
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mOriginTextureId:I

    return v0
.end method

.method static synthetic access$002(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mOriginTextureId:I

    return p1
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mOriginBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;)Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mOriginFBOManager:Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;)Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;
    .param p1, "x1"    # Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mOriginFBOManager:Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;)Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicEffectProcessor;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mMosaicEffectProcessor:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicEffectProcessor;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicEffectProcessor;)Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicEffectProcessor;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;
    .param p1, "x1"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicEffectProcessor;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mMosaicEffectProcessor:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicEffectProcessor;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;)Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mCurrentEntity:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;)Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;
    .param p1, "x1"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mCurrentEntity:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF$Iterator;)Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF$Iterator;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;
    .param p1, "x1"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF$Iterator;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mIterator:Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF$Iterator;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;)Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mLastRect:Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;)[F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mMaskPosition:[F

    return-object v0
.end method

.method static synthetic access$1600(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;[F)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;
    .param p1, "x1"    # [F

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->drawMask([F)V

    return-void
.end method

.method static synthetic access$1700(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;
    .param p1, "x1"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;
    .param p2, "x2"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->drawMaskBetween(Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;)V

    return-void
.end method

.method static synthetic access$202(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mPenTexture:I

    return p1
.end method

.method static synthetic access$300(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mPenMask:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;)Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mGLTextureShader:Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;

    return-object v0
.end method

.method static synthetic access$402(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;)Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;
    .param p1, "x1"    # Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mGLTextureShader:Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;

    return-object p1
.end method

.method static synthetic access$502(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLTransparentShader;)Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLTransparentShader;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;
    .param p1, "x1"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLTransparentShader;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mGLTransparentDrawable:Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLTransparentShader;

    return-object p1
.end method

.method static synthetic access$600(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;)Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mMaskFBOManager:Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

    return-object v0
.end method

.method static synthetic access$602(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;)Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;
    .param p1, "x1"    # Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mMaskFBOManager:Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

    return-object p1
.end method

.method static synthetic access$700(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;

    .prologue
    .line 19
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mViewWidth:I

    return v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;

    .prologue
    .line 19
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mViewHeight:I

    return v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;)Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mEffectFBOManager:Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

    return-object v0
.end method

.method static synthetic access$902(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;)Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;
    .param p1, "x1"    # Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mEffectFBOManager:Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

    return-object p1
.end method

.method private drawMask([F)V
    .locals 2
    .param p1, "position"    # [F

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->drawMaskPre()V

    .line 142
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mGLTextureShader:Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mPenTexture:I

    invoke-virtual {v0, v1, p1}, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->draw(I[F)V

    .line 143
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->drawMaskAfter()V

    .line 144
    return-void
.end method

.method private drawMaskAfter()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xbe2

    .line 127
    const/16 v0, 0x304

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 128
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mGLTextureShader:Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mEffectFBOManager:Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->getTextureId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->drawFBO(I)V

    .line 129
    invoke-static {v3}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 130
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mMaskFBOManager:Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->unBind()V

    .line 132
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mOriginFBOManager:Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->bind()V

    .line 133
    invoke-static {v3}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 134
    const/16 v0, 0x303

    invoke-static {v4, v0, v2, v4}, Landroid/opengl/GLES20;->glBlendFuncSeparate(IIII)V

    .line 135
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mGLTextureShader:Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mMaskFBOManager:Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->getTextureId()I

    move-result v1

    sget-object v2, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->CUBE_REVERSE:[F

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->draw(I[F)V

    .line 136
    invoke-static {v3}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 137
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mOriginFBOManager:Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->unBind()V

    .line 138
    return-void
.end method

.method private drawMaskBetween(Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;)V
    .locals 3
    .param p1, "preRect"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;
    .param p2, "mCurrentRect"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mIterator:Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF$Iterator;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF$Iterator;->countMiddleRect(Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;)V

    .line 148
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->drawMaskPre()V

    .line 149
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mIterator:Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF$Iterator;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF$Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mIterator:Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF$Iterator;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mMaskPosition:[F

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF$Iterator;->next([F)V

    .line 151
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mGLTextureShader:Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mPenTexture:I

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mMaskPosition:[F

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->draw(I[F)V

    goto :goto_0

    .line 153
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->drawMaskAfter()V

    .line 154
    return-void
.end method

.method private drawMaskPre()V
    .locals 3

    .prologue
    const/16 v2, 0x303

    const/4 v1, 0x1

    .line 120
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mMaskFBOManager:Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->bind()V

    .line 121
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mGLTransparentDrawable:Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLTransparentShader;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLTransparentShader;->draw()V

    .line 122
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 123
    invoke-static {v1, v2, v1, v2}, Landroid/opengl/GLES20;->glBlendFuncSeparate(IIII)V

    .line 124
    return-void
.end method


# virtual methods
.method capture(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;)V
    .locals 1
    .param p1, "mosaicUndoManager"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;

    .prologue
    .line 230
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$CaptureTask;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$CaptureTask;-><init>(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;)V

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->runOnDraw(Ljava/lang/Runnable;)V

    .line 231
    return-void
.end method

.method drawMaskPaintingItems(Ljava/util/LinkedList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem$PaintingItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "paintingItems":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem$PaintingItem;>;"
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->drawMaskPre()V

    .line 158
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem$PaintingItem;

    .line 159
    .local v3, "paintingItem":Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem$PaintingItem;
    const/4 v0, 0x1

    .line 160
    .local v0, "first":Z
    const/4 v2, 0x0

    .line 161
    .local v2, "last":Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;
    iget-object v5, v3, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem$PaintingItem;->points:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;

    .line 162
    .local v1, "glRectF":Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;
    if-eqz v0, :cond_1

    .line 163
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mMaskPosition:[F

    invoke-virtual {v1, v6}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;->getVertex([F)V

    .line 164
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mGLTextureShader:Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;

    iget v7, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mPenTexture:I

    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mMaskPosition:[F

    invoke-virtual {v6, v7, v8}, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->draw(I[F)V

    .line 165
    move-object v2, v1

    .line 166
    const/4 v0, 0x0

    goto :goto_0

    .line 168
    :cond_1
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mIterator:Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF$Iterator;

    invoke-virtual {v6, v2, v1}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF$Iterator;->countMiddleRect(Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;)V

    .line 169
    :goto_1
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mIterator:Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF$Iterator;

    invoke-virtual {v6}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF$Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 170
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mIterator:Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF$Iterator;

    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mMaskPosition:[F

    invoke-virtual {v6, v7}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF$Iterator;->next([F)V

    .line 171
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mGLTextureShader:Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;

    iget v7, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mPenTexture:I

    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mMaskPosition:[F

    invoke-virtual {v6, v7, v8}, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->draw(I[F)V

    goto :goto_1

    .line 173
    :cond_2
    move-object v2, v1

    goto :goto_0

    .line 177
    .end local v0    # "first":Z
    .end local v1    # "glRectF":Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;
    .end local v2    # "last":Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;
    .end local v3    # "paintingItem":Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem$PaintingItem;
    :cond_3
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->drawMaskAfter()V

    .line 178
    return-void
.end method

.method drawRect(Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;Z)V
    .locals 1
    .param p1, "glRectF"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;
    .param p2, "isFirst"    # Z

    .prologue
    .line 181
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$DrawMaskTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$DrawMaskTask;-><init>(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;Lcom/miui/gallery/editor/photo/core/imports/mosaic/GLRectF;Z)V

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->runOnDraw(Ljava/lang/Runnable;)V

    .line 182
    return-void
.end method

.method enableCapture(Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;)V
    .locals 1
    .param p1, "capture"    # Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

    .prologue
    .line 234
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$EnableCaptureTask;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$EnableCaptureTask;-><init>(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;)V

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->runOnDraw(Ljava/lang/Runnable;)V

    .line 235
    return-void
.end method

.method enableEntity(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;)V
    .locals 1
    .param p1, "mosaicGLEntity"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;

    .prologue
    .line 76
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$EnableEntityTask;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$EnableEntityTask;-><init>(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;)V

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->runOnDraw(Ljava/lang/Runnable;)V

    .line 77
    return-void
.end method

.method init(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;)V
    .locals 1
    .param p1, "mosaicGLEntity"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;

    .prologue
    .line 69
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$InitTask;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$InitTask;-><init>(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;)V

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->runOnDraw(Ljava/lang/Runnable;)V

    .line 70
    if-eqz p1, :cond_0

    .line 71
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$EnableEntityTask;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$EnableEntityTask;-><init>(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;)V

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->runOnDraw(Ljava/lang/Runnable;)V

    .line 73
    :cond_0
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/miui/gallery/editor/photo/widgets/glview/AbstractRender;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 64
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 65
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mGLTextureShader:Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mOriginFBOManager:Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->getTextureId()I

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mGLPosition:[F

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->draw(I[F)V

    .line 66
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-static {v0, v0, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 57
    iput p2, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mViewWidth:I

    .line 58
    iput p3, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mViewHeight:I

    .line 59
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 51
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 52
    return-void
.end method
