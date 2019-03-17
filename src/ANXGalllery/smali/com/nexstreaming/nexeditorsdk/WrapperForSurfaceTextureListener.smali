.class public Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;
.super Ljava/lang/Object;
.source "WrapperForSurfaceTextureListener.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WrapperForSTL"

.field private static sHandler:Landroid/os/Handler;

.field private static sHandlerThread:Landroid/os/HandlerThread;

.field private static sIntanceNum:I


# instance fields
.field private mConnectedSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mFrameAvailableSemaphore:Ljava/util/concurrent/Semaphore;

.field private final mInstanceNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    const/4 v0, 0x0

    sput v0, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->sIntanceNum:I

    .line 45
    sput-object v1, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->sHandler:Landroid/os/Handler;

    .line 46
    sput-object v1, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->sHandlerThread:Landroid/os/HandlerThread;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->mFrameAvailableSemaphore:Ljava/util/concurrent/Semaphore;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->mConnectedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 89
    sget v0, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->sIntanceNum:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->sIntanceNum:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->mInstanceNum:I

    .line 90
    const-string v0, "WrapperForSTL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[W:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->mInstanceNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] WrapperForSurfaceTextureListener Constructor. a="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void
.end method

.method public static makeSurfaceTexture(I)Landroid/graphics/SurfaceTexture;
    .locals 4

    .prologue
    .line 50
    new-instance v2, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v2}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    .line 51
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->sHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 52
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "surfaceTextureFactory"

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->sHandlerThread:Landroid/os/HandlerThread;

    .line 53
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 54
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->sHandler:Landroid/os/Handler;

    .line 56
    :cond_1
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener$1;

    invoke-direct {v1, p0, v2}, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener$1;-><init>(ILjava/util/concurrent/SynchronousQueue;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    const/4 v0, 0x0

    move-object v1, v0

    .line 77
    :goto_0
    if-nez v1, :cond_2

    .line 79
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/SynchronousQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/SurfaceTexture;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 82
    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 84
    :cond_2
    return-object v1
.end method


# virtual methods
.method public connectListener(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->mConnectedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 99
    :cond_0
    const-string v0, "WrapperForSTL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[W:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->mInstanceNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] WrapperForSurfaceTextureListener connectListener."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->mFrameAvailableSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    .line 101
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 102
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->sHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 111
    :goto_0
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->mConnectedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 112
    return-void

    .line 104
    :cond_1
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener$2;

    invoke-direct {v1, p0, p1}, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener$2;-><init>(Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public disconnectListener(Landroid/graphics/SurfaceTexture;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 117
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->mConnectedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eq p1, v0, :cond_0

    .line 118
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    .line 120
    :cond_0
    const-string v0, "WrapperForSTL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[W:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->mInstanceNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] WrapperForSurfaceTextureListener disconnectListener."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {p1, v3}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 122
    iput-object v3, p0, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->mConnectedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 123
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->mConnectedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eq p1, v0, :cond_0

    .line 165
    const-string v0, "WrapperForSTL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[W:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->mInstanceNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] WARNING - Frame available to wrong listener : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->mConnectedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->mFrameAvailableSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0
.end method

.method public waitFrameAvailable(I)I
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 128
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->mConnectedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v2, :cond_0

    .line 129
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 132
    :cond_0
    if-gez p1, :cond_1

    const/16 p1, 0x9c4

    .line 135
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    move v2, v1

    .line 140
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->mFrameAvailableSemaphore:Ljava/util/concurrent/Semaphore;

    int-to-long v6, p1

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v6, v7, v8}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 148
    if-nez v3, :cond_4

    .line 149
    :goto_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v4, v6, v4

    .line 150
    if-eqz v0, :cond_2

    .line 151
    const-string v3, "WrapperForSTL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[W:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/nexstreaming/nexeditorsdk/WrapperForSurfaceTextureListener;->mInstanceNum:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] waitFrameAvailable : (elapsed="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") timeout="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " interrupted="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_2
    if-eqz v0, :cond_5

    const/4 v0, 0x4

    :goto_2
    if-eqz v2, :cond_3

    const/16 v1, 0x8

    :cond_3
    or-int/2addr v0, v1

    return v0

    .line 142
    :catch_0
    move-exception v2

    .line 144
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    move v2, v0

    .line 145
    goto :goto_0

    :cond_4
    move v0, v1

    .line 148
    goto :goto_1

    :cond_5
    move v0, v1

    .line 156
    goto :goto_2
.end method
