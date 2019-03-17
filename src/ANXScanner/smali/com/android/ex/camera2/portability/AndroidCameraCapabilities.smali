.class Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;
.super Lcom/android/ex/camera2/portability/CameraCapabilities;
.source "AndroidCameraCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$SizeComparator;,
        Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$FpsComparator;
    }
.end annotation


# static fields
.field private static TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag; = null

.field public static final ZOOM_MULTIPLIER:F = 100.0f


# instance fields
.field private mFpsComparator:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$FpsComparator;

.field private mSizeComparator:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$SizeComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "AndCamCapabs"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v1, 0x0

    .line 41
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    invoke-direct {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;-><init>(Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;)V

    .line 37
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$FpsComparator;

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$FpsComparator;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$1;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mFpsComparator:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$FpsComparator;

    .line 38
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$SizeComparator;

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$SizeComparator;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$1;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSizeComparator:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$SizeComparator;

    .line 42
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v0

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mMaxExposureCompensation:I

    .line 43
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v0

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mMinExposureCompensation:I

    .line 44
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v0

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mExposureCompensationStep:F

    .line 45
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mMaxNumOfFacesSupported:I

    .line 46
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mMaxNumOfMeteringArea:I

    .line 47
    new-instance v0, Lcom/android/ex/camera2/portability/Size;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/Size;-><init>(Landroid/hardware/Camera$Size;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mPreferredPreviewSizeForVideo:Lcom/android/ex/camera2/portability/Size;

    .line 48
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedPreviewFormats:Ljava/util/TreeSet;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 49
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedPhotoFormats:Ljava/util/TreeSet;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureFormats()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 50
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v0

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mHorizontalViewAngle:F

    .line 51
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getVerticalViewAngle()F

    move-result v0

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mVerticalViewAngle:F

    .line 52
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->buildPreviewFpsRange(Landroid/hardware/Camera$Parameters;)V

    .line 53
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->buildPreviewSizes(Landroid/hardware/Camera$Parameters;)V

    .line 54
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->buildVideoSizes(Landroid/hardware/Camera$Parameters;)V

    .line 55
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->buildPictureSizes(Landroid/hardware/Camera$Parameters;)V

    .line 56
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->buildSceneModes(Landroid/hardware/Camera$Parameters;)V

    .line 57
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->buildFlashModes(Landroid/hardware/Camera$Parameters;)V

    .line 58
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->buildFocusModes(Landroid/hardware/Camera$Parameters;)V

    .line 59
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->buildWhiteBalances(Landroid/hardware/Camera$Parameters;)V

    .line 61
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mMaxZoomRatio:F

    .line 63
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isVideoSnapshotSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_SNAPSHOT:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_EXPOSURE_LOCK:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_2
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_WHITE_BALANCE_LOCK:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_3
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {p0, v0}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 75
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mMaxNumOfFocusAreas:I

    .line 76
    iget v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mMaxNumOfFocusAreas:I

    if-lez v0, :cond_4

    .line 77
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->FOCUS_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_4
    iget v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mMaxNumOfMeteringArea:I

    if-lez v0, :cond_5

    .line 81
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->METERING_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_5
    return-void
.end method

.method constructor <init>(Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;)V
    .locals 2
    .param p1, "src"    # Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;-><init>(Lcom/android/ex/camera2/portability/CameraCapabilities;)V

    .line 37
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$FpsComparator;

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$FpsComparator;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$1;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mFpsComparator:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$FpsComparator;

    .line 38
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$SizeComparator;

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$SizeComparator;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$1;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSizeComparator:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$SizeComparator;

    .line 87
    return-void
.end method

.method private buildFlashModes(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 172
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 173
    .local v1, "supportedFlashModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 175
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->NO_FLASH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 191
    :cond_0
    return-void

    .line 177
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 178
    .local v0, "flash":Ljava/lang/String;
    const-string v3, "auto"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 179
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 180
    :cond_3
    const-string v3, "off"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 181
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 182
    :cond_4
    const-string v3, "on"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 183
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->ON:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 184
    :cond_5
    const-string v3, "red-eye"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 185
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->RED_EYE:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 186
    :cond_6
    const-string v3, "torch"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 187
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->TORCH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private buildFocusModes(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 194
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    .line 195
    .local v1, "supportedFocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_7

    .line 196
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 197
    .local v0, "focus":Ljava/lang/String;
    const-string v3, "auto"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 198
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFocusModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 199
    :cond_1
    const-string v3, "continuous-picture"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 200
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFocusModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 201
    :cond_2
    const-string v3, "continuous-video"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 202
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFocusModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_VIDEO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 203
    :cond_3
    const-string v3, "edof"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 204
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFocusModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->EXTENDED_DOF:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 205
    :cond_4
    const-string v3, "fixed"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 206
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFocusModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->FIXED:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 207
    :cond_5
    const-string v3, "infinity"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 208
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFocusModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->INFINITY:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 209
    :cond_6
    const-string v3, "macro"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 210
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFocusModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->MACRO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 214
    .end local v0    # "focus":Ljava/lang/String;
    :cond_7
    return-void
.end method

.method private buildPictureSizes(Landroid/hardware/Camera$Parameters;)V
    .locals 7
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v1

    .line 119
    .local v1, "supportedPictureSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz v1, :cond_0

    .line 120
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 121
    .local v0, "s":Landroid/hardware/Camera$Size;
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedPhotoSizes:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/ex/camera2/portability/Size;

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    iget v6, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v4, v5, v6}, Lcom/android/ex/camera2/portability/Size;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    .end local v0    # "s":Landroid/hardware/Camera$Size;
    :cond_0
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedPhotoSizes:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSizeComparator:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$SizeComparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 126
    return-void
.end method

.method private buildPreviewFpsRange(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    .line 91
    .local v0, "supportedPreviewFpsRange":Ljava/util/List;, "Ljava/util/List<[I>;"
    if-eqz v0, :cond_0

    .line 92
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedPreviewFpsRange:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedPreviewFpsRange:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mFpsComparator:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$FpsComparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 95
    return-void
.end method

.method private buildPreviewSizes(Landroid/hardware/Camera$Parameters;)V
    .locals 7
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 99
    .local v1, "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz v1, :cond_0

    .line 100
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 101
    .local v0, "s":Landroid/hardware/Camera$Size;
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedPreviewSizes:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/ex/camera2/portability/Size;

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    iget v6, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v4, v5, v6}, Lcom/android/ex/camera2/portability/Size;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    .end local v0    # "s":Landroid/hardware/Camera$Size;
    :cond_0
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedPreviewSizes:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSizeComparator:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$SizeComparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 105
    return-void
.end method

.method private buildSceneModes(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 129
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v1

    .line 130
    .local v1, "supportedSceneModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_11

    .line 131
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 132
    .local v0, "scene":Ljava/lang/String;
    const-string v3, "auto"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 133
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 134
    :cond_1
    const-string v3, "action"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 135
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->ACTION:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 136
    :cond_2
    const-string v3, "barcode"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 137
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->BARCODE:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 138
    :cond_3
    const-string v3, "beach"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 139
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->BEACH:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    :cond_4
    const-string v3, "candlelight"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 141
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->CANDLELIGHT:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    :cond_5
    const-string v3, "fireworks"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 143
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->FIREWORKS:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    :cond_6
    const-string v3, "hdr"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 145
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 146
    :cond_7
    const-string v3, "landscape"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 147
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->LANDSCAPE:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 148
    :cond_8
    const-string v3, "night"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 149
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->NIGHT:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 150
    :cond_9
    const-string v3, "night-portrait"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 151
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->NIGHT_PORTRAIT:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 152
    :cond_a
    const-string v3, "party"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 153
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->PARTY:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 154
    :cond_b
    const-string v3, "portrait"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 155
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->PORTRAIT:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 156
    :cond_c
    const-string v3, "snow"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 157
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->SNOW:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 158
    :cond_d
    const-string v3, "sports"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 159
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->SPORTS:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 160
    :cond_e
    const-string v3, "steadyphoto"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 161
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->STEADYPHOTO:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 162
    :cond_f
    const-string v3, "sunset"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 163
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->SUNSET:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 164
    :cond_10
    const-string v3, "theatre"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->THEATRE:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 169
    .end local v0    # "scene":Ljava/lang/String;
    :cond_11
    return-void
.end method

.method private buildVideoSizes(Landroid/hardware/Camera$Parameters;)V
    .locals 7
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 108
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v1

    .line 109
    .local v1, "supportedVideoSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz v1, :cond_0

    .line 110
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 111
    .local v0, "s":Landroid/hardware/Camera$Size;
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedVideoSizes:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/ex/camera2/portability/Size;

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    iget v6, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v4, v5, v6}, Lcom/android/ex/camera2/portability/Size;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    .end local v0    # "s":Landroid/hardware/Camera$Size;
    :cond_0
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedVideoSizes:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSizeComparator:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$SizeComparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 115
    return-void
.end method

.method private buildWhiteBalances(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 217
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v0

    .line 218
    .local v0, "supportedWhiteBalances":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_8

    .line 219
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 220
    .local v1, "wb":Ljava/lang/String;
    const-string v3, "auto"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 221
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 222
    :cond_1
    const-string v3, "cloudy-daylight"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 223
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->CLOUDY_DAYLIGHT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 224
    :cond_2
    const-string v3, "daylight"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 225
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->DAYLIGHT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 226
    :cond_3
    const-string v3, "fluorescent"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 227
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->FLUORESCENT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 228
    :cond_4
    const-string v3, "incandescent"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 229
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->INCANDESCENT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 230
    :cond_5
    const-string v3, "shade"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 231
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->SHADE:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 232
    :cond_6
    const-string v3, "twilight"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 233
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->TWILIGHT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 234
    :cond_7
    const-string v3, "warm-fluorescent"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 235
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->WARM_FLUORESCENT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 239
    .end local v1    # "wb":Ljava/lang/String;
    :cond_8
    return-void
.end method
