.class public interface abstract Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;
.super Ljava/lang/Object;
.source "CameraAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/CameraAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CameraOpenCallback"
.end annotation


# virtual methods
.method public abstract onCameraDisabled(I)V
.end method

.method public abstract onCameraOpened(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
.end method

.method public abstract onDeviceOpenFailure(ILjava/lang/String;)V
.end method

.method public abstract onDeviceOpenedAlready(ILjava/lang/String;)V
.end method

.method public abstract onReconnectionFailure(Lcom/android/ex/camera2/portability/CameraAgent;Ljava/lang/String;)V
.end method
