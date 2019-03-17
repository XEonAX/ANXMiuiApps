.class public Lcom/meicam/sdk/NvsStreamingContext;
.super Ljava/lang/Object;
.source "NvsStreamingContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meicam/sdk/NvsStreamingContext$HardwareErrorCallback;,
        Lcom/meicam/sdk/NvsStreamingContext$PlaybackExceptionCallback;,
        Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback2;,
        Lcom/meicam/sdk/NvsStreamingContext$CompileCallback2;,
        Lcom/meicam/sdk/NvsStreamingContext$TimelineTimestampCallback;,
        Lcom/meicam/sdk/NvsStreamingContext$StreamingEngineCallback;,
        Lcom/meicam/sdk/NvsStreamingContext$CompileCallback;,
        Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback;,
        Lcom/meicam/sdk/NvsStreamingContext$CaptureRecordingDurationCallback;,
        Lcom/meicam/sdk/NvsStreamingContext$CaptureRecordingStartedCallback;,
        Lcom/meicam/sdk/NvsStreamingContext$CapturedVideoFrameGrabberCallback;,
        Lcom/meicam/sdk/NvsStreamingContext$CaptureDeviceCallback;,
        Lcom/meicam/sdk/NvsStreamingContext$CaptureDeviceCapability;,
        Lcom/meicam/sdk/NvsStreamingContext$SdkVersion;,
        Lcom/meicam/sdk/NvsStreamingContext$VerifyLicenseResult;
    }
.end annotation


# static fields
.field public static final BUFFER_IMAGE_ROTATION_0:I = 0x0

.field public static final BUFFER_IMAGE_ROTATION_180:I = 0x2

.field public static final BUFFER_IMAGE_ROTATION_270:I = 0x3

.field public static final BUFFER_IMAGE_ROTATION_90:I = 0x1

.field public static final CAPTURE_DEVICE_ERROR_SERVER_DIED:I = 0x2

.field public static final CAPTURE_DEVICE_ERROR_UNKNOWN:I = 0x1

.field public static final COMPILE_AUDIO_BITRATE:Ljava/lang/String; = "audio bitrate"

.field public static final COMPILE_BITRATE:Ljava/lang/String; = "bitrate"

.field public static final COMPILE_BITRATE_GRADE_HIGH:I = 0x2

.field public static final COMPILE_BITRATE_GRADE_LOW:I = 0x0

.field public static final COMPILE_BITRATE_GRADE_MEDIUM:I = 0x1

.field public static final COMPILE_GOP_SIZE:Ljava/lang/String; = "gopsize"

.field public static final COMPILE_LOSSLESS_AUDIO:Ljava/lang/String; = "lossless audio"

.field public static final COMPILE_OPTIMIZE_FOR_NETWORK_USE:Ljava/lang/String; = "optimize-for-network-use"

.field public static final COMPILE_SOFTWARE_ENCODER_CRF:Ljava/lang/String; = "software encorder crf"

.field public static final COMPILE_SOFTWARE_ENCODER_MODE:Ljava/lang/String; = "software encorder mode"

.field public static final COMPILE_SOFTWARE_ENCODER_PRESET:Ljava/lang/String; = "software encorder preset"

.field public static final COMPILE_VIDEO_RESOLUTION_GRADE_1080:I = 0x3

.field public static final COMPILE_VIDEO_RESOLUTION_GRADE_2160:I = 0x4

.field public static final COMPILE_VIDEO_RESOLUTION_GRADE_360:I = 0x0

.field public static final COMPILE_VIDEO_RESOLUTION_GRADE_480:I = 0x1

.field public static final COMPILE_VIDEO_RESOLUTION_GRADE_720:I = 0x2

.field public static final COMPILE_VIDEO_RESOLUTION_GRADE_CUSTOM:I = 0x100

.field public static final DEBUG_LEVEL_DEBUG:I = 0x3

.field public static final DEBUG_LEVEL_ERROR:I = 0x1

.field public static final DEBUG_LEVEL_NONE:I = 0x0

.field public static final DEBUG_LEVEL_WARNING:I = 0x2

.field public static final RECORD_BITRATE:Ljava/lang/String; = "bitrate"

.field public static final RECORD_GOP_SIZE:Ljava/lang/String; = "gopsize"

.field public static final STREAMING_CONTEXT_FLAG_ASYNC_ENGINE_STATE:I = 0x10

.field public static final STREAMING_CONTEXT_FLAG_COMPACT_MEMORY_MODE:I = 0x2

.field public static final STREAMING_CONTEXT_FLAG_SUPPORT_4K_EDIT:I = 0x1

.field public static final STREAMING_CONTEXT_FLAG_SUPPORT_8K_EDIT:I = 0x4

.field public static final STREAMING_ENGINE_CAPTURE_FLAG_CAPTURE_BUDDY_HOST_VIDEO_FRAME:I = 0x20

.field public static final STREAMING_ENGINE_CAPTURE_FLAG_DONT_CAPTURE_AUDIO:I = 0x10

.field public static final STREAMING_ENGINE_CAPTURE_FLAG_DONT_USE_SYSTEM_RECORDER:I = 0x4

.field public static final STREAMING_ENGINE_CAPTURE_FLAG_FACE_ACTION_WITH_PARTICLE:I = 0x100

.field public static final STREAMING_ENGINE_CAPTURE_FLAG_GRAB_CAPTURED_VIDEO_FRAME:I = 0x1

.field public static final STREAMING_ENGINE_CAPTURE_FLAG_LOW_PIPELINE_SIZE:I = 0x200

.field public static final STREAMING_ENGINE_CAPTURE_FLAG_STRICT_PREVIEW_VIDEO_SIZE:I = 0x8

.field public static final STREAMING_ENGINE_COMPILE_FLAG_DISABLE_ALIGN_VIDEO_SIZE:I = 0x4

.field public static final STREAMING_ENGINE_COMPILE_FLAG_DISABLE_HARDWARE_ENCODER:I = 0x1

.field public static final STREAMING_ENGINE_COMPILE_FLAG_DISABLE_OPERATING_RATE:I = 0x2

.field public static final STREAMING_ENGINE_HARDWARE_ERROR_TYPE_VIDEO_DECODER_SETUP_ERROR:I = 0x2

.field public static final STREAMING_ENGINE_HARDWARE_ERROR_TYPE_VIDEO_DECODING_ERROR:I = 0x3

.field public static final STREAMING_ENGINE_HARDWARE_ERROR_TYPE_VIDEO_ENCODER_SETUP_ERROR:I = 0x0

.field public static final STREAMING_ENGINE_HARDWARE_ERROR_TYPE_VIDEO_ENCODING_ERROR:I = 0x1

.field public static final STREAMING_ENGINE_PLAYBACK_EXCEPTION_TYPE_MEDIA_FILE_ERROR:I = 0x0

.field public static final STREAMING_ENGINE_PLAYBACK_FLAG_LOW_PIPELINE_SIZE:I = 0x8

.field public static final STREAMING_ENGINE_RECORDING_FLAG_DISABLE_HARDWARE_ENCODER:I = 0x4

.field public static final STREAMING_ENGINE_RECORDING_FLAG_IGNORE_VIDEO_ROTATION:I = 0x20

.field public static final STREAMING_ENGINE_RECORDING_FLAG_ONLY_RECORD_VIDEO:I = 0x10

.field public static final STREAMING_ENGINE_RECORDING_FLAG_SOFTWARE_VIDEO_INTRA_FRAME_ONLY_FAST_STOP:I = 0x8

.field public static final STREAMING_ENGINE_RECORDING_FLAG_VIDEO_INTRA_FRAME_ONLY:I = 0x2

.field public static final STREAMING_ENGINE_SEEK_FLAG_SHOW_ANIMATED_STICKER_POSTER:I = 0x4

.field public static final STREAMING_ENGINE_SEEK_FLAG_SHOW_CAPTION_POSTER:I = 0x2

.field public static final STREAMING_ENGINE_SEND_BUFFER_FLAG_ONLY_FOR_BUDDY:I = 0x2

.field public static final STREAMING_ENGINE_SEND_BUFFER_FLAG_ONLY_FOR_GRAB:I = 0x1

.field public static final STREAMING_ENGINE_STATE_CAPTUREPREVIEW:I = 0x1

.field public static final STREAMING_ENGINE_STATE_CAPTURERECORDING:I = 0x2

.field public static final STREAMING_ENGINE_STATE_COMPILE:I = 0x5

.field public static final STREAMING_ENGINE_STATE_PLAYBACK:I = 0x3

.field public static final STREAMING_ENGINE_STATE_SEEKING:I = 0x4

.field public static final STREAMING_ENGINE_STATE_STOPPED:I = 0x0

.field public static final STREAMING_ENGINE_STOP_FLAG_ASYNC:I = 0x2

.field public static final STREAMING_ENGINE_STOP_FLAG_FORCE_STOP_COMPILATION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Meicam"

.field public static final VIDEO_CAPTURE_RESOLUTION_GRADE_HIGH:I = 0x2

.field public static final VIDEO_CAPTURE_RESOLUTION_GRADE_LOW:I = 0x0

.field public static final VIDEO_CAPTURE_RESOLUTION_GRADE_MEDIUM:I = 0x1

.field public static final VIDEO_CAPTURE_RESOLUTION_GRADE_SUPER_HIGH:I = 0x3

.field public static final VIDEO_PREVIEW_SIZEMODE_FULLSIZE:I = 0x0

.field public static final VIDEO_PREVIEW_SIZEMODE_LIVEWINDOW_SIZE:I = 0x1

.field public static final VIDEO_STABILIZATION_MODE_AUTO:I = 0x1

.field public static final VIDEO_STABILIZATION_MODE_OFF:I = 0x0

.field public static final VIDEO_STABILIZATION_MODE_STANDARD:I = 0x2

.field public static final VIDEO_STABILIZATION_MODE_SUPER:I = 0x3

.field private static m_assetManager:Landroid/content/res/AssetManager;

.field private static m_classLoader:Ljava/lang/ClassLoader;

.field private static m_context:Landroid/content/Context;

.field private static m_customNativeLibraryDirPath:Z

.field private static m_debugLevel:I

.field private static m_initializedOnce:Z

