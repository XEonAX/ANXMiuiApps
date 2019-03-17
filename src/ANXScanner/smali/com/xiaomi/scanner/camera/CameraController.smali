.class public Lcom/xiaomi/scanner/camera/CameraController;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;
.implements Lcom/xiaomi/scanner/camera/CameraProvider;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EMPTY_CAMERA_ID:I = -0x1

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private final mCallbackHandler:Landroid/os/Handler;

.field private mCallbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

.field private mCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

.field private mCameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

.field private mCurrentCameraId:I

.field private mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

.field private mRequestingCameraId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    const-class v0, Lcom/xiaomi/scanner/camera/CameraController;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/xiaomi/scanner/camera/CameraController;->$assertionsDisabled:Z

    .line 12
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "CameraController"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/camera/CameraController;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void

    .line 11
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent;)V
    .locals 3
    .param p1, "callbackReceiver"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "cameraManager"    # Lcom/android/ex/camera2/portability/CameraAgent;

    .prologue
    const/4 v2, -0x1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput v2, p0, Lcom/xiaomi/scanner/camera/CameraController;->mRequestingCameraId:I

    .line 26
    iput v2, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCurrentCameraId:I

    .line 39
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCallbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    .line 40
    iput-object p2, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCallbackHandler:Landroid/os/Handler;

    .line 41
    iput-object p3, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    .line 42
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraDeviceInfo()Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    .line 43
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCallbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCallbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    const-string v1, "GETTING_CAMERA_INFO"

    invoke-interface {v0, v2, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onDeviceOpenFailure(ILjava/lang/String;)V

    .line 46
    :cond_0
    return-void
.end method

.method private static checkAndOpenCamera(Lcom/android/ex/camera2/portability/CameraAgent;ILandroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;)V
    .locals 3
    .param p0, "cameraManager"    # Lcom/android/ex/camera2/portability/CameraAgent;
    .param p1, "cameraId"    # I
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "cb"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    .prologue
    .line 246
    sget-object v1, Lcom/xiaomi/scanner/camera/CameraController;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "checkAndOpenCamera"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 248
    :try_start_0
    invoke-static {}, Lcom/xiaomi/scanner/util/CameraUtil;->throwIfCameraDisabled()V

    .line 249
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/ex/camera2/portability/CameraAgent;->openCamera(Landroid/os/Handler;ILcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;)V
    :try_end_0
    .catch Lcom/xiaomi/scanner/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :goto_0
    return-void

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "ex":Lcom/xiaomi/scanner/camera/CameraDisabledException;
    new-instance v1, Lcom/xiaomi/scanner/camera/CameraController$1;

    invoke-direct {v1, p3, p1}, Lcom/xiaomi/scanner/camera/CameraController$1;-><init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;I)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public closeCamera()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 236
    sget-object v0, Lcom/xiaomi/scanner/camera/CameraController;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "closing camera"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent;->closeCamera(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Z)V

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 239
    iput v3, p0, Lcom/xiaomi/scanner/camera/CameraController;->mRequestingCameraId:I

    .line 240
    iput v3, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCurrentCameraId:I

    .line 241
    return-void
.end method

.method public getCameraDevice()Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    return-object v0
.end method

