.class public Lcom/android/ex/camera2/portability/AndroidCameraSettings;
.super Lcom/android/ex/camera2/portability/CameraSettings;
.source "AndroidCameraSettings.java"


# static fields
.field private static final RECORDING_HINT:Ljava/lang/String; = "recording-hint"

.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

.field private static final TRUE:Ljava/lang/String; = "true"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "AndCamSet"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/ex/camera2/portability/AndroidCameraSettings;)V
    .locals 0
    .param p1, "other"    # Lcom/android/ex/camera2/portability/AndroidCameraSettings;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/CameraSettings;-><init>(Lcom/android/ex/camera2/portability/CameraSettings;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/android/ex/camera2/portability/CameraCapabilities;Landroid/hardware/Camera$Parameters;)V
    .locals 8
    .param p1, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
    .param p2, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v7, 0x0

    .line 31
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/CameraSettings;-><init>()V

    .line 32
    if-nez p2, :cond_0

    .line 33
    sget-object v4, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v5, "Settings ctor requires a non-null Camera.Parameters."

    invoke-static {v4, v5}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 73
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v3

    .line 39
    .local v3, "stringifier":Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;
    invoke-virtual {p0, v7}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setSizesLocked(Z)V

    .line 42
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 43
    .local v1, "paramPreviewSize":Landroid/hardware/Camera$Size;
    new-instance v4, Lcom/android/ex/camera2/portability/Size;

    iget v5, v1, Landroid/hardware/Camera$Size;->width:I

    iget v6, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v4, v5, v6}, Lcom/android/ex/camera2/portability/Size;-><init>(II)V

    invoke-virtual {p0, v4}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setPreviewSize(Lcom/android/ex/camera2/portability/Size;)Z

    .line 44
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewFrameRate()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setPreviewFrameRate(I)V

    .line 45
    const/4 v4, 0x2

    new-array v2, v4, [I

    .line 46
    .local v2, "previewFpsRange":[I
    invoke-virtual {p2, v2}, Landroid/hardware/Camera$Parameters;->getPreviewFpsRange([I)V

    .line 47
    aget v4, v2, v7

    const/4 v5, 0x1

    aget v5, v2, v5

    invoke-virtual {p0, v4, v5}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setPreviewFpsRange(II)V

    .line 49
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setPreviewFormat(I)V

    .line 52
    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p1, v4}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 53
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setZoomRatio(F)V

    .line 57
    :goto_1
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setExposureCompensationIndex(I)V

    .line 58
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->flashModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setFlashMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)V

    .line 59
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->focusModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 60
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->sceneModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setSceneMode(Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;)V

    .line 63
    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p1, v4}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->isVideoStabilizationEnabled()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setVideoStabilization(Z)V

    .line 66
    :cond_1
    const-string v4, "true"

    const-string v5, "recording-hint"

    invoke-virtual {p2, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setRecordingHintEnabled(Z)V

    .line 69
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getJpegQuality()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setPhotoJpegCompressionQuality(I)V

    .line 70
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 71
    .local v0, "paramPictureSize":Landroid/hardware/Camera$Size;
    new-instance v4, Lcom/android/ex/camera2/portability/Size;

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    iget v6, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v4, v5, v6}, Lcom/android/ex/camera2/portability/Size;-><init>(II)V

    invoke-virtual {p0, v4}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setPhotoSize(Lcom/android/ex/camera2/portability/Size;)Z

    .line 72
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPictureFormat()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setPhotoFormat(I)V

    goto/16 :goto_0

    .line 55
    .end local v0    # "paramPictureSize":Landroid/hardware/Camera$Size;
    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0, v4}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setZoomRatio(F)V

    goto :goto_1
.end method


# virtual methods
.method public copy()Lcom/android/ex/camera2/portability/CameraSettings;
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraSettings;

    invoke-direct {v0, p0}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraSettings;)V

    return-object v0
.end method
