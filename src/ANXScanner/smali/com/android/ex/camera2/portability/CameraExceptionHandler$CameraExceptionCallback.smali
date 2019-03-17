.class public interface abstract Lcom/android/ex/camera2/portability/CameraExceptionHandler$CameraExceptionCallback;
.super Ljava/lang/Object;
.source "CameraExceptionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/CameraExceptionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CameraExceptionCallback"
.end annotation


# virtual methods
.method public abstract onCameraError(I)V
.end method

.method public abstract onCameraException(Ljava/lang/RuntimeException;Ljava/lang/String;II)V
.end method

.method public abstract onDispatchThreadException(Ljava/lang/RuntimeException;)V
.end method