.method public getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    .locals 5
    .param p1, "cameraId"    # I

    .prologue
    const/4 v1, 0x0

    .line 55
    iget-object v2, p0, Lcom/xiaomi/scanner/camera/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    if-nez v2, :cond_0

    .line 62
    :goto_0
    return-object v1

    .line 59
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/scanner/camera/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    invoke-interface {v2, p1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/xiaomi/scanner/camera/CameraController;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCharacteristics error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCurrentCameraId()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCurrentCameraId:I

    return v0
.end method

.method public getFirstBackCameraId()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    if-nez v0, :cond_0

    .line 87
    const/4 v0, -0x1

    .line 89
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    invoke-interface {v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo;->getFirstBackCameraId()I

    move-result v0

    goto :goto_0
.end method

.method public getFirstFrontCameraId()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    if-nez v0, :cond_0

    .line 95
    const/4 v0, -0x1

    .line 97
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    invoke-interface {v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo;->getFirstFrontCameraId()I

    move-result v0

    goto :goto_0
.end method

.method public getNumberOfCameras()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    if-nez v0, :cond_0

    .line 79
    const/4 v0, 0x0

    .line 81
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    invoke-interface {v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo;->getNumberOfCameras()I

    move-result v0

    goto :goto_0
.end method

.method public isBackFacingCamera(I)Z
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v0, 0x0

    .line 114
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    if-nez v1, :cond_0

    .line 121
    :goto_0
    return v0

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    invoke-interface {v1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo;->getNumberOfCameras()I

    move-result v1

    if-ge p1, v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    invoke-interface {v1, p1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v1

    if-nez v1, :cond_2

    .line 118
    :cond_1
    sget-object v1, Lcom/xiaomi/scanner/camera/CameraController;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera info not available:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    invoke-interface {v0, p1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->isFacingBack()Z

    move-result v0

    goto :goto_0
.end method

.method public isFrontFacingCamera(I)Z
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v0, 0x0

    .line 102
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    if-nez v1, :cond_0

    .line 109
    :goto_0
    return v0

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    invoke-interface {v1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo;->getNumberOfCameras()I

    move-result v1

    if-ge p1, v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    invoke-interface {v1, p1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v1

    if-nez v1, :cond_2

    .line 106
    :cond_1
    sget-object v1, Lcom/xiaomi/scanner/camera/CameraController;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera info not available:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    invoke-interface {v0, p1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->isFacingFront()Z

    move-result v0

    goto :goto_0
.end method

.method public onCameraDisabled(I)V
    .locals 1
    .param p1, "cameraId"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCallbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCallbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    invoke-interface {v0, p1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onCameraDisabled(I)V

    .line 142
    :cond_0
    return-void
.end method

.method public onCameraOpened(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 3
    .param p1, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 126
    sget-object v0, Lcom/xiaomi/scanner/camera/CameraController;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraOpened: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 127
    iget v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mRequestingCameraId:I

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraId()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 131
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mRequestingCameraId:I

    .line 132
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCallbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCallbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    invoke-interface {v0, p1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onCameraOpened(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V

    goto :goto_0
.end method

.method public onDeviceOpenFailure(ILjava/lang/String;)V
    .locals 2
    .param p1, "cameraId"    # I
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 146
    iput-object v1, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 147
    iput v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCurrentCameraId:I

    .line 148
    iput v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mRequestingCameraId:I

    .line 149
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent;->setCameraExceptionHandler(Lcom/android/ex/camera2/portability/CameraExceptionHandler;)V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCallbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCallbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onDeviceOpenFailure(ILjava/lang/String;)V

    .line 155
    :cond_1
    return-void
.end method

.method public onDeviceOpenedAlready(ILjava/lang/String;)V
    .locals 1
    .param p1, "cameraId"    # I
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCallbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCallbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onDeviceOpenedAlready(ILjava/lang/String;)V

    .line 162
    :cond_0
    return-void
.end method

.method public onReconnectionFailure(Lcom/android/ex/camera2/portability/CameraAgent;Ljava/lang/String;)V
    .locals 1
    .param p1, "mgr"    # Lcom/android/ex/camera2/portability/CameraAgent;
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCallbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCallbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onReconnectionFailure(Lcom/android/ex/camera2/portability/CameraAgent;Ljava/lang/String;)V

    .line 169
    :cond_0
    return-void
.end method

.method public releaseCamera(I)V
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v4, -0x1

    .line 203
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v1, :cond_1

    .line 204
    iget v1, p0, Lcom/xiaomi/scanner/camera/CameraController;->mRequestingCameraId:I

    if-ne v1, v4, :cond_0

    .line 206
    sget-object v1, Lcom/xiaomi/scanner/camera/CameraController;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to release the camera before requesting. cameraId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 209
    :cond_0
    iput v4, p0, Lcom/xiaomi/scanner/camera/CameraController;->mRequestingCameraId:I

    .line 226
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraId()I

    move-result v0

    .line 213
    .local v0, "currentId":I
    if-eq v0, p1, :cond_2

    .line 214
    iget v1, p0, Lcom/xiaomi/scanner/camera/CameraController;->mRequestingCameraId:I

    if-ne v1, p1, :cond_3

    .line 215
    sget-object v1, Lcom/xiaomi/scanner/camera/CameraController;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Releasing camera which was requested but not yet opened (current:requested): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 224
    :cond_2
    iput v4, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCurrentCameraId:I

    .line 225
    iput v4, p0, Lcom/xiaomi/scanner/camera/CameraController;->mRequestingCameraId:I

    goto :goto_0

    .line 218
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to release a camera neither openednor requested (current:requested:for-release): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/xiaomi/scanner/camera/CameraController;->mRequestingCameraId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeCallbackReceiver()V
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCallbackReceiver:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    .line 230
    return-void
.end method

.method public requestCamera(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 173
    sget-object v0, Lcom/xiaomi/scanner/camera/CameraController;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCamera "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 182
    iget v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mRequestingCameraId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mRequestingCameraId:I

    if-ne v0, p1, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    if-nez v0, :cond_2

    .line 186
    sget-object v0, Lcom/xiaomi/scanner/camera/CameraController;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "null info"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :cond_2
    iput p1, p0, Lcom/xiaomi/scanner/camera/CameraController;->mRequestingCameraId:I

    .line 190
    iput p1, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCurrentCameraId:I

    .line 192
    sget-boolean v0, Lcom/xiaomi/scanner/camera/CameraController;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 193
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCallbackHandler:Landroid/os/Handler;

    invoke-static {v0, p1, v1, p0}, Lcom/xiaomi/scanner/camera/CameraController;->checkAndOpenCamera(Lcom/android/ex/camera2/portability/CameraAgent;ILandroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;)V

    goto :goto_0
.end method

.method public setCameraExceptionHandler(Lcom/android/ex/camera2/portability/CameraExceptionHandler;)V
    .locals 1
    .param p1, "exceptionHandler"    # Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/CameraAgent;->setCameraExceptionHandler(Lcom/android/ex/camera2/portability/CameraExceptionHandler;)V

    .line 51
    return-void
.end method

.method public setOneShotPreviewCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "cb"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mCameraProxy:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0, p1, p2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setOneShotPreviewCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;)V

    .line 263
    return-void
.end method

.method public waitingForCamera()Z
    .locals 2

    .prologue
    .line 198
    iget v0, p0, Lcom/xiaomi/scanner/camera/CameraController;->mRequestingCameraId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
