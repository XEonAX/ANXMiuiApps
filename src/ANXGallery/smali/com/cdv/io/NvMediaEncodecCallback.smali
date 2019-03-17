.class public Lcom/cdv/io/NvMediaEncodecCallback;
.super Ljava/lang/Object;
.source "NvMediaEncodecCallback.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NvMediaEncodecCallback"


# instance fields
.field private mCallbackThread:Landroid/os/HandlerThread;

.field private m_contextInterface:J


# direct methods
.method constructor <init>(J)V
    .locals 3

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/cdv/io/NvMediaEncodecCallback;->m_contextInterface:J

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cdv/io/NvMediaEncodecCallback;->mCallbackThread:Landroid/os/HandlerThread;

    .line 39
    iput-wide p1, p0, Lcom/cdv/io/NvMediaEncodecCallback;->m_contextInterface:J

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/cdv/io/NvMediaEncodecCallback;)J
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/cdv/io/NvMediaEncodecCallback;->m_contextInterface:J

    return-wide v0
.end method

.method static synthetic access$100(JLjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    .prologue
    .line 29
    invoke-static {p0, p1, p2, p3}, Lcom/cdv/io/NvMediaEncodecCallback;->nativeOnOutputBufferAvailable(JLjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method static synthetic access$200(JI)V
    .locals 0

    .prologue
    .line 29
    invoke-static {p0, p1, p2}, Lcom/cdv/io/NvMediaEncodecCallback;->nativeOnError(JI)V

    return-void
.end method

.method static synthetic access$300(JLandroid/media/MediaFormat;)V
    .locals 0

    .prologue
    .line 29
    invoke-static {p0, p1, p2}, Lcom/cdv/io/NvMediaEncodecCallback;->nativeOnOutputFormatChanged(JLandroid/media/MediaFormat;)V

    return-void
.end method

.method private closeCallbackThread()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/cdv/io/NvMediaEncodecCallback;->mCallbackThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/cdv/io/NvMediaEncodecCallback;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/cdv/io/NvMediaEncodecCallback;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 137
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/cdv/io/NvMediaEncodecCallback;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cdv/io/NvMediaEncodecCallback;->mCallbackThread:Landroid/os/HandlerThread;

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method private static native nativeOnError(JI)V
.end method

.method private static native nativeOnOutputBufferAvailable(JLjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
.end method

.method private static native nativeOnOutputFormatChanged(JLandroid/media/MediaFormat;)V
.end method


# virtual methods
.method public cleanUp()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/cdv/io/NvMediaEncodecCallback;->closeCallbackThread()V

    .line 127
    return-void
.end method

.method public setCallbackToCodec(Landroid/media/MediaCodec;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 44
    if-nez p1, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v0

    .line 47
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 48
    iget-object v1, p0, Lcom/cdv/io/NvMediaEncodecCallback;->mCallbackThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_3

    .line 49
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "callback handler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/cdv/io/NvMediaEncodecCallback;->mCallbackThread:Landroid/os/HandlerThread;

    .line 50
    iget-object v1, p0, Lcom/cdv/io/NvMediaEncodecCallback;->mCallbackThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_2

    .line 51
    const-string v1, "NvMediaEncodecCallback"

    const-string v2, "Failed to create background handler thread!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 56
    :cond_2
    iget-object v1, p0, Lcom/cdv/io/NvMediaEncodecCallback;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 60
    :cond_3
    iget-object v1, p0, Lcom/cdv/io/NvMediaEncodecCallback;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 61
    if-nez v1, :cond_4

    .line 62
    invoke-direct {p0}, Lcom/cdv/io/NvMediaEncodecCallback;->closeCallbackThread()V

    .line 63
    const-string v1, "NvMediaEncodecCallback"

    const-string v2, "Failed to getLooper of the background thread!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 68
    :cond_4
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 69
    if-nez v2, :cond_5

    .line 70
    invoke-direct {p0}, Lcom/cdv/io/NvMediaEncodecCallback;->closeCallbackThread()V

    .line 71
    const-string v1, "NvMediaEncodecCallback"

    const-string v2, "Failed to create handler with looper!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 75
    :cond_5
    new-instance v0, Lcom/cdv/io/NvMediaEncodecCallback$1;

    invoke-direct {v0, p0}, Lcom/cdv/io/NvMediaEncodecCallback$1;-><init>(Lcom/cdv/io/NvMediaEncodecCallback;)V

    invoke-virtual {p1, v0, v2}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    .line 122
    const/4 v0, 0x1

    goto :goto_0
.end method
