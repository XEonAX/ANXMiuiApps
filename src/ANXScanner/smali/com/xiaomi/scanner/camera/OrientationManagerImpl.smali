.class public Lcom/xiaomi/scanner/camera/OrientationManagerImpl;
.super Ljava/lang/Object;
.source "OrientationManagerImpl.java"

# interfaces
.implements Lcom/xiaomi/scanner/camera/OrientationManager;
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private mLastDeviceOrientation:Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

.field private mOrientationChangeListener:Lcom/xiaomi/scanner/camera/OrientationManager$OrientationChangeListener;

.field private mOrientationSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "OrientMgrImpl"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/camera/OrientationManagerImpl;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/xiaomi/scanner/camera/OrientationManager$OrientationChangeListener;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "listener"    # Lcom/xiaomi/scanner/camera/OrientationManager$OrientationChangeListener;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;->CLOCKWISE_0:Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/OrientationManagerImpl;->mLastDeviceOrientation:Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

    .line 41
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/OrientationManagerImpl;->mSensorManager:Landroid/hardware/SensorManager;

    .line 42
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/OrientationManagerImpl;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/OrientationManagerImpl;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/OrientationManagerImpl;->mOrientationSensor:Landroid/hardware/Sensor;

    .line 45
    :cond_0
    iput-object p3, p0, Lcom/xiaomi/scanner/camera/OrientationManagerImpl;->mOrientationChangeListener:Lcom/xiaomi/scanner/camera/OrientationManager$OrientationChangeListener;

    .line 46
    return-void
.end method

.method private genNewDeviceOrientation([F)Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;
    .locals 6
    .param p1, "value"    # [F

    .prologue
    const/high16 v5, 0x42200000    # 40.0f

    const/high16 v4, -0x3de00000    # -40.0f

    .line 86
    const/4 v3, 0x2

    :try_start_0
    aget v1, p1, v3

    .line 87
    .local v1, "degreeZ":F
    const/4 v3, 0x1

    aget v0, p1, v3

    .line 88
    .local v0, "degreeY":F
    cmpl-float v3, v1, v5

    if-ltz v3, :cond_0

    .line 89
    sget-object v3, Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;->CLOCKWISE_270:Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

    .line 102
    .end local v0    # "degreeY":F
    .end local v1    # "degreeZ":F
    :goto_0
    return-object v3

    .line 90
    .restart local v0    # "degreeY":F
    .restart local v1    # "degreeZ":F
    :cond_0
    cmpg-float v3, v1, v4

    if-gtz v3, :cond_1

    .line 91
    sget-object v3, Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;->CLOCKWISE_90:Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

    goto :goto_0

    .line 92
    :cond_1
    cmpl-float v3, v0, v5

    if-ltz v3, :cond_2

    .line 93
    sget-object v3, Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;->CLOCKWISE_180:Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

    goto :goto_0

    .line 94
    :cond_2
    cmpg-float v3, v0, v4

    if-gtz v3, :cond_3

    .line 95
    sget-object v3, Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;->CLOCKWISE_0:Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

    goto :goto_0

    .line 97
    :cond_3
    iget-object v3, p0, Lcom/xiaomi/scanner/camera/OrientationManagerImpl;->mLastDeviceOrientation:Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    .end local v0    # "degreeY":F
    .end local v1    # "degreeZ":F
    :catch_0
    move-exception v2

    .line 100
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/xiaomi/scanner/camera/OrientationManagerImpl;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "genNewDeviceOrientation error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 102
    sget-object v3, Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;->CLOCKWISE_0:Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

    goto :goto_0
.end method


# virtual methods
.method public getDeviceOrientation()Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/OrientationManagerImpl;->mLastDeviceOrientation:Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

    return-object v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 82
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 67
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v2}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 71
    .local v1, "rotationAngles":[F
    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/camera/OrientationManagerImpl;->genNewDeviceOrientation([F)Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

    move-result-object v0

    .line 72
    .local v0, "newDeviceOrientation":Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;
    iget-object v2, p0, Lcom/xiaomi/scanner/camera/OrientationManagerImpl;->mLastDeviceOrientation:Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

    if-eq v2, v0, :cond_0

    .line 75
    iput-object v0, p0, Lcom/xiaomi/scanner/camera/OrientationManagerImpl;->mLastDeviceOrientation:Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

    .line 76
    iget-object v2, p0, Lcom/xiaomi/scanner/camera/OrientationManagerImpl;->mOrientationChangeListener:Lcom/xiaomi/scanner/camera/OrientationManager$OrientationChangeListener;

    if-eqz v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/xiaomi/scanner/camera/OrientationManagerImpl;->mOrientationChangeListener:Lcom/xiaomi/scanner/camera/OrientationManager$OrientationChangeListener;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/xiaomi/scanner/camera/OrientationManager$OrientationChangeListener;->onOrientationChange(I)V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/OrientationManagerImpl;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/OrientationManagerImpl;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 58
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/OrientationManagerImpl;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/camera/OrientationManagerImpl;->mOrientationSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/OrientationManagerImpl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/OrientationManagerImpl;->mOrientationSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 52
    :cond_0
    return-void
.end method
