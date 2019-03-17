.class Lcom/android/ex/camera2/portability/CameraExceptionHandler$3;
.super Ljava/lang/Object;
.source "CameraExceptionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onCameraException(Ljava/lang/RuntimeException;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

.field final synthetic val$action:I

.field final synthetic val$commandHistory:Ljava/lang/String;

.field final synthetic val$ex:Ljava/lang/RuntimeException;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/CameraExceptionHandler;Ljava/lang/RuntimeException;Ljava/lang/String;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/ex/camera2/portability/CameraExceptionHandler$3;->this$0:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    iput-object p2, p0, Lcom/android/ex/camera2/portability/CameraExceptionHandler$3;->val$ex:Ljava/lang/RuntimeException;

    iput-object p3, p0, Lcom/android/ex/camera2/portability/CameraExceptionHandler$3;->val$commandHistory:Ljava/lang/String;

    iput p4, p0, Lcom/android/ex/camera2/portability/CameraExceptionHandler$3;->val$action:I

    iput p5, p0, Lcom/android/ex/camera2/portability/CameraExceptionHandler$3;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraExceptionHandler$3;->this$0:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->access$000(Lcom/android/ex/camera2/portability/CameraExceptionHandler;)Lcom/android/ex/camera2/portability/CameraExceptionHandler$CameraExceptionCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraExceptionHandler$3;->val$ex:Ljava/lang/RuntimeException;

    iget-object v2, p0, Lcom/android/ex/camera2/portability/CameraExceptionHandler$3;->val$commandHistory:Ljava/lang/String;

    iget v3, p0, Lcom/android/ex/camera2/portability/CameraExceptionHandler$3;->val$action:I

    iget v4, p0, Lcom/android/ex/camera2/portability/CameraExceptionHandler$3;->val$state:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/ex/camera2/portability/CameraExceptionHandler$CameraExceptionCallback;->onCameraException(Ljava/lang/RuntimeException;Ljava/lang/String;II)V

    .line 104
    return-void
.end method
