.class Lcom/xiaomi/scanner/app/ScanActivity$9;
.super Ljava/lang/Object;
.source "ScanActivity.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraExceptionHandler$CameraExceptionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/app/ScanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/app/ScanActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/app/ScanActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/app/ScanActivity;

    .prologue
    .line 1491
    iput-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity$9;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onFatalError()V
    .locals 2

    .prologue
    .line 1518
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity$9;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->access$1700(Lcom/xiaomi/scanner/app/ScanActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1530
    :goto_0
    return-void

    .line 1521
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity$9;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->access$1702(Lcom/xiaomi/scanner/app/ScanActivity;Z)Z

    .line 1524
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity$9;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->access$300(Lcom/xiaomi/scanner/app/ScanActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity$9;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1525
    invoke-static {}, Lcom/xiaomi/scanner/app/ScanActivity;->access$100()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Fatal error during onPause, call Activity.finish()"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1526
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity$9;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->finish()V

    goto :goto_0

    .line 1528
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity$9;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->access$1800(Lcom/xiaomi/scanner/app/ScanActivity;)Lcom/xiaomi/scanner/camera/FatalErrorHandler;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;->CANNOT_CONNECT_TO_CAMERA:Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;

    invoke-interface {v0, v1}, Lcom/xiaomi/scanner/camera/FatalErrorHandler;->handleFatalError(Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;)V

    goto :goto_0
.end method


# virtual methods
.method public onCameraError(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 1495
    invoke-static {}, Lcom/xiaomi/scanner/app/ScanActivity;->access$100()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera error callback. error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1496
    return-void
.end method

.method public onCameraException(Ljava/lang/RuntimeException;Ljava/lang/String;II)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/RuntimeException;
    .param p2, "commandHistory"    # Ljava/lang/String;
    .param p3, "action"    # I
    .param p4, "state"    # I

    .prologue
    .line 1501
    invoke-static {}, Lcom/xiaomi/scanner/app/ScanActivity;->access$100()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Camera Exception"

    invoke-static {v0, v1, p1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1502
    const/16 v0, 0x68

    invoke-static {v0, p2, p3, p4}, Lcom/xiaomi/scanner/stats/UsageStatistics;->cameraFailure(ILjava/lang/String;II)V

    .line 1505
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity$9;->onFatalError()V

    .line 1506
    return-void
.end method

.method public onDispatchThreadException(Ljava/lang/RuntimeException;)V
    .locals 3
    .param p1, "ex"    # Ljava/lang/RuntimeException;

    .prologue
    const/4 v2, -0x1

    .line 1510
    invoke-static {}, Lcom/xiaomi/scanner/app/ScanActivity;->access$100()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v0

    const-string v1, "DispatchThread Exception"

    invoke-static {v0, v1, p1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1511
    const/16 v0, 0x69

    const/4 v1, 0x0

    invoke-static {v0, v1, v2, v2}, Lcom/xiaomi/scanner/stats/UsageStatistics;->cameraFailure(ILjava/lang/String;II)V

    .line 1514
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity$9;->onFatalError()V

    .line 1515
    return-void
.end method