.field private static m_instance:Lcom/meicam/sdk/NvsStreamingContext;

.field private static m_maxReaderCount:I

.field private static m_maxReaderFlag:Z

.field private static m_nativeLibraryDirPath:Ljava/lang/String;

.field private static m_saveDebugMessagesToFile:Z


# instance fields
.field private m_assetPackageManager:Lcom/meicam/sdk/NvsAssetPackageManager;

.field private m_captureRecordingDurationCallback:Lcom/meicam/sdk/NvsStreamingContext$CaptureRecordingDurationCallback;

.field private m_captureRecordingStartedCallback:Lcom/meicam/sdk/NvsStreamingContext$CaptureRecordingStartedCallback;

.field private m_catpureDeviceCallback:Lcom/meicam/sdk/NvsStreamingContext$CaptureDeviceCallback;

.field private m_catpuredVideoFrameGrabberCallback:Lcom/meicam/sdk/NvsStreamingContext$CapturedVideoFrameGrabberCallback;

.field private m_compileCallback:Lcom/meicam/sdk/NvsStreamingContext$CompileCallback;

.field private m_compileCallback2:Lcom/meicam/sdk/NvsStreamingContext$CompileCallback2;

.field private m_compileConfigurations:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private m_compileVideoBitrateMultiplier:F

.field private m_hardwareErrorCallback:Lcom/meicam/sdk/NvsStreamingContext$HardwareErrorCallback;

.field private m_playbackCallback:Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback;

.field private m_playbackCallback2:Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback2;

.field private m_playbackExceptionCallback:Lcom/meicam/sdk/NvsStreamingContext$PlaybackExceptionCallback;

.field private m_recordVideoBitrateMultiplier:F

.field private m_streamingEngineCallback:Lcom/meicam/sdk/NvsStreamingContext$StreamingEngineCallback;

.field private m_timelineTimestampCallback:Lcom/meicam/sdk/NvsStreamingContext$TimelineTimestampCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 274
    sput-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_instance:Lcom/meicam/sdk/NvsStreamingContext;

    .line 275
    sput-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_context:Landroid/content/Context;

    .line 276
    sput-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_classLoader:Ljava/lang/ClassLoader;

    .line 277
    sput-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_assetManager:Landroid/content/res/AssetManager;

    .line 278
    sput-boolean v1, Lcom/meicam/sdk/NvsStreamingContext;->m_initializedOnce:Z

    .line 281
    sput-boolean v1, Lcom/meicam/sdk/NvsStreamingContext;->m_maxReaderFlag:Z

    .line 282
    sput v1, Lcom/meicam/sdk/NvsStreamingContext;->m_maxReaderCount:I

    .line 285
    sput-boolean v1, Lcom/meicam/sdk/NvsStreamingContext;->m_customNativeLibraryDirPath:Z

    .line 325
    const/4 v0, 0x3

    sput v0, Lcom/meicam/sdk/NvsStreamingContext;->m_debugLevel:I

    .line 337
    sput-boolean v1, Lcom/meicam/sdk/NvsStreamingContext;->m_saveDebugMessagesToFile:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_assetPackageManager:Lcom/meicam/sdk/NvsAssetPackageManager;

    .line 608
    iput v1, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_compileVideoBitrateMultiplier:F

    .line 609
    iput v1, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_recordVideoBitrateMultiplier:F

    .line 610
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_compileConfigurations:Ljava/util/Hashtable;

    .line 611
    new-instance v0, Lcom/meicam/sdk/NvsAssetPackageManager;

    invoke-direct {v0}, Lcom/meicam/sdk/NvsAssetPackageManager;-><init>()V

    iput-object v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_assetPackageManager:Lcom/meicam/sdk/NvsAssetPackageManager;

    .line 612
    iget-object v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_assetPackageManager:Lcom/meicam/sdk/NvsAssetPackageManager;

    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetAssetPackageManager()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/meicam/sdk/NvsAssetPackageManager;->setInternalObject(J)V

    .line 613
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeDetectPackageName(Landroid/content/Context;)V

    .line 614
    return-void
.end method

