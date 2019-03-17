.class public final Lcom/taobao/ma/camera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# static fields
.field private static final MAX_FRAME_HEIGHT:I = 0x2a3

.field private static final MAX_FRAME_WIDTH:I = 0x4b0

.field private static final MIN_FRAME_HEIGHT:I = 0xf0

.field private static final MIN_FRAME_WIDTH:I = 0xf0

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private autoFocusInterval:J

.field private autoFocusManager:Lcom/taobao/ma/camera/AutoFocusManager;

.field private camera:Landroid/hardware/Camera;

.field private final configManager:Lcom/taobao/ma/camera/CameraConfigurationManager;

.field private final context:Landroid/content/Context;

.field private firstFocusDelay:J

.field private focusListener:Lcom/taobao/ma/camera/AutoFocusManager$OnAutoFocusListener;

.field private framingRect:Landroid/graphics/Rect;

.field private framingRectInPreview:Landroid/graphics/Rect;

.field private initialized:Z

.field private previewing:Z

.field private requestedCameraId:I

.field private requestedFramingRectHeight:I

.field private requestedFramingRectWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/taobao/ma/camera/CameraManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/ma/camera/CameraManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/taobao/ma/camera/CameraManager;->requestedCameraId:I

    .line 62
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/taobao/ma/camera/CameraManager;->firstFocusDelay:J

    .line 63
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/taobao/ma/camera/CameraManager;->autoFocusInterval:J

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/ma/camera/CameraManager;->focusListener:Lcom/taobao/ma/camera/AutoFocusManager$OnAutoFocusListener;

    .line 67
    iput-object p1, p0, Lcom/taobao/ma/camera/CameraManager;->context:Landroid/content/Context;

    .line 68
    new-instance v0, Lcom/taobao/ma/camera/CameraConfigurationManager;

    invoke-direct {v0, p1}, Lcom/taobao/ma/camera/CameraConfigurationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/ma/camera/CameraManager;->configManager:Lcom/taobao/ma/camera/CameraConfigurationManager;

    .line 69
    return-void
.end method

.method private static findDesiredDimensionInRange(III)I
    .locals 2
    .param p0, "resolution"    # I
    .param p1, "hardMin"    # I
    .param p2, "hardMax"    # I

    .prologue
    .line 242
    mul-int/lit8 v1, p0, 0x5

    div-int/lit8 v0, v1, 0x8

    .line 243
    .local v0, "dim":I
    if-ge v0, p1, :cond_0

    .line 249
    .end local p1    # "hardMin":I
    :goto_0
    return p1

    .line 246
    .restart local p1    # "hardMin":I
    :cond_0
    if-le v0, p2, :cond_1

    move p1, p2

    .line 247
    goto :goto_0

    :cond_1
    move p1, v0

    .line 249
    goto :goto_0
.end method


