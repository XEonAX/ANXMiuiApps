.class public Lcom/miui/gallery/editor/photo/core/imports/filter/render/GLESUtils;
.super Ljava/lang/Object;
.source "GLESUtils.java"


# direct methods
.method public static getMaxTextureSize()I
    .locals 12

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 11
    const/16 v0, 0x800

    .line 14
    .local v0, "IMAGE_MAX_BITMAP_DIMENSION":I
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v3

    check-cast v3, Ljavax/microedition/khronos/egl/EGL10;

    .line 15
    .local v3, "egl":Ljavax/microedition/khronos/egl/EGL10;
    sget-object v9, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v3, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    .line 18
    .local v2, "display":Ljavax/microedition/khronos/egl/EGLDisplay;
    const/4 v9, 0x2

    new-array v8, v9, [I

    .line 19
    .local v8, "version":[I
    invoke-interface {v3, v2, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 22
    new-array v7, v10, [I

    .line 23
    .local v7, "totalConfigurations":[I
    const/4 v9, 0x0

    invoke-interface {v3, v2, v9, v11, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 26
    aget v9, v7, v11

    new-array v1, v9, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 27
    .local v1, "configurationsList":[Ljavax/microedition/khronos/egl/EGLConfig;
    aget v9, v7, v11

    invoke-interface {v3, v2, v1, v9, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 29
    new-array v6, v10, [I

    .line 30
    .local v6, "textureSize":[I
    const/4 v5, 0x0

    .line 33
    .local v5, "maximumTextureSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    aget v9, v7, v11

    if-ge v4, v9, :cond_1

    .line 35
    aget-object v9, v1, v4

    const/16 v10, 0x302c

    invoke-interface {v3, v2, v9, v10, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 38
    aget v9, v6, v11

    if-ge v5, v9, :cond_0

    .line 39
    aget v5, v6, v11

    .line 33
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 43
    :cond_1
    invoke-interface {v3, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 46
    const/16 v9, 0x800

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    return v9
.end method
