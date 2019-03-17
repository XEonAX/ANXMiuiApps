.class Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$15;
.super Ljava/lang/Object;
.source "CameraAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettingsHelper(Lcom/android/ex/camera2/portability/CameraSettings;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

.field final synthetic val$copyOfSettings:Lcom/android/ex/camera2/portability/CameraSettings;

.field final synthetic val$statesToAwait:I


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;ILcom/android/ex/camera2/portability/CameraSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 863
    iput-object p1, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$15;->this$0:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iput p2, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$15;->val$statesToAwait:I

    iput-object p3, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$15;->val$copyOfSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 866
    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$15;->this$0:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraState()Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v0

    .line 868
    .local v0, "cameraState":Lcom/android/ex/camera2/portability/CameraStateHolder;
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraStateHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 874
    :goto_0
    return-void

    .line 871
    :cond_0
    iget v1, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$15;->val$statesToAwait:I

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraStateHolder;->waitForStates(I)Z

    .line 872
    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$15;->this$0:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xcc

    iget-object v3, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$15;->val$copyOfSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 873
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
