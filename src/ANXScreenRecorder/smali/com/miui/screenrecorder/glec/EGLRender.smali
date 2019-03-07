.class public Lcom/miui/screenrecorder/glec/EGLRender;
.super Ljava/lang/Object;
.source "EGLRender.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/screenrecorder/glec/EGLRender$RenderHandler;,
        Lcom/miui/screenrecorder/glec/EGLRender$onFrameCallBack;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EncodeDecodeSurface"

.field private static final UNDERRUN_CHECK_INTERVAL:I = 0xc8

.field private static final UNDERRUN_CHECK_PERCENT:I = 0xa

.field private static final VERBOSE:Z


# instance fields
.field private decodeSurface:Landroid/view/Surface;

.field private mCallBack:Lcom/miui/screenrecorder/glec/EGLRender$onFrameCallBack;

.field private mCurrentTimeMs:J

.field private mEGLContext:Landroid/opengl/EGLContext;

.field private mEGLContextEncoder:Landroid/opengl/EGLContext;

.field private mEGLDisplay:Landroid/opengl/EGLDisplay;

.field private mEGLSurface:Landroid/opengl/EGLSurface;

.field private mEGLSurfaceEncoder:Landroid/opengl/EGLSurface;

.field private mEncodedCount:I

.field private mFps:I

.field private mFrameAvailable:Z

.field private mFrameIntervalMs:I

.field private mHandler:Lcom/miui/screenrecorder/glec/EGLRender$RenderHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHeight:I

.field private mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mNextCheckCount:I

.field private mNotifyError:Z

.field private volatile mStart:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mStartTimeMs:J

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureRender:Lcom/miui/screenrecorder/glec/STextureRender;

.field private mTimeBaseNs:J

.field private mTimeOffset:J

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/view/Surface;IIIJ)V
    .locals 5
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "mWidth"    # I
    .param p3, "mHeight"    # I
    .param p4, "fps"    # I
    .param p5, "timeOffset"    # J

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 37
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLContext:Landroid/opengl/EGLContext;

    .line 38
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLContextEncoder:Landroid/opengl/EGLContext;

    .line 39
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 40
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLSurfaceEncoder:Landroid/opengl/EGLSurface;

    .line 47
    iput-boolean v1, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mFrameAvailable:Z

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mStart:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    iput-wide v2, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mCurrentTimeMs:J

    .line 54
    iput-wide v2, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mTimeBaseNs:J

    .line 55
    iput-wide v2, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mStartTimeMs:J

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mNotifyError:Z

    .line 57
    iput v1, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mNextCheckCount:I

    .line 58
    iput v1, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEncodedCount:I

    .line 61
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 80
    iput p2, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mWidth:I

    .line 81
    iput p3, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mHeight:I

    .line 82
    iput-wide p5, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mTimeOffset:J

    .line 83
    invoke-direct {p0, p4}, Lcom/miui/screenrecorder/glec/EGLRender;->initFPs(I)V

    .line 84
    invoke-direct {p0, p1}, Lcom/miui/screenrecorder/glec/EGLRender;->eglSetup(Landroid/view/Surface;)V

    .line 85
    invoke-virtual {p0}, Lcom/miui/screenrecorder/glec/EGLRender;->makeCurrent()V

    .line 86
    invoke-direct {p0}, Lcom/miui/screenrecorder/glec/EGLRender;->setup()V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/miui/screenrecorder/glec/EGLRender;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/glec/EGLRender;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/screenrecorder/glec/EGLRender;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/glec/EGLRender;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mFrameAvailable:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/miui/screenrecorder/glec/EGLRender;JJ)V
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/glec/EGLRender;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/screenrecorder/glec/EGLRender;->checkPerformanceError(JJ)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/screenrecorder/glec/EGLRender;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/glec/EGLRender;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mStart:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/screenrecorder/glec/EGLRender;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/glec/EGLRender;

    .prologue
    .line 29
    iget v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mFrameIntervalMs:I

    return v0
.end method

.method static synthetic access$400(Lcom/miui/screenrecorder/glec/EGLRender;)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/screenrecorder/glec/EGLRender;

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mCurrentTimeMs:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/miui/screenrecorder/glec/EGLRender;J)J
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/glec/EGLRender;
    .param p1, "x1"    # J

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mCurrentTimeMs:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/miui/screenrecorder/glec/EGLRender;)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/screenrecorder/glec/EGLRender;

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mStartTimeMs:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/miui/screenrecorder/glec/EGLRender;J)J
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/glec/EGLRender;
    .param p1, "x1"    # J

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mStartTimeMs:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/miui/screenrecorder/glec/EGLRender;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/glec/EGLRender;

    .prologue
    .line 29
    iget v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mNextCheckCount:I

    return v0
.end method

