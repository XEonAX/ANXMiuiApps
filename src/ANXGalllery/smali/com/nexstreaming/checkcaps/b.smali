.class Lcom/nexstreaming/checkcaps/b;
.super Ljava/lang/Object;
.source "InputSurface.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# instance fields
.field private a:Landroid/opengl/EGLDisplay;

.field private b:Landroid/opengl/EGLContext;

.field private c:Landroid/opengl/EGLSurface;

.field private d:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/view/Surface;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/nexstreaming/checkcaps/b;->a:Landroid/opengl/EGLDisplay;

    .line 39
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/nexstreaming/checkcaps/b;->b:Landroid/opengl/EGLContext;

    .line 40
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/nexstreaming/checkcaps/b;->c:Landroid/opengl/EGLSurface;

    .line 46
    if-nez p1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49
    :cond_0
    iput-object p1, p0, Lcom/nexstreaming/checkcaps/b;->d:Landroid/view/Surface;

    .line 50
    invoke-direct {p0}, Lcom/nexstreaming/checkcaps/b;->c()V

    .line 51
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 173
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 174
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": EGL error: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 176
    :cond_0
    return-void
.end method

.method private c()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 56
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/checkcaps/b;->a:Landroid/opengl/EGLDisplay;

    .line 57
    iget-object v0, p0, Lcom/nexstreaming/checkcaps/b;->a:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 58
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unable to get EGL14 display"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 61
    iget-object v1, p0, Lcom/nexstreaming/checkcaps/b;->a:Landroid/opengl/EGLDisplay;

    invoke-static {v1, v0, v2, v0, v8}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/checkcaps/b;->a:Landroid/opengl/EGLDisplay;

    .line 63
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unable to initialize EGL14"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_1
    const/16 v0, 0xb

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 75
    new-array v3, v8, [Landroid/opengl/EGLConfig;

    .line 76
    new-array v6, v8, [I

    .line 77
    iget-object v0, p0, Lcom/nexstreaming/checkcaps/b;->a:Landroid/opengl/EGLDisplay;

    array-length v5, v3

    move v4, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 79
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unable to find RGB888+recordable ES2 EGL config"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_2
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    .line 86
    iget-object v1, p0, Lcom/nexstreaming/checkcaps/b;->a:Landroid/opengl/EGLDisplay;

    aget-object v4, v3, v2

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v1, v4, v5, v0, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/checkcaps/b;->b:Landroid/opengl/EGLContext;

    .line 88
    const-string v0, "eglCreateContext"

    invoke-direct {p0, v0}, Lcom/nexstreaming/checkcaps/b;->a(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/nexstreaming/checkcaps/b;->b:Landroid/opengl/EGLContext;

    if-nez v0, :cond_3

    .line 90
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "null context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_3
    new-array v0, v8, [I

    const/16 v1, 0x3038

    aput v1, v0, v2

    .line 96
    iget-object v1, p0, Lcom/nexstreaming/checkcaps/b;->a:Landroid/opengl/EGLDisplay;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/nexstreaming/checkcaps/b;->d:Landroid/view/Surface;

    invoke-static {v1, v3, v4, v0, v2}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/checkcaps/b;->c:Landroid/opengl/EGLSurface;

    .line 98
    const-string v0, "eglCreateWindowSurface"

    invoke-direct {p0, v0}, Lcom/nexstreaming/checkcaps/b;->a(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/nexstreaming/checkcaps/b;->c:Landroid/opengl/EGLSurface;

    if-nez v0, :cond_4

    .line 100
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "surface was null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_4
    return-void

    .line 67
    nop

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3040
        0x4
        0x3142
        0x1
        0x3038
    .end array-data

    .line 82
    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nexstreaming/checkcaps/b;->a:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/nexstreaming/checkcaps/b;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/nexstreaming/checkcaps/b;->c:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 110
    iget-object v0, p0, Lcom/nexstreaming/checkcaps/b;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/nexstreaming/checkcaps/b;->b:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 111
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 112
    iget-object v0, p0, Lcom/nexstreaming/checkcaps/b;->a:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/checkcaps/b;->d:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 115
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/nexstreaming/checkcaps/b;->a:Landroid/opengl/EGLDisplay;

    .line 116
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/nexstreaming/checkcaps/b;->b:Landroid/opengl/EGLContext;

    .line 117
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/nexstreaming/checkcaps/b;->c:Landroid/opengl/EGLSurface;

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/checkcaps/b;->d:Landroid/view/Surface;

    .line 119
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 124
    iget-object v0, p0, Lcom/nexstreaming/checkcaps/b;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/nexstreaming/checkcaps/b;->c:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/nexstreaming/checkcaps/b;->c:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcom/nexstreaming/checkcaps/b;->b:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    return-void
.end method
