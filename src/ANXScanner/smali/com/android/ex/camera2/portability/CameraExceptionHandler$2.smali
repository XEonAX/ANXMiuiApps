.class Lcom/android/ex/camera2/portability/CameraExceptionHandler$2;
.super Ljava/lang/Object;
.source "CameraExceptionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onCameraError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

.field final synthetic val$errorCode:I


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/CameraExceptionHandler;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/ex/camera2/portability/CameraExceptionHandler$2;->this$0:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    iput p2, p0, Lcom/android/ex/camera2/portability/CameraExceptionHandler$2;->val$errorCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraExceptionHandler$2;->this$0:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->access$000(Lcom/android/ex/camera2/portability/CameraExceptionHandler;)Lcom/android/ex/camera2/portability/CameraExceptionHandler$CameraExceptionCallback;

    move-result-object v0

    iget v1, p0, Lcom/android/ex/camera2/portability/CameraExceptionHandler$2;->val$errorCode:I

    invoke-interface {v0, v1}, Lcom/android/ex/camera2/portability/CameraExceptionHandler$CameraExceptionCallback;->onCameraError(I)V

    .line 87
    return-void
.end method
