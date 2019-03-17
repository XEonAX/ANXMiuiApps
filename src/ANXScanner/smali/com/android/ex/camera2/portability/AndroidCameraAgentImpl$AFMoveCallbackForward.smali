.class Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFMoveCallbackForward;
.super Ljava/lang/Object;
.source "AndroidCameraAgentImpl.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusMoveCallback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AFMoveCallbackForward"
.end annotation


# instance fields
.field private final mCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;

.field private final mCamera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
    .param p3, "cb"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;

    .prologue
    .line 1156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1157
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFMoveCallbackForward;->mHandler:Landroid/os/Handler;

    .line 1158
    iput-object p2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFMoveCallbackForward;->mCamera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 1159
    iput-object p3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFMoveCallbackForward;->mCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;

    .line 1160
    return-void
.end method

.method static synthetic access$1000(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFMoveCallbackForward;)Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFMoveCallbackForward;

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFMoveCallbackForward;->mCamera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFMoveCallbackForward;)Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFMoveCallbackForward;

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFMoveCallbackForward;->mCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;

    return-object v0
.end method

.method public static getNewInstance(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;)Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFMoveCallbackForward;
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
    .param p2, "cb"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;

    .prologue
    .line 1149
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1150
    :cond_0
    const/4 v0, 0x0

    .line 1152
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFMoveCallbackForward;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFMoveCallbackForward;-><init>(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;)V

    goto :goto_0
.end method


# virtual methods
.method public onAutoFocusMoving(ZLandroid/hardware/Camera;)V
    .locals 2
    .param p1, "moving"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFMoveCallbackForward;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFMoveCallbackForward$1;

    invoke-direct {v1, p0, p1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFMoveCallbackForward$1;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFMoveCallbackForward;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1171
    return-void
.end method
