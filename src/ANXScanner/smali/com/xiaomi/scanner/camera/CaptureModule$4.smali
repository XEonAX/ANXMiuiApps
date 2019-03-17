.class Lcom/xiaomi/scanner/camera/CaptureModule$4;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/camera/CaptureModule;->requestPreviewFrame(Lcom/xiaomi/scanner/module/ModuleController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

.field final synthetic val$weakReference:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/camera/CaptureModule;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/camera/CaptureModule;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule$4;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    iput-object p2, p0, Lcom/xiaomi/scanner/camera/CaptureModule$4;->val$weakReference:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 284
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule$4;->val$weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/module/ModuleController;

    .line 285
    .local v0, "controller":Lcom/xiaomi/scanner/module/ModuleController;
    if-eqz v0, :cond_0

    .line 286
    invoke-interface {v0, p1, p2}, Lcom/xiaomi/scanner/module/ModuleController;->onPreviewFrame([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)Z

    .line 288
    :cond_0
    invoke-static {}, Lcom/xiaomi/scanner/debug/LogHelper;->instance()Lcom/xiaomi/scanner/debug/LogHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/scanner/debug/LogHelper;->isDebugMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule$4;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-static {v1, p1, p2}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$500(Lcom/xiaomi/scanner/camera/CaptureModule;[BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V

    .line 291
    :cond_1
    return-void
.end method
