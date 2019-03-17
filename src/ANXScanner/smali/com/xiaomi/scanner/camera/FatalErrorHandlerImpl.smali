.class public final Lcom/xiaomi/scanner/camera/FatalErrorHandlerImpl;
.super Ljava/lang/Object;
.source "FatalErrorHandlerImpl.java"

# interfaces
.implements Lcom/xiaomi/scanner/camera/FatalErrorHandler;


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/xiaomi/scanner/app/ScanActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mErrorDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "FatalErrorHandler"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/camera/FatalErrorHandlerImpl;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/scanner/app/ScanActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/xiaomi/scanner/app/ScanActivity;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/FatalErrorHandlerImpl;->mErrorDialog:Landroid/app/AlertDialog;

    .line 19
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/FatalErrorHandlerImpl;->mActivity:Ljava/lang/ref/WeakReference;

    .line 20
    return-void
.end method

.method private doError(Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;I)V
    .locals 4
    .param p1, "reason"    # Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;
    .param p2, "statCauseId"    # I

    .prologue
    .line 60
    sget-object v1, Lcom/xiaomi/scanner/camera/FatalErrorHandlerImpl;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "doError:"

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 64
    invoke-static {p2}, Lcom/xiaomi/scanner/stats/UsageStatistics;->cameraFailure(I)V

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/FatalErrorHandlerImpl;->dismisssErrorDialog()V

    .line 69
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/FatalErrorHandlerImpl;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/app/ScanActivity;

    .line 70
    .local v0, "activity":Lcom/xiaomi/scanner/app/ScanActivity;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->isPaused()Z

    move-result v1

    if-nez v1, :cond_1

    .line 71
    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;->getDialogMsgId()I

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;->doesFinishActivity()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/xiaomi/scanner/util/DialogUtil;->CameraErrorDialog(Landroid/app/Activity;IZ)Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/scanner/camera/FatalErrorHandlerImpl;->mErrorDialog:Landroid/app/AlertDialog;

    .line 72
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/FatalErrorHandlerImpl;->mErrorDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/FatalErrorHandlerImpl;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 76
    :cond_1
    return-void
.end method


# virtual methods
.method public dismisssErrorDialog()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FatalErrorHandlerImpl;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-static {v0}, Lcom/xiaomi/scanner/util/DialogUtil;->dismissDialog(Landroid/app/Dialog;)V

    .line 81
    return-void
.end method

.method public handleFatalError(Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;)V
    .locals 2
    .param p1, "reason"    # Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;

    .prologue
    .line 54
    sget-object v0, Lcom/xiaomi/scanner/camera/FatalErrorHandlerImpl;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "Handling Fatal Error"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 55
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/scanner/camera/FatalErrorHandlerImpl;->doError(Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;I)V

    .line 56
    return-void
.end method

.method public onCameraDisabledFailure()V
    .locals 2

    .prologue
    .line 48
    sget-object v0, Lcom/xiaomi/scanner/camera/FatalErrorHandlerImpl;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "Handling Camera Disabled Failure"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 49
    sget-object v0, Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;->CAMERA_DISABLED_BY_SECURITY_POLICY:Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;

    const/16 v1, 0x65

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/scanner/camera/FatalErrorHandlerImpl;->doError(Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;I)V

    .line 50
    return-void
.end method

.method public onCameraOpenFailure()V
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lcom/xiaomi/scanner/camera/FatalErrorHandlerImpl;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "Handling Camera Open Failure"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 31
    sget-object v0, Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;->CANNOT_CONNECT_TO_CAMERA:Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;

    const/16 v1, 0x66

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/scanner/camera/FatalErrorHandlerImpl;->doError(Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;I)V

    .line 32
    return-void
.end method

.method public onCameraReconnectFailure()V
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcom/xiaomi/scanner/camera/FatalErrorHandlerImpl;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "Handling Camera Reconnect Failure"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 37
    sget-object v0, Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;->CANNOT_CONNECT_TO_CAMERA:Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;

    const/16 v1, 0x67

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/scanner/camera/FatalErrorHandlerImpl;->doError(Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;I)V

    .line 38
    return-void
.end method

.method public onGenericCameraAccessFailure()V
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lcom/xiaomi/scanner/camera/FatalErrorHandlerImpl;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "Handling Camera Access Failure"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 43
    sget-object v0, Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;->CANNOT_CONNECT_TO_CAMERA:Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;

    const/16 v1, 0x64

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/scanner/camera/FatalErrorHandlerImpl;->doError(Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;I)V

    .line 44
    return-void
.end method

.method public onMediaStorageFailure()V
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lcom/xiaomi/scanner/camera/FatalErrorHandlerImpl;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "Handling Media Storage Failure"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;->MEDIA_STORAGE_FAILURE:Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;

    const/16 v1, 0xc9

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/scanner/camera/FatalErrorHandlerImpl;->doError(Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;I)V

    .line 26
    return-void
.end method
