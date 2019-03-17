.class final Lcom/taobao/ma/camera/CameraConfigurationManager;
.super Ljava/lang/Object;
.source "CameraConfigurationManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraConfiguration"


# instance fields
.field private cameraDisplayOrientation:I

.field private cameraResolution:Landroid/graphics/Point;

.field private compatibleRotation:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private pictureResolution:Landroid/graphics/Point;

.field private screenResolution:Landroid/graphics/Point;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/16 v0, 0x5a

    iput v0, p0, Lcom/taobao/ma/camera/CameraConfigurationManager;->cameraDisplayOrientation:I

    .line 53
    iput-object p1, p0, Lcom/taobao/ma/camera/CameraConfigurationManager;->context:Landroid/content/Context;

    .line 54
    return-void
.end method

.method private doSetTorch(Landroid/hardware/Camera$Parameters;ZZ)V
    .locals 3
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p2, "newSetting"    # Z
    .param p3, "safeMode"    # Z

    .prologue
    .line 245
    invoke-static {p1, p2}, Lcom/taobao/ma/camera/util/CameraConfigurationUtils;->setTorch(Landroid/hardware/Camera$Parameters;Z)V

    .line 246
    iget-object v1, p0, Lcom/taobao/ma/camera/CameraConfigurationManager;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 247
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-nez p3, :cond_0

    const-string v1, "preferences_disable_exposure"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 248
    invoke-static {p1, p2}, Lcom/taobao/ma/camera/util/CameraConfigurationUtils;->setBestExposure(Landroid/hardware/Camera$Parameters;Z)V

    .line 250
    :cond_0
    return-void
.end method

.method private getBestSupportImageFormat(Landroid/hardware/Camera$Parameters;)I
    .locals 5
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/16 v1, 0x100

    const/16 v3, 0x11

    const/4 v2, 0x4

    .line 191
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureFormats()Ljava/util/List;

    move-result-object v0

    .line 192
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 199
    :goto_0
    return v1

    .line 194
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 195
    goto :goto_0

    .line 196
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    .line 197
    goto :goto_0

    .line 199
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getBestSupportPreviewImageFormat(Landroid/hardware/Camera$Parameters;)I
    .locals 4
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const v2, 0x32315659

    const/16 v1, 0x11

    .line 203
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;

    move-result-object v0

    .line 204
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 209
    :goto_0
    return v1

    .line 206
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 207
    goto :goto_0

    .line 209
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private initializeTorch(Landroid/hardware/Camera$Parameters;Landroid/content/SharedPreferences;Z)V
    .locals 3
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p2, "prefs"    # Landroid/content/SharedPreferences;
    .param p3, "safeMode"    # Z

    .prologue
    .line 240
    invoke-static {p2}, Lcom/taobao/ma/camera/FrontLightMode;->readPref(Landroid/content/SharedPreferences;)Lcom/taobao/ma/camera/FrontLightMode;

    move-result-object v1

    sget-object v2, Lcom/taobao/ma/camera/FrontLightMode;->ON:Lcom/taobao/ma/camera/FrontLightMode;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 241
    .local v0, "currentSetting":Z
    :goto_0
    invoke-direct {p0, p1, v0, p3}, Lcom/taobao/ma/camera/CameraConfigurationManager;->doSetTorch(Landroid/hardware/Camera$Parameters;ZZ)V

    .line 242
    return-void

    .line 240
    .end local v0    # "currentSetting":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method getCameraResolution()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/taobao/ma/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    return-object v0
.end method

.method getScreenResolution()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/taobao/ma/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    return-object v0
.end method

.method getTorchState(Landroid/hardware/Camera;)Z
    .locals 4
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v2, 0x0

    .line 221
    if-eqz p1, :cond_1

    .line 222
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 223
    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    if-eqz v1, :cond_1

    .line 224
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "flashMode":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v3, "on"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "torch"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 230
    .end local v0    # "flashMode":Ljava/lang/String;
    .end local v1    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_1
    return v2
.end method

