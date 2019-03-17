.class public Lcom/android/ex/camera2/portability/CameraCapabilitiesFactory;
.super Ljava/lang/Object;
.source "CameraCapabilitiesFactory.java"


# static fields
.field private static TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "CamCapabsFact"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilitiesFactory;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFrom(Landroid/hardware/Camera$Parameters;)Lcom/android/ex/camera2/portability/CameraCapabilities;
    .locals 2
    .param p0, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilitiesFactory;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "Null parameter passed in."

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 30
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    invoke-direct {v0, p0}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;-><init>(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method