.method private checkCameraPermission()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2412
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_1

    .line 2420
    :cond_0
    :goto_0
    return v0

    .line 2415
    :cond_1
    sget-object v1, Lcom/meicam/sdk/NvsStreamingContext;->m_context:Landroid/content/Context;

    const-string v2, "android.permission.CAMERA"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 2416
    const-string v0, "Meicam"

    const-string v1, "CAMERA permission has not been granted!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2417
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkInternetPermission()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2425
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_1

    .line 2433
    :cond_0
    :goto_0
    return v0

    .line 2428
    :cond_1
    sget-object v1, Lcom/meicam/sdk/NvsStreamingContext;->m_context:Landroid/content/Context;

    const-string v2, "android.permission.INTERNET"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 2429
    const-string v0, "Meicam"

    const-string v1, "INTERNET permission has not been granted!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2430
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 566
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 567
    sget-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_instance:Lcom/meicam/sdk/NvsStreamingContext;

    if-nez v0, :cond_0

    .line 593
    :goto_0
    return-void

    .line 570
    :cond_0
    sget-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_instance:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsStreamingContext;->getAssetPackageManager()Lcom/meicam/sdk/NvsAssetPackageManager;

    move-result-object v0

    .line 571
    if-eqz v0, :cond_1

    .line 572
    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsAssetPackageManager;->setCallbackInterface(Lcom/meicam/sdk/NvsAssetPackageManager$AssetPackageManagerCallback;)V

    .line 574
    :cond_1
    sget-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_instance:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->setCaptureDeviceCallback(Lcom/meicam/sdk/NvsStreamingContext$CaptureDeviceCallback;)V

    .line 575
    sget-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_instance:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->setCapturedVideoFrameGrabberCallback(Lcom/meicam/sdk/NvsStreamingContext$CapturedVideoFrameGrabberCallback;)V

    .line 576
    sget-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_instance:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->setCaptureRecordingStartedCallback(Lcom/meicam/sdk/NvsStreamingContext$CaptureRecordingStartedCallback;)V

    .line 577
    sget-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_instance:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->setCaptureRecordingDurationCallback(Lcom/meicam/sdk/NvsStreamingContext$CaptureRecordingDurationCallback;)V

    .line 578
    sget-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_instance:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->setPlaybackCallback(Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback;)V

    .line 579
    sget-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_instance:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->setCompileCallback(Lcom/meicam/sdk/NvsStreamingContext$CompileCallback;)V

    .line 580
    sget-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_instance:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->setStreamingEngineCallback(Lcom/meicam/sdk/NvsStreamingContext$StreamingEngineCallback;)V

    .line 581
    sget-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_instance:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->setTimelineTimestampCallback(Lcom/meicam/sdk/NvsStreamingContext$TimelineTimestampCallback;)V

    .line 582
    sget-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_instance:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->setCompileCallback2(Lcom/meicam/sdk/NvsStreamingContext$CompileCallback2;)V

    .line 583
    sget-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_instance:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->setPlaybackCallback2(Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback2;)V

    .line 584
    sget-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_instance:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->setPlaybackExceptionCallback(Lcom/meicam/sdk/NvsStreamingContext$PlaybackExceptionCallback;)V

    .line 585
    sget-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_instance:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->setHardwareErrorCallback(Lcom/meicam/sdk/NvsStreamingContext$HardwareErrorCallback;)V

    .line 586
    sput-object v1, Lcom/meicam/sdk/NvsStreamingContext;->m_instance:Lcom/meicam/sdk/NvsStreamingContext;

    .line 587
    sput-object v1, Lcom/meicam/sdk/NvsStreamingContext;->m_context:Landroid/content/Context;

    .line 588
    sput-object v1, Lcom/meicam/sdk/NvsStreamingContext;->m_classLoader:Ljava/lang/ClassLoader;

    .line 589
    invoke-static {v1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetAssetManager(Landroid/content/res/AssetManager;)V

    .line 590
    sput-object v1, Lcom/meicam/sdk/NvsStreamingContext;->m_assetManager:Landroid/content/res/AssetManager;

    .line 592
    invoke-static {}, Lcom/meicam/sdk/NvsStreamingContext;->nativeClose()V

    goto :goto_0
.end method

.method public static getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 357
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 358
    sget-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 351
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 352
    sget-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_context:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lcom/meicam/sdk/NvsStreamingContext;
    .locals 1

    .prologue
    .line 602
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 603
    sget-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_instance:Lcom/meicam/sdk/NvsStreamingContext;

    return-object v0
.end method

.method public static init(Landroid/app/Activity;Ljava/lang/String;)Lcom/meicam/sdk/NvsStreamingContext;
    .locals 1

    .prologue
    .line 554
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 555
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/meicam/sdk/NvsStreamingContext;->init(Landroid/app/Activity;Ljava/lang/String;I)Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/app/Activity;Ljava/lang/String;I)Lcom/meicam/sdk/NvsStreamingContext;
    .locals 1

    .prologue
    .line 540
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 541
    invoke-static {p0, p1, p2}, Lcom/meicam/sdk/NvsStreamingContext;->init(Landroid/content/Context;Ljava/lang/String;I)Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;I)Lcom/meicam/sdk/NvsStreamingContext;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 389
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 390
    sget-object v3, Lcom/meicam/sdk/NvsStreamingContext;->m_instance:Lcom/meicam/sdk/NvsStreamingContext;

    if-eqz v3, :cond_1

    .line 391
    sget-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_instance:Lcom/meicam/sdk/NvsStreamingContext;

    .line 524
    :cond_0
    :goto_0
    return-object v0

    .line 393
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 394
    sget-object v4, Lcom/meicam/sdk/NvsStreamingContext;->m_nativeLibraryDirPath:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 395
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/meicam/sdk/NvsStreamingContext;->m_nativeLibraryDirPath:Ljava/lang/String;

    .line 398
    :cond_2
    const-string v3, "QT_BLOCK_EVENT_LOOPS_WHEN_SUSPENDED=0"

    .line 399
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\tHOME="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 400
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\tTMPDIR="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 403
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    sput-object v3, Lcom/meicam/sdk/NvsStreamingContext;->m_assetManager:Landroid/content/res/AssetManager;

    .line 404
    sput-object p0, Lcom/meicam/sdk/NvsStreamingContext;->m_context:Landroid/content/Context;

    .line 405
    sget-object v3, Lcom/meicam/sdk/NvsStreamingContext;->m_context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    sput-object v3, Lcom/meicam/sdk/NvsStreamingContext;->m_classLoader:Ljava/lang/ClassLoader;

    .line 408
    sget-boolean v3, Lcom/meicam/sdk/NvsStreamingContext;->m_initializedOnce:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_5

    .line 411
    :try_start_1
    const-string v3, "com.meicam.sdk.NvsFaceEffectV1Detector"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v2

    .line 417
    :goto_1
    if-eqz v3, :cond_3

    .line 418
    :try_start_2
    const-string v3, "nama"

    invoke-static {v3}, Lcom/meicam/sdk/NvsStreamingContext;->loadNativeLibrary(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 422
    :cond_3
    :try_start_3
    const-string v3, "com.meicam.sdk.NvsFaceEffect2Init"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move v3, v2

    .line 428
    :goto_2
    if-eqz v3, :cond_4

    .line 429
    :try_start_4
    const-string/jumbo v3, "st_mobile"

    invoke-static {v3}, Lcom/meicam/sdk/NvsStreamingContext;->loadNativeLibrary(Ljava/lang/String;)V

    .line 431
    :cond_4
    const-string v3, "NvStreamingSdkCore"

    invoke-static {v3}, Lcom/meicam/sdk/NvsStreamingContext;->loadNativeLibrary(Ljava/lang/String;)V

    .line 434
    :cond_5
    invoke-static {}, Lcom/meicam/sdk/NvsStreamingContext;->nativeInitJNI()Z

    move-result v3

    if-nez v3, :cond_6

    .line 435
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "nativeInitJNI() failed!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 518
    :catch_0
    move-exception v1

    .line 519
    const-string v2, "Meicam"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 521
    sput-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_context:Landroid/content/Context;

    .line 522
    sput-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_classLoader:Ljava/lang/ClassLoader;

    .line 523
    sput-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_assetManager:Landroid/content/res/AssetManager;

    goto/16 :goto_0

    .line 413
    :catch_1
    move-exception v3

    move v3, v1

    goto :goto_1

    .line 424
    :catch_2
    move-exception v3

    move v3, v1

    goto :goto_2

    .line 437
    :cond_6
    :try_start_5
    sget-object v3, Lcom/meicam/sdk/NvsStreamingContext;->m_assetManager:Landroid/content/res/AssetManager;

    invoke-static {v3}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetAssetManager(Landroid/content/res/AssetManager;)V

    .line 439
    sget-boolean v3, Lcom/meicam/sdk/NvsStreamingContext;->m_maxReaderFlag:Z

    if-eqz v3, :cond_7

    .line 440
    sget v3, Lcom/meicam/sdk/NvsStreamingContext;->m_maxReaderCount:I

    invoke-static {v3}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetMaxReaderCount(I)V

    .line 442
    :cond_7
    sget v3, Lcom/meicam/sdk/NvsStreamingContext;->m_debugLevel:I

    invoke-static {v3}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetDebugLevel(I)V

    .line 443
    sget-boolean v3, Lcom/meicam/sdk/NvsStreamingContext;->m_saveDebugMessagesToFile:Z

    invoke-static {v3}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetSaveDebugMessagesToFile(Z)V

    .line 446
    const-string v3, "isExpired"

    invoke-static {p0, v3}, Lcom/meicam/sdk/NvsSystemVariableManager;->getSystemVariableInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 447
    if-ne v3, v2, :cond_b

    move v3, v2

    .line 451
    :goto_3
    new-instance v2, Lcom/meicam/sdk/NvsStreamingContext$VerifyLicenseResult;

    invoke-direct {v2}, Lcom/meicam/sdk/NvsStreamingContext$VerifyLicenseResult;-><init>()V

    .line 452
    sget-boolean v5, Lcom/meicam/sdk/NvsStreamingContext;->m_initializedOnce:Z

    if-nez v5, :cond_8

    .line 453
    invoke-static {p0, p1, v3}, Lcom/meicam/sdk/NvsStreamingContext;->nativeVerifySdkLicenseFile(Landroid/content/Context;Ljava/lang/String;Z)Lcom/meicam/sdk/NvsStreamingContext$VerifyLicenseResult;

    move-result-object v2

    .line 456
    :cond_8
    iget-boolean v2, v2, Lcom/meicam/sdk/NvsStreamingContext$VerifyLicenseResult;->needCheckExpiration:Z

    .line 458
    if-eqz v2, :cond_a

    .line 459
    const-string v3, "lastTime"

    invoke-static {p0, v3}, Lcom/meicam/sdk/NvsSystemVariableManager;->getSystemVariableString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 460
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 461
    invoke-static {}, Lcom/meicam/sdk/NvsTimeUtil;->getCurrentTime()Ljava/lang/String;

    move-result-object v5

    .line 462
    invoke-static {v3, v5}, Lcom/meicam/sdk/NvsTimeUtil;->getHourRange(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 463
    if-ltz v3, :cond_a

    const/16 v5, 0x18

    if-gt v3, v5, :cond_a

    .line 469
    :goto_4
    if-eqz v1, :cond_9

    .line 471
    const/16 v1, 0x7530

    const v2, 0xea60

    invoke-static {v1, v2}, Lcom/meicam/sdk/NvsTimeUtil;->getRandomTime(II)I

    move-result v1

    .line 472
    new-instance v2, Lcom/meicam/sdk/NvsStreamingContext$1;

    invoke-direct {v2, v1, p0}, Lcom/meicam/sdk/NvsStreamingContext$1;-><init>(ILandroid/content/Context;)V

    .line 510
    invoke-virtual {v2}, Lcom/meicam/sdk/NvsStreamingContext$1;->start()V

    .line 512
    :cond_9
    const-string v1, "<meishesdk>"

    invoke-static {v1, v4, p2}, Lcom/meicam/sdk/NvsStreamingContext;->nativeInit(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 515
    new-instance v1, Lcom/meicam/sdk/NvsStreamingContext;

    invoke-direct {v1, p0}, Lcom/meicam/sdk/NvsStreamingContext;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/meicam/sdk/NvsStreamingContext;->m_instance:Lcom/meicam/sdk/NvsStreamingContext;

    .line 516
    const/4 v1, 0x1

    sput-boolean v1, Lcom/meicam/sdk/NvsStreamingContext;->m_initializedOnce:Z

    .line 517
    sget-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_instance:Lcom/meicam/sdk/NvsStreamingContext;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    :cond_a
    move v1, v2

    goto :goto_4

    :cond_b
    move v3, v1

    goto :goto_3
.end method

.method private static loadNativeLibrary(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/UnsatisfiedLinkError;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 2438
    sget-boolean v0, Lcom/meicam/sdk/NvsStreamingContext;->m_customNativeLibraryDirPath:Z

    if-nez v0, :cond_0

    .line 2439
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 2444
    :goto_0
    return-void

    .line 2441
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/meicam/sdk/NvsStreamingContext;->m_nativeLibraryDirPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2442
    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private native nativeApplyCaptureScene(Ljava/lang/String;)Z
.end method

.method private native nativeCanDecodeVideoStreamBySoftware(Ljava/lang/String;)Z
.end method

.method private native nativeCancelAutoFocus()V
.end method

.method private native nativeCheckDontSetCameraParamOnRecordingWithSystemRecorder()Z
.end method

.method private native nativeClearCachedResources(Z)V
.end method

.method private static native nativeClose()V
.end method

.method private native nativeCompileTimeline(Lcom/meicam/sdk/NvsTimeline;JJLjava/lang/String;IIFLjava/util/Hashtable;I)Z
.end method

.method private native nativeConnectCapturePreviewWithLiveWindow(Ljava/lang/Object;)Z
.end method

.method private native nativeConnectCapturePreviewWithSurfaceTexture(Landroid/graphics/SurfaceTexture;)Z
.end method

.method private native nativeConnectTimelineWithLiveWindow(Lcom/meicam/sdk/NvsTimeline;Ljava/lang/Object;)Z
.end method

.method private native nativeConnectTimelineWithSurfaceTexture(Lcom/meicam/sdk/NvsTimeline;Landroid/graphics/SurfaceTexture;Lcom/meicam/sdk/NvsRational;)Z
.end method

.method private native nativeCreateSecondaryStreamingEngine()Z
.end method

.method private native nativeCreateTimeline(Lcom/meicam/sdk/NvsVideoResolution;Lcom/meicam/sdk/NvsRational;Lcom/meicam/sdk/NvsAudioResolution;)Lcom/meicam/sdk/NvsTimeline;
.end method

.method private native nativeDestroySecondaryStreamingEngine()V
.end method

.method private native nativeDetectPackageName(Landroid/content/Context;)V
.end method

.method private native nativeDetectVideoFileKeyframeInterval(Ljava/lang/String;)I
.end method

.method private native nativeGetAREffectContext()Lcom/meicam/sdk/NvsAREffectContext;
.end method

.method private native nativeGetAVFileInfo(Ljava/lang/String;)Lcom/meicam/sdk/NvsAVFileInfo;
.end method

.method private native nativeGetAllBuiltinAudioFxNames()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeGetAllBuiltinCaptureVideoFxNames()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeGetAllBuiltinVideoFxNames()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeGetAllBuiltinVideoTransitionNames()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeGetAssetPackageManager()J
.end method

.method private native nativeGetAudioFxDescription(Ljava/lang/String;)Lcom/meicam/sdk/NvsFxDescription;
.end method

.method private native nativeGetBeautyVideoFxName()Ljava/lang/String;
.end method

.method private native nativeGetCaptureDeviceCapability(I)Lcom/meicam/sdk/NvsStreamingContext$CaptureDeviceCapability;
.end method

.method private native nativeGetCaptureDeviceCount()I
.end method

.method private native nativeGetCapturePreviewVideoSize(I)Lcom/meicam/sdk/NvsSize;
.end method

.method private native nativeGetCaptureVideoFxByIndex(I)Lcom/meicam/sdk/NvsCaptureVideoFx;
.end method

.method private native nativeGetCaptureVideoFxCount()I
.end method

.method private native nativeGetCurrentCaptureSceneId()Ljava/lang/String;
.end method

.method private native nativeGetCustomCompileVideoHeight()I
.end method

.method private native nativeGetDefaultThemeEndingLogoImageFilePath()Ljava/lang/String;
.end method

.method private native nativeGetDefaultVideoTransitionName()Ljava/lang/String;
.end method

.method private native nativeGetExposureCompensation()I
.end method

.method private native nativeGetSdkVersion()Lcom/meicam/sdk/NvsStreamingContext$SdkVersion;
.end method

.method private native nativeGetStreamingEngineState()I
.end method

.method private native nativeGetTimelineCurrentPosition(Lcom/meicam/sdk/NvsTimeline;)J
.end method

.method private native nativeGetVideoFxDescription(Ljava/lang/String;)Lcom/meicam/sdk/NvsFxDescription;
.end method

.method private native nativeGetVideoStabilization()I
.end method

.method private native nativeGetZoom()I
.end method

.method private native nativeGrabImageFromTimeline(Lcom/meicam/sdk/NvsTimeline;JLcom/meicam/sdk/NvsRational;I)Landroid/graphics/Bitmap;
.end method

.method private static native nativeInit(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private static native nativeInitJNI()Z
.end method

.method private native nativeInsertBuiltinCaptureVideoFx(Ljava/lang/String;I)Lcom/meicam/sdk/NvsCaptureVideoFx;
.end method

.method private native nativeInsertCustomCaptureVideoFx(Lcom/meicam/sdk/NvsCustomVideoFx$Renderer;I)Lcom/meicam/sdk/NvsCaptureVideoFx;
.end method

.method private native nativeInsertPackagedCaptureVideoFx(Ljava/lang/String;I)Lcom/meicam/sdk/NvsCaptureVideoFx;
.end method

.method private native nativeIsCaptureDeviceBackFacing(I)Z
.end method

.method private native nativeIsDefaultCaptionFade()Z
.end method

.method private native nativeIsFlashOn()Z
.end method

.method private native nativeIsRecordingPaused()Z
.end method

.method private native nativeIsSdkAuthorised()Z
.end method

.method private native nativeIsSecondaryStreamingEngineOpened()Z
.end method

.method private native nativePauseResumeRecording(Z)Z
.end method

.method private native nativePlaybackTimeline(Lcom/meicam/sdk/NvsTimeline;JJIZI)Z
.end method

.method private native nativePlaybackTimelineWithProxyScale(Lcom/meicam/sdk/NvsTimeline;JJLcom/meicam/sdk/NvsRational;ZI)Z
.end method

.method private native nativeRemoveAllCaptureVideoFx()V
.end method

.method private native nativeRemoveCaptureVideoFx(I)Z
.end method

.method private native nativeRemoveCurrentCaptureScene()V
.end method

.method private native nativeRemoveTimeline(Lcom/meicam/sdk/NvsTimeline;)Z
.end method

.method private native nativeSampleColorFromCapturedVideoFrame(Landroid/graphics/RectF;)Lcom/meicam/sdk/NvsColor;
.end method

.method private native nativeSeekTimeline(Lcom/meicam/sdk/NvsTimeline;JII)Z
.end method

.method private native nativeSeekTimelineWithProxyScale(Lcom/meicam/sdk/NvsTimeline;JLcom/meicam/sdk/NvsRational;I)Z
.end method

.method private native nativeSendBufferToCapturePreview([BJI)Z
.end method

.method private native nativeSendBufferToCapturePreviewForSecondaryEngine([BJ)Z
.end method

.method private static native nativeSetAssetManager(Landroid/content/res/AssetManager;)V
.end method

.method private native nativeSetAutoExposureRect(Landroid/graphics/RectF;)V
.end method

.method private static native nativeSetCaptureDeviceCallback(Lcom/meicam/sdk/NvsStreamingContext$CaptureDeviceCallback;)V
.end method

.method private static native nativeSetCaptureRecordingDurationCallback(Lcom/meicam/sdk/NvsStreamingContext$CaptureRecordingDurationCallback;)V
.end method

.method private static native nativeSetCaptureRecordingStartedCallback(Lcom/meicam/sdk/NvsStreamingContext$CaptureRecordingStartedCallback;)V
.end method

.method private static native nativeSetCapturedVideoFrameGrabberCallback(Lcom/meicam/sdk/NvsStreamingContext$CapturedVideoFrameGrabberCallback;)V
.end method

.method private static native nativeSetCompileCallback(Lcom/meicam/sdk/NvsStreamingContext$CompileCallback;)V
.end method

.method private static native nativeSetCompileCallback2(Lcom/meicam/sdk/NvsStreamingContext$CompileCallback2;)V
.end method

.method private native nativeSetCustomCompileVideoHeight(I)V
.end method

.method private static native nativeSetDebugLevel(I)V
.end method

.method private native nativeSetDefaultCaptionFade(Z)V
.end method

.method private native nativeSetDefaultThemeEndingLogoImageFilePath(Ljava/lang/String;)Z
.end method

.method private native nativeSetExposureCompensation(I)V
.end method

.method private static native nativeSetHardwareErrorCallback(Lcom/meicam/sdk/NvsStreamingContext$HardwareErrorCallback;)V
.end method

.method private static native nativeSetMaxReaderCount(I)V
.end method

.method private native nativeSetMediaCodecIconReaderEnabled(Ljava/lang/String;Z)V
.end method

.method private native nativeSetMediaCodecVideoDecodingOperatingRate(Ljava/lang/String;I)V
.end method

.method private static native nativeSetPlaybackCallback(Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback;)V
.end method

.method private static native nativeSetPlaybackCallback2(Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback2;)V
.end method

.method private static native nativeSetPlaybackExceptionCallback(Lcom/meicam/sdk/NvsStreamingContext$PlaybackExceptionCallback;)V
.end method

.method private static native nativeSetSaveDebugMessagesToFile(Z)V
.end method

.method private native nativeSetSecondaryEngineCapturedVideoFrameCallback(Lcom/meicam/sdk/NvsStreamingContext$CapturedVideoFrameGrabberCallback;)V
.end method

.method private static native nativeSetStreamingEngineCallback(Lcom/meicam/sdk/NvsStreamingContext$StreamingEngineCallback;)V
.end method

.method private native nativeSetThemeEndingEnabled(Z)Z
.end method

.method private native nativeSetUserWatermarkForCapture(Ljava/lang/String;IIFIII)V
.end method

.method private native nativeSetVideoStabilization(I)V
.end method

.method private native nativeSetZoom(I)V
.end method

.method private native nativeStartAutoFocus(Landroid/graphics/RectF;)V
.end method

.method private native nativeStartBufferCapturePreview(IILcom/meicam/sdk/NvsRational;IZ)Z
.end method

.method private native nativeStartBufferCapturePreviewForSecondaryEngine(IILcom/meicam/sdk/NvsRational;IZ)Z
.end method

.method private native nativeStartCapturePreview(IIILcom/meicam/sdk/NvsRational;)Z
.end method

.method private native nativeStartCapturePreviewForLiveStreaming(IIILcom/meicam/sdk/NvsRational;Ljava/lang/String;)Z
.end method

.method private native nativeStartDualBufferCapturePreview(IIIIIZILcom/meicam/sdk/NvsRational;ILcom/cdv/io/NvAndroidVirtualCameraSurfaceTexture;)Z
.end method

.method private native nativeStartRecording(Ljava/lang/String;FIII)Z
.end method

.method private native nativeStop(I)V
.end method

.method private native nativeStopRecording()V
.end method

.method private native nativeStopSecondaryEngine()V
.end method

.method private native nativeToggleFlash(Z)V
.end method

.method private static native nativeVerifySdkLicenseFile(Landroid/content/Context;Ljava/lang/String;Z)Lcom/meicam/sdk/NvsStreamingContext$VerifyLicenseResult;
.end method

.method public static setDebugLevel(I)V
    .locals 1

    .prologue
    .line 328
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 329
    sget v0, Lcom/meicam/sdk/NvsStreamingContext;->m_debugLevel:I

    if-ne p0, v0, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    sput p0, Lcom/meicam/sdk/NvsStreamingContext;->m_debugLevel:I

    .line 333
    sget-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_instance:Lcom/meicam/sdk/NvsStreamingContext;

    if-eqz v0, :cond_0

    .line 334
    sget v0, Lcom/meicam/sdk/NvsStreamingContext;->m_debugLevel:I

    invoke-static {v0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetDebugLevel(I)V

    goto :goto_0
.end method

.method public static setLoadPluginFromAssets(Z)V
    .locals 0

    .prologue
    .line 316
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 317
    return-void
.end method

.method public static setMaxReaderCount(I)V
    .locals 1

    .prologue
    .line 2320
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2321
    const/4 v0, 0x1

    sput-boolean v0, Lcom/meicam/sdk/NvsStreamingContext;->m_maxReaderFlag:Z

    .line 2322
    sput p0, Lcom/meicam/sdk/NvsStreamingContext;->m_maxReaderCount:I

    .line 2323
    return-void
.end method

.method public static setNativeLibraryDirPath(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 307
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_nativeLibraryDirPath:Ljava/lang/String;

    .line 309
    if-eqz p0, :cond_0

    .line 310
    const/4 v0, 0x1

    sput-boolean v0, Lcom/meicam/sdk/NvsStreamingContext;->m_customNativeLibraryDirPath:Z

    .line 311
    :cond_0
    return-void
.end method

.method public static setPluginDirPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 322
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 323
    return-void
.end method

.method public static setSaveDebugMessagesToFile(Z)V
    .locals 1

    .prologue
    .line 340
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 341
    sget-boolean v0, Lcom/meicam/sdk/NvsStreamingContext;->m_saveDebugMessagesToFile:Z

    if-ne p0, v0, :cond_1

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    sput-boolean p0, Lcom/meicam/sdk/NvsStreamingContext;->m_saveDebugMessagesToFile:Z

    .line 345
    sget-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_instance:Lcom/meicam/sdk/NvsStreamingContext;

    if-eqz v0, :cond_0

    .line 346
    sget-boolean v0, Lcom/meicam/sdk/NvsStreamingContext;->m_saveDebugMessagesToFile:Z

    invoke-static {v0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetSaveDebugMessagesToFile(Z)V

    goto :goto_0
.end method


# virtual methods
.method public appendBeautyCaptureVideoFx()Lcom/meicam/sdk/NvsCaptureVideoFx;
    .locals 1

    .prologue
    .line 1889
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1890
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsStreamingContext;->getCaptureVideoFxCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meicam/sdk/NvsStreamingContext;->insertBeautyCaptureVideoFx(I)Lcom/meicam/sdk/NvsCaptureVideoFx;

    move-result-object v0

    return-object v0
.end method

.method public appendBuiltinCaptureVideoFx(Ljava/lang/String;)Lcom/meicam/sdk/NvsCaptureVideoFx;
    .locals 1

    .prologue
    .line 1815
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1816
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsStreamingContext;->getCaptureVideoFxCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/meicam/sdk/NvsStreamingContext;->insertBuiltinCaptureVideoFx(Ljava/lang/String;I)Lcom/meicam/sdk/NvsCaptureVideoFx;

    move-result-object v0

    return-object v0
.end method

.method public appendCustomCaptureVideoFx(Lcom/meicam/sdk/NvsCustomVideoFx$Renderer;)Lcom/meicam/sdk/NvsCaptureVideoFx;
    .locals 1

    .prologue
    .line 1864
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1865
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsStreamingContext;->getCaptureVideoFxCount()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeInsertCustomCaptureVideoFx(Lcom/meicam/sdk/NvsCustomVideoFx$Renderer;I)Lcom/meicam/sdk/NvsCaptureVideoFx;

    move-result-object v0

    return-object v0
.end method

.method public appendPackagedCaptureVideoFx(Ljava/lang/String;)Lcom/meicam/sdk/NvsCaptureVideoFx;
    .locals 1

    .prologue
    .line 1838
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1839
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsStreamingContext;->getCaptureVideoFxCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/meicam/sdk/NvsStreamingContext;->insertPackagedCaptureVideoFx(Ljava/lang/String;I)Lcom/meicam/sdk/NvsCaptureVideoFx;

    move-result-object v0

    return-object v0
.end method

.method public applyCaptureScene(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1956
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1957
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeApplyCaptureScene(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public canDecodeVideoStreamBySoftware(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1052
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1053
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeCanDecodeVideoStreamBySoftware(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public cancelAutoFocus()V
    .locals 0

    .prologue
    .line 1711
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1712
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeCancelAutoFocus()V

    .line 1713
    return-void
.end method

.method public checkDontSetCameraParamOnRecordingWithSystemRecorder()Z
    .locals 1

    .prologue
    .line 1450
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1451
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeCheckDontSetCameraParamOnRecordingWithSystemRecorder()Z

    move-result v0

    return v0
.end method

.method public clearCachedResources(Z)V
    .locals 0

    .prologue
    .line 1398
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1399
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeClearCachedResources(Z)V

    .line 1400
    return-void
.end method

.method public compileTimeline(Lcom/meicam/sdk/NvsTimeline;JJLjava/lang/String;III)Z
    .locals 12

    .prologue
    .line 1158
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1160
    iget v9, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_compileVideoBitrateMultiplier:F

    iget-object v10, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_compileConfigurations:Ljava/util/Hashtable;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Lcom/meicam/sdk/NvsStreamingContext;->nativeCompileTimeline(Lcom/meicam/sdk/NvsTimeline;JJLjava/lang/String;IIFLjava/util/Hashtable;I)Z

    move-result v0

    return v0
.end method

.method public connectCapturePreviewWithLiveWindow(Lcom/meicam/sdk/NvsLiveWindow;)Z
    .locals 1

    .prologue
    .line 1462
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1463
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeConnectCapturePreviewWithLiveWindow(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public connectCapturePreviewWithLiveWindowExt(Lcom/meicam/sdk/NvsLiveWindowExt;)Z
    .locals 1

    .prologue
    .line 1475
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1476
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeConnectCapturePreviewWithLiveWindow(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public connectCapturePreviewWithSurfaceTexture(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .prologue
    .line 1487
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1488
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeConnectCapturePreviewWithSurfaceTexture(Landroid/graphics/SurfaceTexture;)Z

    move-result v0

    return v0
.end method

.method public connectTimelineWithLiveWindow(Lcom/meicam/sdk/NvsTimeline;Lcom/meicam/sdk/NvsLiveWindow;)Z
    .locals 1

    .prologue
    .line 1198
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1199
    invoke-direct {p0, p1, p2}, Lcom/meicam/sdk/NvsStreamingContext;->nativeConnectTimelineWithLiveWindow(Lcom/meicam/sdk/NvsTimeline;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public connectTimelineWithLiveWindowExt(Lcom/meicam/sdk/NvsTimeline;Lcom/meicam/sdk/NvsLiveWindowExt;)Z
    .locals 1

    .prologue
    .line 1211
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1212
    invoke-direct {p0, p1, p2}, Lcom/meicam/sdk/NvsStreamingContext;->nativeConnectTimelineWithLiveWindow(Lcom/meicam/sdk/NvsTimeline;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public connectTimelineWithSurfaceTexture(Lcom/meicam/sdk/NvsTimeline;Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1224
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1225
    new-instance v0, Lcom/meicam/sdk/NvsRational;

    invoke-direct {v0, v1, v1}, Lcom/meicam/sdk/NvsRational;-><init>(II)V

    invoke-direct {p0, p1, p2, v0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeConnectTimelineWithSurfaceTexture(Lcom/meicam/sdk/NvsTimeline;Landroid/graphics/SurfaceTexture;Lcom/meicam/sdk/NvsRational;)Z

    move-result v0

    return v0
.end method

.method public connectTimelineWithSurfaceTexture(Lcom/meicam/sdk/NvsTimeline;Landroid/graphics/SurfaceTexture;Lcom/meicam/sdk/NvsRational;)Z
    .locals 1

    .prologue
    .line 1238
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1239
    invoke-direct {p0, p1, p2, p3}, Lcom/meicam/sdk/NvsStreamingContext;->nativeConnectTimelineWithSurfaceTexture(Lcom/meicam/sdk/NvsTimeline;Landroid/graphics/SurfaceTexture;Lcom/meicam/sdk/NvsRational;)Z

    move-result v0

    return v0
.end method

.method public createSecondaryStreamingEngine()Z
    .locals 1

    .prologue
    .line 2346
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2347
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeCreateSecondaryStreamingEngine()Z

    move-result v0

    return v0
.end method

.method public createTimeline(Lcom/meicam/sdk/NvsVideoResolution;Lcom/meicam/sdk/NvsRational;Lcom/meicam/sdk/NvsAudioResolution;)Lcom/meicam/sdk/NvsTimeline;
    .locals 1

    .prologue
    .line 1101
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1102
    invoke-direct {p0, p1, p2, p3}, Lcom/meicam/sdk/NvsStreamingContext;->nativeCreateTimeline(Lcom/meicam/sdk/NvsVideoResolution;Lcom/meicam/sdk/NvsRational;Lcom/meicam/sdk/NvsAudioResolution;)Lcom/meicam/sdk/NvsTimeline;

    move-result-object v0

    return-object v0
.end method

.method public createVideoFrameRetriever(Ljava/lang/String;)Lcom/meicam/sdk/NvsVideoFrameRetriever;
    .locals 1

    .prologue
    .line 2282
    new-instance v0, Lcom/meicam/sdk/NvsVideoFrameRetriever;

    invoke-direct {v0, p1}, Lcom/meicam/sdk/NvsVideoFrameRetriever;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createVideoKeyFrameRetriever(Ljava/lang/String;IZ)Lcom/meicam/sdk/NvsVideoKeyFrameRetriever;
    .locals 1

    .prologue
    .line 2288
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2289
    new-instance v0, Lcom/meicam/sdk/NvsVideoKeyFrameRetriever;

    invoke-direct {v0, p1, p2, p3}, Lcom/meicam/sdk/NvsVideoKeyFrameRetriever;-><init>(Ljava/lang/String;IZ)V

    return-object v0
.end method

.method public destroySecondaryStreamingEngine()V
    .locals 0

    .prologue
    .line 2365
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2366
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeDestroySecondaryStreamingEngine()V

    .line 2367
    return-void
.end method

.method public detectVideoFileKeyframeInterval(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 1046
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeDetectVideoFileKeyframeInterval(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAREffectContext()Lcom/meicam/sdk/NvsAREffectContext;
    .locals 1

    .prologue
    .line 1991
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1992
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetAREffectContext()Lcom/meicam/sdk/NvsAREffectContext;

    move-result-object v0

    return-object v0
.end method

.method public getAVFileInfo(Ljava/lang/String;)Lcom/meicam/sdk/NvsAVFileInfo;
    .locals 1

    .prologue
    .line 1035
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetAVFileInfo(Ljava/lang/String;)Lcom/meicam/sdk/NvsAVFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAllBuiltinAudioFxNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2197
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2198
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetAllBuiltinAudioFxNames()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllBuiltinCaptureVideoFxNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2223
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2224
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetAllBuiltinCaptureVideoFxNames()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllBuiltinVideoFxNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2186
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2187
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetAllBuiltinVideoFxNames()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllBuiltinVideoTransitionNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2210
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2211
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetAllBuiltinVideoTransitionNames()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAssetPackageManager()Lcom/meicam/sdk/NvsAssetPackageManager;
    .locals 1

    .prologue
    .line 643
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 644
    iget-object v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_assetPackageManager:Lcom/meicam/sdk/NvsAssetPackageManager;

    return-object v0
.end method

.method public getAudioFxDescription(Ljava/lang/String;)Lcom/meicam/sdk/NvsFxDescription;
    .locals 1

    .prologue
    .line 2270
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2271
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetAudioFxDescription(Ljava/lang/String;)Lcom/meicam/sdk/NvsFxDescription;

    move-result-object v0

    return-object v0
.end method

.method public getBeautyVideoFxName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2235
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2236
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetBeautyVideoFxName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCaptureDeviceCapability(I)Lcom/meicam/sdk/NvsStreamingContext$CaptureDeviceCapability;
    .locals 1

    .prologue
    .line 1431
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1432
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetCaptureDeviceCapability(I)Lcom/meicam/sdk/NvsStreamingContext$CaptureDeviceCapability;

    move-result-object v0

    return-object v0
.end method

.method public getCaptureDeviceCount()I
    .locals 1

    .prologue
    .line 1409
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1410
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetCaptureDeviceCount()I

    move-result v0

    return v0
.end method

.method public getCapturePreviewVideoSize(I)Lcom/meicam/sdk/NvsSize;
    .locals 1

    .prologue
    .line 1679
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1680
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetCapturePreviewVideoSize(I)Lcom/meicam/sdk/NvsSize;

    move-result-object v0

    return-object v0
.end method

.method public getCaptureVideoFxByIndex(I)Lcom/meicam/sdk/NvsCaptureVideoFx;
    .locals 1

    .prologue
    .line 1943
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1944
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetCaptureVideoFxByIndex(I)Lcom/meicam/sdk/NvsCaptureVideoFx;

    move-result-object v0

    return-object v0
.end method

.method public getCaptureVideoFxCount()I
    .locals 1

    .prologue
    .line 1932
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1933
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetCaptureVideoFxCount()I

    move-result v0

    return v0
.end method

.method public getCompileConfigurations()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2023
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2024
    iget-object v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_compileConfigurations:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getCompileVideoBitrateMultiplier()F
    .locals 1

    .prologue
    .line 2048
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2049
    iget v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_compileVideoBitrateMultiplier:F

    return v0
.end method

.method public getCurrentCaptureSceneId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1969
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1970
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetCurrentCaptureSceneId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomCompileVideoHeight()I
    .locals 1

    .prologue
    .line 1186
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1187
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetCustomCompileVideoHeight()I

    move-result v0

    return v0
.end method

.method public getDefaultThemeEndingLogoImageFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1076
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1077
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetDefaultThemeEndingLogoImageFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultVideoTransitionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2246
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2247
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetDefaultVideoTransitionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExposureCompensation()I
    .locals 1

    .prologue
    .line 1804
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1805
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetExposureCompensation()I

    move-result v0

    return v0
.end method

.method public getRecordVideoBitrateMultiplier()F
    .locals 1

    .prologue
    .line 2073
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2074
    iget v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_recordVideoBitrateMultiplier:F

    return v0
.end method

.method public getSdkVersion()Lcom/meicam/sdk/NvsStreamingContext$SdkVersion;
    .locals 1

    .prologue
    .line 633
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 634
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetSdkVersion()Lcom/meicam/sdk/NvsStreamingContext$SdkVersion;

    move-result-object v0

    return-object v0
.end method

.method public getStreamingEngineState()I
    .locals 1

    .prologue
    .line 1124
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1125
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetStreamingEngineState()I

    move-result v0

    return v0
.end method

.method public getTimelineCurrentPosition(Lcom/meicam/sdk/NvsTimeline;)J
    .locals 2

    .prologue
    .line 1136
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1137
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetTimelineCurrentPosition(Lcom/meicam/sdk/NvsTimeline;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVideoFxDescription(Ljava/lang/String;)Lcom/meicam/sdk/NvsFxDescription;
    .locals 1

    .prologue
    .line 2258
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2259
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetVideoFxDescription(Ljava/lang/String;)Lcom/meicam/sdk/NvsFxDescription;

    move-result-object v0

    return-object v0
.end method

.method public getVideoStabilization()I
    .locals 1

    .prologue
    .line 1774
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1775
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetVideoStabilization()I

    move-result v0

    return v0
.end method

.method public getZoom()I
    .locals 1

    .prologue
    .line 1743
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1744
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetZoom()I

    move-result v0

    return v0
.end method

.method public grabImageFromTimeline(Lcom/meicam/sdk/NvsTimeline;JLcom/meicam/sdk/NvsRational;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 1299
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1300
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGrabImageFromTimeline(Lcom/meicam/sdk/NvsTimeline;JLcom/meicam/sdk/NvsRational;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public grabImageFromTimeline(Lcom/meicam/sdk/NvsTimeline;JLcom/meicam/sdk/NvsRational;I)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 1314
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1315
    invoke-direct/range {p0 .. p5}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGrabImageFromTimeline(Lcom/meicam/sdk/NvsTimeline;JLcom/meicam/sdk/NvsRational;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public insertBeautyCaptureVideoFx(I)Lcom/meicam/sdk/NvsCaptureVideoFx;
    .locals 1

    .prologue
    .line 1900
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1901
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsStreamingContext;->getBeautyVideoFxName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->insertBuiltinCaptureVideoFx(Ljava/lang/String;I)Lcom/meicam/sdk/NvsCaptureVideoFx;

    move-result-object v0

    return-object v0
.end method

.method public insertBuiltinCaptureVideoFx(Ljava/lang/String;I)Lcom/meicam/sdk/NvsCaptureVideoFx;
    .locals 1

    .prologue
    .line 1827
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1828
    invoke-direct {p0, p1, p2}, Lcom/meicam/sdk/NvsStreamingContext;->nativeInsertBuiltinCaptureVideoFx(Ljava/lang/String;I)Lcom/meicam/sdk/NvsCaptureVideoFx;

    move-result-object v0

    return-object v0
.end method

.method public insertCustomCaptureVideoFx(Lcom/meicam/sdk/NvsCustomVideoFx$Renderer;I)Lcom/meicam/sdk/NvsCaptureVideoFx;
    .locals 1

    .prologue
    .line 1878
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1879
    invoke-direct {p0, p1, p2}, Lcom/meicam/sdk/NvsStreamingContext;->nativeInsertCustomCaptureVideoFx(Lcom/meicam/sdk/NvsCustomVideoFx$Renderer;I)Lcom/meicam/sdk/NvsCaptureVideoFx;

    move-result-object v0

    return-object v0
.end method

.method public insertPackagedCaptureVideoFx(Ljava/lang/String;I)Lcom/meicam/sdk/NvsCaptureVideoFx;
    .locals 1

    .prologue
    .line 1851
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1852
    invoke-direct {p0, p1, p2}, Lcom/meicam/sdk/NvsStreamingContext;->nativeInsertPackagedCaptureVideoFx(Ljava/lang/String;I)Lcom/meicam/sdk/NvsCaptureVideoFx;

    move-result-object v0

    return-object v0
.end method

.method public isCaptureDeviceBackFacing(I)Z
    .locals 1

    .prologue
    .line 1420
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1421
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeIsCaptureDeviceBackFacing(I)Z

    move-result v0

    return v0
.end method

.method public isDefaultCaptionFade()Z
    .locals 1

    .prologue
    .line 2313
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2314
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeIsDefaultCaptionFade()Z

    move-result v0

    return v0
.end method

.method public isFlashOn()Z
    .locals 1

    .prologue
    .line 1763
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1764
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeIsFlashOn()Z

    move-result v0

    return v0
.end method

.method public isRecordingPaused()Z
    .locals 1

    .prologue
    .line 2175
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2176
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeIsRecordingPaused()Z

    move-result v0

    return v0
.end method

.method public isSdkAuthorised()Z
    .locals 1

    .prologue
    .line 373
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 374
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeIsSdkAuthorised()Z

    move-result v0

    return v0
.end method

.method public isSecondaryStreamingEngineOpened()Z
    .locals 1

    .prologue
    .line 2356
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2357
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeIsSecondaryStreamingEngineOpened()Z

    move-result v0

    return v0
.end method

.method public pauseRecording()Z
    .locals 1

    .prologue
    .line 2150
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2151
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/meicam/sdk/NvsStreamingContext;->nativePauseResumeRecording(Z)Z

    move-result v0

    return v0
.end method

.method public playbackTimeline(Lcom/meicam/sdk/NvsTimeline;JJIZI)Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 1334
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1335
    if-nez p1, :cond_1

    .line 1342
    :cond_0
    :goto_0
    return v0

    .line 1337
    :cond_1
    cmp-long v1, p2, v4

    if-ltz v1, :cond_2

    invoke-virtual {p1}, Lcom/meicam/sdk/NvsTimeline;->getDuration()J

    move-result-wide v2

    cmp-long v1, p2, v2

    if-gez v1, :cond_2

    cmp-long v1, p4, v4

    if-ltz v1, :cond_3

    cmp-long v1, p2, p4

    if-ltz v1, :cond_3

    .line 1338
    :cond_2
    iget-object v1, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_timelineTimestampCallback:Lcom/meicam/sdk/NvsStreamingContext$TimelineTimestampCallback;

    if-eqz v1, :cond_0

    .line 1339
    iget-object v1, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_timelineTimestampCallback:Lcom/meicam/sdk/NvsStreamingContext$TimelineTimestampCallback;

    invoke-interface {v1, p1}, Lcom/meicam/sdk/NvsStreamingContext$TimelineTimestampCallback;->onTimestampOutOfRange(Lcom/meicam/sdk/NvsTimeline;)V

    goto :goto_0

    .line 1342
    :cond_3
    invoke-direct/range {p0 .. p8}, Lcom/meicam/sdk/NvsStreamingContext;->nativePlaybackTimeline(Lcom/meicam/sdk/NvsTimeline;JJIZI)Z

    move-result v0

    goto :goto_0
.end method

.method public playbackTimeline(Lcom/meicam/sdk/NvsTimeline;JJLcom/meicam/sdk/NvsRational;ZI)Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 1361
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1362
    if-nez p1, :cond_1

    .line 1369
    :cond_0
    :goto_0
    return v0

    .line 1364
    :cond_1
    cmp-long v1, p2, v4

    if-ltz v1, :cond_2

    invoke-virtual {p1}, Lcom/meicam/sdk/NvsTimeline;->getDuration()J

    move-result-wide v2

    cmp-long v1, p2, v2

    if-gez v1, :cond_2

    cmp-long v1, p4, v4

    if-ltz v1, :cond_3

    cmp-long v1, p2, p4

    if-ltz v1, :cond_3

    .line 1365
    :cond_2
    iget-object v1, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_timelineTimestampCallback:Lcom/meicam/sdk/NvsStreamingContext$TimelineTimestampCallback;

    if-eqz v1, :cond_0

    .line 1366
    iget-object v1, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_timelineTimestampCallback:Lcom/meicam/sdk/NvsStreamingContext$TimelineTimestampCallback;

    invoke-interface {v1, p1}, Lcom/meicam/sdk/NvsStreamingContext$TimelineTimestampCallback;->onTimestampOutOfRange(Lcom/meicam/sdk/NvsTimeline;)V

    goto :goto_0

    .line 1369
    :cond_3
    invoke-direct/range {p0 .. p8}, Lcom/meicam/sdk/NvsStreamingContext;->nativePlaybackTimelineWithProxyScale(Lcom/meicam/sdk/NvsTimeline;JJLcom/meicam/sdk/NvsRational;ZI)Z

    move-result v0

    goto :goto_0
.end method

.method public removeAllCaptureVideoFx()V
    .locals 0

    .prologue
    .line 1923
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1924
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeRemoveAllCaptureVideoFx()V

    .line 1925
    return-void
.end method

.method public removeCaptureVideoFx(I)Z
    .locals 1

    .prologue
    .line 1913
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1914
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeRemoveCaptureVideoFx(I)Z

    move-result v0

    return v0
.end method

.method public removeCurrentCaptureScene()V
    .locals 0

    .prologue
    .line 1981
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1982
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeRemoveCurrentCaptureScene()V

    .line 1983
    return-void
.end method

.method public removeTimeline(Lcom/meicam/sdk/NvsTimeline;)Z
    .locals 1

    .prologue
    .line 1114
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1115
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeRemoveTimeline(Lcom/meicam/sdk/NvsTimeline;)Z

    move-result v0

    return v0
.end method

.method public removeUserWatermarkForCapture()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1521
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1522
    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v3, v2

    move v5, v2

    move v6, v2

    move v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetUserWatermarkForCapture(Ljava/lang/String;IIFIII)V

    .line 1523
    return-void
.end method

.method public resumeRecording()Z
    .locals 1

    .prologue
    .line 2162
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2163
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/meicam/sdk/NvsStreamingContext;->nativePauseResumeRecording(Z)Z

    move-result v0

    return v0
.end method

.method public sampleColorFromCapturedVideoFrame(Landroid/graphics/RectF;)Lcom/meicam/sdk/NvsColor;
    .locals 1

    .prologue
    .line 1691
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1692
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSampleColorFromCapturedVideoFrame(Landroid/graphics/RectF;)Lcom/meicam/sdk/NvsColor;

    move-result-object v0

    return-object v0
.end method

.method public seekTimeline(Lcom/meicam/sdk/NvsTimeline;JII)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1255
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1256
    if-nez p1, :cond_1

    .line 1263
    :cond_0
    :goto_0
    return v0

    .line 1258
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-ltz v1, :cond_2

    invoke-virtual {p1}, Lcom/meicam/sdk/NvsTimeline;->getDuration()J

    move-result-wide v2

    cmp-long v1, p2, v2

    if-ltz v1, :cond_3

    .line 1259
    :cond_2
    iget-object v1, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_timelineTimestampCallback:Lcom/meicam/sdk/NvsStreamingContext$TimelineTimestampCallback;

    if-eqz v1, :cond_0

    .line 1260
    iget-object v1, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_timelineTimestampCallback:Lcom/meicam/sdk/NvsStreamingContext$TimelineTimestampCallback;

    invoke-interface {v1, p1}, Lcom/meicam/sdk/NvsStreamingContext$TimelineTimestampCallback;->onTimestampOutOfRange(Lcom/meicam/sdk/NvsTimeline;)V

    goto :goto_0

    .line 1263
    :cond_3
    invoke-direct/range {p0 .. p5}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSeekTimeline(Lcom/meicam/sdk/NvsTimeline;JII)Z

    move-result v0

    goto :goto_0
.end method

.method public seekTimeline(Lcom/meicam/sdk/NvsTimeline;JLcom/meicam/sdk/NvsRational;I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1278
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1279
    if-nez p1, :cond_1

    .line 1286
    :cond_0
    :goto_0
    return v0

    .line 1281
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-ltz v1, :cond_2

    invoke-virtual {p1}, Lcom/meicam/sdk/NvsTimeline;->getDuration()J

    move-result-wide v2

    cmp-long v1, p2, v2

    if-ltz v1, :cond_3

    .line 1282
    :cond_2
    iget-object v1, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_timelineTimestampCallback:Lcom/meicam/sdk/NvsStreamingContext$TimelineTimestampCallback;

    if-eqz v1, :cond_0

    .line 1283
    iget-object v1, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_timelineTimestampCallback:Lcom/meicam/sdk/NvsStreamingContext$TimelineTimestampCallback;

    invoke-interface {v1, p1}, Lcom/meicam/sdk/NvsStreamingContext$TimelineTimestampCallback;->onTimestampOutOfRange(Lcom/meicam/sdk/NvsTimeline;)V

    goto :goto_0

    .line 1286
    :cond_3
    invoke-direct/range {p0 .. p5}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSeekTimelineWithProxyScale(Lcom/meicam/sdk/NvsTimeline;JLcom/meicam/sdk/NvsRational;I)Z

    move-result v0

    goto :goto_0
.end method

.method public sendBufferToCapturePreview([BJ)Z
    .locals 2

    .prologue
    .line 1634
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/meicam/sdk/NvsStreamingContext;->sendBufferToCapturePreview([BJI)Z

    move-result v0

    return v0
.end method

.method public sendBufferToCapturePreview([BJI)Z
    .locals 2

    .prologue
    .line 1647
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSendBufferToCapturePreview([BJI)Z

    move-result v0

    return v0
.end method

.method public sendBufferToCapturePreviewForSecondaryEngine([BJ)Z
    .locals 2

    .prologue
    .line 2388
    invoke-direct {p0, p1, p2, p3}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSendBufferToCapturePreviewForSecondaryEngine([BJ)Z

    move-result v0

    return v0
.end method

.method public setAutoExposureRect(Landroid/graphics/RectF;)V
    .locals 0

    .prologue
    .line 1722
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1723
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetAutoExposureRect(Landroid/graphics/RectF;)V

    .line 1724
    return-void
.end method

.method public setCaptureDeviceCallback(Lcom/meicam/sdk/NvsStreamingContext$CaptureDeviceCallback;)V
    .locals 0

    .prologue
    .line 908
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 909
    iput-object p1, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_catpureDeviceCallback:Lcom/meicam/sdk/NvsStreamingContext$CaptureDeviceCallback;

    .line 910
    invoke-static {p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetCaptureDeviceCallback(Lcom/meicam/sdk/NvsStreamingContext$CaptureDeviceCallback;)V

    .line 911
    return-void
.end method

.method public setCaptureRecordingDurationCallback(Lcom/meicam/sdk/NvsStreamingContext$CaptureRecordingDurationCallback;)V
    .locals 0

    .prologue
    .line 938
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 939
    iput-object p1, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_captureRecordingDurationCallback:Lcom/meicam/sdk/NvsStreamingContext$CaptureRecordingDurationCallback;

    .line 940
    invoke-static {p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetCaptureRecordingDurationCallback(Lcom/meicam/sdk/NvsStreamingContext$CaptureRecordingDurationCallback;)V

    .line 941
    return-void
.end method

.method public setCaptureRecordingStartedCallback(Lcom/meicam/sdk/NvsStreamingContext$CaptureRecordingStartedCallback;)V
    .locals 0

    .prologue
    .line 926
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 927
    iput-object p1, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_captureRecordingStartedCallback:Lcom/meicam/sdk/NvsStreamingContext$CaptureRecordingStartedCallback;

    .line 928
    invoke-static {p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetCaptureRecordingStartedCallback(Lcom/meicam/sdk/NvsStreamingContext$CaptureRecordingStartedCallback;)V

    .line 929
    return-void
.end method

.method public setCapturedVideoFrameGrabberCallback(Lcom/meicam/sdk/NvsStreamingContext$CapturedVideoFrameGrabberCallback;)V
    .locals 0

    .prologue
    .line 919
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 920
    iput-object p1, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_catpuredVideoFrameGrabberCallback:Lcom/meicam/sdk/NvsStreamingContext$CapturedVideoFrameGrabberCallback;

    .line 921
    invoke-static {p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetCapturedVideoFrameGrabberCallback(Lcom/meicam/sdk/NvsStreamingContext$CapturedVideoFrameGrabberCallback;)V

    .line 922
    return-void
.end method

.method public setCompileCallback(Lcom/meicam/sdk/NvsStreamingContext$CompileCallback;)V
    .locals 0

    .prologue
    .line 959
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 960
    iput-object p1, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_compileCallback:Lcom/meicam/sdk/NvsStreamingContext$CompileCallback;

    .line 961
    invoke-static {p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetCompileCallback(Lcom/meicam/sdk/NvsStreamingContext$CompileCallback;)V

    .line 962
    return-void
.end method

.method public setCompileCallback2(Lcom/meicam/sdk/NvsStreamingContext$CompileCallback2;)V
    .locals 0

    .prologue
    .line 990
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 991
    iput-object p1, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_compileCallback2:Lcom/meicam/sdk/NvsStreamingContext$CompileCallback2;

    .line 992
    invoke-static {p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetCompileCallback2(Lcom/meicam/sdk/NvsStreamingContext$CompileCallback2;)V

    .line 993
    return-void
.end method

.method public setCompileConfigurations(Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2011
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2012
    iput-object p1, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_compileConfigurations:Ljava/util/Hashtable;

    .line 2013
    return-void
.end method

.method public setCompileVideoBitrateMultiplier(F)V
    .locals 1

    .prologue
    .line 2034
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2035
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 2039
    :goto_0
    return-void

    .line 2038
    :cond_0
    iput p1, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_compileVideoBitrateMultiplier:F

    goto :goto_0
.end method

.method public setCustomCompileVideoHeight(I)V
    .locals 0

    .prologue
    .line 1175
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1176
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetCustomCompileVideoHeight(I)V

    .line 1177
    return-void
.end method

.method public setDefaultCaptionFade(Z)V
    .locals 0

    .prologue
    .line 2301
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2302
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetDefaultCaptionFade(Z)V

    .line 2303
    return-void
.end method

.method public setDefaultThemeEndingLogoImageFilePath(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1065
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1066
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetDefaultThemeEndingLogoImageFilePath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setExposureCompensation(I)V
    .locals 0

    .prologue
    .line 1794
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1795
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetExposureCompensation(I)V

    .line 1796
    return-void
.end method

.method public setHardwareErrorCallback(Lcom/meicam/sdk/NvsStreamingContext$HardwareErrorCallback;)V
    .locals 0

    .prologue
    .line 1023
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1024
    iput-object p1, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_hardwareErrorCallback:Lcom/meicam/sdk/NvsStreamingContext$HardwareErrorCallback;

    .line 1025
    invoke-static {p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetHardwareErrorCallback(Lcom/meicam/sdk/NvsStreamingContext$HardwareErrorCallback;)V

    .line 1026
    return-void
.end method

.method public setMediaCodecIconReaderEnabled(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 2333
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2334
    invoke-direct {p0, p1, p2}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetMediaCodecIconReaderEnabled(Ljava/lang/String;Z)V

    .line 2335
    return-void
.end method

.method public setMediaCodecVideoDecodingOperatingRate(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 2327
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2328
    invoke-direct {p0, p1, p2}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetMediaCodecVideoDecodingOperatingRate(Ljava/lang/String;I)V

    .line 2329
    return-void
.end method

.method public setPlaybackCallback(Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback;)V
    .locals 0

    .prologue
    .line 949
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 950
    iput-object p1, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_playbackCallback:Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback;

    .line 951
    invoke-static {p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetPlaybackCallback(Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback;)V

    .line 952
    return-void
.end method

.method public setPlaybackCallback2(Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback2;)V
    .locals 0

    .prologue
    .line 1000
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1001
    iput-object p1, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_playbackCallback2:Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback2;

    .line 1002
    invoke-static {p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetPlaybackCallback2(Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback2;)V

    .line 1003
    return-void
.end method

.method public setPlaybackExceptionCallback(Lcom/meicam/sdk/NvsStreamingContext$PlaybackExceptionCallback;)V
    .locals 0

    .prologue
    .line 1011
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1012
    iput-object p1, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_playbackExceptionCallback:Lcom/meicam/sdk/NvsStreamingContext$PlaybackExceptionCallback;

    .line 1013
    invoke-static {p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetPlaybackExceptionCallback(Lcom/meicam/sdk/NvsStreamingContext$PlaybackExceptionCallback;)V

    .line 1014
    return-void
.end method

.method public setRecordVideoBitrateMultiplier(F)V
    .locals 1

    .prologue
    .line 2059
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2060
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 2064
    :goto_0
    return-void

    .line 2063
    :cond_0
    iput p1, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_recordVideoBitrateMultiplier:F

    goto :goto_0
.end method

.method public setSecondaryEngineCapturedVideoFrameCallback(Lcom/meicam/sdk/NvsStreamingContext$CapturedVideoFrameGrabberCallback;)V
    .locals 0

    .prologue
    .line 2375
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2376
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetSecondaryEngineCapturedVideoFrameCallback(Lcom/meicam/sdk/NvsStreamingContext$CapturedVideoFrameGrabberCallback;)V

    .line 2377
    return-void
.end method

.method public setStreamingEngineCallback(Lcom/meicam/sdk/NvsStreamingContext$StreamingEngineCallback;)V
    .locals 0

    .prologue
    .line 969
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 970
    iput-object p1, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_streamingEngineCallback:Lcom/meicam/sdk/NvsStreamingContext$StreamingEngineCallback;

    .line 971
    invoke-static {p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetStreamingEngineCallback(Lcom/meicam/sdk/NvsStreamingContext$StreamingEngineCallback;)V

    .line 972
    return-void
.end method

.method public setThemeEndingEnabled(Z)Z
    .locals 1

    .prologue
    .line 1087
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1088
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetThemeEndingEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setTimelineTimestampCallback(Lcom/meicam/sdk/NvsStreamingContext$TimelineTimestampCallback;)V
    .locals 0

    .prologue
    .line 980
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 981
    iput-object p1, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_timelineTimestampCallback:Lcom/meicam/sdk/NvsStreamingContext$TimelineTimestampCallback;

    .line 982
    return-void
.end method

.method public setUserWatermarkForCapture(Ljava/lang/String;IIFIII)V
    .locals 0

    .prologue
    .line 1510
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1511
    invoke-direct/range {p0 .. p7}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetUserWatermarkForCapture(Ljava/lang/String;IIFIII)V

    .line 1513
    return-void
.end method

.method public setVideoStabilization(I)V
    .locals 0

    .prologue
    .line 1784
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1785
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetVideoStabilization(I)V

    .line 1786
    return-void
.end method

.method public setZoom(I)V
    .locals 0

    .prologue
    .line 1733
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1734
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetZoom(I)V

    .line 1735
    return-void
.end method

.method public startAutoFocus(Landroid/graphics/RectF;)V
    .locals 0

    .prologue
    .line 1702
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1703
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeStartAutoFocus(Landroid/graphics/RectF;)V

    .line 1704
    return-void
.end method

.method public startBufferCapturePreview(IILcom/meicam/sdk/NvsRational;IZ)Z
    .locals 1

    .prologue
    .line 1582
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1583
    invoke-direct/range {p0 .. p5}, Lcom/meicam/sdk/NvsStreamingContext;->nativeStartBufferCapturePreview(IILcom/meicam/sdk/NvsRational;IZ)Z

    move-result v0

    return v0
.end method

.method public startBufferCapturePreviewForSecondaryEngine(IILcom/meicam/sdk/NvsRational;IZ)Z
    .locals 1

    .prologue
    .line 2393
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2394
    invoke-direct/range {p0 .. p5}, Lcom/meicam/sdk/NvsStreamingContext;->nativeStartBufferCapturePreviewForSecondaryEngine(IILcom/meicam/sdk/NvsRational;IZ)Z

    move-result v0

    return v0
.end method

.method public startCapturePreview(IIILcom/meicam/sdk/NvsRational;)Z
    .locals 1

    .prologue
    .line 1561
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1563
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->checkCameraPermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1564
    const/4 v0, 0x0

    .line 1566
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meicam/sdk/NvsStreamingContext;->nativeStartCapturePreview(IIILcom/meicam/sdk/NvsRational;)Z

    move-result v0

    goto :goto_0
.end method

.method public startCapturePreviewForLiveStreaming(IIILcom/meicam/sdk/NvsRational;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1662
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1663
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->checkCameraPermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1664
    const/4 v0, 0x0

    .line 1668
    :goto_0
    return v0

    .line 1666
    :cond_0
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->checkInternetPermission()Z

    .line 1668
    invoke-direct/range {p0 .. p5}, Lcom/meicam/sdk/NvsStreamingContext;->nativeStartCapturePreviewForLiveStreaming(IIILcom/meicam/sdk/NvsRational;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public startDualBufferCapturePreview(Landroid/graphics/SurfaceTexture;IIIIIZILcom/meicam/sdk/NvsRational;I)Z
    .locals 11

    .prologue
    .line 1606
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1608
    if-nez p1, :cond_0

    .line 1609
    const/4 v0, 0x0

    .line 1622
    :goto_0
    return v0

    .line 1611
    :cond_0
    new-instance v10, Lcom/cdv/io/NvAndroidVirtualCameraSurfaceTexture;

    invoke-direct {v10, p1}, Lcom/cdv/io/NvAndroidVirtualCameraSurfaceTexture;-><init>(Landroid/graphics/SurfaceTexture;)V

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    move/from16 v9, p10

    .line 1613
    invoke-direct/range {v0 .. v10}, Lcom/meicam/sdk/NvsStreamingContext;->nativeStartDualBufferCapturePreview(IIIIIZILcom/meicam/sdk/NvsRational;ILcom/cdv/io/NvAndroidVirtualCameraSurfaceTexture;)Z

    move-result v0

    .line 1617
    if-nez v0, :cond_1

    .line 1618
    invoke-virtual {v10}, Lcom/cdv/io/NvAndroidVirtualCameraSurfaceTexture;->release()V

    .line 1619
    const/4 v0, 0x0

    goto :goto_0

    .line 1622
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public startRecording(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 2085
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2086
    iget v2, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_recordVideoBitrateMultiplier:F

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsStreamingContext;->nativeStartRecording(Ljava/lang/String;FIII)Z

    move-result v0

    return v0
.end method

.method public startRecording(Ljava/lang/String;I)Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 2099
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2100
    iget v2, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_recordVideoBitrateMultiplier:F

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsStreamingContext;->nativeStartRecording(Ljava/lang/String;FIII)Z

    move-result v0

    return v0
.end method

.method public startRecording(Ljava/lang/String;ILjava/util/Hashtable;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2117
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2120
    if-eqz p3, :cond_2

    .line 2121
    const-string v0, "bitrate"

    invoke-virtual {p3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 2122
    if-eqz v0, :cond_1

    .line 2123
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    move v1, v0

    .line 2124
    :goto_0
    const-string v0, "gopsize"

    invoke-virtual {p3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 2125
    if-eqz v0, :cond_0

    .line 2126
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    move v4, v2

    move v3, v1

    .line 2129
    :goto_1
    iget v2, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_recordVideoBitrateMultiplier:F

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsStreamingContext;->nativeStartRecording(Ljava/lang/String;FIII)Z

    move-result v0

    return v0

    :cond_0
    move v4, v2

    move v3, v1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v4, v2

    move v3, v2

    goto :goto_1
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 1377
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1378
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeStop(I)V

    .line 1379
    return-void
.end method

.method public stop(I)V
    .locals 0

    .prologue
    .line 1388
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1389
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeStop(I)V

    .line 1390
    return-void
.end method

.method public stopRecording()V
    .locals 0

    .prologue
    .line 2138
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2139
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeStopRecording()V

    .line 2140
    return-void
.end method

.method public stopSecondaryEngine()V
    .locals 0

    .prologue
    .line 2403
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2404
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeStopSecondaryEngine()V

    .line 2405
    return-void
.end method

.method public toggleFlash(Z)V
    .locals 0

    .prologue
    .line 1753
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1754
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeToggleFlash(Z)V

    .line 1755
    return-void
.end method