.method initFromCameraParameters(Landroid/hardware/Camera;)V
    .locals 9
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/16 v8, 0x2d0

    .line 63
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 64
    .local v3, "parameters":Landroid/hardware/Camera$Parameters;
    iget-object v5, p0, Lcom/taobao/ma/camera/CameraConfigurationManager;->context:Landroid/content/Context;

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 65
    .local v1, "manager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 66
    .local v0, "display":Landroid/view/Display;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 67
    .local v4, "theScreenResolution":Landroid/graphics/Point;
    invoke-virtual {v0, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 68
    iput-object v4, p0, Lcom/taobao/ma/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    .line 69
    const-string v5, "CameraConfiguration"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Screen resolution: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/taobao/ma/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v5, p0, Lcom/taobao/ma/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    invoke-static {v3, v5}, Lcom/taobao/ma/camera/util/CameraConfigurationUtils;->findBestPreviewSizeValue(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v5

    iput-object v5, p0, Lcom/taobao/ma/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    .line 73
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 74
    .local v2, "model":Ljava/lang/String;
    const-string v5, "HTC"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "One"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const-string v5, "GT-N7100"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "GT-I9300"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 75
    :cond_1
    new-instance v5, Landroid/graphics/Point;

    const/16 v6, 0x500

    invoke-direct {v5, v6, v8}, Landroid/graphics/Point;-><init>(II)V

    iput-object v5, p0, Lcom/taobao/ma/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    .line 82
    :cond_2
    :goto_0
    const-string v5, "CameraConfiguration"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Camera resolution: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/taobao/ma/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget v5, p0, Lcom/taobao/ma/camera/CameraConfigurationManager;->cameraDisplayOrientation:I

    invoke-static {v3, v5}, Lcom/taobao/ma/camera/util/CameraConfigurationUtils;->findBestPictureSizeValue(Landroid/hardware/Camera$Parameters;I)Landroid/graphics/Point;

    move-result-object v5

    iput-object v5, p0, Lcom/taobao/ma/camera/CameraConfigurationManager;->pictureResolution:Landroid/graphics/Point;

    .line 84
    return-void

    .line 76
    :cond_3
    const-string v5, "u8800"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 77
    new-instance v5, Landroid/graphics/Point;

    const/16 v6, 0x1e0

    invoke-direct {v5, v8, v6}, Landroid/graphics/Point;-><init>(II)V

    iput-object v5, p0, Lcom/taobao/ma/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    goto :goto_0

    .line 78
    :cond_4
    const-string v5, "MI PAD"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 79
    new-instance v5, Landroid/graphics/Point;

    const/16 v6, 0x800

    const/16 v7, 0x600

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    iput-object v5, p0, Lcom/taobao/ma/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    goto :goto_0
.end method

.method public setCompatibleRotation(Ljava/util/Map;)V
    .locals 0
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
    .line 253
    .local p1, "compatibleRotation":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/taobao/ma/camera/CameraConfigurationManager;->compatibleRotation:Ljava/util/Map;

    .line 254
    return-void
.end method

.method setDesiredCameraParameters(Landroid/hardware/Camera;Z)V
    .locals 12
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "safeMode"    # Z

    .prologue
    .line 87
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    .line 89
    .local v7, "parameters":Landroid/hardware/Camera$Parameters;
    if-nez v7, :cond_1

    .line 90
    const-string v9, "CameraConfiguration"

    const-string v10, "Device error: no camera parameters are available. Proceeding without configuration."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    const-string v9, "CameraConfiguration"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Initial camera parameters: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    if-eqz p2, :cond_2

    .line 97
    const-string v9, "CameraConfiguration"

    const-string v10, "In camera config safe mode -- most settings will not be honored"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_2
    iget-object v9, p0, Lcom/taobao/ma/camera/CameraConfigurationManager;->context:Landroid/content/Context;

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 102
    .local v8, "prefs":Landroid/content/SharedPreferences;
    invoke-direct {p0, v7, v8, p2}, Lcom/taobao/ma/camera/CameraConfigurationManager;->initializeTorch(Landroid/hardware/Camera$Parameters;Landroid/content/SharedPreferences;Z)V

    .line 104
    const-string v9, "preferences_auto_focus"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    const-string v10, "preferences_disable_continuous_focus"

    const/4 v11, 0x1

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-static {v7, v9, v10, p2}, Lcom/taobao/ma/camera/util/CameraConfigurationUtils;->setFocus(Landroid/hardware/Camera$Parameters;ZZZ)V

    .line 110
    if-nez p2, :cond_5

    .line 111
    const-string v9, "preferences_invert_scan"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 112
    invoke-static {v7}, Lcom/taobao/ma/camera/util/CameraConfigurationUtils;->setInvertColor(Landroid/hardware/Camera$Parameters;)V

    .line 115
    :cond_3
    const-string v9, "preferences_disable_barcode_scene_mode"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_4

    .line 116
    invoke-static {v7}, Lcom/taobao/ma/camera/util/CameraConfigurationUtils;->setBarcodeSceneMode(Landroid/hardware/Camera$Parameters;)V

    .line 119
    :cond_4
    const-string v9, "preferences_disable_metering"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_5

    .line 120
    invoke-static {v7}, Lcom/taobao/ma/camera/util/CameraConfigurationUtils;->setVideoStabilization(Landroid/hardware/Camera$Parameters;)V

    .line 121
    invoke-static {v7}, Lcom/taobao/ma/camera/util/CameraConfigurationUtils;->setFocusArea(Landroid/hardware/Camera$Parameters;)V

    .line 122
    invoke-static {v7}, Lcom/taobao/ma/camera/util/CameraConfigurationUtils;->setMetering(Landroid/hardware/Camera$Parameters;)V

    .line 129
    :cond_5
    :try_start_0
    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v9, :cond_6

    .line 130
    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v10, "M9"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    sget-object v9, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v10, "Meizu"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 131
    iget v9, p0, Lcom/taobao/ma/camera/CameraConfigurationManager;->cameraDisplayOrientation:I

    add-int/lit8 v9, v9, 0x5a

    iput v9, p0, Lcom/taobao/ma/camera/CameraConfigurationManager;->cameraDisplayOrientation:I

    .line 148
    :cond_6
    :goto_1
    iget v9, p0, Lcom/taobao/ma/camera/CameraConfigurationManager;->cameraDisplayOrientation:I

    invoke-virtual {p1, v9}, Landroid/hardware/Camera;->setDisplayOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    .line 157
    :goto_2
    invoke-direct {p0, v7}, Lcom/taobao/ma/camera/CameraConfigurationManager;->getBestSupportImageFormat(Landroid/hardware/Camera$Parameters;)I

    move-result v6

    .line 158
    .local v6, "mPictureFmt":I
    invoke-direct {p0, v7}, Lcom/taobao/ma/camera/CameraConfigurationManager;->getBestSupportPreviewImageFormat(Landroid/hardware/Camera$Parameters;)I

    move-result v2

    .line 159
    .local v2, "bestPreviewFmt":I
    if-ltz v2, :cond_7

    .line 160
    invoke-virtual {v7, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 162
    :cond_7
    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v10, "HTC"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_d

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v10, "801e"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_d

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v10, "One"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 163
    const/16 v9, 0x1e

    invoke-virtual {v7, v9}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 168
    :cond_8
    :goto_3
    const-string v9, "CameraConfiguration"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SQY: before set Camera parameters , now ScreenSize is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/taobao/ma/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", previewSize to set  is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/taobao/ma/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {v7, v6}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    .line 172
    iget-object v9, p0, Lcom/taobao/ma/camera/CameraConfigurationManager;->pictureResolution:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    iget-object v10, p0, Lcom/taobao/ma/camera/CameraConfigurationManager;->pictureResolution:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {v7, v9, v10}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 174
    iget-object v9, p0, Lcom/taobao/ma/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    iget-object v10, p0, Lcom/taobao/ma/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {v7, v9, v10}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 176
    const-string v9, "CameraConfiguration"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Final camera parameters: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {p1, v7}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 180
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 181
    .local v0, "afterParameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 182
    .local v1, "afterSize":Landroid/hardware/Camera$Size;
    if-eqz v1, :cond_0

    iget-object v9, p0, Lcom/taobao/ma/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    iget v10, v1, Landroid/hardware/Camera$Size;->width:I

    if-ne v9, v10, :cond_9

    iget-object v9, p0, Lcom/taobao/ma/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    iget v10, v1, Landroid/hardware/Camera$Size;->height:I

    if-eq v9, v10, :cond_0

    .line 183
    :cond_9
    const-string v9, "CameraConfiguration"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Camera said it supported preview size "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/taobao/ma/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x78

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/taobao/ma/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", but after setting it, preview size is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x78

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v9, p0, Lcom/taobao/ma/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    iget v10, v1, Landroid/hardware/Camera$Size;->width:I

    iput v10, v9, Landroid/graphics/Point;->x:I

    .line 186
    iget-object v9, p0, Lcom/taobao/ma/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    iget v10, v1, Landroid/hardware/Camera$Size;->height:I

    iput v10, v9, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    .line 133
    .end local v0    # "afterParameters":Landroid/hardware/Camera$Parameters;
    .end local v1    # "afterSize":Landroid/hardware/Camera$Size;
    .end local v2    # "bestPreviewFmt":I
    .end local v6    # "mPictureFmt":I
    :cond_a
    :try_start_1
    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string v10, " "

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "devName":Ljava/lang/String;
    const-string v9, "nexus5x"

    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 135
    iget v9, p0, Lcom/taobao/ma/camera/CameraConfigurationManager;->cameraDisplayOrientation:I

    add-int/lit16 v9, v9, 0xb4

    iput v9, p0, Lcom/taobao/ma/camera/CameraConfigurationManager;->cameraDisplayOrientation:I

    .line 138
    :cond_b
    iget-object v9, p0, Lcom/taobao/ma/camera/CameraConfigurationManager;->compatibleRotation:Ljava/util/Map;

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/taobao/ma/camera/CameraConfigurationManager;->compatibleRotation:Ljava/util/Map;

    invoke-interface {v9, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 139
    iget-object v9, p0, Lcom/taobao/ma/camera/CameraConfigurationManager;->compatibleRotation:Ljava/util/Map;

    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 140
    .local v5, "it":Ljava/lang/Integer;
    if-eqz v5, :cond_c

    .line 141
    iget v9, p0, Lcom/taobao/ma/camera/CameraConfigurationManager;->cameraDisplayOrientation:I

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Lcom/taobao/ma/camera/CameraConfigurationManager;->cameraDisplayOrientation:I

    .line 144
    .end local v5    # "it":Ljava/lang/Integer;
    :cond_c
    iget v9, p0, Lcom/taobao/ma/camera/CameraConfigurationManager;->cameraDisplayOrientation:I

    rem-int/lit16 v9, v9, 0x168

    iput v9, p0, Lcom/taobao/ma/camera/CameraConfigurationManager;->cameraDisplayOrientation:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 149
    .end local v3    # "devName":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 150
    .local v4, "e":Ljava/lang/Exception;
    const/16 v9, 0x5a

    invoke-virtual {v7, v9}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 151
    const-string v9, "CameraConfiguration"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "method error"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 152
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 153
    .local v4, "e":Ljava/lang/NoSuchMethodError;
    const/16 v9, 0x5a

    invoke-virtual {v7, v9}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 154
    const-string v9, "CameraConfiguration"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "method error"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/NoSuchMethodError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 164
    .end local v4    # "e":Ljava/lang/NoSuchMethodError;
    .restart local v2    # "bestPreviewFmt":I
    .restart local v6    # "mPictureFmt":I
    :cond_d
    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v10, "GT-I9300"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 165
    const/16 v9, 0x14

    invoke-virtual {v7, v9}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    goto/16 :goto_3
.end method

.method setTorch(Landroid/hardware/Camera;Z)V
    .locals 2
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "newSetting"    # Z

    .prologue
    .line 234
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 235
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/taobao/ma/camera/CameraConfigurationManager;->doSetTorch(Landroid/hardware/Camera$Parameters;ZZ)V

    .line 236
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 237
    return-void
.end method
