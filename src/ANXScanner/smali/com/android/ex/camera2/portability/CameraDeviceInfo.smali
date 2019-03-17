.class public interface abstract Lcom/android/ex/camera2/portability/CameraDeviceInfo;
.super Ljava/lang/Object;
.source "CameraDeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    }
.end annotation


# static fields
.field public static final NO_DEVICE:I = -0x1


# virtual methods
.method public abstract getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
.end method

.method public abstract getFirstBackCameraId()I
.end method

.method public abstract getFirstFrontCameraId()I
.end method

.method public abstract getNumberOfCameras()I
.end method
