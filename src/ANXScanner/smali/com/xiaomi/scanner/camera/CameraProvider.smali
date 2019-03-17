.class public interface abstract Lcom/xiaomi/scanner/camera/CameraProvider;
.super Ljava/lang/Object;
.source "CameraProvider.java"


# virtual methods
.method public abstract getCameraDevice()Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
.end method

.method public abstract getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
.end method

.method public abstract getCurrentCameraId()I
.end method

.method public abstract getFirstBackCameraId()I
.end method

.method public abstract getFirstFrontCameraId()I
.end method

.method public abstract getNumberOfCameras()I
.end method

.method public abstract isBackFacingCamera(I)Z
.end method

.method public abstract isFrontFacingCamera(I)Z
.end method

.method public abstract releaseCamera(I)V
.end method

.method public abstract requestCamera(I)V
.end method

.method public abstract setCameraExceptionHandler(Lcom/android/ex/camera2/portability/CameraExceptionHandler;)V
.end method

.method public abstract waitingForCamera()Z
.end method
