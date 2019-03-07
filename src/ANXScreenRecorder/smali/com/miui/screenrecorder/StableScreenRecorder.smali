.class public Lcom/miui/screenrecorder/StableScreenRecorder;
.super Ljava/lang/Object;
.source "StableScreenRecorder.java"

# interfaces
.implements Lcom/miui/screenrecorder/ScreenRecorder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/screenrecorder/StableScreenRecorder$VideoHandleThread;,
        Lcom/miui/screenrecorder/StableScreenRecorder$AudioHandleThread;,
        Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;,
        Lcom/miui/screenrecorder/StableScreenRecorder$SingletonHolder;
    }
.end annotation


# static fields
.field private static final AUDIO_BIT_RATE:I = 0x4e200

.field private static final AUDIO_MIME_TYPE:Ljava/lang/String; = "audio/mp4a-latm"

.field private static final AUDIO_SAMPLE_RATE:I = 0xac44

.field private static final AUDIO_SAMPLE_RATE_REMOTE_SUBMIX:I = 0xbb80

.field private static final FAIL_COUNT:Ljava/lang/String; = "fail_count"

.field private static final IFRAME_INTERVAL:I = 0xa

.field private static final LOG_INTERVAL:J = 0x23L

.field private static final MIME_TYPE:Ljava/lang/String; = "video/avc"

.field private static final MIN_INTERVAL:J = 0x1eL

.field private static final MSG_DESTROY:I = 0x4

.field private static final MSG_RECORDING:I = 0x2

.field private static final MSG_START:I = 0x1

.field private static final MSG_STOP:I = 0x3

.field private static final RECORDER_EXPER:Ljava/lang/String; = "screenrecorder_experenice"

.field private static final SOUND_INNER_PCM:I = 0x2

.field private static final SOUND_INNER_SUBMIX:I = 0x3

.field private static final SOUND_MIC:I = 0x1

.field private static final SOUND_NO:I = 0x0

.field private static final SUCCESS_COUNT:Ljava/lang/String; = "success_count"

.field private static final TAG:Ljava/lang/String; = "StableScreenRecorderCore"

.field private static final TIMEOUT_US:I = 0x2710

.field private static final VIRTUAL_DISPLAY_DPI:I = 0x1


# instance fields
.field private mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mAudioChangedFormatDone:Z

.field private mAudioEncoder:Landroid/media/MediaCodec;

.field private mAudioRecord:Landroid/media/AudioRecord;

.field private mAudioRecordStarted:Z

.field private mAudioSource:I

.field private volatile mAudioStart:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mAudioThread:Lcom/miui/screenrecorder/StableScreenRecorder$AudioHandleThread;

.field private mAudioTrackIndex:I

.field private mBitRate:I

.field private mContext:Landroid/content/Context;

.field private mData:Landroid/os/MemoryFile;

.field private mEglRender:Lcom/miui/screenrecorder/glec/EGLRender;

.field private mFilePath:Ljava/lang/String;

.field private mFrameRate:I

.field private mHandler:Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;

.field private mHeight:I

.field private final mICallBack:Landroid/os/IBinder;

