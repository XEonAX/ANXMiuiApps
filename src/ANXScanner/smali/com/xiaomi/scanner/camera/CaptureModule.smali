.class public Lcom/xiaomi/scanner/camera/CaptureModule;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Lcom/xiaomi/scanner/camera/FocusManager$Listener;
.implements Lcom/xiaomi/scanner/camera/PhotoController;
.implements Lcom/xiaomi/scanner/ui/PreviewStatusListener;
.implements Lcom/xiaomi/scanner/ui/ShutterButton$OnShutterButtonListener;
.implements Lcom/xiaomi/scanner/settings/SettingsManager$OnSettingChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/camera/CaptureModule$AutoFocusMoveCallback;,
        Lcom/xiaomi/scanner/camera/CaptureModule$AutoFocusCallback;,
        Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;,
        Lcom/xiaomi/scanner/camera/CaptureModule$RawPictureCallback;,
        Lcom/xiaomi/scanner/camera/CaptureModule$PostViewPictureCallback;,
        Lcom/xiaomi/scanner/camera/CaptureModule$ShutterCallback;,
        Lcom/xiaomi/scanner/camera/CaptureModule$MainHandler;
    }
.end annotation


# static fields
.field private static final CAMERA_SERVICE_MUTE:Ljava/lang/String; = "camera-service-mute"

.field private static final MAX_PICTURE_SIZE:I

.field private static final MSG_FIRST_TIME_INIT:I = 0x1

.field private static final MSG_REQUEST_AUTO_FOCUS:I = 0x3

.field private static final MSG_SET_CAMERA_PARAMETERS_WHEN_IDLE:I = 0x2

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

.field private static final UPDATE_PARAM_ALL:I = -0x1

.field private static final UPDATE_PARAM_INITIALIZE:I = 0x1

.field private static final UPDATE_PARAM_PREFERENCE:I = 0x4

.field private static final UPDATE_PARAM_ZOOM:I = 0x2


# instance fields
.field private mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

.field private final mAutoFocusCallback:Lcom/xiaomi/scanner/camera/CaptureModule$AutoFocusCallback;

.field private final mAutoFocusMoveCallback:Lcom/xiaomi/scanner/camera/CaptureModule$AutoFocusMoveCallback;

.field private mAutoFocusTime:J

.field private mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

.field private mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

.field private mCameraId:I

.field private mCameraPreviewParamsReady:Z

.field private mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

.field private mCameraState:I

.field private mCaptureStartTime:J

.field private mContinuousFocusSupported:Z

.field private mDefaultZoom:F

.field private mDisplayOrientation:I

.field private mDisplayRotation:I

.field private final mDoSnapRunnable:Ljava/lang/Runnable;

.field private mFirstTimeInitialized:Z

.field private mFocusAreaSupported:Z

.field private mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

.field private mFocusStartTime:J

.field private mHandler:Landroid/os/Handler;

.field private mJpegCallbackFinishTime:J

.field private mJpegPictureCallbackTime:J

.field private mMeteringAreaSupported:Z

.field private mModuleController:Lcom/xiaomi/scanner/module/ModuleController;

.field private mMotionManager:Lcom/xiaomi/scanner/camera/MotionManager;

.field private mOnResumeTime:J

.field private mPaused:Z

.field private mPictureDisplayedToJpegCallbackTime:J

.field private final mPostViewPictureCallback:Lcom/xiaomi/scanner/camera/CaptureModule$PostViewPictureCallback;

.field private mPostViewPictureCallbackTime:J

.field private final mPreviewGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mPreviewHeight:I

.field private mPreviewMatrix:Landroid/graphics/Matrix;

.field private mPreviewMatrixUpdated:Z

.field private mPreviewWidth:I

.field private final mRawPictureCallback:Lcom/xiaomi/scanner/camera/CaptureModule$RawPictureCallback;

.field private mRawPictureCallbackTime:J

.field private mRequestZoom:F

.field private final mServices:Lcom/xiaomi/scanner/camera/CameraServices;

.field private mShutterCallbackTime:J

.field private mShutterLag:J

.field private mShutterToPictureDisplayedTime:J

.field private mSnapshotOnIdle:Z

.field private mUpdateSet:I

.field private mVolumeButtonClickedFlag:Z

.field private mZoomValue:F

.field private playCameraSoundRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "CaptureModule"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    .line 70
    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isLowMemoryDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x2dc6c0

    :goto_0
    sput v0, Lcom/xiaomi/scanner/camera/CaptureModule;->MAX_PICTURE_SIZE:I

    return-void

    :cond_0
    const v0, 0x4c4b40

    goto :goto_0
.end method

