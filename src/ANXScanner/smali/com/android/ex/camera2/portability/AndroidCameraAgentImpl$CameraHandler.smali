.class Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;
.super Lcom/android/ex/camera2/portability/HistoryHandler;
.source "AndroidCameraAgentImpl.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler$CaptureCallbacks;
    }
.end annotation


# instance fields
.field private mAgent:Lcom/android/ex/camera2/portability/CameraAgent;

.field private mCamera:Landroid/hardware/Camera;

.field private mCameraId:I

.field private mCancelAfPending:I

.field private mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

.field final synthetic this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;Lcom/android/ex/camera2/portability/CameraAgent;Landroid/os/Looper;)V
    .locals 1
    .param p2, "agent"    # Lcom/android/ex/camera2/portability/CameraAgent;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    .line 285
    invoke-direct {p0, p3}, Lcom/android/ex/camera2/portability/HistoryHandler;-><init>(Landroid/os/Looper;)V

    .line 265
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraId:I

    .line 267
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCancelAfPending:I

    .line 286
    iput-object p2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    .line 287
    return-void
.end method

.method private applySettingsToParameters(Lcom/android/ex/camera2/portability/CameraSettings;Landroid/hardware/Camera$Parameters;)V
    .locals 8
    .param p1, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;
    .param p2, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v7, 0x0

    .line 655
    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$400(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v4

    .line 656
    .local v4, "stringifier":Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPhotoSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v2

    .line 657
    .local v2, "photoSize":Lcom/android/ex/camera2/portability/Size;
    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v5

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v6

    invoke-virtual {p2, v5, v6}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 658
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPreviewSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v3

    .line 659
    .local v3, "previewSize":Lcom/android/ex/camera2/portability/Size;
    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v6

    invoke-virtual {p2, v5, v6}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 660
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getPreviewFrameRate()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_a

    .line 661
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getPreviewFpsRangeMin()I

    move-result v5

    .line 662
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getPreviewFpsRangeMax()I

    move-result v6

    .line 661
    invoke-virtual {p2, v5, v6}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 666
    :goto_0
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPreviewFormat()I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 667
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getPhotoJpegCompressionQuality()I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 668
    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$400(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    move-result-object v5

    sget-object v6, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v5, v6}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 669
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentZoomRatio()F

    move-result v5

    .line 670
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v6

    .line 669
    invoke-direct {p0, v5, v6}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->zoomRatioToIndex(FLjava/util/List;)I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 672
    :cond_0
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getExposureCompensationIndex()I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 673
    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$400(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    move-result-object v5

    sget-object v6, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_EXPOSURE_LOCK:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v5, v6}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 674
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->isAutoExposureLocked()Z

    move-result v5

    invoke-virtual {p2, v5}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 676
    :cond_1
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 677
    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$400(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    move-result-object v5

    sget-object v6, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_WHITE_BALANCE_LOCK:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v5, v6}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 678
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->isAutoWhiteBalanceLocked()Z

    move-result v5

    invoke-virtual {p2, v5}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 680
    :cond_2
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getWhiteBalance()Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 681
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getWhiteBalance()Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 683
    :cond_3
    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$400(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    move-result-object v5

    sget-object v6, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->FOCUS_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v5, v6}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 684
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getFocusAreas()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_b

    .line 685
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getFocusAreas()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 690
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$400(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    move-result-object v5

    sget-object v6, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->METERING_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v5, v6}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 691
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getMeteringAreas()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_c

    .line 692
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getMeteringAreas()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 697
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFlashMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v5

    sget-object v6, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->NO_FLASH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    if-eq v5, v6, :cond_6

    .line 698
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFlashMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 700
    :cond_6
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentSceneMode()Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v5

    sget-object v6, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->NO_SCENE_MODE:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-eq v5, v6, :cond_7

    .line 701
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentSceneMode()Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 703
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentSceneMode()Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 706
    :cond_7
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->isRecordingHintEnabled()Z

    move-result v5

    invoke-virtual {p2, v5}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 707
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getExifThumbnailSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v1

    .line 708
    .local v1, "jpegThumbSize":Lcom/android/ex/camera2/portability/Size;
    if-eqz v1, :cond_8

    .line 709
    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v5

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v6

    invoke-virtual {p2, v5, v6}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    .line 711
    :cond_8
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPhotoFormat()I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    .line 713
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getGpsData()Lcom/android/ex/camera2/portability/CameraSettings$GpsData;

    move-result-object v0

    .line 714
    .local v0, "gpsData":Lcom/android/ex/camera2/portability/CameraSettings$GpsData;
    if-nez v0, :cond_d

    .line 715
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    .line 729
    :cond_9
    :goto_3
    return-void

    .line 664
    .end local v0    # "gpsData":Lcom/android/ex/camera2/portability/CameraSettings$GpsData;
    .end local v1    # "jpegThumbSize":Lcom/android/ex/camera2/portability/Size;
    :cond_a
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getPreviewFrameRate()I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    goto/16 :goto_0

    .line 687
    :cond_b
    invoke-virtual {p2, v7}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    goto :goto_1

    .line 694
    :cond_c
    invoke-virtual {p2, v7}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    goto :goto_2

    .line 717
    .restart local v0    # "gpsData":Lcom/android/ex/camera2/portability/CameraSettings$GpsData;
    .restart local v1    # "jpegThumbSize":Lcom/android/ex/camera2/portability/Size;
    :cond_d
    iget-wide v6, v0, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->timeStamp:J

    invoke-virtual {p2, v6, v7}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 718
    iget-object v5, v0, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->processingMethod:Ljava/lang/String;

    if-eqz v5, :cond_9

    .line 722
    iget-wide v6, v0, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->altitude:D

    invoke-virtual {p2, v6, v7}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 723
    iget-wide v6, v0, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->latitude:D

    invoke-virtual {p2, v6, v7}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 724
    iget-wide v6, v0, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->longitude:D

    invoke-virtual {p2, v6, v7}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 725
    iget-object v5, v0, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->processingMethod:Ljava/lang/String;

    invoke-virtual {p2, v5}, Landroid/hardware/Camera$Parameters;->setGpsProcessingMethod(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private enableShutterSound(Z)V
    .locals 1
    .param p1, "enable"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->enableShutterSound(Z)Z

    .line 312
    return-void
.end method

.method private setAutoFocusMoveCallback(Landroid/hardware/Camera;Ljava/lang/Object;)V
    .locals 3
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "cb"    # Ljava/lang/Object;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 318
    :try_start_0
    check-cast p2, Landroid/hardware/Camera$AutoFocusMoveCallback;

    .end local p2    # "cb":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :goto_0
    return-void

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/Camera$FaceDetectionListener;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 299
    return-void
.end method

.method private setPreviewTexture(Ljava/lang/Object;)V
    .locals 3
    .param p1, "surfaceTexture"    # Ljava/lang/Object;

    .prologue
    .line 303
    :try_start_0
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    check-cast p1, Landroid/graphics/SurfaceTexture;

    .end local p1    # "surfaceTexture":Ljava/lang/Object;
    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v1

    const-string v2, "Could not set preview texture"

    invoke-static {v1, v2, v0}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private startFaceDetection()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startFaceDetection()V

    .line 291
    return-void
.end method

.method private stopFaceDetection()V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopFaceDetection()V

    .line 295
    return-void
.end method

.method private zoomRatioToIndex(FLjava/util/List;)I
    .locals 4
    .param p1, "ratio"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 738
    .local p2, "percentages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v3, p1

    float-to-int v2, v3

    .line 739
    .local v2, "percent":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 740
    .local v0, "index":I
    if-ltz v0, :cond_0

    move v1, v0

    .line 750
    .end local v0    # "index":I
    .local v1, "index":I
    :goto_0
    return v1

    .line 745
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_0
    add-int/lit8 v3, v0, 0x1

    neg-int v0, v3

    .line 746
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_1

    .line 748
    add-int/lit8 v0, v0, -0x1

    :cond_1
    move v1, v0

    .line 750
    .end local v0    # "index":I
    .restart local v1    # "index":I
    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 27
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 352
    invoke-super/range {p0 .. p1}, Lcom/android/ex/camera2/portability/HistoryHandler;->handleMessage(Landroid/os/Message;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->getCameraState()Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/CameraStateHolder;->isInvalid()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 355
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skip handleMessage - action = \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->what:I

    invoke-static {v7}, Lcom/android/ex/camera2/portability/CameraActions;->stringify(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 651
    :goto_0
    return-void

    .line 358
    :cond_0
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage - action = \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->what:I

    invoke-static {v7}, Lcom/android/ex/camera2/portability/CameraActions;->stringify(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 360
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    .line 362
    .local v15, "cameraAction":I
    sparse-switch v15, :sswitch_data_0

    .line 616
    :try_start_0
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid CameraProxy message="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->what:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 649
    :cond_1
    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;->unblockSyncWaiters(Landroid/os/Message;)V

    goto :goto_0

    .line 364
    :sswitch_0
    :try_start_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    .line 365
    .local v23, "openCallback":Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    .line 366
    .local v6, "cameraId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    .line 367
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->generateHistoryString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-interface {v0, v6, v4}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onDeviceOpenedAlready(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 619
    .end local v6    # "cameraId":I
    .end local v23    # "openCallback":Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;
    :catch_0
    move-exception v21

    .line 620
    .local v21, "ex":Ljava/lang/RuntimeException;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v16

    .line 621
    .local v16, "cameraState":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CameraAction["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v15}, Lcom/android/ex/camera2/portability/CameraActions;->stringify(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] at CameraState["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 623
    .local v20, "errorContext":Ljava/lang/String;
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RuntimeException during "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-static {v4, v5, v0}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 625
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    if-eqz v4, :cond_2

    .line 626
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v4

    const-string v5, "Release camera since mCamera is not null."

    invoke-static {v4, v5}, Lcom/android/ex/camera2/portability/debug/Log;->i(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 628
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 632
    const/4 v4, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    .line 637
    :cond_2
    :goto_2
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    if-nez v4, :cond_a

    .line 638
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    .line 639
    .restart local v6    # "cameraId":I
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_3

    .line 640
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 641
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->generateHistoryString(I)Ljava/lang/String;

    move-result-object v7

    .line 640
    invoke-interface {v4, v5, v7}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onDeviceOpenFailure(ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 649
    .end local v6    # "cameraId":I
    :cond_3
    :goto_3
    invoke-static/range {p1 .. p1}, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;->unblockSyncWaiters(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 371
    .end local v16    # "cameraState":I
    .end local v20    # "errorContext":Ljava/lang/String;
    .end local v21    # "ex":Ljava/lang/RuntimeException;
    .restart local v6    # "cameraId":I
    .restart local v23    # "openCallback":Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;
    :cond_4
    :try_start_5
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Opening camera "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " with camera1 API"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/ex/camera2/portability/debug/Log;->i(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 372
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-virtual {v4, v6}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->openCamera(I)Landroid/hardware/Camera;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    .line 373
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    if-eqz v4, :cond_5

    .line 374
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraId:I

    .line 375
    new-instance v4, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-direct {v4, v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;-><init>(Landroid/hardware/Camera;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    .line 377
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    .line 378
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->create()Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v5

    .line 377
    invoke-static {v4, v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$302(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    .line 379
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    new-instance v5, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    .line 380
    invoke-virtual {v7}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;->getBlocking()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;-><init>(Landroid/hardware/Camera$Parameters;)V

    .line 379
    invoke-static {v4, v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$402(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    .line 382
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 384
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/ex/camera2/portability/CameraStateHolder;->setState(I)V

    .line 385
    if-eqz v23, :cond_1

    .line 386
    new-instance v3, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    .line 387
    invoke-static {v8}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$300(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v9}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$400(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;Lcom/android/ex/camera2/portability/CameraAgent;ILandroid/hardware/Camera;Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$1;)V

    .line 388
    .local v3, "cameraProxy":Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onCameraOpened(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 649
    .end local v3    # "cameraProxy":Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
    .end local v6    # "cameraId":I
    .end local v23    # "openCallback":Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;
    :catchall_0
    move-exception v4

    invoke-static/range {p1 .. p1}, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;->unblockSyncWaiters(Landroid/os/Message;)V

    throw v4

    .line 391
    .restart local v6    # "cameraId":I
    .restart local v23    # "openCallback":Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;
    :cond_5
    if-eqz v23, :cond_1

    .line 392
    :try_start_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->generateHistoryString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-interface {v0, v6, v4}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onDeviceOpenFailure(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 399
    .end local v6    # "cameraId":I
    .end local v23    # "openCallback":Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    if-eqz v4, :cond_6

    .line 400
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->release()V

    .line 401
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/ex/camera2/portability/CameraStateHolder;->setState(I)V

    .line 402
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    .line 403
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraId:I

    goto/16 :goto_1

    .line 405
    :cond_6
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v4

    const-string v5, "Releasing camera without any camera opened."

    invoke-static {v4, v5}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 411
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallbackForward;

    .line 413
    .local v18, "cbForward":Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallbackForward;
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 415
    .restart local v6    # "cameraId":I
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->reconnect()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 423
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/ex/camera2/portability/CameraStateHolder;->setState(I)V

    .line 424
    if-eqz v18, :cond_1

    .line 425
    new-instance v7, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    .line 427
    invoke-static {v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$300(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$400(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    move-result-object v13

    const/4 v14, 0x0

    move v10, v6

    invoke-direct/range {v7 .. v14}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;Lcom/android/ex/camera2/portability/CameraAgent;ILandroid/hardware/Camera;Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$1;)V

    .line 425
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallbackForward;->onCameraOpened(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V

    goto/16 :goto_1

    .line 416
    :catch_1
    move-exception v21

    .line 417
    .local v21, "ex":Ljava/io/IOException;
    if-eqz v18, :cond_1

    .line 418
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->generateHistoryString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallbackForward;->onReconnectionFailure(Lcom/android/ex/camera2/portability/CameraAgent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 433
    .end local v6    # "cameraId":I
    .end local v18    # "cbForward":Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallbackForward;
    .end local v21    # "ex":Ljava/io/IOException;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->unlock()V

    .line 434
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/android/ex/camera2/portability/CameraStateHolder;->setState(I)V

    goto/16 :goto_1

    .line 439
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->lock()V

    .line 440
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/ex/camera2/portability/CameraStateHolder;->setState(I)V

    goto/16 :goto_1

    .line 446
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->setPreviewTexture(Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 452
    :sswitch_6
    :try_start_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/view/SurfaceHolder;

    invoke-virtual {v5, v4}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    .line 453
    :catch_2
    move-exception v19

    .line 454
    .local v19, "e":Ljava/io/IOException;
    :try_start_a
    new-instance v4, Ljava/lang/RuntimeException;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 460
    .end local v19    # "e":Ljava/io/IOException;
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallbackForward;

    .line 462
    .local v18, "cbForward":Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallbackForward;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->startPreview()V

    .line 463
    if-eqz v18, :cond_1

    .line 464
    invoke-virtual/range {v18 .. v18}, Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallbackForward;->onPreviewStarted()V

    goto/16 :goto_1

    .line 471
    .end local v18    # "cbForward":Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallbackForward;
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->stopPreview()V

    goto/16 :goto_1

    .line 476
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v5, v4}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_1

    .line 481
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v5, v4}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_1

    .line 486
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    check-cast v4, [B

    invoke-virtual {v5, v4}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto/16 :goto_1

    .line 491
    :sswitch_c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCancelAfPending:I

    if-lez v4, :cond_7

    .line 492
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage - Ignored AUTO_FOCUS because there was "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCancelAfPending:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " pending CANCEL_AUTO_FOCUS messages"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 496
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v4

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lcom/android/ex/camera2/portability/CameraStateHolder;->setState(I)V

    .line 497
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v5, v4}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto/16 :goto_1

    .line 504
    :sswitch_d
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCancelAfPending:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCancelAfPending:I

    .line 505
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 506
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/ex/camera2/portability/CameraStateHolder;->setState(I)V

    goto/16 :goto_1

    .line 513
    :sswitch_e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCancelAfPending:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCancelAfPending:I

    goto/16 :goto_1

    .line 518
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->setAutoFocusMoveCallback(Landroid/hardware/Camera;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 524
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    .line 525
    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$300(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v5

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v7}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getPreviewOrientation(I)I

    move-result v5

    .line 524
    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 529
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;->getBlocking()Landroid/hardware/Camera$Parameters;

    move-result-object v24

    .line 530
    .local v24, "parameters":Landroid/hardware/Camera$Parameters;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    if-lez v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    .line 531
    invoke-static {v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$300(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getJpegOrientation(I)I

    move-result v4

    .line 530
    :goto_4
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 532
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 533
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;->invalidate()V

    goto/16 :goto_1

    .line 531
    :cond_8
    const/4 v4, 0x0

    goto :goto_4

    .line 538
    .end local v24    # "parameters":Landroid/hardware/Camera$Parameters;
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;->getBlocking()Landroid/hardware/Camera$Parameters;

    move-result-object v24

    .line 539
    .restart local v24    # "parameters":Landroid/hardware/Camera$Parameters;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 540
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 541
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;->invalidate()V

    goto/16 :goto_1

    .line 546
    .end local v24    # "parameters":Landroid/hardware/Camera$Parameters;
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/Camera$OnZoomChangeListener;

    invoke-virtual {v5, v4}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    goto/16 :goto_1

    .line 551
    :sswitch_13
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/Camera$FaceDetectionListener;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    goto/16 :goto_1

    .line 556
    :sswitch_14
    invoke-direct/range {p0 .. p0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->startFaceDetection()V

    goto/16 :goto_1

    .line 561
    :sswitch_15
    invoke-direct/range {p0 .. p0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->stopFaceDetection()V

    goto/16 :goto_1

    .line 566
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;->getBlocking()Landroid/hardware/Camera$Parameters;

    move-result-object v24

    .line 567
    .restart local v24    # "parameters":Landroid/hardware/Camera$Parameters;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/ex/camera2/portability/CameraSettings;

    .line 568
    .local v26, "settings":Lcom/android/ex/camera2/portability/CameraSettings;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->applySettingsToParameters(Lcom/android/ex/camera2/portability/CameraSettings;Landroid/hardware/Camera$Parameters;)V

    .line 569
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 570
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;->invalidate()V

    goto/16 :goto_1

    .line 575
    .end local v24    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v26    # "settings":Lcom/android/ex/camera2/portability/CameraSettings;
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;->getBlocking()Landroid/hardware/Camera$Parameters;

    move-result-object v24

    .line 576
    .restart local v24    # "parameters":Landroid/hardware/Camera$Parameters;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    .line 577
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 578
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;->invalidate()V

    goto/16 :goto_1

    .line 583
    .end local v24    # "parameters":Landroid/hardware/Camera$Parameters;
    :sswitch_18
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [Landroid/hardware/Camera$Parameters;

    move-object v0, v4

    check-cast v0, [Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    .line 584
    .local v25, "parametersHolder":[Landroid/hardware/Camera$Parameters;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;->getBlocking()Landroid/hardware/Camera$Parameters;

    move-result-object v24

    .line 585
    .restart local v24    # "parameters":Landroid/hardware/Camera$Parameters;
    const/4 v4, 0x0

    aput-object v24, v25, v4

    goto/16 :goto_1

    .line 590
    .end local v24    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v25    # "parametersHolder":[Landroid/hardware/Camera$Parameters;
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v5, v4}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_1

    .line 595
    :sswitch_1a
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    const/4 v4, 0x1

    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->enableShutterSound(Z)V

    goto/16 :goto_1

    :cond_9
    const/4 v4, 0x0

    goto :goto_5

    .line 600
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;->invalidate()V

    goto/16 :goto_1

    .line 605
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/ex/camera2/portability/CameraStateHolder;->setState(I)V

    .line 606
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler$CaptureCallbacks;

    .line 607
    .local v17, "captureCallbacks":Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler$CaptureCallbacks;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler$CaptureCallbacks;->mShutter:Landroid/hardware/Camera$ShutterCallback;

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler$CaptureCallbacks;->mRaw:Landroid/hardware/Camera$PictureCallback;

    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler$CaptureCallbacks;->mPostView:Landroid/hardware/Camera$PictureCallback;

    move-object/from16 v0, v17

    iget-object v9, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler$CaptureCallbacks;->mJpeg:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v4, v5, v7, v8, v9}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    .line 629
    .end local v17    # "captureCallbacks":Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler$CaptureCallbacks;
    .restart local v16    # "cameraState":I
    .restart local v20    # "errorContext":Ljava/lang/String;
    .local v21, "ex":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v19

    .line 630
    .local v19, "e":Ljava/lang/Exception;
    :try_start_b
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v4

    const-string v5, "Fail when calling Camera.release()."

    move-object/from16 v0, v19

    invoke-static {v4, v5, v0}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 632
    const/4 v4, 0x0

    :try_start_c
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    goto/16 :goto_2

    .end local v19    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    throw v4

    .line 644
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v22

    .line 645
    .local v22, "exceptionHandler":Lcom/android/ex/camera2/portability/CameraExceptionHandler;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraId:I

    .line 646
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->generateHistoryString(I)Ljava/lang/String;

    move-result-object v4

    .line 645
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move/from16 v2, v16

    invoke-virtual {v0, v1, v4, v15, v2}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onCameraException(Ljava/lang/RuntimeException;Ljava/lang/String;II)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_3

    .line 362
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x65 -> :sswitch_5
        0x66 -> :sswitch_7
        0x67 -> :sswitch_8
        0x68 -> :sswitch_9
        0x69 -> :sswitch_b
        0x6a -> :sswitch_6
        0x6b -> :sswitch_19
        0x6c -> :sswitch_a
        0xc9 -> :sswitch_17
        0xca -> :sswitch_18
        0xcb -> :sswitch_1b
        0xcc -> :sswitch_16
        0x12d -> :sswitch_c
        0x12e -> :sswitch_d
        0x12f -> :sswitch_f
        0x130 -> :sswitch_12
        0x131 -> :sswitch_e
        0x1cd -> :sswitch_13
        0x1ce -> :sswitch_14
        0x1cf -> :sswitch_15
        0x1f5 -> :sswitch_1a
        0x1f6 -> :sswitch_10
        0x1f7 -> :sswitch_11
        0x259 -> :sswitch_1c
    .end sparse-switch
.end method

.method public onError(ILandroid/hardware/Camera;)V
    .locals 5
    .param p1, "errorCode"    # I
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 335
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onCameraError(I)V

    .line 336
    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    .line 337
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->getCurrentMessage()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 338
    .local v0, "lastCameraAction":I
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Media server died."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraId:I

    .line 340
    invoke-virtual {p0, v3}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->generateHistoryString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    .line 342
    invoke-static {v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v4

    .line 338
    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onCameraException(Ljava/lang/RuntimeException;Ljava/lang/String;II)V

    .line 344
    .end local v0    # "lastCameraAction":I
    :cond_0
    return-void
.end method

.method public requestTakePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 6
    .param p1, "shutter"    # Landroid/hardware/Camera$ShutterCallback;
    .param p2, "raw"    # Landroid/hardware/Camera$PictureCallback;
    .param p3, "postView"    # Landroid/hardware/Camera$PictureCallback;
    .param p4, "jpeg"    # Landroid/hardware/Camera$PictureCallback;

    .prologue
    .line 329
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler$CaptureCallbacks;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler$CaptureCallbacks;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 330
    .local v0, "callbacks":Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler$CaptureCallbacks;
    const/16 v1, 0x259

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 331
    return-void
.end method
