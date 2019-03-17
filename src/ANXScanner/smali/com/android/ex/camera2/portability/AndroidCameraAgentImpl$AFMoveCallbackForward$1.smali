.class Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFMoveCallbackForward$1;
.super Ljava/lang/Object;
.source "AndroidCameraAgentImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFMoveCallbackForward;->onAutoFocusMoving(ZLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFMoveCallbackForward;

.field final synthetic val$moving:Z


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFMoveCallbackForward;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFMoveCallbackForward;

    .prologue
    .line 1165
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFMoveCallbackForward$1;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFMoveCallbackForward;

    iput-boolean p2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFMoveCallbackForward$1;->val$moving:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFMoveCallbackForward$1;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFMoveCallbackForward;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFMoveCallbackForward;->access$1100(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFMoveCallbackForward;)Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFMoveCallbackForward$1;->val$moving:Z

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFMoveCallbackForward$1;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFMoveCallbackForward;

    invoke-static {v2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFMoveCallbackForward;->access$1000(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFMoveCallbackForward;)Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;->onAutoFocusMoving(ZLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V

    .line 1169
    return-void
.end method
