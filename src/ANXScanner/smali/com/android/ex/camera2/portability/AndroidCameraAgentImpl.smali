.class Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;
.super Lcom/android/ex/camera2/portability/CameraAgent;
.source "AndroidCameraAgentImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$FaceDetectionCallbackForward;,
        Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PreviewCallbackForward;,
        Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PictureCallbackForward;,
        Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward;,
        Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFMoveCallbackForward;,
        Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFCallbackForward;,
        Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraStateHolder;,
        Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;,
        Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;,
        Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;,
        Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

.field private static final sDefaultExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;


# instance fields
.field private final mCameraHandler:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;

.field private final mCameraHandlerThread:Landroid/os/HandlerThread;

.field private final mCameraState:Lcom/android/ex/camera2/portability/CameraStateHolder;

.field private mCapabilities:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

.field private mCharacteristics:Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

.field private final mDispatchThread:Lcom/android/ex/camera2/portability/DispatchThread;

.field private mExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "AndCamAgntImp"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    .line 61
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$1;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->sDefaultExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/CameraAgent;-><init>()V

    .line 80
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->sDefaultExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    .line 83
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Camera Handler Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCameraHandlerThread:Landroid/os/HandlerThread;

    .line 84
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCameraHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 85
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCameraHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;Lcom/android/ex/camera2/portability/CameraAgent;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCameraHandler:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;

    .line 86
    new-instance v0, Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCameraHandler:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    .line 87
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraStateHolder;

    invoke-direct {v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraStateHolder;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCameraState:Lcom/android/ex/camera2/portability/CameraStateHolder;

    .line 88
    new-instance v0, Lcom/android/ex/camera2/portability/DispatchThread;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCameraHandler:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCameraHandlerThread:Landroid/os/HandlerThread;

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/DispatchThread;-><init>(Landroid/os/Handler;Landroid/os/HandlerThread;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mDispatchThread:Lcom/android/ex/camera2/portability/DispatchThread;

    .line 89
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mDispatchThread:Lcom/android/ex/camera2/portability/DispatchThread;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/DispatchThread;->start()V

    .line 90
    return-void
.end method

.method static synthetic access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraExceptionHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCameraState:Lcom/android/ex/camera2/portability/CameraStateHolder;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCharacteristics:Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;
    .param p1, "x1"    # Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCharacteristics:Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCapabilities:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;
    .param p1, "x1"    # Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCapabilities:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCameraHandler:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/DispatchThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mDispatchThread:Lcom/android/ex/camera2/portability/DispatchThread;

    return-object v0
.end method


# virtual methods
.method public getCameraDeviceInfo()Lcom/android/ex/camera2/portability/CameraDeviceInfo;
    .locals 1

    .prologue
    .line 101
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->create()Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    return-object v0
.end method

.method protected getCameraHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCameraHandler:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;

    return-object v0
.end method

.method protected getCameraState()Lcom/android/ex/camera2/portability/CameraStateHolder;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCameraState:Lcom/android/ex/camera2/portability/CameraStateHolder;

    return-object v0
.end method

.method protected getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mDispatchThread:Lcom/android/ex/camera2/portability/DispatchThread;

    return-object v0
.end method

.method public openCamera(I)Landroid/hardware/Camera;
    .locals 10
    .param p1, "cameraId"    # I

    .prologue
    .line 1349
    :try_start_0
    const-string v6, "android.hardware.Camera"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 1350
    .local v5, "ownerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "openLegacy"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1351
    .local v4, "method":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_2

    .line 1352
    const-string v6, "CAMERA_HAL_API_VERSION_1_0"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1354
    .local v2, "field":Ljava/lang/reflect/Field;
    if-eqz v2, :cond_1

    .line 1355
    const-string v6, "CAMERA_HAL_API_VERSION_1_0"

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .line 1360
    .local v3, "hal_api_1":I
    :goto_0
    sget-object v6, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hal_api_1="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/ex/camera2/portability/debug/Log;->i(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 1361
    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1373
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "hal_api_1":I
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "ownerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v0, "camera":Landroid/hardware/Camera;
    :goto_1
    if-nez v0, :cond_0

    .line 1374
    sget-object v6, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v7, "camera is null, use default method"

    invoke-static {v6, v7}, Lcom/android/ex/camera2/portability/debug/Log;->i(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 1375
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    .line 1377
    :cond_0
    return-object v0

    .line 1358
    .end local v0    # "camera":Landroid/hardware/Camera;
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    .restart local v4    # "method":Ljava/lang/reflect/Method;
    .restart local v5    # "ownerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    const/16 v3, 0x100

    .restart local v3    # "hal_api_1":I
    goto :goto_0

    .line 1363
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "hal_api_1":I
    :cond_2
    :try_start_1
    sget-object v6, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v7, "null openLegacy method"

    invoke-static {v6, v7}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1364
    const/4 v0, 0x0

    .restart local v0    # "camera":Landroid/hardware/Camera;
    goto :goto_1

    .line 1367
    .end local v0    # "camera":Landroid/hardware/Camera;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "ownerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 1368
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "openLegacy failed due to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", using open instead"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 1370
    const/4 v0, 0x0

    .restart local v0    # "camera":Landroid/hardware/Camera;
    goto :goto_1
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 94
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->closeCamera(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Z)V

    .line 95
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mDispatchThread:Lcom/android/ex/camera2/portability/DispatchThread;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/DispatchThread;->end()V

    .line 96
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCameraState:Lcom/android/ex/camera2/portability/CameraStateHolder;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraStateHolder;->invalidate()V

    .line 97
    return-void
.end method

.method public setCameraExceptionHandler(Lcom/android/ex/camera2/portability/CameraExceptionHandler;)V
    .locals 0
    .param p1, "exceptionHandler"    # Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    .prologue
    .line 127
    if-eqz p1, :cond_0

    .end local p1    # "exceptionHandler":Lcom/android/ex/camera2/portability/CameraExceptionHandler;
    :goto_0
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    .line 128
    return-void

    .line 127
    .restart local p1    # "exceptionHandler":Lcom/android/ex/camera2/portability/CameraExceptionHandler;
    :cond_0
    sget-object p1, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->sDefaultExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    goto :goto_0
.end method
