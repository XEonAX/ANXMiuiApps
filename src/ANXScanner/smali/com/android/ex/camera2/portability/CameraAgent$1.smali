.class Lcom/android/ex/camera2/portability/CameraAgent$1;
.super Ljava/lang/Object;
.source "CameraAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/CameraAgent;->openCamera(Landroid/os/Handler;ILcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/camera2/portability/CameraAgent;

.field final synthetic val$callback:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

.field final synthetic val$cameraId:I

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/CameraAgent;ILandroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ex/camera2/portability/CameraAgent;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/ex/camera2/portability/CameraAgent$1;->this$0:Lcom/android/ex/camera2/portability/CameraAgent;

    iput p2, p0, Lcom/android/ex/camera2/portability/CameraAgent$1;->val$cameraId:I

    iput-object p3, p0, Lcom/android/ex/camera2/portability/CameraAgent$1;->val$handler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/ex/camera2/portability/CameraAgent$1;->val$callback:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraAgent$1;->this$0:Lcom/android/ex/camera2/portability/CameraAgent;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/ex/camera2/portability/CameraAgent$1;->val$cameraId:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/ex/camera2/portability/CameraAgent$1;->val$handler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/ex/camera2/portability/CameraAgent$1;->val$callback:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    .line 293
    invoke-static {v4, v5}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallbackForward;->getNewInstance(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;)Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallbackForward;

    move-result-object v4

    .line 292
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 293
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 294
    return-void
.end method
