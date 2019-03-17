.class public Lcom/android/ex/camera2/portability/CameraCapabilities;
.super Ljava/lang/Object;
.source "CameraCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;,
        Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;,
        Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;,
        Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;,
        Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;,
        Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    }
.end annotation


# static fields
.field private static TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag; = null

.field protected static final ZOOM_RATIO_UNZOOMED:F = 1.0f


# instance fields
.field protected mExposureCompensationStep:F

.field protected mHorizontalViewAngle:F

.field protected mMaxExposureCompensation:I

.field protected mMaxNumOfFacesSupported:I

.field protected mMaxNumOfFocusAreas:I

.field protected mMaxNumOfMeteringArea:I

.field protected mMaxZoomRatio:F

.field protected mMinExposureCompensation:I

.field protected mPreferredPreviewSizeForVideo:Lcom/android/ex/camera2/portability/Size;

.field private final mStringifier:Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

.field protected final mSupportedFeatures:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSupportedFlashModes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSupportedFocusModes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSupportedPhotoFormats:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSupportedPhotoSizes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/ex/camera2/portability/Size;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSupportedPreviewFormats:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSupportedPreviewFpsRange:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation
.end field

.field protected final mSupportedPreviewSizes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/ex/camera2/portability/Size;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSupportedSceneModes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSupportedVideoSizes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/ex/camera2/portability/Size;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSupportedWhiteBalances:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;",
            ">;"
        }
    .end annotation
.end field

.field protected mVerticalViewAngle:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "CamCapabs"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;)V
    .locals 1
    .param p1, "stringifier"    # Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    .prologue
    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPreviewFpsRange:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPreviewSizes:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPreviewFormats:Ljava/util/TreeSet;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedVideoSizes:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPhotoSizes:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPhotoFormats:Ljava/util/TreeSet;

    .line 51
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    .line 52
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    .line 53
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFocusModes:Ljava/util/EnumSet;

    .line 54
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    .line 55
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    .line 56
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    .line 467
    iput-object p1, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mStringifier:Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    .line 468
    return-void
.end method

.method public constructor <init>(Lcom/android/ex/camera2/portability/CameraCapabilities;)V
    .locals 2
    .param p1, "src"    # Lcom/android/ex/camera2/portability/CameraCapabilities;

    .prologue
    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPreviewFpsRange:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPreviewSizes:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPreviewFormats:Ljava/util/TreeSet;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedVideoSizes:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPhotoSizes:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPhotoFormats:Ljava/util/TreeSet;

    .line 51
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    .line 52
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    .line 53
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFocusModes:Ljava/util/EnumSet;

    .line 54
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    .line 55
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    .line 56
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    .line 475
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPreviewFpsRange:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPreviewFpsRange:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 476
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPreviewSizes:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPreviewSizes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 477
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPreviewFormats:Ljava/util/TreeSet;

    iget-object v1, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPreviewFormats:Ljava/util/TreeSet;

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 478
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedVideoSizes:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedVideoSizes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 479
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPhotoSizes:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPhotoSizes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 480
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPhotoFormats:Ljava/util/TreeSet;

    iget-object v1, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPhotoFormats:Ljava/util/TreeSet;

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 481
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    iget-object v1, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 482
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    iget-object v1, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 483
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFocusModes:Ljava/util/EnumSet;

    iget-object v1, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFocusModes:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 484
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    iget-object v1, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 485
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    iget-object v1, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 486
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mPreferredPreviewSizeForVideo:Lcom/android/ex/camera2/portability/Size;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mPreferredPreviewSizeForVideo:Lcom/android/ex/camera2/portability/Size;

    .line 487
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxExposureCompensation:I

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxExposureCompensation:I

    .line 488
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMinExposureCompensation:I

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMinExposureCompensation:I

    .line 489
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mExposureCompensationStep:F

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mExposureCompensationStep:F

    .line 490
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxNumOfFacesSupported:I

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxNumOfFacesSupported:I

    .line 491
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxNumOfFocusAreas:I

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxNumOfFocusAreas:I

    .line 492
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxNumOfMeteringArea:I

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxNumOfMeteringArea:I

    .line 493
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxZoomRatio:F

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxZoomRatio:F

    .line 494
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mHorizontalViewAngle:F

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mHorizontalViewAngle:F

    .line 495
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mVerticalViewAngle:F

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mVerticalViewAngle:F

    .line 496
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mStringifier:Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mStringifier:Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    .line 497
    return-void
.end method

