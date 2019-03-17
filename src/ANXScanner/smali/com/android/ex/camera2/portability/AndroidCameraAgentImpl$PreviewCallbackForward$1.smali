.class Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PreviewCallbackForward$1;
.super Ljava/lang/Object;
.source "AndroidCameraAgentImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PreviewCallbackForward;->onPreviewFrame([BLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PreviewCallbackForward;

.field final synthetic val$data:[B


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PreviewCallbackForward;[B)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PreviewCallbackForward;

    .prologue
    .line 1296
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PreviewCallbackForward$1;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PreviewCallbackForward;

    iput-object p2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PreviewCallbackForward$1;->val$data:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PreviewCallbackForward$1;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PreviewCallbackForward;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PreviewCallbackForward;->access$1700(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PreviewCallbackForward;)Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PreviewCallbackForward$1;->val$data:[B

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PreviewCallbackForward$1;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PreviewCallbackForward;

    invoke-static {v2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PreviewCallbackForward;->access$1600(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PreviewCallbackForward;)Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;->onPreviewFrame([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V

    .line 1300
    return-void
.end method
