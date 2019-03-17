.class public Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;
.super Ljava/lang/Object;
.source "PixelBuffer.java"


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field mEGL:Ljavax/microedition/khronos/egl/EGL10;

.field mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field mEGLConfigs:[Ljavax/microedition/khronos/egl/EGLConfig;

.field mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

.field mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field mGL:Ljavax/microedition/khronos/opengles/GL10;

.field mHeight:I

.field mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

.field mThreadOwner:Ljava/lang/String;

.field mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 11
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/16 v10, 0x3038

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mWidth:I

    .line 54
    iput p2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mHeight:I

    .line 56
    new-array v3, v6, [I

    .line 57
    .local v3, "version":[I
    const/4 v4, 0x5

    new-array v1, v4, [I

    const/16 v4, 0x3057

    aput v4, v1, v7

    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mWidth:I

    aput v4, v1, v8

    const/16 v4, 0x3056

    aput v4, v1, v6

    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mHeight:I

    aput v4, v1, v9

    const/4 v4, 0x4

    aput v10, v1, v4

    .line 64
    .local v1, "attribList":[I
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v4

    check-cast v4, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    .line 65
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 66
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v4, v5, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 67
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->chooseConfig()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 72
    const/16 v0, 0x3098

    .line 73
    .local v0, "EGL_CONTEXT_CLIENT_VERSION":I
    new-array v2, v9, [I

    aput v0, v2, v7

    aput v6, v2, v8

    aput v10, v2, v6

    .line 77
    .local v2, "attrib_list":[I
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v4, v5, v6, v7, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 79
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v4, v5, v6, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 80
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v4, v5, v6, v7, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 82
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v4}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v4

    check-cast v4, Ljavax/microedition/khronos/opengles/GL10;

    iput-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    .line 85
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mThreadOwner:Ljava/lang/String;

    .line 86
    return-void
.end method

.method private chooseConfig()Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 150
    const/16 v0, 0xf

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    .line 163
    .local v2, "attribList":[I
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 164
    .local v5, "numConfig":[I
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 165
    aget v10, v5, v4

    .line 166
    .local v10, "configSize":I
    new-array v0, v10, [Ljavax/microedition/khronos/egl/EGLConfig;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mEGLConfigs:[Ljavax/microedition/khronos/egl/EGLConfig;

    .line 167
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v9, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mEGLConfigs:[Ljavax/microedition/khronos/egl/EGLConfig;

    move-object v8, v2

    move-object v11, v5

    invoke-interface/range {v6 .. v11}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 172
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mEGLConfigs:[Ljavax/microedition/khronos/egl/EGLConfig;

    aget-object v0, v0, v4

    return-object v0

    .line 150
    nop

    :array_0
    .array-data 4
        0x3025
        0x0
        0x3026
        0x0
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3040
        0x4
        0x3038
    .end array-data
.end method

.method private convertToBitmap(Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "recyclerBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 204
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v2, :cond_0

    .line 205
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mBitmap:Landroid/graphics/Bitmap;

    .line 209
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 210
    .local v7, "ib":Ljava/nio/ByteBuffer;
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mWidth:I

    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mHeight:I

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move v2, v1

    invoke-interface/range {v0 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 211
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 212
    const-string v0, "PixelBuffer"

    const-string v2, "convertToBitmap width:%d,height:%d,byteCount:%d,capacity:%d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x3

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v7}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 214
    return-void

    .line 207
    .end local v7    # "ib":Ljava/nio/ByteBuffer;
    :cond_0
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mWidth:I

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 5

    .prologue
    .line 139
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v1}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 141
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 144
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 145
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 146
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 147
    return-void
.end method

.method public getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 104
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    if-nez v3, :cond_0

    .line 105
    const-string v3, "PixelBuffer"

    const-string v4, "getBitmap: Renderer was not set."

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :goto_0
    return-object v2

    .line 110
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mThreadOwner:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 111
    const-string v3, "PixelBuffer"

    const-string v4, "getBitmap: This thread does not own the OpenGL context."

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 119
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v3, v4}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 123
    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->convertToBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 135
    :goto_1
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v3, "PixelBuffer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "convertToBitmap error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 127
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "type"

    const-string v4, "pixelBuffer"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v3, "model"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v3, "photo_editor"

    const-string v4, "memory_error"

    invoke-static {v3, v4, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 132
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    .end local v1    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_1
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PixelBuffer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "convertToBitmap error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 4
    .param p1, "renderer"    # Landroid/opengl/GLSurfaceView$Renderer;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    .line 92
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mThreadOwner:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    const-string v0, "PixelBuffer"

    const-string/jumbo v1, "setRenderer: This thread does not own the OpenGL context."

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v1, v2}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 99
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mWidth:I

    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PixelBuffer;->mHeight:I

    invoke-interface {v0, v1, v2, v3}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    goto :goto_0
.end method