.method static synthetic access$602(Lcom/miui/screenrecorder/glec/EGLRender;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/glec/EGLRender;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mNextCheckCount:I

    return p1
.end method

.method static synthetic access$700(Lcom/miui/screenrecorder/glec/EGLRender;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/glec/EGLRender;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/screenrecorder/glec/EGLRender;)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/screenrecorder/glec/EGLRender;

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mTimeOffset:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/miui/screenrecorder/glec/EGLRender;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/glec/EGLRender;

    .prologue
    .line 29
    iget v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEncodedCount:I

    return v0
.end method

.method static synthetic access$908(Lcom/miui/screenrecorder/glec/EGLRender;)I
    .locals 2
    .param p0, "x0"    # Lcom/miui/screenrecorder/glec/EGLRender;

    .prologue
    .line 29
    iget v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEncodedCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEncodedCount:I

    return v0
.end method

.method private checkEglError(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 242
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    .local v0, "error":I
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 243
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": EGL error: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 245
    :cond_0
    return-void
.end method

.method private checkPerformanceError(JJ)V
    .locals 9
    .param p1, "count"    # J
    .param p3, "timeMs"    # J

    .prologue
    .line 291
    iget-wide v4, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mStartTimeMs:J

    sub-long v0, p3, v4

    .line 292
    .local v0, "costTimeMs":J
    iget v4, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mFrameIntervalMs:I

    int-to-long v4, v4

    div-long v2, v0, v4

    .line 293
    .local v2, "frameCount":J
    sub-long v4, v2, p1

    const-wide/16 v6, 0x64

    mul-long/2addr v4, v6

    div-long/2addr v4, v2

    const-wide/16 v6, 0xa

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 294
    const-string v4, "EncodeDecodeSurface"

    const-string v5, "frame underrun more than 10% !!!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-boolean v4, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mNotifyError:Z

    if-eqz v4, :cond_0

    .line 296
    iget-object v4, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mCallBack:Lcom/miui/screenrecorder/glec/EGLRender$onFrameCallBack;

    invoke-interface {v4}, Lcom/miui/screenrecorder/glec/EGLRender$onFrameCallBack;->onError()V

    .line 297
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mNotifyError:Z

    .line 300
    :cond_0
    return-void
.end method

.method private eglRelease()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 175
    iget-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLContextEncoder:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 176
    iget-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 177
    iget-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLSurfaceEncoder:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 178
    iget-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 179
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLContext:Landroid/opengl/EGLContext;

    .line 180
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLContextEncoder:Landroid/opengl/EGLContext;

    .line 181
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 182
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 183
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLSurfaceEncoder:Landroid/opengl/EGLSurface;

    .line 184
    return-void
.end method

.method private eglSetup(Landroid/view/Surface;)V
    .locals 13
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 100
    iget-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v2, :cond_0

    .line 101
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "unable to get EGL14 display"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    const/4 v0, 0x2

    new-array v12, v0, [I

    .line 104
    .local v12, "version":[I
    iget-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v12, v2, v12, v4}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 106
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "unable to initialize EGL14"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_1
    const/16 v0, 0xd

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 119
    .local v1, "attribList":[I
    const/4 v0, 0x1

    new-array v3, v0, [Landroid/opengl/EGLConfig;

    .line 120
    .local v3, "configs":[Landroid/opengl/EGLConfig;
    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 121
    .local v6, "numConfigs":[I
    iget-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v2, 0x0

    const/4 v4, 0x0

    array-length v5, v3

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 123
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "unable to find RGB888+recordable ES2 EGL config"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/miui/screenrecorder/glec/EGLRender;->getConfig(I)Landroid/opengl/EGLConfig;

    move-result-object v9

    .line 129
    .local v9, "configEncoder":Landroid/opengl/EGLConfig;
    const/4 v0, 0x3

    new-array v8, v0, [I

    fill-array-data v8, :array_1

    .line 133
    .local v8, "attrib_list":[I
    iget-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v2, 0x0

    aget-object v2, v3, v2

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const/4 v5, 0x0

    invoke-static {v0, v2, v4, v8, v5}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLContext:Landroid/opengl/EGLContext;

    .line 135
    const-string v0, "eglCreateContext"

    invoke-direct {p0, v0}, Lcom/miui/screenrecorder/glec/EGLRender;->checkEglError(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLContext:Landroid/opengl/EGLContext;

    if-nez v0, :cond_3

    .line 137
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "null context"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_3
    iget-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLContext:Landroid/opengl/EGLContext;

    const/4 v4, 0x0

    invoke-static {v0, v9, v2, v8, v4}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLContextEncoder:Landroid/opengl/EGLContext;

    .line 142
    const-string v0, "eglCreateContext"

    invoke-direct {p0, v0}, Lcom/miui/screenrecorder/glec/EGLRender;->checkEglError(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLContextEncoder:Landroid/opengl/EGLContext;

    if-nez v0, :cond_4

    .line 144
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "null context2"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_4
    const/4 v0, 0x5

    new-array v10, v0, [I

    const/4 v0, 0x0

    const/16 v2, 0x3057

    aput v2, v10, v0

    const/4 v0, 0x1

    iget v2, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mWidth:I

    aput v2, v10, v0

    const/4 v0, 0x2

    const/16 v2, 0x3056

    aput v2, v10, v0

    const/4 v0, 0x3

    iget v2, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mHeight:I

    aput v2, v10, v0

    const/4 v0, 0x4

    const/16 v2, 0x3038

    aput v2, v10, v0

    .line 153
    .local v10, "surfaceAttribs":[I
    iget-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v2, 0x0

    aget-object v2, v3, v2

    const/4 v4, 0x0

    invoke-static {v0, v2, v10, v4}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 156
    const-string v0, "eglCreatePbufferSurface"

    invoke-direct {p0, v0}, Lcom/miui/screenrecorder/glec/EGLRender;->checkEglError(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLSurface:Landroid/opengl/EGLSurface;

    if-nez v0, :cond_5

    .line 158
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "surface was null"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_5
    const/4 v0, 0x1

    new-array v11, v0, [I

    const/4 v0, 0x0

    const/16 v2, 0x3038

    aput v2, v11, v0

    .line 165
    .local v11, "surfaceAttribs2":[I
    iget-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v2, 0x0

    invoke-static {v0, v9, p1, v11, v2}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLSurfaceEncoder:Landroid/opengl/EGLSurface;

    .line 167
    const-string v0, "eglCreateWindowSurface"

    invoke-direct {p0, v0}, Lcom/miui/screenrecorder/glec/EGLRender;->checkEglError(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLSurfaceEncoder:Landroid/opengl/EGLSurface;

    if-nez v0, :cond_6

    .line 169
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "surface was null"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_6
    return-void

    .line 110
    :array_0
    .array-data 4
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
        0x3033
        0x1
        0x3038
    .end array-data

    .line 129
    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private getConfig(I)Landroid/opengl/EGLConfig;
    .locals 11
    .param p1, "version"    # I

    .prologue
    const/16 v10, 0x3038

    const/4 v9, 0x3

    const/4 v7, 0x1

    const/16 v5, 0x8

    const/4 v2, 0x0

    .line 213
    const/4 v8, 0x4

    .line 214
    .local v8, "renderableType":I
    if-lt p1, v9, :cond_0

    .line 215
    or-int/lit8 v8, v8, 0x40

    .line 221
    :cond_0
    const/16 v0, 0xd

    new-array v1, v0, [I

    const/16 v0, 0x3024

    aput v0, v1, v2

    aput v5, v1, v7

    const/4 v0, 0x2

    const/16 v4, 0x3023

    aput v4, v1, v0

    aput v5, v1, v9

    const/4 v0, 0x4

    const/16 v4, 0x3022

    aput v4, v1, v0

    const/4 v0, 0x5

    aput v5, v1, v0

    const/4 v0, 0x6

    const/16 v4, 0x3021

    aput v4, v1, v0

    const/4 v0, 0x7

    aput v5, v1, v0

    const/16 v0, 0x3040

    aput v0, v1, v5

    const/16 v0, 0x9

    aput v8, v1, v0

    const/16 v0, 0xa

    aput v10, v1, v0

    const/16 v0, 0xb

    aput v2, v1, v0

    const/16 v0, 0xc

    aput v10, v1, v0

    .line 230
    .local v1, "attribList":[I
    new-array v3, v7, [Landroid/opengl/EGLConfig;

    .line 231
    .local v3, "configs":[Landroid/opengl/EGLConfig;
    new-array v6, v7, [I

    .line 232
    .local v6, "numConfigs":[I
    iget-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    array-length v5, v3

    move v4, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 234
    const-string v0, "EncodeDecodeSurface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to find RGB8888 / "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " EGLConfig"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v0, 0x0

    .line 237
    :goto_0
    return-object v0

    :cond_1
    aget-object v0, v3, v2

    goto :goto_0
.end method

.method private initFPs(I)V
    .locals 3
    .param p1, "fps"    # I

    .prologue
    .line 90
    const-string v0, "EncodeDecodeSurface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initFPs :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iput p1, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mFps:I

    .line 92
    const/16 v0, 0x3e8

    div-int/2addr v0, p1

    iput v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mFrameIntervalMs:I

    .line 93
    return-void
.end method

.method private setup()V
    .locals 3

    .prologue
    .line 199
    new-instance v0, Lcom/miui/screenrecorder/glec/STextureRender;

    iget v1, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mWidth:I

    iget v2, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mHeight:I

    invoke-direct {v0, v1, v2}, Lcom/miui/screenrecorder/glec/STextureRender;-><init>(II)V

    iput-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mTextureRender:Lcom/miui/screenrecorder/glec/STextureRender;

    .line 200
    iget-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mTextureRender:Lcom/miui/screenrecorder/glec/STextureRender;

    invoke-virtual {v0}, Lcom/miui/screenrecorder/glec/STextureRender;->surfaceCreated()V

    .line 202
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mTextureRender:Lcom/miui/screenrecorder/glec/STextureRender;

    invoke-virtual {v1}, Lcom/miui/screenrecorder/glec/STextureRender;->getTextureId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 203
    iget-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mWidth:I

    iget v2, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 204
    iget-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 205
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->decodeSurface:Landroid/view/Surface;

    .line 206
    return-void
.end method


# virtual methods
.method public drawImage()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mTextureRender:Lcom/miui/screenrecorder/glec/STextureRender;

    invoke-virtual {v0}, Lcom/miui/screenrecorder/glec/STextureRender;->drawFrame()V

    .line 279
    return-void
.end method

.method public getDecodeSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->decodeSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public makeCurrent()V
    .locals 4

    .prologue
    .line 190
    iget-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLSurface:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLSurface:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_0
    return-void
.end method

.method public makeCurrent(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 249
    if-nez p1, :cond_0

    .line 250
    iget-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLSurface:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLSurface:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 251
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLSurfaceEncoder:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLSurfaceEncoder:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLContextEncoder:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 255
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_1
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mFrameAvailable:Z

    .line 275
    return-void
.end method

.method public releaseResource()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 282
    invoke-direct {p0}, Lcom/miui/screenrecorder/glec/EGLRender;->eglRelease()V

    .line 283
    iget-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 284
    iput-object v1, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 285
    iput-object v1, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mTextureRender:Lcom/miui/screenrecorder/glec/STextureRender;

    .line 286
    iget-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->decodeSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 287
    iput-object v1, p0, Lcom/miui/screenrecorder/glec/EGLRender;->decodeSurface:Landroid/view/Surface;

    .line 288
    return-void
.end method

.method public setCallBack(Lcom/miui/screenrecorder/glec/EGLRender$onFrameCallBack;)V
    .locals 0
    .param p1, "callBack"    # Lcom/miui/screenrecorder/glec/EGLRender$onFrameCallBack;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mCallBack:Lcom/miui/screenrecorder/glec/EGLRender$onFrameCallBack;

    .line 70
    return-void
.end method

.method public setPresentationTime(J)V
    .locals 5
    .param p1, "nsecs"    # J

    .prologue
    .line 262
    iget-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLSurfaceEncoder:Landroid/opengl/EGLSurface;

    iget-wide v2, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mTimeBaseNs:J

    add-long/2addr v2, p1

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    .line 263
    const-string v0, "eglPresentationTimeANDROID"

    invoke-direct {p0, v0}, Lcom/miui/screenrecorder/glec/EGLRender;->checkEglError(Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method public setStartTimeNs(J)V
    .locals 1
    .param p1, "startTimeNs"    # J

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mTimeBaseNs:J

    .line 66
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 348
    iget-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mStart:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 349
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RenderThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mHandlerThread:Landroid/os/HandlerThread;

    .line 350
    iget-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 351
    new-instance v0, Lcom/miui/screenrecorder/glec/EGLRender$RenderHandler;

    iget-object v1, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/screenrecorder/glec/EGLRender$RenderHandler;-><init>(Lcom/miui/screenrecorder/glec/EGLRender;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mHandler:Lcom/miui/screenrecorder/glec/EGLRender$RenderHandler;

    .line 352
    iget-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mHandler:Lcom/miui/screenrecorder/glec/EGLRender$RenderHandler;

    invoke-virtual {v0, v2}, Lcom/miui/screenrecorder/glec/EGLRender$RenderHandler;->sendEmptyMessage(I)Z

    .line 353
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mStart:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 357
    iget-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 358
    iget-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 359
    iget-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 360
    iget-object v0, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mCallBack:Lcom/miui/screenrecorder/glec/EGLRender$onFrameCallBack;

    invoke-interface {v0}, Lcom/miui/screenrecorder/glec/EGLRender$onFrameCallBack;->onStop()V

    .line 361
    return-void
.end method

.method public swapBuffers()Z
    .locals 3

    .prologue
    .line 267
    iget-object v1, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/miui/screenrecorder/glec/EGLRender;->mEGLSurfaceEncoder:Landroid/opengl/EGLSurface;

    invoke-static {v1, v2}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    .line 268
    .local v0, "result":Z
    const-string v1, "eglSwapBuffers"

    invoke-direct {p0, v1}, Lcom/miui/screenrecorder/glec/EGLRender;->checkEglError(Ljava/lang/String;)V

    .line 269
    return v0
.end method