.field private mInputBuffers:[Ljava/nio/ByteBuffer;

.field private mIsFixedFrame:Z

.field private mMediaProjection:Landroid/media/projection/MediaProjection;

.field private mMiuiAudioRecord:Ljava/lang/Object;

.field private mMuxer:Landroid/media/MediaMuxer;

.field private mMuxerStarted:Z

.field private mReadTime:J

.field private mSavedFilePath:Ljava/lang/String;

.field private mStartTime:J

.field private mSurface:Landroid/view/Surface;

.field private mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mVideoChangedFormatDone:Z

.field private mVideoEncoder:Landroid/media/MediaCodec;

.field private volatile mVideoStart:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mVideoThread:Lcom/miui/screenrecorder/StableScreenRecorder$VideoHandleThread;

.field private mVideoTrackIndex:I

.field private mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

.field private mWidth:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string v1, ""

    iput-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mSavedFilePath:Ljava/lang/String;

    .line 78
    iput v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVideoTrackIndex:I

    .line 79
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 80
    iput-boolean v2, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVideoChangedFormatDone:Z

    .line 83
    iput v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioTrackIndex:I

    .line 84
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 85
    iput-boolean v2, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioChangedFormatDone:Z

    .line 89
    iput-boolean v2, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioRecordStarted:Z

    .line 91
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mInputBuffers:[Ljava/nio/ByteBuffer;

    .line 95
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mICallBack:Landroid/os/IBinder;

    .line 98
    iput-boolean v2, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mMuxerStarted:Z

    .line 116
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioStart:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 117
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVideoStart:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 125
    iput-object p1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mContext:Landroid/content/Context;

    .line 126
    const-string v1, "StableScreenRecorderCore"

    const-string v2, "init handler and working thread"

    invoke-static {v1, v2}, Lcom/miui/screenrecorder/tools/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ScreenRecorderThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, "workThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 129
    new-instance v1, Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;-><init>(Lcom/miui/screenrecorder/StableScreenRecorder;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mHandler:Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;

    .line 130
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/miui/screenrecorder/StableScreenRecorder$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/miui/screenrecorder/StableScreenRecorder$1;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/miui/screenrecorder/StableScreenRecorder;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/screenrecorder/StableScreenRecorder;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/StableScreenRecorder;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/miui/screenrecorder/StableScreenRecorder;->sendResultBroadcast(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/screenrecorder/StableScreenRecorder;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/StableScreenRecorder;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/miui/screenrecorder/StableScreenRecorder;->recording()V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/screenrecorder/StableScreenRecorder;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/StableScreenRecorder;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVideoStart:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/screenrecorder/StableScreenRecorder;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/StableScreenRecorder;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioStart:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/miui/screenrecorder/StableScreenRecorder;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/StableScreenRecorder;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/miui/screenrecorder/StableScreenRecorder;->release(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/screenrecorder/StableScreenRecorder;)Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/StableScreenRecorder;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mHandler:Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/miui/screenrecorder/StableScreenRecorder;)Lcom/miui/screenrecorder/glec/EGLRender;
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/StableScreenRecorder;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mEglRender:Lcom/miui/screenrecorder/glec/EGLRender;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/miui/screenrecorder/StableScreenRecorder;Lcom/miui/screenrecorder/glec/EGLRender;)Lcom/miui/screenrecorder/glec/EGLRender;
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/StableScreenRecorder;
    .param p1, "x1"    # Lcom/miui/screenrecorder/glec/EGLRender;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mEglRender:Lcom/miui/screenrecorder/glec/EGLRender;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/miui/screenrecorder/StableScreenRecorder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/StableScreenRecorder;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mMuxerStarted:Z

    return v0
.end method

.method static synthetic access$200(Lcom/miui/screenrecorder/StableScreenRecorder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/StableScreenRecorder;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mSavedFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/miui/screenrecorder/StableScreenRecorder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/StableScreenRecorder;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioChangedFormatDone:Z

    return v0
.end method

.method static synthetic access$202(Lcom/miui/screenrecorder/StableScreenRecorder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/StableScreenRecorder;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mSavedFilePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/miui/screenrecorder/StableScreenRecorder;)Landroid/media/MediaCodec$BufferInfo;
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/StableScreenRecorder;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/miui/screenrecorder/StableScreenRecorder;)Landroid/media/MediaCodec;
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/StableScreenRecorder;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioEncoder:Landroid/media/MediaCodec;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/miui/screenrecorder/StableScreenRecorder;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/StableScreenRecorder;
    .param p1, "x1"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/miui/screenrecorder/StableScreenRecorder;->encodeToAudioTrack(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/miui/screenrecorder/StableScreenRecorder;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/StableScreenRecorder;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/miui/screenrecorder/StableScreenRecorder;->resetAudioOutputFormat()V

    return-void
.end method

.method static synthetic access$2500(Lcom/miui/screenrecorder/StableScreenRecorder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/StableScreenRecorder;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVideoChangedFormatDone:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/miui/screenrecorder/StableScreenRecorder;)Landroid/media/MediaCodec$BufferInfo;
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/StableScreenRecorder;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/miui/screenrecorder/StableScreenRecorder;)Landroid/media/MediaCodec;
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/StableScreenRecorder;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVideoEncoder:Landroid/media/MediaCodec;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/miui/screenrecorder/StableScreenRecorder;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/StableScreenRecorder;
    .param p1, "x1"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/miui/screenrecorder/StableScreenRecorder;->encodeToVideoTrack(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/miui/screenrecorder/StableScreenRecorder;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/StableScreenRecorder;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/miui/screenrecorder/StableScreenRecorder;->resetVideoOutputFormat()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/screenrecorder/StableScreenRecorder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/StableScreenRecorder;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/miui/screenrecorder/StableScreenRecorder;J)J
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/StableScreenRecorder;
    .param p1, "x1"    # J

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mStartTime:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/miui/screenrecorder/StableScreenRecorder;)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/screenrecorder/StableScreenRecorder;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/miui/screenrecorder/StableScreenRecorder;->getSystemTimeMillisWithMode()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$600(Lcom/miui/screenrecorder/StableScreenRecorder;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/StableScreenRecorder;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/miui/screenrecorder/StableScreenRecorder;->prepareEncoder()V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/screenrecorder/StableScreenRecorder;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/StableScreenRecorder;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/miui/screenrecorder/StableScreenRecorder;->prepareMediaMuxer()V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/screenrecorder/StableScreenRecorder;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/StableScreenRecorder;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/miui/screenrecorder/StableScreenRecorder;->prepareVirtualDisplay()V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/screenrecorder/StableScreenRecorder;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/StableScreenRecorder;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/miui/screenrecorder/StableScreenRecorder;->runEncoder()V

    return-void
.end method

.method private audioSetForceUse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "use"    # Ljava/lang/String;
    .param p2, "conf"    # Ljava/lang/String;

    .prologue
    .line 975
    :try_start_0
    const-string v5, "android.media.AudioSystem"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 976
    .local v0, "asClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "setForceUse"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 977
    .local v3, "sfuMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    .line 978
    .local v4, "usage":I
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 979
    .local v1, "config":I
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 983
    .end local v0    # "asClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "config":I
    .end local v3    # "sfuMethod":Ljava/lang/reflect/Method;
    .end local v4    # "usage":I
    :goto_0
    return-void

    .line 980
    :catch_0
    move-exception v2

    .line 981
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "StableScreenRecorderCore"

    const-string v6, "error while in setForceUsage"

    invoke-static {v5, v6, v2}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private encodeToAudioTrack(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 659
    iget-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 661
    .local v0, "encodedData":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 665
    iget-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const/4 v2, 0x0

    iput v2, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 668
    :cond_0
    iget-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v1, :cond_1

    .line 670
    const/4 v0, 0x0

    .line 673
    :cond_1
    if-eqz v0, :cond_2

    .line 674
    iget-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 675
    iget-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v2, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 677
    iget-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mMuxer:Landroid/media/MediaMuxer;

    iget v2, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioTrackIndex:I

    iget-object v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 680
    :cond_2
    return-void
.end method

.method private encodeToVideoTrack(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 683
    iget-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 685
    .local v0, "encodedData":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 686
    iget-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const/4 v2, 0x0

    iput v2, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 689
    :cond_0
    iget-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v1, :cond_1

    .line 690
    const/4 v0, 0x0

    .line 693
    :cond_1
    if-eqz v0, :cond_2

    .line 694
    iget-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 695
    iget-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v2, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 697
    iget-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mMuxer:Landroid/media/MediaMuxer;

    iget v2, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVideoTrackIndex:I

    iget-object v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 699
    :cond_2
    return-void
.end method

.method public static final getInstance()Lcom/miui/screenrecorder/StableScreenRecorder;
    .locals 1

    .prologue
    .line 138
    invoke-static {}, Lcom/miui/screenrecorder/StableScreenRecorder$SingletonHolder;->access$100()Lcom/miui/screenrecorder/StableScreenRecorder;

    move-result-object v0

    return-object v0
.end method

.method private getSystemTimeMillisWithMode()J
    .locals 2

    .prologue
    .line 986
    iget-boolean v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mIsFixedFrame:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method private getSystemTimeNanosWithMode()J
    .locals 2

    .prologue
    .line 990
    iget-boolean v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mIsFixedFrame:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    goto :goto_0
.end method

.method private handleAudioRecording([Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "inputBuffers"    # [Ljava/nio/ByteBuffer;

    .prologue
    const/4 v3, 0x0

    .line 917
    invoke-direct {p0, p1}, Lcom/miui/screenrecorder/StableScreenRecorder;->transferAudioDataToEncoder([Ljava/nio/ByteBuffer;)V

    .line 919
    :goto_0
    iget-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioEncoder:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    .line 921
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-boolean v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mMuxerStarted:Z

    if-eqz v1, :cond_0

    .line 922
    invoke-direct {p0, v0}, Lcom/miui/screenrecorder/StableScreenRecorder;->encodeToAudioTrack(I)V

    .line 923
    iget-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_0

    .line 924
    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 925
    const-wide/16 v2, 0xa

    invoke-direct {p0, v2, v3}, Lcom/miui/screenrecorder/StableScreenRecorder;->sleep(J)V

    .line 940
    :goto_1
    return-void

    .line 927
    :cond_1
    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    .line 928
    const-string v1, "StableScreenRecorderCore"

    const-string v2, "audio, the output format has changed, reset output format"

    invoke-static {v1, v2}, Lcom/miui/screenrecorder/tools/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    invoke-direct {p0}, Lcom/miui/screenrecorder/StableScreenRecorder;->resetAudioOutputFormat()V

    goto :goto_1

    .line 931
    :cond_2
    const/4 v1, -0x3

    if-ne v0, v1, :cond_3

    .line 932
    const-string v1, "StableScreenRecorderCore"

    const-string v2, "audio, the output buffers have changed, refer to the new set of output buffers"

    invoke-static {v1, v2}, Lcom/miui/screenrecorder/tools/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 935
    :cond_3
    iget-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 936
    const-string v1, "StableScreenRecorderCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio, unhandled index, index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/screenrecorder/tools/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleVideoRecording()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 943
    iget-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVideoEncoder:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    .line 945
    .local v0, "index":I
    if-ltz v0, :cond_1

    iget-boolean v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mMuxerStarted:Z

    if-eqz v1, :cond_1

    .line 946
    invoke-direct {p0, v0}, Lcom/miui/screenrecorder/StableScreenRecorder;->encodeToVideoTrack(I)V

    .line 947
    iget-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 948
    iget-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    .line 949
    const-string v1, "StableScreenRecorderCore"

    const-string v2, "video, received end-of-stream, stop recording"

    invoke-static {v1, v2}, Lcom/miui/screenrecorder/tools/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    invoke-virtual {p0}, Lcom/miui/screenrecorder/StableScreenRecorder;->stop()V

    .line 963
    :cond_0
    :goto_0
    return-void

    .line 952
    :cond_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 953
    const-wide/16 v2, 0xa

    invoke-direct {p0, v2, v3}, Lcom/miui/screenrecorder/StableScreenRecorder;->sleep(J)V

    goto :goto_0

    .line 954
    :cond_2
    const/4 v1, -0x2

    if-ne v0, v1, :cond_3

    .line 955
    const-string v1, "StableScreenRecorderCore"

    const-string v2, "video, the output format has changed, reset output format"

    invoke-static {v1, v2}, Lcom/miui/screenrecorder/tools/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    invoke-direct {p0}, Lcom/miui/screenrecorder/StableScreenRecorder;->resetVideoOutputFormat()V

    goto :goto_0

    .line 957
    :cond_3
    const/4 v1, -0x3

    if-ne v0, v1, :cond_4

    .line 958
    const-string v1, "StableScreenRecorderCore"

    const-string v2, "video, the output buffers have changed, refer to the new set of output buffers"

    invoke-static {v1, v2}, Lcom/miui/screenrecorder/tools/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 960
    :cond_4
    iget-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 961
    const-string v1, "StableScreenRecorderCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "video, unhandled index, index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/screenrecorder/tools/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private prepareAudioEncoder(II)V
    .locals 6
    .param p1, "sampleRate"    # I
    .param p2, "channelCount"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 387
    const-string v2, "audio/mp4a-latm"

    invoke-static {v2, p1, p2}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    .line 389
    .local v1, "format":Landroid/media/MediaFormat;
    const-string v2, "aac-profile"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 390
    const-string v2, "channel-mask"

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 391
    const-string v2, "bitrate"

    const v3, 0x4e200

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 393
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-le v2, v3, :cond_0

    .line 394
    const-string v2, "priority"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 396
    :cond_0
    const-string v2, "StableScreenRecorderCore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create audio format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/screenrecorder/tools/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :try_start_0
    const-string v2, "audio/mp4a-latm"

    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioEncoder:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    iget-object v2, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioEncoder:Landroid/media/MediaCodec;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v5, v5, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 406
    iget-object v2, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    .line 407
    const-string v2, "StableScreenRecorderCore"

    const-string v3, "audio encoder start success"

    invoke-static {v2, v3}, Lcom/miui/screenrecorder/tools/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :goto_0
    return-void

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "StableScreenRecorderCore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to create audio encoder, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private prepareEncoder()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 324
    invoke-direct {p0}, Lcom/miui/screenrecorder/StableScreenRecorder;->prepareVideoEncoder()V

    .line 325
    iget v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioSource:I

    if-ne v0, v2, :cond_1

    .line 326
    const v0, 0xac44

    invoke-direct {p0, v0, v2}, Lcom/miui/screenrecorder/StableScreenRecorder;->prepareAudioEncoder(II)V

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    iget v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioSource:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 328
    const v0, 0xbb80

    invoke-direct {p0, v0, v2}, Lcom/miui/screenrecorder/StableScreenRecorder;->prepareAudioEncoder(II)V

    goto :goto_0

    .line 329
    :cond_2
    iget v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioSource:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 330
    invoke-direct {p0}, Lcom/miui/screenrecorder/StableScreenRecorder;->prepareInnerAudioEncoder()V

    goto :goto_0
.end method

.method private prepareInnerAudioEncoder()V
    .locals 33

    .prologue
    .line 412
    const-wide/16 v26, 0x2800

    .line 413
    .local v26, "size":J
    :try_start_0
    new-instance v29, Landroid/os/MemoryFile;

    const-string v30, "screenRecord"

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v31, v0

    invoke-direct/range {v29 .. v31}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/screenrecorder/StableScreenRecorder;->mData:Landroid/os/MemoryFile;

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/screenrecorder/StableScreenRecorder;->mData:Landroid/os/MemoryFile;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 415
    .local v4, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v29, "getFileDescriptor"

    const/16 v30, 0x0

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v4, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v20

    .line 416
    .local v20, "getFileDescriptor":Ljava/lang/reflect/Method;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/screenrecorder/StableScreenRecorder;->mData:Landroid/os/MemoryFile;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/io/FileDescriptor;

    .line 418
    .local v19, "fileDescriptor":Ljava/io/FileDescriptor;
    const-class v24, Landroid/os/ParcelFileDescriptor;

    .line 419
    .local v24, "parcelFileDescriptorClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/os/ParcelFileDescriptor;>;"
    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const-class v31, Ljava/io/FileDescriptor;

    aput-object v31, v29, v30

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v16

    .line 420
    .local v16, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Landroid/os/ParcelFileDescriptor;>;"
    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v19, v29, v30

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/ParcelFileDescriptor;

    .line 422
    .local v23, "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    const-string v29, "android.os.ServiceManager"

    invoke-static/range {v29 .. v29}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v28

    .line 423
    .local v28, "smClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v29, "getService"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const-class v32, Ljava/lang/String;

    aput-object v32, v30, v31

    invoke-virtual/range {v28 .. v30}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v22

    .line 424
    .local v22, "getService":Ljava/lang/reflect/Method;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const-string v32, "audio"

    aput-object v32, v30, v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/IBinder;

    .line 426
    .local v13, "binder":Landroid/os/IBinder;
    const-string v29, "android.media.IAudioService$Stub"

    invoke-static/range {v29 .. v29}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 427
    .local v10, "asStubClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v29, "asInterface"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const-class v32, Landroid/os/IBinder;

    aput-object v32, v30, v31

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v10, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 429
    .local v8, "asInterface":Ljava/lang/reflect/Method;
    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v13, v29, v30

    move-object/from16 v0, v29

    invoke-virtual {v8, v10, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 430
    .local v6, "as":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 433
    .local v7, "asClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-string v29, "createAudioRecordForLoopbackCb"

    const/16 v30, 0x3

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const-class v32, Landroid/os/ParcelFileDescriptor;

    aput-object v32, v30, v31

    const/16 v31, 0x1

    sget-object v32, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v32, v30, v31

    const/16 v31, 0x2

    const-class v32, Landroid/os/IBinder;

    aput-object v32, v30, v31

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v7, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    .line 434
    .local v17, "createAudioRecordForLoopback":Ljava/lang/reflect/Method;
    const/16 v29, 0x3

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v23, v29, v30

    const/16 v30, 0x1

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/screenrecorder/StableScreenRecorder;->mICallBack:Landroid/os/IBinder;

    move-object/from16 v31, v0

    aput-object v31, v29, v30

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v6, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/IBinder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 440
    .local v12, "b2":Landroid/os/IBinder;
    :goto_0
    :try_start_2
    const-string v29, "android.media.IMiuiAudioRecord$Stub"

    invoke-static/range {v29 .. v29}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 441
    .local v5, "arClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v29, "asInterface"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const-class v32, Landroid/os/IBinder;

    aput-object v32, v30, v31

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 442
    .local v9, "asInterface1":Ljava/lang/reflect/Method;
    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v12, v29, v30

    move-object/from16 v0, v29

    invoke-virtual {v9, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/screenrecorder/StableScreenRecorder;->mMiuiAudioRecord:Ljava/lang/Object;

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/screenrecorder/StableScreenRecorder;->mMiuiAudioRecord:Ljava/lang/Object;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    .line 445
    .local v11, "audioRecordClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v29, "getMetaData"

    const/16 v30, 0x0

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v11, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v21

    .line 446
    .local v21, "getMetaData":Ljava/lang/reflect/Method;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/screenrecorder/StableScreenRecorder;->mMiuiAudioRecord:Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Bundle;

    .line 447
    .local v14, "bundle":Landroid/os/Bundle;
    if-eqz v14, :cond_0

    .line 448
    const-string v29, "sample-rate"

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v25

    .line 449
    .local v25, "sampleRate":I
    const-string v29, "channel-count"

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 450
    .local v15, "channelCount":I
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1, v15}, Lcom/miui/screenrecorder/StableScreenRecorder;->prepareAudioEncoder(II)V

    .line 455
    .end local v4    # "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "arClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "as":Ljava/lang/Object;
    .end local v7    # "asClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "asInterface":Ljava/lang/reflect/Method;
    .end local v9    # "asInterface1":Ljava/lang/reflect/Method;
    .end local v10    # "asStubClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "audioRecordClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "b2":Landroid/os/IBinder;
    .end local v13    # "binder":Landroid/os/IBinder;
    .end local v14    # "bundle":Landroid/os/Bundle;
    .end local v15    # "channelCount":I
    .end local v16    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Landroid/os/ParcelFileDescriptor;>;"
    .end local v17    # "createAudioRecordForLoopback":Ljava/lang/reflect/Method;
    .end local v19    # "fileDescriptor":Ljava/io/FileDescriptor;
    .end local v20    # "getFileDescriptor":Ljava/lang/reflect/Method;
    .end local v21    # "getMetaData":Ljava/lang/reflect/Method;
    .end local v22    # "getService":Ljava/lang/reflect/Method;
    .end local v23    # "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    .end local v24    # "parcelFileDescriptorClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/os/ParcelFileDescriptor;>;"
    .end local v25    # "sampleRate":I
    .end local v28    # "smClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_1
    return-void

    .line 435
    .restart local v4    # "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "as":Ljava/lang/Object;
    .restart local v7    # "asClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v8    # "asInterface":Ljava/lang/reflect/Method;
    .restart local v10    # "asStubClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v13    # "binder":Landroid/os/IBinder;
    .restart local v16    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Landroid/os/ParcelFileDescriptor;>;"
    .restart local v19    # "fileDescriptor":Ljava/io/FileDescriptor;
    .restart local v20    # "getFileDescriptor":Ljava/lang/reflect/Method;
    .restart local v22    # "getService":Ljava/lang/reflect/Method;
    .restart local v23    # "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    .restart local v24    # "parcelFileDescriptorClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/os/ParcelFileDescriptor;>;"
    .restart local v28    # "smClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v18

    .line 436
    .local v18, "e":Ljava/lang/Exception;
    const-string v29, "createAudioRecordForLoopback"

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const-class v32, Landroid/os/ParcelFileDescriptor;

    aput-object v32, v30, v31

    const/16 v31, 0x1

    sget-object v32, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v32, v30, v31

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v7, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    .line 437
    .restart local v17    # "createAudioRecordForLoopback":Ljava/lang/reflect/Method;
    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v23, v29, v30

    const/16 v30, 0x1

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    aput-object v31, v29, v30

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v6, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/IBinder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .restart local v12    # "b2":Landroid/os/IBinder;
    goto/16 :goto_0

    .line 452
    .end local v4    # "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "as":Ljava/lang/Object;
    .end local v7    # "asClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "asInterface":Ljava/lang/reflect/Method;
    .end local v10    # "asStubClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "b2":Landroid/os/IBinder;
    .end local v13    # "binder":Landroid/os/IBinder;
    .end local v16    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Landroid/os/ParcelFileDescriptor;>;"
    .end local v17    # "createAudioRecordForLoopback":Ljava/lang/reflect/Method;
    .end local v18    # "e":Ljava/lang/Exception;
    .end local v19    # "fileDescriptor":Ljava/io/FileDescriptor;
    .end local v20    # "getFileDescriptor":Ljava/lang/reflect/Method;
    .end local v22    # "getService":Ljava/lang/reflect/Method;
    .end local v23    # "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    .end local v24    # "parcelFileDescriptorClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/os/ParcelFileDescriptor;>;"
    .end local v28    # "smClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v18

    .line 453
    .restart local v18    # "e":Ljava/lang/Exception;
    const-string v29, "StableScreenRecorderCore"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Exception occur about MiuiAudiorecord :"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private prepareMediaMuxer()V
    .locals 4

    .prologue
    .line 459
    :try_start_0
    new-instance v1, Landroid/media/MediaMuxer;

    iget-object v2, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mFilePath:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    :goto_0
    const-string v1, "StableScreenRecorderCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create muxer success, file = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/screenrecorder/tools/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    return-void

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "StableScreenRecorderCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when create muxer, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/screenrecorder/tools/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mMuxer:Landroid/media/MediaMuxer;

    goto :goto_0
.end method

.method private prepareVideoEncoder()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 335
    const-string v1, "video/avc"

    iget v2, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mWidth:I

    iget v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mHeight:I

    invoke-static {v1, v2, v3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v8

    .line 339
    .local v8, "format":Landroid/media/MediaFormat;
    const-string v1, "color-format"

    const v2, 0x7f000789

    invoke-virtual {v8, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 342
    const-string v1, "bitrate"

    iget v2, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mBitRate:I

    invoke-virtual {v8, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 343
    const-string v1, "frame-rate"

    iget v2, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mFrameRate:I

    invoke-virtual {v8, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 344
    const-string v1, "i-frame-interval"

    const/16 v2, 0xa

    invoke-virtual {v8, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 345
    const-string v1, "StableScreenRecorderCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create video format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/screenrecorder/tools/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :try_start_0
    const-string v1, "video/avc"

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVideoEncoder:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    iget-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, v8, v5, v5, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 356
    iget-boolean v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mIsFixedFrame:Z

    if-eqz v1, :cond_3

    .line 357
    const-wide/16 v6, 0x0

    .line 358
    .local v6, "offsetTime":J
    iget v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioSource:I

    if-ne v1, v4, :cond_1

    .line 359
    sget-object v1, Lcom/miui/screenrecorder/config/PhoneConfigInstance;->INSTANCE:Lcom/miui/screenrecorder/config/PhoneConfigInstance;

    invoke-virtual {v1}, Lcom/miui/screenrecorder/config/PhoneConfigInstance;->getInstance()Lcom/miui/screenrecorder/config/PhoneConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/screenrecorder/config/PhoneConfig;->getMicOffset()J

    move-result-wide v6

    .line 363
    :cond_0
    :goto_0
    new-instance v1, Lcom/miui/screenrecorder/glec/EGLRender;

    iget-object v2, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v2

    iget v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mWidth:I

    iget v4, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mHeight:I

    iget v5, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mFrameRate:I

    invoke-direct/range {v1 .. v7}, Lcom/miui/screenrecorder/glec/EGLRender;-><init>(Landroid/view/Surface;IIIJ)V

    iput-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mEglRender:Lcom/miui/screenrecorder/glec/EGLRender;

    .line 364
    iget-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mEglRender:Lcom/miui/screenrecorder/glec/EGLRender;

    new-instance v2, Lcom/miui/screenrecorder/StableScreenRecorder$1;

    invoke-direct {v2, p0}, Lcom/miui/screenrecorder/StableScreenRecorder$1;-><init>(Lcom/miui/screenrecorder/StableScreenRecorder;)V

    invoke-virtual {v1, v2}, Lcom/miui/screenrecorder/glec/EGLRender;->setCallBack(Lcom/miui/screenrecorder/glec/EGLRender$onFrameCallBack;)V

    .line 381
    .end local v6    # "offsetTime":J
    :goto_1
    iget-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 382
    const-string v1, "StableScreenRecorderCore"

    const-string v2, "video encoder start success"

    invoke-static {v1, v2}, Lcom/miui/screenrecorder/tools/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :goto_2
    return-void

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "StableScreenRecorderCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to create video encoder, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/screenrecorder/tools/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 360
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v6    # "offsetTime":J
    :cond_1
    iget v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioSource:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioSource:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 361
    :cond_2
    sget-object v1, Lcom/miui/screenrecorder/config/PhoneConfigInstance;->INSTANCE:Lcom/miui/screenrecorder/config/PhoneConfigInstance;

    invoke-virtual {v1}, Lcom/miui/screenrecorder/config/PhoneConfigInstance;->getInstance()Lcom/miui/screenrecorder/config/PhoneConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/screenrecorder/config/PhoneConfig;->getInnerOffset()J

    move-result-wide v6

    goto :goto_0

    .line 379
    .end local v6    # "offsetTime":J
    :cond_3
    iget-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mSurface:Landroid/view/Surface;

    goto :goto_1
.end method

.method private prepareVirtualDisplay()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 470
    iget-boolean v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mIsFixedFrame:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mEglRender:Lcom/miui/screenrecorder/glec/EGLRender;

    invoke-virtual {v0}, Lcom/miui/screenrecorder/glec/EGLRender;->getDecodeSurface()Landroid/view/Surface;

    move-result-object v6

    .line 471
    .local v6, "surface":Landroid/view/Surface;
    :goto_0
    iget-object v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    const-string v1, "StableScreenRecorderCore-display"

    iget v2, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mWidth:I

    iget v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mHeight:I

    move v5, v4

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 474
    const-string v0, "StableScreenRecorderCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create virtual display success, virtual display = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/screenrecorder/tools/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    return-void

    .line 470
    .end local v6    # "surface":Landroid/view/Surface;
    :cond_0
    iget-object v6, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mSurface:Landroid/view/Surface;

    goto :goto_0
.end method

.method private recording()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 559
    iget v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioSource:I

    packed-switch v0, :pswitch_data_0

    .line 586
    const-string v0, "StableScreenRecorderCore"

    const-string v1, "error sound type!"

    invoke-static {v0, v1}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 561
    :pswitch_0
    invoke-direct {p0}, Lcom/miui/screenrecorder/StableScreenRecorder;->handleVideoRecording()V

    goto :goto_0

    .line 565
    :pswitch_1
    iget-object v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVideoStart:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 566
    new-instance v0, Lcom/miui/screenrecorder/StableScreenRecorder$VideoHandleThread;

    invoke-direct {v0, p0, v2}, Lcom/miui/screenrecorder/StableScreenRecorder$VideoHandleThread;-><init>(Lcom/miui/screenrecorder/StableScreenRecorder;Lcom/miui/screenrecorder/StableScreenRecorder$1;)V

    iput-object v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVideoThread:Lcom/miui/screenrecorder/StableScreenRecorder$VideoHandleThread;

    .line 567
    iget-object v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVideoStart:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 568
    iget-object v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVideoThread:Lcom/miui/screenrecorder/StableScreenRecorder$VideoHandleThread;

    invoke-virtual {v0}, Lcom/miui/screenrecorder/StableScreenRecorder$VideoHandleThread;->start()V

    .line 570
    :cond_1
    iget-object v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/miui/screenrecorder/StableScreenRecorder;->handleAudioRecording([Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 573
    :pswitch_2
    iget-object v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVideoStart:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 574
    new-instance v0, Lcom/miui/screenrecorder/StableScreenRecorder$VideoHandleThread;

    invoke-direct {v0, p0, v2}, Lcom/miui/screenrecorder/StableScreenRecorder$VideoHandleThread;-><init>(Lcom/miui/screenrecorder/StableScreenRecorder;Lcom/miui/screenrecorder/StableScreenRecorder$1;)V

    iput-object v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVideoThread:Lcom/miui/screenrecorder/StableScreenRecorder$VideoHandleThread;

    .line 575
    iget-object v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVideoStart:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 576
    iget-object v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVideoThread:Lcom/miui/screenrecorder/StableScreenRecorder$VideoHandleThread;

    invoke-virtual {v0}, Lcom/miui/screenrecorder/StableScreenRecorder$VideoHandleThread;->start()V

    .line 578
    :cond_2
    iget-object v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/miui/screenrecorder/StableScreenRecorder;->transferAudioDataToEncoder([Ljava/nio/ByteBuffer;)V

    .line 579
    iget-object v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioStart:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 580
    new-instance v0, Lcom/miui/screenrecorder/StableScreenRecorder$AudioHandleThread;

    invoke-direct {v0, p0, v2}, Lcom/miui/screenrecorder/StableScreenRecorder$AudioHandleThread;-><init>(Lcom/miui/screenrecorder/StableScreenRecorder;Lcom/miui/screenrecorder/StableScreenRecorder$1;)V

    iput-object v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioThread:Lcom/miui/screenrecorder/StableScreenRecorder$AudioHandleThread;

    .line 581
    iget-object v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioStart:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 582
    iget-object v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioThread:Lcom/miui/screenrecorder/StableScreenRecorder$AudioHandleThread;

    invoke-virtual {v0}, Lcom/miui/screenrecorder/StableScreenRecorder$AudioHandleThread;->start()V

    goto :goto_0

    .line 559
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized release(Z)V
    .locals 6
    .param p1, "isStopMediaProjection"    # Z

    .prologue
    .line 740
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mFilePath:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 741
    const-string v3, "StableScreenRecorderCore"

    const-string v4, "mFilePath is Null here before release!"

    invoke-static {v3, v4}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVideoChangedFormatDone:Z

    .line 745
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioChangedFormatDone:Z

    .line 746
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mReadTime:J

    .line 747
    const-string v3, ""

    iput-object v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mSavedFilePath:Ljava/lang/String;

    .line 748
    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 749
    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 750
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioStart:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 751
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVideoStart:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 753
    iget-object v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mEglRender:Lcom/miui/screenrecorder/glec/EGLRender;

    if-eqz v3, :cond_1

    .line 754
    iget-object v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mEglRender:Lcom/miui/screenrecorder/glec/EGLRender;

    invoke-virtual {v3}, Lcom/miui/screenrecorder/glec/EGLRender;->stop()V

    .line 757
    :cond_1
    iget-object v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVideoThread:Lcom/miui/screenrecorder/StableScreenRecorder$VideoHandleThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    .line 759
    :try_start_1
    iget-object v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVideoThread:Lcom/miui/screenrecorder/StableScreenRecorder$VideoHandleThread;

    invoke-virtual {v3}, Lcom/miui/screenrecorder/StableScreenRecorder$VideoHandleThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 765
    :cond_2
    :goto_0
    :try_start_2
    iget v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioSource:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 766
    const-string v3, "FOR_LOOPBACK"

    const-string v4, "FORCE_NONE"

    invoke-direct {p0, v3, v4}, Lcom/miui/screenrecorder/StableScreenRecorder;->audioSetForceUse(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    :cond_3
    iget-object v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVideoEncoder:Landroid/media/MediaCodec;

    if-eqz v3, :cond_4

    .line 770
    iget-object v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->stop()V

    .line 771
    iget-object v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->release()V

    .line 772
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVideoEncoder:Landroid/media/MediaCodec;

    .line 775
    :cond_4
    iget-object v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioThread:Lcom/miui/screenrecorder/StableScreenRecorder$AudioHandleThread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_5

    .line 777
    :try_start_3
    iget-object v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioThread:Lcom/miui/screenrecorder/StableScreenRecorder$AudioHandleThread;

    invoke-virtual {v3}, Lcom/miui/screenrecorder/StableScreenRecorder$AudioHandleThread;->join()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 783
    :cond_5
    :goto_1
    :try_start_4
    iget-object v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioRecordStarted:Z

    if-eqz v3, :cond_6

    .line 784
    iget-object v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->release()V

    .line 785
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioRecordStarted:Z

    .line 786
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    .line 789
    :cond_6
    iget-object v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioEncoder:Landroid/media/MediaCodec;

    if-eqz v3, :cond_7

    .line 790
    iget-object v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->stop()V

    .line 791
    iget-object v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->release()V

    .line 792
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioEncoder:Landroid/media/MediaCodec;

    .line 795
    :cond_7
    iget-object v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mMiuiAudioRecord:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_8

    .line 797
    :try_start_5
    iget-object v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mMiuiAudioRecord:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 798
    .local v0, "audioRecordClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "stop"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 799
    .local v2, "stopRecordMethod":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mMiuiAudioRecord:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 803
    .end local v0    # "audioRecordClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "stopRecordMethod":Ljava/lang/reflect/Method;
    :goto_2
    const/4 v3, 0x0

    :try_start_6
    iput-object v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mMiuiAudioRecord:Ljava/lang/Object;

    .line 804
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioRecordStarted:Z

    .line 807
    :cond_8
    iget-object v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v3, :cond_9

    .line 808
    iget-object v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v3}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 809
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 813
    :cond_9
    if-eqz p1, :cond_a

    iget-object v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    if-eqz v3, :cond_a

    .line 814
    const-string v3, "StableScreenRecorderCore"

    const-string v4, "stop media projection"

    invoke-static {v3, v4}, Lcom/miui/screenrecorder/tools/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    iget-object v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    invoke-virtual {v3}, Landroid/media/projection/MediaProjection;->stop()V

    .line 816
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    .line 819
    :cond_a
    iget-object v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mMuxer:Landroid/media/MediaMuxer;

    if-eqz v3, :cond_c

    .line 820
    iget-boolean v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mMuxerStarted:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v3, :cond_b

    .line 822
    :try_start_7
    iget-object v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v3}, Landroid/media/MediaMuxer;->stop()V

    .line 823
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mMuxerStarted:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 830
    :cond_b
    :goto_3
    :try_start_8
    iget-object v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v3}, Landroid/media/MediaMuxer;->release()V

    .line 831
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mMuxer:Landroid/media/MediaMuxer;

    .line 833
    :cond_c
    iget-object v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mFilePath:Ljava/lang/String;

    if-nez v3, :cond_d

    .line 834
    const-string v3, "StableScreenRecorderCore"

    const-string v4, "mFilePath is Null here after release!"

    invoke-static {v3, v4}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    :cond_d
    const-string v3, "StableScreenRecorderCore"

    const-string v4, "release all things"

    invoke-static {v3, v4}, Lcom/miui/screenrecorder/tools/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 838
    monitor-exit p0

    return-void

    .line 760
    :catch_0
    move-exception v1

    .line 761
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_9
    const-string v3, "StableScreenRecorderCore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAudioThread join get Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 740
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 778
    :catch_1
    move-exception v1

    .line 779
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    :try_start_a
    const-string v3, "StableScreenRecorderCore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAudioThread join get Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 800
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v1

    .line 801
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "StableScreenRecorderCore"

    const-string v4, "Error when stopping mMiuiAudioRecord"

    invoke-static {v3, v4, v1}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_2

    .line 824
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 825
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v3, "StableScreenRecorderCore"

    const-string v4, "Error when stopping MediaMuxer"

    invoke-static {v3, v4, v1}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 826
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mMuxerStarted:Z

    .line 827
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_3
.end method

.method private resetAudioOutputFormat()V
    .locals 4

    .prologue
    .line 718
    iget-boolean v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mMuxerStarted:Z

    if-eqz v1, :cond_0

    .line 719
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "output format already changed!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 721
    :cond_0
    iget-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 722
    .local v0, "newAudioFormat":Landroid/media/MediaFormat;
    const-string v1, "StableScreenRecorderCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio output format changed. new format = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/screenrecorder/tools/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    iget-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1, v0}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v1

    iput v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioTrackIndex:I

    .line 725
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioChangedFormatDone:Z

    .line 727
    invoke-direct {p0}, Lcom/miui/screenrecorder/StableScreenRecorder;->startMuxer()V

    .line 728
    return-void
.end method

.method private resetVideoOutputFormat()V
    .locals 4

    .prologue
    .line 703
    iget-boolean v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mMuxerStarted:Z

    if-eqz v1, :cond_0

    .line 704
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "output format already changed!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 707
    :cond_0
    iget-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 708
    .local v0, "newVedioFormat":Landroid/media/MediaFormat;
    const-string v1, "StableScreenRecorderCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "video output format changed. new format = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/screenrecorder/tools/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    iget-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1, v0}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v1

    iput v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVideoTrackIndex:I

    .line 711
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVideoChangedFormatDone:Z

    .line 713
    invoke-direct {p0}, Lcom/miui/screenrecorder/StableScreenRecorder;->startMuxer()V

    .line 714
    return-void
.end method

.method private runEncoder()V
    .locals 4

    .prologue
    .line 538
    iget-boolean v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mIsFixedFrame:Z

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mEglRender:Lcom/miui/screenrecorder/glec/EGLRender;

    invoke-direct {p0}, Lcom/miui/screenrecorder/StableScreenRecorder;->getSystemTimeNanosWithMode()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/screenrecorder/glec/EGLRender;->setStartTimeNs(J)V

    .line 540
    iget-object v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mEglRender:Lcom/miui/screenrecorder/glec/EGLRender;

    invoke-virtual {v0}, Lcom/miui/screenrecorder/glec/EGLRender;->start()V

    .line 541
    const-string v0, "StableScreenRecorderCore"

    const-string v1, "Encoder running"

    invoke-static {v0, v1}, Lcom/miui/screenrecorder/tools/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    :cond_0
    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 545
    iget v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioSource:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioSource:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 546
    :cond_1
    invoke-direct {p0}, Lcom/miui/screenrecorder/StableScreenRecorder;->startAudioRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 547
    iget-object v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mInputBuffers:[Ljava/nio/ByteBuffer;

    .line 551
    :cond_2
    iget v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioSource:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 552
    invoke-direct {p0}, Lcom/miui/screenrecorder/StableScreenRecorder;->startInnerAudioRecording()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 553
    iget-object v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mInputBuffers:[Ljava/nio/ByteBuffer;

    .line 556
    :cond_3
    return-void
.end method

.method private sendResultBroadcast(Z)V
    .locals 12
    .param p1, "isSuccess"    # Z

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 292
    if-eqz p1, :cond_2

    .line 293
    new-instance v3, Landroid/content/Intent;

    const-string v6, "miui.screenrecorder.record.sucess"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    .local v3, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->getLastPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 295
    .local v5, "packageName":Ljava/lang/String;
    const-string v6, "display_name"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    invoke-direct {p0}, Lcom/miui/screenrecorder/StableScreenRecorder;->getSystemTimeMillisWithMode()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mStartTime:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->millTurnToSeconds(J)J

    move-result-wide v0

    .line 297
    .local v0, "duration":J
    const-string v6, "duration"

    invoke-virtual {v3, v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 298
    iget-object v6, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mSavedFilePath:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mFilePath:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 299
    iget-object v6, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mFilePath:Ljava/lang/String;

    iput-object v6, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mSavedFilePath:Ljava/lang/String;

    .line 301
    :cond_0
    iget-object v6, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mSavedFilePath:Ljava/lang/String;

    invoke-static {v6}, Lcom/miui/screenrecorder/tools/MediaFileUtils;->convertTmpFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 302
    .local v4, "newFilePath":Ljava/lang/String;
    const-string v6, ""

    iput-object v6, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mSavedFilePath:Ljava/lang/String;

    .line 303
    iget-object v6, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mContext:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/miui/screenrecorder/tools/MediaFileUtils;->scanFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 304
    const-string v6, "file_path"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    invoke-static {v4}, Lcom/miui/screenrecorder/tools/MediaFileUtils;->isOverMaxFileSize(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 306
    const-string v6, "is_over_max_size"

    invoke-virtual {v3, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 319
    .end local v0    # "duration":J
    .end local v4    # "newFilePath":Ljava/lang/String;
    .end local v5    # "packageName":Ljava/lang/String;
    :goto_0
    const-string v6, "StableScreenRecorderCore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "send result to outside, record result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/screenrecorder/tools/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v6, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 321
    return-void

    .line 308
    .restart local v0    # "duration":J
    .restart local v4    # "newFilePath":Ljava/lang/String;
    .restart local v5    # "packageName":Ljava/lang/String;
    :cond_1
    const-string v6, "is_over_max_size"

    invoke-virtual {v3, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 311
    .end local v0    # "duration":J
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "newFilePath":Ljava/lang/String;
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string v6, "miui.screenrecorder.record.fail"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 312
    .restart local v3    # "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mSavedFilePath:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mFilePath:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 313
    iget-object v6, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mFilePath:Ljava/lang/String;

    iput-object v6, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mSavedFilePath:Ljava/lang/String;

    .line 315
    :cond_3
    new-instance v2, Ljava/io/File;

    iget-object v6, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mSavedFilePath:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 316
    .local v2, "file":Ljava/io/File;
    new-array v6, v11, [Ljava/io/File;

    aput-object v2, v6, v10

    invoke-static {v6}, Lcom/miui/screenrecorder/tools/MediaFileUtils;->deleteFile([Ljava/io/File;)I

    .line 317
    const-string v6, ""

    iput-object v6, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mSavedFilePath:Ljava/lang/String;

    goto :goto_0
.end method

.method private sleep(J)V
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 967
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 971
    :goto_0
    return-void

    .line 968
    :catch_0
    move-exception v0

    .line 969
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "StableScreenRecorderCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when audio thread sleeping, e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startAudioRecording()Z
    .locals 12

    .prologue
    const v11, 0x7f08003d

    const/4 v10, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 479
    const v2, 0xac44

    .line 480
    .local v2, "sampleRateInHz":I
    iget v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioSource:I

    if-ne v0, v7, :cond_0

    .line 481
    const/4 v1, 0x1

    .line 486
    .local v1, "audioSource":I
    :goto_0
    const/16 v3, 0x10

    .line 487
    .local v3, "channelConfig":I
    const/4 v4, 0x2

    .line 488
    .local v4, "audioFormat":I
    invoke-static {v2, v3, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    .line 489
    .local v5, "bufferSizeInBytes":I
    const-string v0, "StableScreenRecorderCore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "audio, AudioRecord, min buffer size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/miui/screenrecorder/tools/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    new-instance v0, Landroid/media/AudioRecord;

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    .line 498
    iget-object v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eq v0, v7, :cond_1

    .line 499
    iget-object v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 500
    const-string v0, "StableScreenRecorderCore"

    const-string v7, "audio, AudioRecord initial failed"

    invoke-static {v0, v7}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    .line 521
    :goto_1
    return v0

    .line 483
    .end local v1    # "audioSource":I
    .end local v3    # "channelConfig":I
    .end local v4    # "audioFormat":I
    .end local v5    # "bufferSizeInBytes":I
    :cond_0
    const/16 v1, 0x8

    .line 484
    .restart local v1    # "audioSource":I
    const v2, 0xbb80

    goto :goto_0

    .line 504
    .restart local v3    # "channelConfig":I
    .restart local v4    # "audioFormat":I
    .restart local v5    # "bufferSizeInBytes":I
    :cond_1
    iget v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioSource:I

    if-ne v0, v10, :cond_2

    .line 505
    const-string v0, "FOR_LOOPBACK"

    const-string v8, "FORCE_SPEAKER"

    invoke-direct {p0, v0, v8}, Lcom/miui/screenrecorder/StableScreenRecorder;->audioSetForceUse(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    :cond_2
    iget-object v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 509
    iget-object v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    if-eq v0, v10, :cond_4

    .line 510
    iget-object v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 511
    iput v6, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioSource:I

    .line 512
    iget-object v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_3

    .line 513
    iget-object v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 514
    iget-object v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 515
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioEncoder:Landroid/media/MediaCodec;

    :cond_3
    move v0, v6

    .line 517
    goto :goto_1

    .line 519
    :cond_4
    iput-boolean v7, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioRecordStarted:Z

    .line 520
    const-string v0, "StableScreenRecorderCore"

    const-string v6, "start audio recording"

    invoke-static {v0, v6}, Lcom/miui/screenrecorder/tools/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    .line 521
    goto :goto_1
.end method

.method private startInnerAudioRecording()Z
    .locals 10

    .prologue
    .line 525
    const/4 v2, 0x0

    .line 527
    .local v2, "isStartSusses":Z
    :try_start_0
    iget-object v6, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mMiuiAudioRecord:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 528
    .local v0, "audioRecordClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lcom/miui/screenrecorder/StableScreenRecorder;->getSystemTimeNanosWithMode()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long v4, v6, v8

    .line 529
    .local v4, "startTime":J
    const-string v6, "start"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 530
    .local v3, "startRecordMethod":Ljava/lang/reflect/Method;
    iget-object v6, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mMiuiAudioRecord:Ljava/lang/Object;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 534
    .end local v0    # "audioRecordClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "startRecordMethod":Ljava/lang/reflect/Method;
    .end local v4    # "startTime":J
    :goto_0
    return v2

    .line 531
    :catch_0
    move-exception v1

    .line 532
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "StableScreenRecorderCore"

    const-string v7, "mMiuiAudioRecord start fail in start()"

    invoke-static {v6, v7, v1}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private startMuxer()V
    .locals 3

    .prologue
    .line 731
    iget-boolean v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVideoChangedFormatDone:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioSource:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioChangedFormatDone:Z

    if-eqz v0, :cond_1

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    .line 733
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mMuxerStarted:Z

    .line 734
    const-string v0, "StableScreenRecorderCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start media muxer success, and recording is really to start now. video index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mVideoTrackIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", audio index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioTrackIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/screenrecorder/tools/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    :cond_1
    return-void
.end method

.method private transferAudioDataToEncoder([Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "inputBuffers"    # [Ljava/nio/ByteBuffer;

    .prologue
    .line 592
    iget v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioSource:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioSource:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 593
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/screenrecorder/StableScreenRecorder;->transferMicAudioDataToEncoder([Ljava/nio/ByteBuffer;)V

    .line 597
    :cond_1
    :goto_0
    return-void

    .line 594
    :cond_2
    iget v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioSource:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 595
    invoke-direct {p0, p1}, Lcom/miui/screenrecorder/StableScreenRecorder;->transferInnerAudioDataToEncoder([Ljava/nio/ByteBuffer;)V

    goto :goto_0
.end method

.method private transferInnerAudioDataToEncoder([Ljava/nio/ByteBuffer;)V
    .locals 18
    .param p1, "inputBuffers"    # [Ljava/nio/ByteBuffer;

    .prologue
    .line 631
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioEncoder:Landroid/media/MediaCodec;

    const-wide/16 v16, 0x2710

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    .line 632
    .local v3, "inputBufferIndex":I
    if-ltz v3, :cond_1

    .line 633
    aget-object v13, p1, v3

    .line 635
    .local v13, "inputBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    new-array v12, v2, [B

    .line 637
    .local v12, "input":[B
    const-wide/16 v6, 0x0

    .line 639
    .local v6, "pts":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/screenrecorder/StableScreenRecorder;->mMiuiAudioRecord:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "fillBuffer"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/16 v16, 0x0

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v8, v16

    const/16 v16, 0x1

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v8, v16

    invoke-virtual {v2, v4, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 640
    .local v10, "fillBuffer":Ljava/lang/reflect/Method;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/screenrecorder/StableScreenRecorder;->mMiuiAudioRecord:Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v4, v8

    const/4 v8, 0x1

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v4, v8

    invoke-virtual {v10, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    .line 641
    .local v11, "info":Landroid/os/Bundle;
    if-eqz v11, :cond_0

    .line 642
    const-string v2, "size"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v15, v0

    .line 643
    .local v15, "memorySize":I
    const-string v2, "presentationTimeUs"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 644
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/screenrecorder/StableScreenRecorder;->mData:Landroid/os/MemoryFile;

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2, v12, v4, v8, v15}, Landroid/os/MemoryFile;->readBytes([BIII)I

    move-result v14

    .line 645
    .local v14, "inputReadResult":I
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 646
    const/4 v2, 0x0

    invoke-virtual {v13, v12, v2, v14}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    .end local v14    # "inputReadResult":I
    .end local v15    # "memorySize":I
    :cond_0
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 654
    .local v5, "size":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioEncoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 656
    .end local v5    # "size":I
    .end local v6    # "pts":J
    .end local v10    # "fillBuffer":Ljava/lang/reflect/Method;
    .end local v11    # "info":Landroid/os/Bundle;
    .end local v12    # "input":[B
    .end local v13    # "inputBuffer":Ljava/nio/ByteBuffer;
    :cond_1
    :goto_0
    return-void

    .line 648
    .restart local v6    # "pts":J
    .restart local v12    # "input":[B
    .restart local v13    # "inputBuffer":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v9

    .line 649
    .local v9, "e":Ljava/lang/Exception;
    const-string v2, "StableScreenRecorderCore"

    const-string v4, "MiuiAudioRecord read data failed,return"

    invoke-static {v2, v4, v9}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private transferMicAudioDataToEncoder([Ljava/nio/ByteBuffer;)V
    .locals 22
    .param p1, "inputBuffers"    # [Ljava/nio/ByteBuffer;

    .prologue
    .line 600
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioEncoder:Landroid/media/MediaCodec;

    const-wide/16 v18, 0x2710

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    .line 601
    .local v5, "inputBufferIndex":I
    if-ltz v5, :cond_3

    .line 602
    aget-object v16, p1, v5

    .line 604
    .local v16, "inputBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    new-array v11, v4, [B

    .line 605
    .local v11, "input":[B
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    const/4 v6, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v10

    invoke-virtual {v4, v11, v6, v10}, Landroid/media/AudioRecord;->read([BII)I

    move-result v17

    .line 607
    .local v17, "inputReadResult":I
    const-wide/16 v12, 0x0

    .line 608
    .local v12, "delayTime":J
    invoke-direct/range {p0 .. p0}, Lcom/miui/screenrecorder/StableScreenRecorder;->getSystemTimeMillisWithMode()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/screenrecorder/StableScreenRecorder;->mReadTime:J

    move-wide/from16 v20, v0

    sub-long v14, v18, v20

    .line 609
    .local v14, "duration":J
    const-wide/16 v18, 0x23

    cmp-long v4, v14, v18

    if-gez v4, :cond_0

    .line 610
    const-string v4, "StableScreenRecorderCore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "duration "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/miui/screenrecorder/tools/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    :cond_0
    const-wide/16 v18, 0x1e

    cmp-long v4, v14, v18

    if-gez v4, :cond_1

    .line 613
    const-wide/16 v18, 0x1e

    sub-long v12, v18, v14

    .line 615
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/miui/screenrecorder/StableScreenRecorder;->getSystemTimeMillisWithMode()J

    move-result-wide v18

    add-long v18, v18, v12

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/miui/screenrecorder/StableScreenRecorder;->mReadTime:J

    .line 616
    const/4 v4, -0x2

    move/from16 v0, v17

    if-eq v0, v4, :cond_2

    const/4 v4, -0x3

    move/from16 v0, v17

    if-ne v0, v4, :cond_4

    .line 617
    :cond_2
    const-string v4, "StableScreenRecorderCore"

    const-string v6, "AudioRecord read failed, return"

    invoke-static {v4, v6}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    .end local v11    # "input":[B
    .end local v12    # "delayTime":J
    .end local v14    # "duration":J
    .end local v16    # "inputBuffer":Ljava/nio/ByteBuffer;
    .end local v17    # "inputReadResult":I
    :cond_3
    :goto_0
    return-void

    .line 621
    .restart local v11    # "input":[B
    .restart local v12    # "delayTime":J
    .restart local v14    # "duration":J
    .restart local v16    # "inputBuffer":Ljava/nio/ByteBuffer;
    .restart local v17    # "inputReadResult":I
    :cond_4
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 622
    const/4 v4, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v11, v4, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 624
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    .line 625
    .local v7, "size":I
    invoke-direct/range {p0 .. p0}, Lcom/miui/screenrecorder/StableScreenRecorder;->getSystemTimeNanosWithMode()J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v18, v18, v20

    const-wide/16 v20, 0x3e8

    mul-long v20, v20, v12

    add-long v8, v18, v20

    .line 626
    .local v8, "audioPresentationTimeUs":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioEncoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    .prologue
    .line 190
    const-string v0, "StableScreenRecorderCore"

    const-string v1, "Screen Recorder onDestroy"

    invoke-static {v0, v1}, Lcom/miui/screenrecorder/tools/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mHandler:Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;->sendEmptyMessage(I)Z

    .line 192
    return-void
.end method

.method public setAudioSource(I)V
    .locals 0
    .param p1, "audioSource"    # I

    .prologue
    .line 167
    iput p1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mAudioSource:I

    .line 168
    return-void
.end method

.method public setBitRate(I)V
    .locals 0
    .param p1, "bitRate"    # I

    .prologue
    .line 157
    iput p1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mBitRate:I

    .line 158
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const-string v0, "StableScreenRecorderCore"

    const-string v1, "the set file path is null!"

    invoke-static {v0, v1}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_0
    iput-object p1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mFilePath:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setFixedFrame(Z)V
    .locals 0
    .param p1, "isFixedFrame"    # Z

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mIsFixedFrame:Z

    .line 173
    return-void
.end method

.method public setFrameRate(I)V
    .locals 0
    .param p1, "frameRate"    # I

    .prologue
    .line 162
    iput p1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mFrameRate:I

    .line 163
    return-void
.end method

.method public setResolution(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 143
    iput p1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mWidth:I

    .line 144
    iput p2, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mHeight:I

    .line 145
    return-void
.end method

.method public start(Landroid/media/projection/MediaProjection;)V
    .locals 2
    .param p1, "mediaProjection"    # Landroid/media/projection/MediaProjection;

    .prologue
    .line 177
    const-string v0, "StableScreenRecorderCore"

    const-string v1, "Screen Recorder start"

    invoke-static {v0, v1}, Lcom/miui/screenrecorder/tools/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iput-object p1, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    .line 179
    iget-object v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mHandler:Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;->sendEmptyMessage(I)Z

    .line 180
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 184
    const-string v0, "StableScreenRecorderCore"

    const-string v1, "Screen Recorder stop"

    invoke-static {v0, v1}, Lcom/miui/screenrecorder/tools/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/miui/screenrecorder/StableScreenRecorder;->mHandler:Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;->sendEmptyMessage(I)Z

    .line 186
    return-void
.end method