# virtual methods
.method public buildLuminanceSource([BII)Lcom/taobao/ma/camera/util/PlanarYUVLuminanceSource;
    .locals 10
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/taobao/ma/camera/CameraManager;->getFramingRectInPreview()Landroid/graphics/Rect;

    move-result-object v9

    .line 329
    .local v9, "rect":Landroid/graphics/Rect;
    if-nez v9, :cond_0

    .line 330
    const/4 v0, 0x0

    .line 333
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/taobao/ma/camera/util/PlanarYUVLuminanceSource;

    iget v4, v9, Landroid/graphics/Rect;->left:I

    iget v5, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/4 v8, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/taobao/ma/camera/util/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    goto :goto_0
.end method

.method public declared-synchronized closeDriver()V
    .locals 1

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/taobao/ma/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/taobao/ma/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/ma/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/ma/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/ma/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :cond_0
    monitor-exit p0

    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCamera()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/taobao/ma/camera/CameraManager;->camera:Landroid/hardware/Camera;

    return-object v0
.end method

.method public declared-synchronized getFramingRect()Landroid/graphics/Rect;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 220
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/taobao/ma/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    if-nez v6, :cond_2

    .line 221
    iget-object v6, p0, Lcom/taobao/ma/camera/CameraManager;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_1

    .line 238
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v5

    .line 224
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/taobao/ma/camera/CameraManager;->configManager:Lcom/taobao/ma/camera/CameraConfigurationManager;

    invoke-virtual {v6}, Lcom/taobao/ma/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v2

    .line 225
    .local v2, "screenResolution":Landroid/graphics/Point;
    if-eqz v2, :cond_0

    .line 230
    iget v5, v2, Landroid/graphics/Point;->x:I

    const/16 v6, 0xf0

    const/16 v7, 0x4b0

    invoke-static {v5, v6, v7}, Lcom/taobao/ma/camera/CameraManager;->findDesiredDimensionInRange(III)I

    move-result v4

    .line 231
    .local v4, "width":I
    iget v5, v2, Landroid/graphics/Point;->y:I

    const/16 v6, 0xf0

    const/16 v7, 0x2a3

    invoke-static {v5, v6, v7}, Lcom/taobao/ma/camera/CameraManager;->findDesiredDimensionInRange(III)I

    move-result v0

    .line 233
    .local v0, "height":I
    iget v5, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v4

    div-int/lit8 v1, v5, 0x2

    .line 234
    .local v1, "leftOffset":I
    iget v5, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v0

    div-int/lit8 v3, v5, 0x2

    .line 235
    .local v3, "topOffset":I
    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v1, v4

    add-int v7, v3, v0

    invoke-direct {v5, v1, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lcom/taobao/ma/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    .line 236
    sget-object v5, Lcom/taobao/ma/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Calculated framing rect: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/taobao/ma/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .end local v0    # "height":I
    .end local v1    # "leftOffset":I
    .end local v2    # "screenResolution":Landroid/graphics/Point;
    .end local v3    # "topOffset":I
    .end local v4    # "width":I
    :cond_2
    iget-object v5, p0, Lcom/taobao/ma/camera/CameraManager;->framingRect:Landroid/graphics/Rect;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 220
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized getFramingRectInPreview()Landroid/graphics/Rect;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 259
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/taobao/ma/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    if-nez v5, :cond_2

    .line 260
    invoke-virtual {p0}, Lcom/taobao/ma/camera/CameraManager;->getFramingRect()Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 261
    .local v1, "framingRect":Landroid/graphics/Rect;
    if-nez v1, :cond_1

    .line 277
    .end local v1    # "framingRect":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v4

    .line 264
    .restart local v1    # "framingRect":Landroid/graphics/Rect;
    :cond_1
    :try_start_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 265
    .local v2, "rect":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/taobao/ma/camera/CameraManager;->configManager:Lcom/taobao/ma/camera/CameraConfigurationManager;

    invoke-virtual {v5}, Lcom/taobao/ma/camera/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v0

    .line 266
    .local v0, "cameraResolution":Landroid/graphics/Point;
    iget-object v5, p0, Lcom/taobao/ma/camera/CameraManager;->configManager:Lcom/taobao/ma/camera/CameraConfigurationManager;

    invoke-virtual {v5}, Lcom/taobao/ma/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v3

    .line 267
    .local v3, "screenResolution":Landroid/graphics/Point;
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    .line 271
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v4, v5

    iget v5, v3, Landroid/graphics/Point;->x:I

    div-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 272
    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v4, v5

    iget v5, v3, Landroid/graphics/Point;->x:I

    div-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 273
    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v4, v5

    iget v5, v3, Landroid/graphics/Point;->y:I

    div-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 274
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v4, v5

    iget v5, v3, Landroid/graphics/Point;->y:I

    div-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 275
    iput-object v2, p0, Lcom/taobao/ma/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    .line 277
    .end local v0    # "cameraResolution":Landroid/graphics/Point;
    .end local v1    # "framingRect":Landroid/graphics/Rect;
    .end local v2    # "rect":Landroid/graphics/Rect;
    .end local v3    # "screenResolution":Landroid/graphics/Point;
    :cond_2
    iget-object v4, p0, Lcom/taobao/ma/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 259
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getMaxZoom()I
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/taobao/ma/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    return v0
.end method

.method public getZoomParameter()I
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/taobao/ma/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v0

    return v0
.end method

.method public declared-synchronized isOpen()Z
    .locals 1

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/taobao/ma/camera/CameraManager;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized openDriver(Landroid/view/SurfaceHolder;)V
    .locals 8
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/taobao/ma/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 79
    .local v4, "theCamera":Landroid/hardware/Camera;
    if-nez v4, :cond_1

    .line 81
    iget v5, p0, Lcom/taobao/ma/camera/CameraManager;->requestedCameraId:I

    invoke-static {v5}, Lcom/taobao/ma/camera/open/OpenCameraInterface;->open(I)Landroid/hardware/Camera;

    move-result-object v4

    .line 82
    if-nez v4, :cond_0

    .line 83
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .end local v4    # "theCamera":Landroid/hardware/Camera;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 85
    .restart local v4    # "theCamera":Landroid/hardware/Camera;
    :cond_0
    :try_start_1
    iput-object v4, p0, Lcom/taobao/ma/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 87
    :cond_1
    invoke-virtual {v4, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 89
    iget-boolean v5, p0, Lcom/taobao/ma/camera/CameraManager;->initialized:Z

    if-nez v5, :cond_2

    .line 90
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/taobao/ma/camera/CameraManager;->initialized:Z

    .line 91
    iget-object v5, p0, Lcom/taobao/ma/camera/CameraManager;->configManager:Lcom/taobao/ma/camera/CameraConfigurationManager;

    invoke-virtual {v5, v4}, Lcom/taobao/ma/camera/CameraConfigurationManager;->initFromCameraParameters(Landroid/hardware/Camera;)V

    .line 92
    iget v5, p0, Lcom/taobao/ma/camera/CameraManager;->requestedFramingRectWidth:I

    if-lez v5, :cond_2

    iget v5, p0, Lcom/taobao/ma/camera/CameraManager;->requestedFramingRectHeight:I

    if-lez v5, :cond_2

    .line 93
    iget v5, p0, Lcom/taobao/ma/camera/CameraManager;->requestedFramingRectWidth:I

    iget v6, p0, Lcom/taobao/ma/camera/CameraManager;->requestedFramingRectHeight:I

    invoke-virtual {p0, v5, v6}, Lcom/taobao/ma/camera/CameraManager;->setManualFramingRect(II)V

    .line 94
    const/4 v5, 0x0

    iput v5, p0, Lcom/taobao/ma/camera/CameraManager;->requestedFramingRectWidth:I

    .line 95
    const/4 v5, 0x0

    iput v5, p0, Lcom/taobao/ma/camera/CameraManager;->requestedFramingRectHeight:I

    .line 99
    :cond_2
    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 100
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_4

    const/4 v1, 0x0

    .line 102
    .local v1, "parametersFlattened":Ljava/lang/String;
    :goto_0
    :try_start_2
    iget-object v5, p0, Lcom/taobao/ma/camera/CameraManager;->configManager:Lcom/taobao/ma/camera/CameraConfigurationManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lcom/taobao/ma/camera/CameraConfigurationManager;->setDesiredCameraParameters(Landroid/hardware/Camera;Z)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    .line 100
    .end local v1    # "parametersFlattened":Ljava/lang/String;
    :cond_4
    :try_start_3
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 103
    .restart local v1    # "parametersFlattened":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 105
    .local v2, "re":Ljava/lang/RuntimeException;
    sget-object v5, Lcom/taobao/ma/camera/CameraManager;->TAG:Ljava/lang/String;

    const-string v6, "Camera rejected parameters. Setting only minimal safe-mode parameters"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    sget-object v5, Lcom/taobao/ma/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Resetting to saved camera params: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    if-eqz v1, :cond_3

    .line 109
    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 110
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 112
    :try_start_4
    invoke-virtual {v4, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 113
    iget-object v5, p0, Lcom/taobao/ma/camera/CameraManager;->configManager:Lcom/taobao/ma/camera/CameraConfigurationManager;

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6}, Lcom/taobao/ma/camera/CameraConfigurationManager;->setDesiredCameraParameters(Landroid/hardware/Camera;Z)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 114
    :catch_1
    move-exception v3

    .line 116
    .local v3, "re2":Ljava/lang/RuntimeException;
    :try_start_5
    sget-object v5, Lcom/taobao/ma/camera/CameraManager;->TAG:Ljava/lang/String;

    const-string v6, "Camera rejected even safe-mode parameters! No configuration"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized requestPreviewFrame(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .param p1, "previewCallback"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    .line 206
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/taobao/ma/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 207
    .local v0, "theCamera":Landroid/hardware/Camera;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/taobao/ma/camera/CameraManager;->previewing:Z

    if-eqz v1, :cond_0

    .line 208
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :cond_0
    monitor-exit p0

    return-void

    .line 206
    .end local v0    # "theCamera":Landroid/hardware/Camera;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setAutoFocusInterval(J)V
    .locals 1
    .param p1, "interval"    # J

    .prologue
    .line 367
    iput-wide p1, p0, Lcom/taobao/ma/camera/CameraManager;->autoFocusInterval:J

    .line 368
    return-void
.end method

.method public setCompatibleRotation(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 375
    .local p1, "compatibleRotation":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/taobao/ma/camera/CameraManager;->configManager:Lcom/taobao/ma/camera/CameraConfigurationManager;

    invoke-virtual {v0, p1}, Lcom/taobao/ma/camera/CameraConfigurationManager;->setCompatibleRotation(Ljava/util/Map;)V

    .line 376
    return-void
.end method

.method public setFirstFocusDelay(J)V
    .locals 1
    .param p1, "delay"    # J

    .prologue
    .line 363
    iput-wide p1, p0, Lcom/taobao/ma/camera/CameraManager;->firstFocusDelay:J

    .line 364
    return-void
.end method

.method public setFocusListener(Lcom/taobao/ma/camera/AutoFocusManager$OnAutoFocusListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/taobao/ma/camera/AutoFocusManager$OnAutoFocusListener;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/taobao/ma/camera/CameraManager;->focusListener:Lcom/taobao/ma/camera/AutoFocusManager$OnAutoFocusListener;

    .line 372
    return-void
.end method

.method public declared-synchronized setManualCameraId(I)V
    .locals 1
    .param p1, "cameraId"    # I

    .prologue
    .line 288
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/taobao/ma/camera/CameraManager;->requestedCameraId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    monitor-exit p0

    return-void

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setManualFramingRect(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 299
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/taobao/ma/camera/CameraManager;->initialized:Z

    if-eqz v3, :cond_2

    .line 300
    iget-object v3, p0, Lcom/taobao/ma/camera/CameraManager;->configManager:Lcom/taobao/ma/camera/CameraConfigurationManager;

    invoke-virtual {v3}, Lcom/taobao/ma/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v1

    .line 301
    .local v1, "screenResolution":Landroid/graphics/Point;
    iget v3, v1, Landroid/graphics/Point;->x:I

    if-le p1, v3, :cond_0

    .line 302
    iget p1, v1, Landroid/graphics/Point;->x:I

    .line 304
    :cond_0
    iget v3, v1, Landroid/graphics/Point;->y:I

    if-le p2, v3, :cond_1

    .line 305
    iget p2, v1, Landroid/graphics/Point;->y:I

    .line 307
    :cond_1
    iget v3, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, p1

    div-int/lit8 v0, v3, 0x2

    .line 308
    .local v0, "leftOffset":I
    iget v3, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, p2

    div-int/lit8 v2, v3, 0x2

    .line 309
    .local v2, "topOffset":I
    new-instance v3, Landroid/graphics/Rect;

    add-int v4, v0, p1

    add-int v5, v2, p2

    invoke-direct {v3, v0, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/taobao/ma/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    .line 310
    sget-object v3, Lcom/taobao/ma/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calculated manual framing rect: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/ma/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/taobao/ma/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    .end local v0    # "leftOffset":I
    .end local v1    # "screenResolution":Landroid/graphics/Point;
    .end local v2    # "topOffset":I
    :goto_0
    monitor-exit p0

    return-void

    .line 313
    :cond_2
    :try_start_1
    iput p1, p0, Lcom/taobao/ma/camera/CameraManager;->requestedFramingRectWidth:I

    .line 314
    iput p2, p0, Lcom/taobao/ma/camera/CameraManager;->requestedFramingRectHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 299
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized setTorch(Z)V
    .locals 3
    .param p1, "newSetting"    # Z

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/taobao/ma/camera/CameraManager;->configManager:Lcom/taobao/ma/camera/CameraConfigurationManager;

    iget-object v2, p0, Lcom/taobao/ma/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Lcom/taobao/ma/camera/CameraConfigurationManager;->getTorchState(Landroid/hardware/Camera;)Z

    move-result v1

    if-eq p1, v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/taobao/ma/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v1, :cond_1

    .line 183
    iget-object v1, p0, Lcom/taobao/ma/camera/CameraManager;->autoFocusManager:Lcom/taobao/ma/camera/AutoFocusManager;

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/taobao/ma/camera/CameraManager;->autoFocusManager:Lcom/taobao/ma/camera/AutoFocusManager;

    invoke-virtual {v1}, Lcom/taobao/ma/camera/AutoFocusManager;->stop()V

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/taobao/ma/camera/CameraManager;->configManager:Lcom/taobao/ma/camera/CameraConfigurationManager;

    iget-object v2, p0, Lcom/taobao/ma/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, v2, p1}, Lcom/taobao/ma/camera/CameraConfigurationManager;->setTorch(Landroid/hardware/Camera;Z)V

    .line 187
    iget-object v1, p0, Lcom/taobao/ma/camera/CameraManager;->autoFocusManager:Lcom/taobao/ma/camera/AutoFocusManager;

    if-eqz v1, :cond_1

    .line 188
    iget-object v1, p0, Lcom/taobao/ma/camera/CameraManager;->autoFocusManager:Lcom/taobao/ma/camera/AutoFocusManager;

    invoke-virtual {v1}, Lcom/taobao/ma/camera/AutoFocusManager;->restart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "maybe light hardware broken "

    invoke-static {v1}, Lcom/taobao/ma/common/log/MaLogger;->i(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 181
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setZoomParameter(I)V
    .locals 2
    .param p1, "zooooooooom"    # I

    .prologue
    .line 352
    iget-object v1, p0, Lcom/taobao/ma/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 353
    .local v0, "p":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 354
    iget-object v1, p0, Lcom/taobao/ma/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 355
    return-void
.end method

.method public declared-synchronized startPreview()V
    .locals 8

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 146
    .local v2, "timeStart":J
    iget-object v0, p0, Lcom/taobao/ma/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 147
    .local v0, "theCamera":Landroid/hardware/Camera;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/taobao/ma/camera/CameraManager;->previewing:Z

    if-nez v1, :cond_0

    .line 148
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 149
    sget-object v1, Lcom/taobao/ma/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQY: startPreview.theCamera.startPreview Costs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/taobao/ma/camera/CameraManager;->previewing:Z

    .line 151
    new-instance v1, Lcom/taobao/ma/camera/AutoFocusManager;

    iget-object v4, p0, Lcom/taobao/ma/camera/CameraManager;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/taobao/ma/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-direct {v1, v4, v5}, Lcom/taobao/ma/camera/AutoFocusManager;-><init>(Landroid/content/Context;Landroid/hardware/Camera;)V

    iput-object v1, p0, Lcom/taobao/ma/camera/CameraManager;->autoFocusManager:Lcom/taobao/ma/camera/AutoFocusManager;

    .line 152
    iget-object v1, p0, Lcom/taobao/ma/camera/CameraManager;->autoFocusManager:Lcom/taobao/ma/camera/AutoFocusManager;

    iget-wide v4, p0, Lcom/taobao/ma/camera/CameraManager;->autoFocusInterval:J

    invoke-virtual {v1, v4, v5}, Lcom/taobao/ma/camera/AutoFocusManager;->setAutoFocusInterval(J)V

    .line 153
    iget-object v1, p0, Lcom/taobao/ma/camera/CameraManager;->autoFocusManager:Lcom/taobao/ma/camera/AutoFocusManager;

    iget-wide v4, p0, Lcom/taobao/ma/camera/CameraManager;->firstFocusDelay:J

    invoke-virtual {v1, v4, v5}, Lcom/taobao/ma/camera/AutoFocusManager;->startAutoFocus(J)V

    .line 154
    iget-object v1, p0, Lcom/taobao/ma/camera/CameraManager;->autoFocusManager:Lcom/taobao/ma/camera/AutoFocusManager;

    iget-object v4, p0, Lcom/taobao/ma/camera/CameraManager;->focusListener:Lcom/taobao/ma/camera/AutoFocusManager$OnAutoFocusListener;

    invoke-virtual {v1, v4}, Lcom/taobao/ma/camera/AutoFocusManager;->setFocusListener(Lcom/taobao/ma/camera/AutoFocusManager$OnAutoFocusListener;)V

    .line 155
    sget-object v1, Lcom/taobao/ma/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQY: startPreview new AutoFocusManager Costs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :cond_0
    monitor-exit p0

    return-void

    .line 145
    .end local v0    # "theCamera":Landroid/hardware/Camera;
    .end local v2    # "timeStart":J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopPreview()V
    .locals 2

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/taobao/ma/camera/CameraManager;->autoFocusManager:Lcom/taobao/ma/camera/AutoFocusManager;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/taobao/ma/camera/CameraManager;->autoFocusManager:Lcom/taobao/ma/camera/AutoFocusManager;

    invoke-virtual {v0}, Lcom/taobao/ma/camera/AutoFocusManager;->stop()V

    .line 165
    iget-object v0, p0, Lcom/taobao/ma/camera/CameraManager;->autoFocusManager:Lcom/taobao/ma/camera/AutoFocusManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taobao/ma/camera/AutoFocusManager;->setFocusListener(Lcom/taobao/ma/camera/AutoFocusManager$OnAutoFocusListener;)V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/ma/camera/CameraManager;->autoFocusManager:Lcom/taobao/ma/camera/AutoFocusManager;

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/taobao/ma/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/taobao/ma/camera/CameraManager;->previewing:Z

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/taobao/ma/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/ma/camera/CameraManager;->previewing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :cond_1
    monitor-exit p0

    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