.method public constructor <init>(Lcom/xiaomi/scanner/app/ScanActivity;)V
    .locals 3
    .param p1, "app"    # Lcom/xiaomi/scanner/app/ScanActivity;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mRequestZoom:F

    .line 82
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mDefaultZoom:F

    .line 85
    iput v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPreviewWidth:I

    .line 86
    iput v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPreviewHeight:I

    .line 94
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPreviewMatrix:Landroid/graphics/Matrix;

    .line 99
    iput v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraId:I

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPaused:Z

    .line 101
    iput v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraState:I

    .line 102
    iput-boolean v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mSnapshotOnIdle:Z

    .line 107
    new-instance v0, Lcom/xiaomi/scanner/camera/CaptureModule$PostViewPictureCallback;

    invoke-direct {v0, p0, v2}, Lcom/xiaomi/scanner/camera/CaptureModule$PostViewPictureCallback;-><init>(Lcom/xiaomi/scanner/camera/CaptureModule;Lcom/xiaomi/scanner/camera/CaptureModule$1;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPostViewPictureCallback:Lcom/xiaomi/scanner/camera/CaptureModule$PostViewPictureCallback;

    .line 109
    new-instance v0, Lcom/xiaomi/scanner/camera/CaptureModule$RawPictureCallback;

    invoke-direct {v0, p0, v2}, Lcom/xiaomi/scanner/camera/CaptureModule$RawPictureCallback;-><init>(Lcom/xiaomi/scanner/camera/CaptureModule;Lcom/xiaomi/scanner/camera/CaptureModule$1;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mRawPictureCallback:Lcom/xiaomi/scanner/camera/CaptureModule$RawPictureCallback;

    .line 111
    new-instance v0, Lcom/xiaomi/scanner/camera/CaptureModule$AutoFocusCallback;

    invoke-direct {v0, p0, v2}, Lcom/xiaomi/scanner/camera/CaptureModule$AutoFocusCallback;-><init>(Lcom/xiaomi/scanner/camera/CaptureModule;Lcom/xiaomi/scanner/camera/CaptureModule$1;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAutoFocusCallback:Lcom/xiaomi/scanner/camera/CaptureModule$AutoFocusCallback;

    .line 113
    new-instance v0, Lcom/xiaomi/scanner/camera/CaptureModule$AutoFocusMoveCallback;

    invoke-direct {v0, p0, v2}, Lcom/xiaomi/scanner/camera/CaptureModule$AutoFocusMoveCallback;-><init>(Lcom/xiaomi/scanner/camera/CaptureModule;Lcom/xiaomi/scanner/camera/CaptureModule$1;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAutoFocusMoveCallback:Lcom/xiaomi/scanner/camera/CaptureModule$AutoFocusMoveCallback;

    .line 117
    iput-boolean v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraPreviewParamsReady:Z

    .line 135
    iput-boolean v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mVolumeButtonClickedFlag:Z

    .line 155
    new-instance v0, Lcom/xiaomi/scanner/camera/CaptureModule$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/camera/CaptureModule$1;-><init>(Lcom/xiaomi/scanner/camera/CaptureModule;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    .line 162
    new-instance v0, Lcom/xiaomi/scanner/camera/CaptureModule$2;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/camera/CaptureModule$2;-><init>(Lcom/xiaomi/scanner/camera/CaptureModule;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->playCameraSoundRunnable:Ljava/lang/Runnable;

    .line 169
    new-instance v0, Lcom/xiaomi/scanner/camera/CaptureModule$3;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/camera/CaptureModule$3;-><init>(Lcom/xiaomi/scanner/camera/CaptureModule;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPreviewGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 187
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    .line 188
    invoke-virtual {p1}, Lcom/xiaomi/scanner/app/ScanActivity;->getServices()Lcom/xiaomi/scanner/camera/CameraServices;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mServices:Lcom/xiaomi/scanner/camera/CameraServices;

    .line 189
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0, p0}, Lcom/xiaomi/scanner/app/ScanActivity;->setPreviewStatusListener(Lcom/xiaomi/scanner/ui/PreviewStatusListener;)V

    .line 190
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->initCameraHandler()V

    .line 191
    return-void
.end method

.method static synthetic access$1000(Lcom/xiaomi/scanner/camera/CaptureModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/camera/CaptureModule;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mSnapshotOnIdle:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/xiaomi/scanner/camera/CaptureModule;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/camera/CaptureModule;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/xiaomi/scanner/camera/CaptureModule;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/camera/CaptureModule;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/xiaomi/scanner/camera/CaptureModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/camera/CaptureModule;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->initializeFirstTime()V

    return-void
.end method

.method static synthetic access$1400(Lcom/xiaomi/scanner/camera/CaptureModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/camera/CaptureModule;
    .param p1, "x1"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/camera/CaptureModule;->setCameraParametersWhenIdle(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/xiaomi/scanner/camera/CaptureModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/xiaomi/scanner/camera/CaptureModule;

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mShutterCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$1502(Lcom/xiaomi/scanner/camera/CaptureModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/camera/CaptureModule;
    .param p1, "x1"    # J

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mShutterCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$1600(Lcom/xiaomi/scanner/camera/CaptureModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/xiaomi/scanner/camera/CaptureModule;

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mShutterLag:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/xiaomi/scanner/camera/CaptureModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/camera/CaptureModule;
    .param p1, "x1"    # J

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mShutterLag:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/xiaomi/scanner/camera/CaptureModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/xiaomi/scanner/camera/CaptureModule;

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCaptureStartTime:J

    return-wide v0
.end method

.method static synthetic access$1800()Lcom/xiaomi/scanner/debug/Log$Tag;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/xiaomi/scanner/camera/CaptureModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/xiaomi/scanner/camera/CaptureModule;

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPostViewPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$1902(Lcom/xiaomi/scanner/camera/CaptureModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/camera/CaptureModule;
    .param p1, "x1"    # J

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPostViewPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$2000(Lcom/xiaomi/scanner/camera/CaptureModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/xiaomi/scanner/camera/CaptureModule;

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mRawPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$2002(Lcom/xiaomi/scanner/camera/CaptureModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/camera/CaptureModule;
    .param p1, "x1"    # J

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mRawPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$2100(Lcom/xiaomi/scanner/camera/CaptureModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/camera/CaptureModule;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPaused:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/xiaomi/scanner/camera/CaptureModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/xiaomi/scanner/camera/CaptureModule;

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mJpegPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$2202(Lcom/xiaomi/scanner/camera/CaptureModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/camera/CaptureModule;
    .param p1, "x1"    # J

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mJpegPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$2302(Lcom/xiaomi/scanner/camera/CaptureModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/camera/CaptureModule;
    .param p1, "x1"    # J

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mShutterToPictureDisplayedTime:J

    return-wide p1
.end method

.method static synthetic access$2400(Lcom/xiaomi/scanner/camera/CaptureModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/xiaomi/scanner/camera/CaptureModule;

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPictureDisplayedToJpegCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$2402(Lcom/xiaomi/scanner/camera/CaptureModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/camera/CaptureModule;
    .param p1, "x1"    # J

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPictureDisplayedToJpegCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$2500(Lcom/xiaomi/scanner/camera/CaptureModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/xiaomi/scanner/camera/CaptureModule;

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mJpegCallbackFinishTime:J

    return-wide v0
.end method

.method static synthetic access$2502(Lcom/xiaomi/scanner/camera/CaptureModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/camera/CaptureModule;
    .param p1, "x1"    # J

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mJpegCallbackFinishTime:J

    return-wide p1
.end method

.method static synthetic access$2600(Lcom/xiaomi/scanner/camera/CaptureModule;)Lcom/xiaomi/scanner/app/ScanActivity;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/camera/CaptureModule;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/xiaomi/scanner/camera/CaptureModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/xiaomi/scanner/camera/CaptureModule;

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAutoFocusTime:J

    return-wide v0
.end method

.method static synthetic access$2702(Lcom/xiaomi/scanner/camera/CaptureModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/camera/CaptureModule;
    .param p1, "x1"    # J

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAutoFocusTime:J

    return-wide p1
.end method

.method static synthetic access$2800(Lcom/xiaomi/scanner/camera/CaptureModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/xiaomi/scanner/camera/CaptureModule;

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusStartTime:J

    return-wide v0
.end method

.method static synthetic access$2900(Lcom/xiaomi/scanner/camera/CaptureModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/camera/CaptureModule;
    .param p1, "x1"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/camera/CaptureModule;->setCameraState(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaomi/scanner/camera/CaptureModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/camera/CaptureModule;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->playCameraSound()V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaomi/scanner/camera/CaptureModule;[BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/camera/CaptureModule;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/scanner/camera/CaptureModule;->dumpPreviewFrame([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaomi/scanner/camera/CaptureModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/camera/CaptureModule;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->checkDisplayRotation()V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaomi/scanner/camera/CaptureModule;)Lcom/xiaomi/scanner/camera/FocusManager;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/camera/CaptureModule;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/xiaomi/scanner/camera/CaptureModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/camera/CaptureModule;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->onPreviewStarted()V

    return-void
.end method

.method private applyCameraSettingNotSupportedParameter()V
    .locals 4

    .prologue
    .line 865
    iget-object v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v2, :cond_0

    .line 867
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 868
    .local v1, "params":Landroid/hardware/Camera$Parameters;
    if-nez v1, :cond_1

    .line 869
    sget-object v2, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v3, "get param failed"

    invoke-static {v2, v3}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 880
    .end local v1    # "params":Landroid/hardware/Camera$Parameters;
    :cond_0
    :goto_0
    return-void

    .line 872
    .restart local v1    # "params":Landroid/hardware/Camera$Parameters;
    :cond_1
    invoke-static {}, Lcom/xiaomi/scanner/util/CameraUtil;->isAntibanding60()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "60hz"

    :goto_1
    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 874
    const-string v2, "camera-service-mute"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    iget-object v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v2, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 876
    .end local v1    # "params":Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v0

    .line 877
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v3, "applyCameraSettingNotSupportedParameter error"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 872
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "params":Landroid/hardware/Camera$Parameters;
    :cond_2
    :try_start_1
    const-string v2, "50hz"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private canTakePicture()Z
    .locals 4

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    .line 625
    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getStorageSpaceBytes()J

    move-result-wide v0

    const-wide/32 v2, 0x2faf080

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkDisplayRotation()V
    .locals 4

    .prologue
    .line 476
    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 484
    :cond_1
    invoke-static {}, Lcom/xiaomi/scanner/util/CameraUtil;->getDisplayRotation()I

    move-result v0

    iget v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mDisplayRotation:I

    if-eq v0, v1, :cond_2

    .line 485
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPreviewMatrixUpdated:Z

    .line 486
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->setDisplayOrientation()V

    .line 488
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mOnResumeTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/scanner/camera/CaptureModule$5;

    invoke-direct {v1, p0}, Lcom/xiaomi/scanner/camera/CaptureModule$5;-><init>(Lcom/xiaomi/scanner/camera/CaptureModule;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private checkPreviewPreconditions()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 765
    iget-boolean v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPaused:Z

    if-eqz v2, :cond_0

    .line 784
    :goto_0
    return v1

    .line 769
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v2, :cond_1

    .line 770
    sget-object v2, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v3, "startPreview: camera device not ready yet."

    invoke-static {v2, v3}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 774
    :cond_1
    iget-object v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/app/ScanActivity;->getAppUI()Lcom/xiaomi/scanner/app/AppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/scanner/app/AppUI;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 775
    .local v0, "st":Landroid/graphics/SurfaceTexture;
    if-nez v0, :cond_2

    .line 776
    sget-object v2, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v3, "startPreview: surfaceTexture is not ready."

    invoke-static {v2, v3}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 780
    :cond_2
    iget-boolean v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraPreviewParamsReady:Z

    if-nez v2, :cond_3

    .line 781
    sget-object v2, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v3, "startPreview: parameters for preview is not ready."

    invoke-static {v2, v3}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 784
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private closeCamera()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 728
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->onCameraClosed()V

    .line 731
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 732
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0, v2, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setFaceDetectionCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;)V

    .line 734
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getCameraProvider()Lcom/xiaomi/scanner/camera/CameraProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaomi/scanner/camera/CameraProvider;->releaseCamera(I)V

    .line 735
    iput-object v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 736
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->setCameraState(I)V

    .line 737
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/FocusManager;->onCameraReleased()V

    .line 739
    :cond_0
    return-void
.end method

.method private dumpPreviewFrame([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 12
    .param p1, "data"    # [B
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 302
    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v2

    .line 303
    .local v2, "format":I
    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v10

    .line 305
    .local v10, "size":Landroid/hardware/Camera$Size;
    new-instance v0, Landroid/graphics/YuvImage;

    iget v3, v10, Landroid/hardware/Camera$Size;->width:I

    iget v4, v10, Landroid/hardware/Camera$Size;->height:I

    const/4 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 306
    .local v0, "image":Landroid/graphics/YuvImage;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 307
    .local v6, "dataTake":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/xiaomi/scanner/util/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "preview_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".jpg"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 309
    .local v9, "jpegName":Ljava/lang/String;
    sget-object v1, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dumpPreviewFrame:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 311
    :try_start_0
    new-instance v1, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, v10, Landroid/hardware/Camera$Size;->width:I

    iget v11, v10, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v1, v3, v4, v5, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v3, 0x5a

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :goto_0
    return-void

    .line 313
    :catch_0
    move-exception v8

    .line 314
    .local v8, "e":Ljava/io/FileNotFoundException;
    sget-object v1, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v8}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private focusAndCapture()V
    .locals 4

    .prologue
    .line 463
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->getCameraState()I

    move-result v0

    .line 464
    .local v0, "cameraState":I
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/camera/FocusManager;->isFocusingSnapOnFinish()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 465
    :cond_0
    sget-object v1, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "focusAndCapture: state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 466
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mSnapshotOnIdle:Z

    .line 472
    :goto_0
    return-void

    .line 470
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mSnapshotOnIdle:Z

    .line 471
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    iget-object v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/scanner/camera/FocusManager;->focusAndCapture(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    goto :goto_0
.end method

.method private getZoomValue(Lcom/xiaomi/scanner/module/ModuleController;)F
    .locals 1
    .param p1, "module"    # Lcom/xiaomi/scanner/module/ModuleController;

    .prologue
    .line 933
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/xiaomi/scanner/module/ModuleController;->isZoomNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 934
    iget v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mRequestZoom:F

    .line 936
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mDefaultZoom:F

    goto :goto_0
.end method

.method private getZoomValue(Z)F
    .locals 1
    .param p1, "needZoom"    # Z

    .prologue
    .line 940
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mRequestZoom:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mDefaultZoom:F

    goto :goto_0
.end method

.method private initCameraHandler()V
    .locals 1

    .prologue
    .line 194
    new-instance v0, Lcom/xiaomi/scanner/camera/CaptureModule$MainHandler;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/camera/CaptureModule$MainHandler;-><init>(Lcom/xiaomi/scanner/camera/CaptureModule;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mHandler:Landroid/os/Handler;

    .line 195
    return-void
.end method

.method private initMotionManager()V
    .locals 2

    .prologue
    .line 562
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mMotionManager:Lcom/xiaomi/scanner/camera/MotionManager;

    if-nez v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mServices:Lcom/xiaomi/scanner/camera/CameraServices;

    invoke-interface {v0}, Lcom/xiaomi/scanner/camera/CameraServices;->getMotionManager()Lcom/xiaomi/scanner/camera/MotionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mMotionManager:Lcom/xiaomi/scanner/camera/MotionManager;

    .line 564
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mMotionManager:Lcom/xiaomi/scanner/camera/MotionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mMotionManager:Lcom/xiaomi/scanner/camera/MotionManager;

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/camera/MotionManager;->addListener(Lcom/xiaomi/scanner/camera/MotionManager$MotionListener;)V

    .line 568
    :cond_0
    return-void
.end method

.method private initializeCapabilities()V
    .locals 4

    .prologue
    .line 1099
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCapabilities()Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    .line 1100
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->FOCUS_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusAreaSupported:Z

    .line 1101
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->METERING_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mMeteringAreaSupported:Z

    .line 1102
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .line 1103
    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mContinuousFocusSupported:Z

    .line 1104
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1105
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxZoomRatio()F

    move-result v0

    .line 1106
    .local v0, "maxZoom":F
    iget v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mRequestZoom:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_0

    .line 1107
    iput v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mRequestZoom:F

    .line 1109
    :cond_0
    sget-object v1, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maxZoom="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " requestZoom="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mRequestZoom:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1114
    .end local v0    # "maxZoom":F
    :cond_1
    return-void
.end method

.method private initializeFirstTime()V
    .locals 2

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFirstTimeInitialized:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFirstTimeInitialized:Z

    .line 250
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    if-nez v0, :cond_2

    .line 251
    sget-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "drop updateStorageSpaceAndHint, null controller"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 254
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->updateStorageSpaceAndHint(Lcom/xiaomi/scanner/app/ScanActivity$OnStorageUpdateDoneListener;)V

    goto :goto_0
.end method

.method private initializeFocusManager()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 541
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/FocusManager;->removeMessages()V

    .line 558
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    iget-object v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    invoke-virtual {v0, v2}, Lcom/xiaomi/scanner/app/ScanActivity;->addPreviewAreaSizeChangedListener(Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 559
    return-void

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0008

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 546
    .local v6, "defaultFocusModesStrings":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 548
    .local v1, "defaultFocusModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;>;"
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v9

    .line 549
    .local v9, "stringifier":Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;
    array-length v2, v6

    move v0, v4

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v8, v6, v0

    .line 550
    .local v8, "modeString":Ljava/lang/String;
    invoke-virtual {v9, v8}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->focusModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v7

    .line 551
    .local v7, "mode":Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    if-eqz v7, :cond_1

    .line 552
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 555
    .end local v7    # "mode":Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    .end local v8    # "modeString":Ljava/lang/String;
    :cond_2
    new-instance v0, Lcom/xiaomi/scanner/camera/FocusManager;

    iget-object v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-object v3, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    .line 556
    invoke-virtual {v3}, Lcom/xiaomi/scanner/app/ScanActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/scanner/camera/FocusManager;-><init>(Ljava/util/List;Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/xiaomi/scanner/camera/FocusManager$Listener;ZLandroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    goto :goto_0
.end method

.method private initializeSecondTime()V
    .locals 0

    .prologue
    .line 259
    return-void
.end method

.method private onError()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getFatalErrorHandler()Lcom/xiaomi/scanner/camera/FatalErrorHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/scanner/camera/FatalErrorHandler;->onMediaStorageFailure()V

    .line 184
    return-void
.end method

.method private onPreviewStarted()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getAppUI()Lcom/xiaomi/scanner/app/AppUI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->onPreviewStarted()V

    .line 200
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->setInPictureTakenState(Z)V

    .line 201
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->setCameraState(I)V

    .line 203
    :cond_0
    return-void
.end method

.method private playCameraSound()V
    .locals 3

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1251
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    const v1, 0x7f060001

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/scanner/app/ScanActivity;->playSound(IF)V

    .line 1253
    :cond_0
    return-void
.end method

.method private setCameraParameters(I)V
    .locals 2
    .param p1, "updateSet"    # I

    .prologue
    .line 1050
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 1051
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->updateCameraParametersInitialize()V

    .line 1054
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 1055
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->updateCameraParametersZoom()V

    .line 1058
    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    .line 1059
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->updateCameraParametersPreference()V

    .line 1062
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_3

    .line 1063
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 1065
    :cond_3
    return-void
.end method

.method private setCameraParametersWhenIdle(I)V
    .locals 5
    .param p1, "additionalUpdateSet"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 1070
    iget v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mUpdateSet:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mUpdateSet:I

    .line 1071
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 1074
    iput v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mUpdateSet:I

    .line 1084
    :cond_0
    :goto_0
    return-void

    .line 1076
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1077
    iget v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mUpdateSet:I

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->setCameraParameters(I)V

    .line 1078
    iput v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mUpdateSet:I

    goto :goto_0

    .line 1080
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1081
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private declared-synchronized setCameraState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 262
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    monitor-exit p0

    return-void

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setDisplayOrientation()V
    .locals 4

    .prologue
    .line 743
    invoke-static {}, Lcom/xiaomi/scanner/util/CameraUtil;->getDisplayRotation()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mDisplayRotation:I

    .line 744
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v1, :cond_0

    .line 745
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mDisplayRotation:I

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setDisplayOrientation(I)V

    .line 748
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getCameraProvider()Lcom/xiaomi/scanner/camera/CameraProvider;

    move-result-object v1

    iget v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraId:I

    invoke-interface {v1, v2}, Lcom/xiaomi/scanner/camera/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v0

    .line 749
    .local v0, "info":Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    if-nez v0, :cond_1

    .line 750
    sget-object v1, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "drop reset coordinate transformer while info is null"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 759
    :goto_0
    return-void

    .line 753
    :cond_1
    iget v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mDisplayRotation:I

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getPreviewOrientation(I)I

    move-result v1

    iput v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mDisplayOrientation:I

    .line 754
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    if-eqz v1, :cond_2

    .line 755
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    iget v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mDisplayOrientation:I

    invoke-virtual {v1, v2}, Lcom/xiaomi/scanner/camera/FocusManager;->setDisplayOrientation(I)V

    .line 757
    :cond_2
    sget-object v1, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDisplayOrientation (screen:preview) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mDisplayRotation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mDisplayOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setFocusAreasIfSupported()V
    .locals 2

    .prologue
    .line 944
    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusAreaSupported:Z

    if-eqz v0, :cond_0

    .line 945
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/camera/FocusManager;->getFocusAreas()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusAreas(Ljava/util/List;)V

    .line 947
    :cond_0
    return-void
.end method

.method private setMeteringAreasIfSupported()V
    .locals 2

    .prologue
    .line 950
    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    .line 951
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/camera/FocusManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setMeteringAreas(Ljava/util/List;)V

    .line 953
    :cond_0
    return-void
.end method

.method private setMotionManagerState()V
    .locals 1

    .prologue
    .line 956
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mMotionManager:Lcom/xiaomi/scanner/camera/MotionManager;

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/FocusManager;->getFocusAreas()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 958
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mMotionManager:Lcom/xiaomi/scanner/camera/MotionManager;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/MotionManager;->start()V

    .line 963
    :cond_0
    :goto_0
    return-void

    .line 960
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mMotionManager:Lcom/xiaomi/scanner/camera/MotionManager;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/MotionManager;->stop()V

    goto :goto_0
.end method

.method private updateAutoFocusMoveCallback()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1038
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_0

    .line 1047
    :goto_0
    return-void

    .line 1041
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v0

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-ne v0, v1, :cond_1

    .line 1043
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAutoFocusMoveCallback:Lcom/xiaomi/scanner/camera/CaptureModule$AutoFocusMoveCallback;

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setAutoFocusMoveCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;)V

    goto :goto_0

    .line 1045
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0, v2, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setAutoFocusMoveCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;)V

    goto :goto_0
.end method

.method private updateCameraParametersInitialize()V
    .locals 4

    .prologue
    .line 883
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->applyCameraSettingNotSupportedParameter()V

    .line 887
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-static {v1}, Lcom/xiaomi/scanner/util/CameraUtil;->getPhotoPreviewFpsRange(Lcom/android/ex/camera2/portability/CameraCapabilities;)[I

    move-result-object v0

    .line 888
    .local v0, "fpsRange":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 889
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {v1, v2, v3}, Lcom/android/ex/camera2/portability/CameraSettings;->setPreviewFpsRange(II)V

    .line 891
    :cond_0
    return-void
.end method

.method private updateCameraParametersPreference()V
    .locals 3

    .prologue
    .line 968
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 987
    :cond_0
    :goto_0
    return-void

    .line 972
    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->setFocusAreasIfSupported()V

    .line 973
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->setMeteringAreasIfSupported()V

    .line 974
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->setMotionManagerState()V

    .line 978
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    iget-object v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 979
    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/scanner/camera/FocusManager;->getFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v1

    .line 978
    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 980
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFlashMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v0

    if-nez v0, :cond_2

    .line 981
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->NO_FLASH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setFlashMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)V

    .line 984
    :cond_2
    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mContinuousFocusSupported:Z

    if-eqz v0, :cond_0

    .line 985
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->updateAutoFocusMoveCallback()V

    goto :goto_0
.end method

.method private updateCameraParametersZoom()V
    .locals 2

    .prologue
    .line 894
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mZoomValue:F

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setZoomRatio(F)V

    .line 897
    :cond_0
    return-void
.end method

.method private updateParametersPictureSize()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 990
    iget-object v5, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v5, :cond_0

    .line 991
    sget-object v5, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v6, "attempting to set picture size without camera device"

    invoke-static {v5, v6}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1024
    :goto_0
    return-void

    .line 995
    :cond_0
    iget-object v5, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedPhotoSizes()Ljava/util/List;

    move-result-object v4

    .line 996
    .local v4, "supported":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/camera2/portability/Size;>;"
    invoke-static {}, Lcom/xiaomi/scanner/module/code/utils/Utils;->getRealHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v7

    sget v6, Lcom/xiaomi/scanner/util/Util;->screenWidth:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    sget v6, Lcom/xiaomi/scanner/camera/CaptureModule;->MAX_PICTURE_SIZE:I

    invoke-static {v5, v4, v6}, Lcom/xiaomi/scanner/util/CameraUtil;->getLargestPictureSize(FLjava/util/List;I)Lcom/android/ex/camera2/portability/Size;

    move-result-object v2

    .line 997
    .local v2, "pictureSize":Lcom/android/ex/camera2/portability/Size;
    iget-object v5, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v5, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setPhotoSize(Lcom/android/ex/camera2/portability/Size;)Z

    .line 1001
    iget-object v5, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v3

    .line 1002
    .local v3, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/camera2/portability/Size;>;"
    invoke-static {}, Lcom/xiaomi/scanner/module/code/utils/Utils;->getRealHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v7

    sget v6, Lcom/xiaomi/scanner/util/Util;->screenWidth:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v3, v6, v7}, Lcom/xiaomi/scanner/util/CameraUtil;->getOptimalPreviewSize(Ljava/util/List;D)Lcom/android/ex/camera2/portability/Size;

    move-result-object v0

    .line 1003
    .local v0, "optimalSize":Lcom/android/ex/camera2/portability/Size;
    new-instance v1, Lcom/android/ex/camera2/portability/Size;

    iget-object v5, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPreviewSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/ex/camera2/portability/Size;-><init>(Lcom/android/ex/camera2/portability/Size;)V

    .line 1004
    .local v1, "original":Lcom/android/ex/camera2/portability/Size;
    sget-object v5, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "previewSize: optimal="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " original="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", sizes = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1005
    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/Size;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1006
    iget-object v5, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v5, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setPreviewSize(Lcom/android/ex/camera2/portability/Size;)Z

    .line 1007
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPreviewMatrixUpdated:Z

    .line 1009
    iget-object v5, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v6, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v5, v6}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 1010
    iget-object v5, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 1013
    :cond_1
    iget-boolean v5, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPreviewMatrixUpdated:Z

    if-nez v5, :cond_2

    .line 1014
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPreviewMatrixUpdated:Z

    .line 1015
    iget-object v5, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPreviewMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 1016
    iget-object v5, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPreviewMatrix:Landroid/graphics/Matrix;

    iget v6, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mDisplayOrientation:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 1017
    iget v5, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mDisplayOrientation:I

    invoke-direct {p0, v5, v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->updatePreviewMatrix(ILcom/android/ex/camera2/portability/Size;)V

    .line 1020
    :cond_2
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v5

    if-eqz v5, :cond_3

    .line 1021
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/xiaomi/scanner/camera/CaptureModule;->updatePreviewAspectRatio(F)V

    .line 1023
    :cond_3
    sget-object v5, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "previewSize="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pictureSize="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private updatePreviewMatrix(ILcom/android/ex/camera2/portability/Size;)V
    .locals 3
    .param p1, "orientation"    # I
    .param p2, "previewSize"    # Lcom/android/ex/camera2/portability/Size;

    .prologue
    const/4 v2, 0x0

    .line 1027
    const/16 v0, 0x5a

    if-ne p1, v0, :cond_1

    .line 1028
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPreviewMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1034
    :cond_0
    :goto_0
    return-void

    .line 1029
    :cond_1
    const/16 v0, 0xb4

    if-ne p1, v0, :cond_2

    .line 1030
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPreviewMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 1031
    :cond_2
    const/16 v0, 0x10e

    if-ne p1, v0, :cond_0

    .line 1032
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPreviewMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0
.end method


# virtual methods
.method public autoFocus()V
    .locals 3

    .prologue
    .line 630
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->isPreviewStop()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 633
    :cond_1
    sget-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "starting auto focus"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 634
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusStartTime:J

    .line 635
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAutoFocusCallback:Lcom/xiaomi/scanner/camera/CaptureModule$AutoFocusCallback;

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->autoFocus(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;)V

    .line 636
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->setCameraState(I)V

    goto :goto_0
.end method

.method public cancelAutoFocus()V
    .locals 2

    .prologue
    .line 641
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_0

    .line 648
    :goto_0
    return-void

    .line 644
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "cancel auto focus"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 645
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->cancelAutoFocus()V

    .line 646
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->setCameraState(I)V

    .line 647
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->setCameraParametersWhenIdle(I)V

    goto :goto_0
.end method

.method public capture()Z
    .locals 14

    .prologue
    const/4 v4, 0x3

    const/4 v12, 0x1

    const/4 v0, 0x0

    .line 320
    sget-object v1, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v3, "capture"

    invoke-static {v1, v3}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->getCameraState()I

    move-result v6

    .line 324
    .local v6, "cameraState":I
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v1, :cond_0

    if-ne v6, v4, :cond_1

    .line 325
    :cond_0
    sget-object v1, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 369
    :goto_0
    return v0

    .line 329
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mModuleController:Lcom/xiaomi/scanner/module/ModuleController;

    iget-object v3, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v3}, Lcom/xiaomi/scanner/app/ScanActivity;->getCurrentModuleController()Lcom/xiaomi/scanner/module/ModuleController;

    move-result-object v3

    if-eq v1, v3, :cond_2

    .line 330
    sget-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "capture module changed"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    move v0, v12

    .line 331
    goto :goto_0

    .line 334
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getOrientationManager()Lcom/xiaomi/scanner/camera/OrientationManager;

    move-result-object v1

    if-nez v1, :cond_3

    .line 335
    sget-object v1, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v3, "OrientationManager is null"

    invoke-static {v1, v3}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 339
    :cond_3
    invoke-direct {p0, v4}, Lcom/xiaomi/scanner/camera/CaptureModule;->setCameraState(I)V

    .line 341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCaptureStartTime:J

    .line 342
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPostViewPictureCallbackTime:J

    .line 344
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    .line 345
    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getCameraProvider()Lcom/xiaomi/scanner/camera/CameraProvider;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraId:I

    invoke-interface {v0, v1}, Lcom/xiaomi/scanner/camera/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v8

    .line 346
    .local v8, "info":Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    invoke-virtual {v8}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getSensorOrientation()I

    move-result v11

    .line 347
    .local v11, "sensorOrientation":I
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    .line 348
    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getOrientationManager()Lcom/xiaomi/scanner/camera/OrientationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/scanner/camera/OrientationManager;->getDeviceOrientation()Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v7

    .line 349
    .local v7, "deviceOrientation":I
    invoke-virtual {v8}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->isFacingFront()Z

    move-result v9

    .line 351
    .local v9, "isFrontCamera":Z
    invoke-static {v11, v7, v9}, Lcom/xiaomi/scanner/util/CameraUtil;->getImageRotation(IIZ)I

    move-result v10

    .line 352
    .local v10, "jpegRotation":I
    sget-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "capture: so="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " do="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " jo="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0, v10}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setJpegOrientation(I)V

    .line 354
    const/4 v2, 0x0

    .line 355
    .local v2, "shutterCallback":Lcom/xiaomi/scanner/camera/CaptureModule$ShutterCallback;
    invoke-static {}, Lcom/xiaomi/scanner/settings/FeatureManager;->isCaptureSoundEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 357
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->canUseShutterCallback()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 358
    new-instance v2, Lcom/xiaomi/scanner/camera/CaptureModule$ShutterCallback;

    .end local v2    # "shutterCallback":Lcom/xiaomi/scanner/camera/CaptureModule$ShutterCallback;
    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lcom/xiaomi/scanner/camera/CaptureModule$ShutterCallback;-><init>(Lcom/xiaomi/scanner/camera/CaptureModule;Lcom/xiaomi/scanner/camera/CaptureModule$1;)V

    .line 363
    .restart local v2    # "shutterCallback":Lcom/xiaomi/scanner/camera/CaptureModule$ShutterCallback;
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mRawPictureCallback:Lcom/xiaomi/scanner/camera/CaptureModule$RawPictureCallback;

    iget-object v4, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPostViewPictureCallback:Lcom/xiaomi/scanner/camera/CaptureModule$PostViewPictureCallback;

    new-instance v5, Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;

    iget-object v13, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    .line 367
    invoke-virtual {v13}, Lcom/xiaomi/scanner/app/ScanActivity;->getCurrentModuleController()Lcom/xiaomi/scanner/module/ModuleController;

    move-result-object v13

    invoke-direct {v5, p0, v13}, Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;-><init>(Lcom/xiaomi/scanner/camera/CaptureModule;Lcom/xiaomi/scanner/module/ModuleController;)V

    .line 363
    invoke-virtual/range {v0 .. v5}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->takePicture(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;)V

    move v0, v12

    .line 369
    goto/16 :goto_0

    .line 359
    :cond_5
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->isHeadset()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 360
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->playCameraSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 608
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->setPreviewStatusListener(Lcom/xiaomi/scanner/ui/PreviewStatusListener;)V

    .line 609
    iput-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    .line 610
    iput-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mHandler:Landroid/os/Handler;

    .line 611
    return-void
.end method

.method public getCameraSettings()Lcom/android/ex/camera2/portability/CameraSettings;
    .locals 1

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    .line 1192
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 1194
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getCameraState()I
    .locals 1

    .prologue
    .line 266
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDisplayOrientation()I
    .locals 1

    .prologue
    .line 1202
    iget v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mDisplayOrientation:I

    return v0
.end method

.method public getGestureListener()Landroid/view/GestureDetector$OnGestureListener;
    .locals 1

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPreviewGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    return-object v0
.end method

.method public getPreviewTransform()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPreviewMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 1123
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "extra1"    # Ljava/lang/Object;
    .param p4, "extra2"    # Ljava/lang/Object;

    .prologue
    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public hardResetSettings(Lcom/xiaomi/scanner/settings/SettingsManager;)V
    .locals 0
    .param p1, "settingsManager"    # Lcom/xiaomi/scanner/settings/SettingsManager;

    .prologue
    .line 234
    return-void
.end method

.method public isCameraIdle()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1087
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->getCameraState()I

    move-result v0

    .line 1088
    .local v0, "cameraState":I
    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    .line 1090
    invoke-virtual {v2}, Lcom/xiaomi/scanner/camera/FocusManager;->isFocusingSnapOnFinish()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPreviewFrameValid()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1094
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->getCameraState()I

    move-result v0

    .line 1095
    .local v0, "state":I
    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPreviewStop()Z
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->getCameraState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    .line 666
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->isCameraIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 667
    sget-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "consume back key"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 669
    const/4 v0, 0x1

    .line 671
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCameraAvailable(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 3
    .param p1, "cameraProxy"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 378
    sget-object v1, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "onCameraAvailable"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 379
    iget-boolean v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPaused:Z

    if-eqz v1, :cond_0

    .line 411
    :goto_0
    return-void

    .line 383
    :cond_0
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 384
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->initializeCapabilities()V

    .line 387
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getCurrentModuleController()Lcom/xiaomi/scanner/module/ModuleController;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/camera/CaptureModule;->getZoomValue(Lcom/xiaomi/scanner/module/ModuleController;)F

    move-result v1

    iput v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mZoomValue:F

    .line 388
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->initializeFocusManager()V

    .line 389
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    iget-object v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v1, v2}, Lcom/xiaomi/scanner/camera/FocusManager;->updateCapabilities(Lcom/android/ex/camera2/portability/CameraCapabilities;)V

    .line 390
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->initMotionManager()V

    .line 393
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 395
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFlashMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v1

    if-nez v1, :cond_1

    .line 396
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->NO_FLASH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setFlashMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)V

    .line 398
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v1

    if-nez v1, :cond_2

    .line 399
    sget-object v1, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "setFocusMode: AUTO"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 400
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 403
    :cond_2
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/camera/CaptureModule;->setCameraParametersWhenIdle(I)V

    .line 406
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getSettingsManager()Lcom/xiaomi/scanner/settings/SettingsManager;

    move-result-object v0

    .line 407
    .local v0, "settingsManager":Lcom/xiaomi/scanner/settings/SettingsManager;
    invoke-virtual {v0, p0}, Lcom/xiaomi/scanner/settings/SettingsManager;->addListener(Lcom/xiaomi/scanner/settings/SettingsManager$OnSettingChangedListener;)V

    .line 408
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraPreviewParamsReady:Z

    .line 410
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->startPreview()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 676
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 703
    :cond_0
    :goto_0
    return v0

    .line 680
    :sswitch_0
    iget-boolean v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_1

    .line 681
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 682
    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->onShutterButtonFocus(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 686
    goto :goto_0

    .line 688
    :sswitch_1
    iget-boolean v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 689
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->onShutterButtonClick()V

    goto :goto_0

    .line 695
    :sswitch_2
    iget-boolean v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 699
    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->onShutterButtonFocus(Z)V

    goto :goto_0

    .line 676
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_2
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 708
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 723
    :cond_0
    :goto_0
    return v0

    .line 711
    :sswitch_0
    iget-boolean v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_1

    .line 712
    iput-boolean v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mVolumeButtonClickedFlag:Z

    .line 713
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->onShutterButtonClick()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 716
    goto :goto_0

    .line 718
    :sswitch_1
    iget-boolean v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_0

    .line 719
    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/camera/CaptureModule;->onShutterButtonFocus(Z)V

    goto :goto_0

    .line 708
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onLayoutOrientationChanged(Z)V
    .locals 0
    .param p1, "isLandscape"    # Z

    .prologue
    .line 614
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->setDisplayOrientation()V

    .line 615
    return-void
.end method

.method public onPreviewLayoutChanged(Landroid/view/View;IIIIIIII)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 1129
    sub-int v1, p4, p2

    .line 1130
    .local v1, "width":I
    sub-int v0, p5, p3

    .line 1131
    .local v0, "height":I
    iget v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPreviewWidth:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPreviewHeight:I

    if-eq v2, v0, :cond_1

    .line 1132
    :cond_0
    iput v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPreviewWidth:I

    .line 1133
    iput v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPreviewHeight:I

    .line 1135
    :cond_1
    return-void
.end method

.method public onPreviewUIDestroyed()V
    .locals 2

    .prologue
    .line 211
    sget-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onPreviewUIDestroyed"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_0

    .line 217
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 216
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->stopPreview()V

    goto :goto_0
.end method

.method public onPreviewUIReady()V
    .locals 2

    .prologue
    .line 206
    sget-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onPreviewUIReady"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->startPreview()V

    .line 208
    return-void
.end method

.method public onSettingChanged(Lcom/xiaomi/scanner/settings/SettingsManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "settingsManager"    # Lcom/xiaomi/scanner/settings/SettingsManager;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 856
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 859
    :cond_0
    return-void
.end method

.method public onShutterButtonClick()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 418
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->getCameraState()I

    move-result v0

    .line 419
    .local v0, "cameraState":I
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getCurrentModuleController()Lcom/xiaomi/scanner/module/ModuleController;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaomi/scanner/module/ModuleController;->isUsePreviewFrameAsPicture()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPaused:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    .line 420
    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->isShutterEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 421
    :cond_0
    sget-object v1, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShutterButtonClick: cameraState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " paused="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPaused:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 422
    iput-boolean v6, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mVolumeButtonClickedFlag:Z

    .line 455
    :goto_0
    return-void

    .line 427
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->isPrerequisiteSatisfied()Z

    move-result v1

    if-nez v1, :cond_2

    .line 428
    const v1, 0x7f070080

    invoke-static {v1}, Lcom/xiaomi/scanner/util/ToastUtils;->showCenterToast(I)V

    .line 429
    iput-boolean v6, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mVolumeButtonClickedFlag:Z

    goto :goto_0

    .line 434
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->isSdkReady()Z

    move-result v1

    if-nez v1, :cond_3

    .line 435
    const v1, 0x7f070098

    invoke-static {v1}, Lcom/xiaomi/scanner/util/ToastUtils;->showCenterToast(I)V

    .line 436
    iput-boolean v6, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mVolumeButtonClickedFlag:Z

    goto :goto_0

    .line 441
    :cond_3
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getStorageSpaceBytes()J

    move-result-wide v2

    const-wide/32 v4, 0x2faf080

    cmp-long v1, v2, v4

    if-gtz v1, :cond_4

    .line 442
    sget-object v1, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not enough space or storage not ready. remaining="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    .line 443
    invoke-virtual {v3}, Lcom/xiaomi/scanner/app/ScanActivity;->getStorageSpaceBytes()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 442
    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 444
    iput-boolean v6, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mVolumeButtonClickedFlag:Z

    goto :goto_0

    .line 448
    :cond_4
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->doPrething()V

    .line 449
    sget-object v1, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShutterButtonClick: cameraState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " volumeButtonClickedFlag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mVolumeButtonClickedFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 452
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getCurrentModuleController()Lcom/xiaomi/scanner/module/ModuleController;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mModuleController:Lcom/xiaomi/scanner/module/ModuleController;

    .line 453
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/xiaomi/scanner/app/ScanActivity;->setInPictureTakenState(Z)V

    .line 454
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->focusAndCapture()V

    goto/16 :goto_0
.end method

.method public onShutterButtonFocus(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 415
    return-void
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 651
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->getCameraState()I

    move-result v0

    .line 652
    .local v0, "cameraState":I
    iget-boolean v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPaused:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 663
    :cond_0
    :goto_0
    return-void

    .line 659
    :cond_1
    iget-boolean v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusAreaSupported:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mMeteringAreaSupported:Z

    if-eqz v1, :cond_0

    .line 662
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    invoke-virtual {v1, p2, p3}, Lcom/xiaomi/scanner/camera/FocusManager;->onSingleTapUp(II)V

    goto :goto_0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 1144
    sget-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceTextureAvailable: w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1145
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->onPreviewUIReady()V

    .line 1146
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 1156
    sget-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onSurfaceTextureDestroyed"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1157
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->onPreviewUIDestroyed()V

    .line 1158
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 1150
    sget-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceTextureSizeChanged: w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1152
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 1164
    return-void
.end method

.method public pause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 571
    sget-object v1, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "pause"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 573
    iget-boolean v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPaused:Z

    if-eqz v1, :cond_0

    .line 605
    :goto_0
    return-void

    .line 577
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPaused:Z

    .line 581
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->getCameraState()I

    move-result v1

    if-eqz v1, :cond_1

    .line 582
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->cancelAutoFocus()V

    .line 583
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setOneShotPreviewCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;)V

    .line 587
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 589
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mMotionManager:Lcom/xiaomi/scanner/camera/MotionManager;

    if-eqz v1, :cond_2

    .line 590
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mMotionManager:Lcom/xiaomi/scanner/camera/MotionManager;

    iget-object v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    invoke-virtual {v1, v2}, Lcom/xiaomi/scanner/camera/MotionManager;->removeListener(Lcom/xiaomi/scanner/camera/MotionManager$MotionListener;)V

    .line 591
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mMotionManager:Lcom/xiaomi/scanner/camera/MotionManager;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/camera/MotionManager;->reset()V

    .line 592
    iput-object v3, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mMotionManager:Lcom/xiaomi/scanner/camera/MotionManager;

    .line 595
    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->closeCamera()V

    .line 597
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    if-eqz v1, :cond_3

    .line 598
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/camera/FocusManager;->removeMessages()V

    .line 600
    :cond_3
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    iget-object v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    invoke-virtual {v1, v2}, Lcom/xiaomi/scanner/app/ScanActivity;->removePreviewAreaSizeChangedListener(Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 601
    iput-object v3, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mModuleController:Lcom/xiaomi/scanner/module/ModuleController;

    .line 603
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getSettingsManager()Lcom/xiaomi/scanner/settings/SettingsManager;

    move-result-object v0

    .line 604
    .local v0, "settingsManager":Lcom/xiaomi/scanner/settings/SettingsManager;
    invoke-virtual {v0, p0}, Lcom/xiaomi/scanner/settings/SettingsManager;->removeListener(Lcom/xiaomi/scanner/settings/SettingsManager$OnSettingChangedListener;)V

    goto :goto_0
.end method

.method public requestCameraOpen()V
    .locals 2

    .prologue
    .line 224
    sget-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "requestCameraOpen"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    if-nez v0, :cond_0

    .line 226
    sget-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "null mAppController, drop request camera"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 230
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getCameraProvider()Lcom/xiaomi/scanner/camera/CameraProvider;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraId:I

    invoke-interface {v0, v1}, Lcom/xiaomi/scanner/camera/CameraProvider;->requestCamera(I)V

    goto :goto_0
.end method

.method public requestPreviewFrame(Lcom/xiaomi/scanner/module/ModuleController;)V
    .locals 5
    .param p1, "module"    # Lcom/xiaomi/scanner/module/ModuleController;

    .prologue
    .line 271
    iget-boolean v3, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPaused:Z

    if-eqz v3, :cond_0

    .line 272
    sget-object v3, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v4, "requestPreviewFrame: paused!"

    invoke-static {v3, v4}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 299
    :goto_0
    return-void

    .line 275
    :cond_0
    if-nez p1, :cond_1

    .line 276
    sget-object v3, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v4, "requestPreviewFrame: null module!"

    invoke-static {v3, v4}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 279
    :cond_1
    iget-object v3, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v3, :cond_2

    .line 280
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 281
    .local v2, "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/xiaomi/scanner/module/ModuleController;>;"
    new-instance v0, Lcom/xiaomi/scanner/camera/CaptureModule$4;

    invoke-direct {v0, p0, v2}, Lcom/xiaomi/scanner/camera/CaptureModule$4;-><init>(Lcom/xiaomi/scanner/camera/CaptureModule;Ljava/lang/ref/WeakReference;)V

    .line 293
    .local v0, "cb":Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;
    iget-object v3, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v4, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setOneShotPreviewCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;)V

    goto :goto_0

    .line 295
    .end local v0    # "cb":Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;
    .end local v2    # "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/xiaomi/scanner/module/ModuleController;>;"
    :cond_2
    sget-object v3, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v4, "requestPreviewFrame: null camera!"

    invoke-static {v3, v4}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 296
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .line 297
    .local v1, "r":Ljava/lang/RuntimeException;
    sget-object v3, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v4, "RuntimeException"

    invoke-static {v3, v4, v1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public requestUpdateZoom(Lcom/xiaomi/scanner/module/ModuleController;)V
    .locals 2
    .param p1, "module"    # Lcom/xiaomi/scanner/module/ModuleController;

    .prologue
    .line 905
    if-nez p1, :cond_0

    .line 906
    sget-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "module is null"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 907
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->requestUpdateZoom(Z)V

    .line 911
    :goto_0
    return-void

    .line 909
    :cond_0
    invoke-interface {p1}, Lcom/xiaomi/scanner/module/ModuleController;->isZoomNeeded()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->requestUpdateZoom(Z)V

    goto :goto_0
.end method

.method public requestUpdateZoom(Z)V
    .locals 6
    .param p1, "needZoom"    # Z

    .prologue
    .line 915
    iget-boolean v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPaused:Z

    if-eqz v1, :cond_1

    .line 930
    :cond_0
    :goto_0
    return-void

    .line 918
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v1, :cond_0

    .line 921
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/camera/CaptureModule;->getZoomValue(Z)F

    move-result v0

    .line 922
    .local v0, "moduleZoom":F
    iget v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mZoomValue:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    const-wide v4, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_0

    .line 925
    iput v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mZoomValue:F

    .line 926
    sget-object v1, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zoom="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mZoomValue:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 928
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mZoomValue:F

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setZoomRatio(F)V

    .line 929
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    goto :goto_0
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 499
    sget-object v1, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "resume"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 501
    iget-boolean v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPaused:Z

    if-nez v1, :cond_0

    .line 536
    :goto_0
    return-void

    .line 505
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPaused:Z

    .line 507
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    if-eqz v1, :cond_1

    .line 511
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    iget-object v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    invoke-virtual {v1, v2}, Lcom/xiaomi/scanner/app/ScanActivity;->addPreviewAreaSizeChangedListener(Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 514
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getCameraProvider()Lcom/xiaomi/scanner/camera/CameraProvider;

    move-result-object v0

    .line 515
    .local v0, "camProvider":Lcom/xiaomi/scanner/camera/CameraProvider;
    if-nez v0, :cond_2

    .line 517
    sget-object v1, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "resume camera provider null"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 521
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->requestCameraOpen()V

    .line 523
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mJpegPictureCallbackTime:J

    .line 524
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getCurrentModuleController()Lcom/xiaomi/scanner/module/ModuleController;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/camera/CaptureModule;->getZoomValue(Lcom/xiaomi/scanner/module/ModuleController;)F

    move-result v1

    iput v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mZoomValue:F

    .line 526
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mOnResumeTime:J

    .line 527
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->checkDisplayRotation()V

    .line 531
    iget-boolean v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFirstTimeInitialized:Z

    if-nez v1, :cond_3

    .line 532
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 534
    :cond_3
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->initializeSecondTime()V

    goto :goto_0
.end method

.method public setFocusParameters()V
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->setCameraParametersWhenIdle(I)V

    .line 375
    return-void
.end method

.method public shouldAutoAdjustTransformMatrixOnLayout()Z
    .locals 1

    .prologue
    .line 1139
    const/4 v0, 0x1

    return v0
.end method

.method public startPreview()V
    .locals 4

    .prologue
    .line 791
    sget-object v1, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "startPreview"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 792
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v1, :cond_1

    .line 793
    sget-object v1, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "attempted to start preview before camera device"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 837
    :cond_0
    :goto_0
    return-void

    .line 798
    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->checkPreviewPreconditions()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 802
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->setDisplayOrientation()V

    .line 804
    iget-boolean v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mSnapshotOnIdle:Z

    if-nez v1, :cond_3

    .line 807
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    iget-object v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/scanner/camera/FocusManager;->getFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v1

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-ne v1, v2, :cond_2

    .line 809
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->cancelAutoFocus()V

    .line 811
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/xiaomi/scanner/camera/FocusManager;->setAeAwbLock(Z)V

    .line 814
    :cond_3
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->updateParametersPictureSize()V

    .line 816
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/camera/CaptureModule;->setCameraParametersWhenIdle(I)V

    .line 818
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/app/ScanActivity;->getAppUI()Lcom/xiaomi/scanner/app/AppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/scanner/app/AppUI;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 821
    new-instance v0, Lcom/xiaomi/scanner/camera/CaptureModule$6;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/camera/CaptureModule$6;-><init>(Lcom/xiaomi/scanner/camera/CaptureModule;)V

    .line 832
    .local v0, "startPreviewCallback":Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v2, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->startPreviewWithCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;)V

    goto :goto_0
.end method

.method public stopPreview()V
    .locals 2

    .prologue
    .line 840
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->getCameraState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 841
    sget-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 842
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->stopPreview()V

    .line 844
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->setCameraState(I)V

    .line 845
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    if-eqz v0, :cond_1

    .line 846
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/FocusManager;->onPreviewStopped()V

    .line 848
    :cond_1
    return-void
.end method

.method public turnTorchOff()Z
    .locals 2

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_0

    .line 1181
    sget-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "cannot turn off flash due to null device"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1182
    const/4 v0, 0x0

    .line 1187
    :goto_0
    return v0

    .line 1184
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "turnTorchOff"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1185
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setFlashMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)V

    .line 1186
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 1187
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public turnTorchOn()Z
    .locals 2

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_0

    .line 1168
    sget-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "cannot turn on flash due to null device"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1169
    const/4 v0, 0x0

    .line 1176
    :goto_0
    return v0

    .line 1171
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "turnTorchOn"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1172
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->TORCH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1173
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->TORCH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setFlashMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)V

    .line 1174
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 1176
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateCameraOrientation()V
    .locals 2

    .prologue
    .line 618
    iget v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mDisplayRotation:I

    invoke-static {}, Lcom/xiaomi/scanner/util/CameraUtil;->getDisplayRotation()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 619
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->setDisplayOrientation()V

    .line 621
    :cond_0
    return-void
.end method

.method public updatePreviewAspectRatio(F)V
    .locals 1
    .param p1, "aspectRatio"    # F

    .prologue
    .line 241
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/app/ScanActivity;->updatePreviewAspectRatio(F)V

    .line 242
    return-void
.end method