.method private exposureCheck(Lcom/android/ex/camera2/portability/CameraSettings;)Z
    .locals 4
    .param p1, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    .line 697
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getExposureCompensationIndex()I

    move-result v0

    .line 698
    .local v0, "index":I
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxExposureCompensation()I

    move-result v1

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMinExposureCompensation()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 699
    :cond_0
    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exposure compensation index is not supported. Min = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 700
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMinExposureCompensation()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", max = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxExposureCompensation()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", setting = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 699
    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 702
    const/4 v1, 0x0

    .line 704
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private flashCheck(Lcom/android/ex/camera2/portability/CameraSettings;)Z
    .locals 4
    .param p1, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    .line 725
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFlashMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v0

    .line 726
    .local v0, "flashMode":Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;
    invoke-virtual {p0, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 727
    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Flash mode not supported:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_0

    .line 728
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->name()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 727
    invoke-static {v2, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 729
    const/4 v1, 0x0

    .line 731
    :goto_1
    return v1

    .line 728
    :cond_0
    const-string v1, "null"

    goto :goto_0

    .line 731
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private focusCheck(Lcom/android/ex/camera2/portability/CameraSettings;)Z
    .locals 4
    .param p1, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    .line 708
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v0

    .line 709
    .local v0, "focusMode":Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    invoke-virtual {p0, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 710
    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->FIXED:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {p0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 713
    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v2, "Focus mode not supported... trying FIXED"

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 714
    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->FIXED:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {p1, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 721
    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 716
    :cond_1
    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Focus mode not supported:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_2

    .line 717
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->name()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 716
    invoke-static {v2, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 718
    const/4 v1, 0x0

    goto :goto_0

    .line 717
    :cond_2
    const-string v1, "null"

    goto :goto_1
.end method

.method private photoSizeCheck(Lcom/android/ex/camera2/portability/CameraSettings;)Z
    .locals 4
    .param p1, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    .line 735
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPhotoSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v0

    .line 736
    .local v0, "photoSize":Lcom/android/ex/camera2/portability/Size;
    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPhotoSizes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 737
    const/4 v1, 0x1

    .line 740
    :goto_0
    return v1

    .line 739
    :cond_0
    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported photo size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 740
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private previewSizeCheck(Lcom/android/ex/camera2/portability/CameraSettings;)Z
    .locals 4
    .param p1, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    .line 744
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPreviewSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v0

    .line 745
    .local v0, "previewSize":Lcom/android/ex/camera2/portability/Size;
    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPreviewSizes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 746
    const/4 v1, 0x1

    .line 749
    :goto_0
    return v1

    .line 748
    :cond_0
    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported preview size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 749
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private videoStabilizationCheck(Lcom/android/ex/camera2/portability/CameraSettings;)Z
    .locals 2
    .param p1, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    .line 753
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->isVideoStabilizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p0, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 754
    :cond_0
    const/4 v0, 0x1

    .line 757
    :goto_0
    return v0

    .line 756
    :cond_1
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "Video stabilization is not supported"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 757
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private zoomCheck(Lcom/android/ex/camera2/portability/CameraSettings;)Z
    .locals 5
    .param p1, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    const/4 v1, 0x0

    .line 680
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentZoomRatio()F

    move-result v0

    .line 681
    .local v0, "ratio":F
    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p0, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 682
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_1

    .line 683
    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v3, "Zoom is not supported"

    invoke-static {v2, v3}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 693
    :goto_0
    return v1

    .line 687
    :cond_0
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentZoomRatio()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxZoomRatio()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 688
    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Zoom ratio is not supported: ratio = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 689
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentZoomRatio()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 688
    invoke-static {v2, v3}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 693
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final getExposureCompensationStep()F
    .locals 1

    .prologue
    .line 661
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mExposureCompensationStep:F

    return v0
.end method

.method public getHorizontalViewAngle()F
    .locals 1

    .prologue
    .line 500
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mHorizontalViewAngle:F

    return v0
.end method

.method public final getMaxExposureCompensation()I
    .locals 1

    .prologue
    .line 653
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxExposureCompensation:I

    return v0
.end method

.method public final getMaxNumOfFacesSupported()I
    .locals 1

    .prologue
    .line 669
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxNumOfFacesSupported:I

    return v0
.end method

.method public getMaxZoomRatio()F
    .locals 1

    .prologue
    .line 635
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxZoomRatio:F

    return v0
.end method

.method public final getMinExposureCompensation()I
    .locals 1

    .prologue
    .line 644
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMinExposureCompensation:I

    return v0
.end method

.method public final getPreferredPreviewSizeForVideo()Lcom/android/ex/camera2/portability/Size;
    .locals 2

    .prologue
    .line 547
    new-instance v0, Lcom/android/ex/camera2/portability/Size;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mPreferredPreviewSizeForVideo:Lcom/android/ex/camera2/portability/Size;

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/Size;-><init>(Lcom/android/ex/camera2/portability/Size;)V

    return-object v0
.end method

.method public getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mStringifier:Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    return-object v0
.end method

.method public final getSupportedFeature()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;",
            ">;"
        }
    .end annotation

    .prologue
    .line 624
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getSupportedFlashModes()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 585
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getSupportedFocusModes()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 599
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFocusModes:Ljava/util/EnumSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedPhotoFormats()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 511
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPhotoFormats:Ljava/util/TreeSet;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    return-object v0
.end method

.method public getSupportedPhotoSizes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/camera2/portability/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 526
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPhotoSizes:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedPreviewFormats()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 519
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPreviewFormats:Ljava/util/TreeSet;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    return-object v0
.end method

.method public final getSupportedPreviewFpsRange()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation

    .prologue
    .line 535
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPreviewFpsRange:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getSupportedPreviewSizes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/camera2/portability/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 543
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPreviewSizes:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getSupportedSceneModes()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 562
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getSupportedVideoSizes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/camera2/portability/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 555
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedVideoSizes:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getSupportedWhiteBalance()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;",
            ">;"
        }
    .end annotation

    .prologue
    .line 613
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getVerticalViewAngle()F
    .locals 1

    .prologue
    .line 504
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mVerticalViewAngle:F

    return v0
.end method

.method public supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z
    .locals 1
    .param p1, "ft"    # Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .prologue
    .line 628
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Z
    .locals 1
    .param p1, "flash"    # Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    .prologue
    .line 592
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z
    .locals 1
    .param p1, "focus"    # Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .prologue
    .line 606
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFocusModes:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final supports(Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;)Z
    .locals 1
    .param p1, "scene"    # Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .prologue
    .line 569
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supports(Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;)Z
    .locals 1
    .param p1, "wb"    # Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    .prologue
    .line 620
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supports(Lcom/android/ex/camera2/portability/CameraSettings;)Z
    .locals 1
    .param p1, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    .line 573
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->zoomCheck(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->exposureCheck(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->focusCheck(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->flashCheck(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->photoSizeCheck(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->previewSizeCheck(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->videoStabilizationCheck(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    const/4 v0, 0x1

    .line 578
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
