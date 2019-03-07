.class public Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;
.super Ljava/lang/Object;
.source "MiuiScreenRecorderController.java"


# static fields
.field public static final BATTERY_ALERT_DIALOG:I = 0x1

.field public static final BATTERY_NOT_ALLOWED:I = 0x5

.field private static final EXTRA_MEDIA_PROJECTION:Ljava/lang/String; = "android.media.projection.extra.EXTRA_MEDIA_PROJECTION"

.field public static final LOW_BATTERY_ALERT:I = 0x3

.field public static final LOW_MEMORY_ALERT:I = 0x4

.field public static final MEMORY_ALERT_DIALOG:I = 0x2

.field public static final MEMORY_NOT_ALLOWED:I = 0x6

.field public static final RECORDING_FAILURE:I = 0x7

.field public static final RECORDING_MAX_SIZE:I = 0x8

.field private static final TAG:Ljava/lang/String; = "ScreenRecorderController"

.field private static final TYPE_SCREEN_CAPTURE:I


# instance fields
.field private mAlertDialog:Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;

.field private mAppContext:Landroid/content/Context;

.field private mConfig:Lcom/miui/screenrecorder/config/ScreenRecorderConfig;

.field private mHintWindow:Lcom/miui/screenrecorder/view/ScreenRecorderHintWindow;

.field private mPath:Ljava/lang/String;

.field private mPreSystemTouches:Z

.field private mScreenRecorder:Lcom/miui/screenrecorder/ScreenRecorder;

.field private mServiceHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/screenrecorder/ScreenRecorder;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "screenRecorder"    # Lcom/miui/screenrecorder/ScreenRecorder;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mPreSystemTouches:Z

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAppContext:Landroid/content/Context;

    .line 74
    invoke-static {}, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->getConfig()Lcom/miui/screenrecorder/config/ScreenRecorderConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mConfig:Lcom/miui/screenrecorder/config/ScreenRecorderConfig;

    .line 75
    iput-object p2, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mScreenRecorder:Lcom/miui/screenrecorder/ScreenRecorder;

    .line 76
    iput-object p3, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mServiceHandler:Landroid/os/Handler;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->dialogDismiss()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->warningQuit(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->showHintAndStart(Z)V

    return-void
.end method

.method private checkPreConditions(I)Z
    .locals 9
    .param p1, "curBattery"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 190
    const/4 v6, 0x3

    invoke-static {p1, v6}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->checkBatteryEnough(II)Z

    move-result v6

    if-nez v6, :cond_0

    .line 191
    const-string v5, "ScreenRecorderController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "do not allow to start recording, reason = BATTERY_NOT_ALLOWED, current battery = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/screenrecorder/tools/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->showWarning(I)V

    .line 223
    :goto_0
    return v4

    .line 198
    :cond_0
    const-wide/32 v0, 0x1f400000

    .line 199
    .local v0, "minAllowMemory":J
    invoke-static {v0, v1}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->checkMemoryEnough(J)Z

    move-result v6

    if-nez v6, :cond_1

    .line 200
    const-string v5, "ScreenRecorderController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "do not allow to start recording, reason = MEMORY_NOT_ALLOWED, min allow memory = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/screenrecorder/tools/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const/4 v5, 0x6

    invoke-virtual {p0, v5}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->showWarning(I)V

    goto :goto_0

    .line 207
    :cond_1
    const/16 v6, 0x14

    invoke-static {p1, v6}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->checkBatteryEnough(II)Z

    move-result v6

    if-nez v6, :cond_2

    .line 208
    const-string v6, "ScreenRecorderController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "do not allow to start recording, reason = MIN_BATTERY_REQUIRED, current battery = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/screenrecorder/tools/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0, v5}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->showWarning(I)V

    goto :goto_0

    .line 214
    :cond_2
    const-wide/32 v2, 0x3e800000

    .line 216
    .local v2, "minRecorderMemory":J
    invoke-static {v2, v3}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->checkMemoryEnough(J)Z

    move-result v6

    if-nez v6, :cond_3

    .line 217
    const-string v5, "ScreenRecorderController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "do not allow to start recording, reason = MEMORY_ALERT_DIALOG, min memory = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/screenrecorder/tools/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->showWarning(I)V

    goto :goto_0

    :cond_3
    move v4, v5

    .line 223
    goto :goto_0
.end method

.method private dialogDismiss()V
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAlertDialog:Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAlertDialog:Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;

    invoke-virtual {v0}, Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;->dismiss()V

    .line 349
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAlertDialog:Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;

    .line 351
    :cond_0
    return-void
.end method

.method private setResolution(I)V
    .locals 10
    .param p1, "orientation"    # I

    .prologue
    const/4 v9, 0x2

    .line 255
    if-nez p1, :cond_0

    .line 256
    iget-object v6, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAppContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 257
    .local v0, "configuration":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 258
    .local v1, "deviceOri":I
    const-string v6, "ScreenRecorderController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deviceOri "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/screenrecorder/tools/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    if-ne v1, v9, :cond_2

    .line 260
    const/4 p1, 0x2

    .line 266
    .end local v0    # "configuration":Landroid/content/res/Configuration;
    .end local v1    # "deviceOri":I
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mConfig:Lcom/miui/screenrecorder/config/ScreenRecorderConfig;

    invoke-virtual {v6}, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->getResolution()Ljava/lang/String;

    move-result-object v4

    .line 267
    .local v4, "resolution":Ljava/lang/String;
    const-string v6, "*"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 268
    .local v3, "pos":I
    if-lez v3, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 269
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 270
    .local v2, "height":I
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 271
    .local v5, "width":I
    const-string v6, "ScreenRecorderController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setResolution, orientation = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", width = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", height = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/screenrecorder/tools/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    if-ne p1, v9, :cond_3

    .line 275
    iget-object v6, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mScreenRecorder:Lcom/miui/screenrecorder/ScreenRecorder;

    invoke-interface {v6, v2, v5}, Lcom/miui/screenrecorder/ScreenRecorder;->setResolution(II)V

    .line 280
    .end local v2    # "height":I
    .end local v5    # "width":I
    :cond_1
    :goto_1
    return-void

    .line 261
    .end local v3    # "pos":I
    .end local v4    # "resolution":Ljava/lang/String;
    .restart local v0    # "configuration":Landroid/content/res/Configuration;
    .restart local v1    # "deviceOri":I
    :cond_2
    const/4 v6, 0x1

    if-ne v1, v6, :cond_0

    .line 262
    const/4 p1, 0x1

    goto :goto_0

    .line 277
    .end local v0    # "configuration":Landroid/content/res/Configuration;
    .end local v1    # "deviceOri":I
    .restart local v2    # "height":I
    .restart local v3    # "pos":I
    .restart local v4    # "resolution":Ljava/lang/String;
    .restart local v5    # "width":I
    :cond_3
    iget-object v6, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mScreenRecorder:Lcom/miui/screenrecorder/ScreenRecorder;

    invoke-interface {v6, v5, v2}, Lcom/miui/screenrecorder/ScreenRecorder;->setResolution(II)V

    goto :goto_1
.end method

.method private setScreenRecorderParams()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    .line 227
    invoke-static {}, Lcom/miui/screenrecorder/tools/MediaFileUtils;->getSavePath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mPath:Ljava/lang/String;

    .line 228
    iget-object v6, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mPath:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 229
    iget-object v6, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAppContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAppContext:Landroid/content/Context;

    const v8, 0x7f08000f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 230
    const/4 v5, 0x0

    .line 251
    :goto_0
    return v5

    .line 233
    :cond_0
    iget-object v6, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mConfig:Lcom/miui/screenrecorder/config/ScreenRecorderConfig;

    invoke-virtual {v6}, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->getOrientation()I

    move-result v3

    .line 234
    .local v3, "orientation":I
    iget-object v6, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mConfig:Lcom/miui/screenrecorder/config/ScreenRecorderConfig;

    invoke-virtual {v6}, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->getBitRate()I

    move-result v0

    .line 235
    .local v0, "bitrate":I
    iget-object v6, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mConfig:Lcom/miui/screenrecorder/config/ScreenRecorderConfig;

    invoke-virtual {v6}, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->getSound()I

    move-result v4

    .line 236
    .local v4, "sound":I
    iget-object v6, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mConfig:Lcom/miui/screenrecorder/config/ScreenRecorderConfig;

    invoke-virtual {v6}, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->getFrames()I

    move-result v1

    .line 237
    .local v1, "frame":I
    iget-object v6, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mConfig:Lcom/miui/screenrecorder/config/ScreenRecorderConfig;

    invoke-virtual {v6}, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->getIsFixedFrame()Z

    move-result v2

    .line 239
    .local v2, "isFixedFrame":Z
    invoke-direct {p0, v3}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->setResolution(I)V

    .line 240
    iget-object v6, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mScreenRecorder:Lcom/miui/screenrecorder/ScreenRecorder;

    iget-object v7, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mPath:Ljava/lang/String;

    invoke-interface {v6, v7}, Lcom/miui/screenrecorder/ScreenRecorder;->setFilePath(Ljava/lang/String;)V

    .line 241
    iget-object v6, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mScreenRecorder:Lcom/miui/screenrecorder/ScreenRecorder;

    invoke-interface {v6, v0}, Lcom/miui/screenrecorder/ScreenRecorder;->setBitRate(I)V

    .line 242
    const-string v6, "2"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ne v4, v6, :cond_1

    sget-object v6, Lcom/miui/screenrecorder/config/PhoneConfigInstance;->INSTANCE:Lcom/miui/screenrecorder/config/PhoneConfigInstance;

    .line 243
    invoke-virtual {v6}, Lcom/miui/screenrecorder/config/PhoneConfigInstance;->getInstance()Lcom/miui/screenrecorder/config/PhoneConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/screenrecorder/config/PhoneConfig;->getInnerStreamType()I

    move-result v6

    if-ne v6, v5, :cond_1

    .line 244
    const/4 v4, 0x3

    .line 246
    :cond_1
    iget-object v6, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mScreenRecorder:Lcom/miui/screenrecorder/ScreenRecorder;

    invoke-interface {v6, v4}, Lcom/miui/screenrecorder/ScreenRecorder;->setAudioSource(I)V

    .line 247
    iget-object v6, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mScreenRecorder:Lcom/miui/screenrecorder/ScreenRecorder;

    invoke-interface {v6, v1}, Lcom/miui/screenrecorder/ScreenRecorder;->setFrameRate(I)V

    .line 248
    iget-object v6, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mScreenRecorder:Lcom/miui/screenrecorder/ScreenRecorder;

    invoke-interface {v6, v2}, Lcom/miui/screenrecorder/ScreenRecorder;->setFixedFrame(Z)V

    .line 249
    const-string v6, "ScreenRecorderController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "preStart, orientation "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", bitrate = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", sound "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", frame = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", path = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/screenrecorder/tools/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private showHintAndStart(Z)V
    .locals 2
    .param p1, "isRefresh"    # Z

    .prologue
    .line 98
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->getShowTouchesOptions(Landroid/content/ContentResolver;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mPreSystemTouches:Z

    .line 99
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mConfig:Lcom/miui/screenrecorder/config/ScreenRecorderConfig;

    invoke-virtual {v0}, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->getIsShowTouch()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->showTouch(Z)V

    .line 101
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mConfig:Lcom/miui/screenrecorder/config/ScreenRecorderConfig;

    invoke-virtual {v0}, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->getIsShowHardKey()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->showHardKeyTouch(Z)V

    .line 103
    const-string v0, "Screenrecorder_Action_Create"

    const-string v1, "recorder_start"

    invoke-static {v0, v1}, Lcom/miui/screenrecorder/tools/MiStatInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;->getInstance()Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;->setRecording(Z)V

    .line 105
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->getInstance(Landroid/content/Context;)Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->notifyViewChanged(IZ)V

    .line 107
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mServiceHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 113
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-direct {p0}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->startRecord()V

    goto :goto_0
.end method

.method private startRecord()V
    .locals 28

    .prologue
    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAppContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string v25, "media_projection"

    .line 117
    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/media/projection/MediaProjectionManager;

    .line 118
    .local v19, "projectionManager":Landroid/media/projection/MediaProjectionManager;
    const/4 v13, 0x0

    .line 119
    .local v13, "isStartSuccess":Z
    if-nez v19, :cond_1

    .line 120
    const-string v24, "ScreenRecorderController"

    const-string v25, "start record fail, reason : projectionManager is null"

    invoke-static/range {v24 .. v25}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :goto_0
    if-nez v13, :cond_0

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mServiceHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 162
    :cond_0
    return-void

    .line 122
    :cond_1
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 124
    .local v11, "intent":Landroid/content/Intent;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAppContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    const-string v25, "com.miui.screenrecorder"

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 125
    .local v4, "aInfo":Landroid/content/pm/ApplicationInfo;
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v23, v0

    .line 127
    .local v23, "uid":I
    const-string v24, "android.os.ServiceManager"

    invoke-static/range {v24 .. v24}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v22

    .line 128
    .local v22, "smClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v24, "getService"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-class v27, Ljava/lang/String;

    aput-object v27, v25, v26

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 129
    .local v10, "getService":Ljava/lang/reflect/Method;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v24

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-string v27, "media_projection"

    aput-object v27, v25, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    .line 131
    .local v7, "binder":Landroid/os/IBinder;
    const-string v24, "android.media.projection.IMediaProjectionManager$Stub"

    invoke-static/range {v24 .. v24}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v16

    .line 132
    .local v16, "mpmsClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v24, "asInterface"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-class v27, Landroid/os/IBinder;

    aput-object v27, v25, v26

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 134
    .local v6, "asInterface":Ljava/lang/reflect/Method;
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v7, v24, v25

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 135
    .local v21, "service":Ljava/lang/Object;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 136
    .local v3, "IMediaProjectionManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v24, "createProjection"

    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    sget-object v27, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v27, v25, v26

    const/16 v26, 0x1

    const-class v27, Ljava/lang/String;

    aput-object v27, v25, v26

    const/16 v26, 0x2

    sget-object v27, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v27, v25, v26

    const/16 v26, 0x3

    sget-object v27, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v27, v25, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 138
    .local v8, "createProjection":Ljava/lang/reflect/Method;
    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    const-string v26, "com.miui.screenrecorder"

    aput-object v26, v24, v25

    const/16 v25, 0x2

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x3

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 140
    .local v17, "projection":Ljava/lang/Object;
    const-string v24, "android.media.projection.IMediaProjection$Stub$Proxy"

    invoke-static/range {v24 .. v24}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v15

    .line 141
    .local v15, "mpmClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v24, "asBinder"

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 142
    .local v5, "asBinder":Ljava/lang/reflect/Method;
    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/IBinder;

    .line 144
    .local v18, "projectionBinder":Landroid/os/IBinder;
    const-string v24, "android.content.Intent"

    invoke-static/range {v24 .. v24}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    .line 145
    .local v12, "intentClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v24, "putExtra"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-class v27, Ljava/lang/String;

    aput-object v27, v25, v26

    const/16 v26, 0x1

    const-class v27, Landroid/os/IBinder;

    aput-object v27, v25, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v20

    .line 146
    .local v20, "putExtra":Ljava/lang/reflect/Method;
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string v26, "android.media.projection.extra.EXTRA_MEDIA_PROJECTION"

    aput-object v26, v24, v25

    const/16 v25, 0x1

    aput-object v18, v24, v25

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v11, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v3    # "IMediaProjectionManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "asBinder":Ljava/lang/reflect/Method;
    .end local v6    # "asInterface":Ljava/lang/reflect/Method;
    .end local v7    # "binder":Landroid/os/IBinder;
    .end local v8    # "createProjection":Ljava/lang/reflect/Method;
    .end local v10    # "getService":Ljava/lang/reflect/Method;
    .end local v12    # "intentClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v15    # "mpmClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v16    # "mpmsClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v17    # "projection":Ljava/lang/Object;
    .end local v18    # "projectionBinder":Landroid/os/IBinder;
    .end local v20    # "putExtra":Ljava/lang/reflect/Method;
    .end local v21    # "service":Ljava/lang/Object;
    .end local v22    # "smClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v23    # "uid":I
    :goto_1
    const/16 v24, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1, v11}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object v14

    .line 152
    .local v14, "mediaProjection":Landroid/media/projection/MediaProjection;
    if-nez v14, :cond_2

    .line 153
    const-string v24, "ScreenRecorderController"

    const-string v25, "MediaProjection is null."

    invoke-static/range {v24 .. v25}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 147
    .end local v14    # "mediaProjection":Landroid/media/projection/MediaProjection;
    :catch_0
    move-exception v9

    .line 148
    .local v9, "e":Ljava/lang/Exception;
    const-string v24, "ScreenRecorderController"

    const-string v25, "Error in startRecord"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v9}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 155
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v14    # "mediaProjection":Landroid/media/projection/MediaProjection;
    :cond_2
    invoke-static {}, Lcom/miui/screenrecorder/StableScreenRecorder;->getInstance()Lcom/miui/screenrecorder/StableScreenRecorder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Lcom/miui/screenrecorder/StableScreenRecorder;->start(Landroid/media/projection/MediaProjection;)V

    .line 156
    const/4 v13, 0x1

    goto/16 :goto_0
.end method

.method private warningQuit(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 333
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 334
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.GARBAGE_CLEANUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 335
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 337
    iget-object v1, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 340
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getIsShowHardKey()Z
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mConfig:Lcom/miui/screenrecorder/config/ScreenRecorderConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mConfig:Lcom/miui/screenrecorder/config/ScreenRecorderConfig;

    invoke-virtual {v0}, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->getIsShowHardKey()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideKeyCodeWindow()V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mHintWindow:Lcom/miui/screenrecorder/view/ScreenRecorderHintWindow;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mHintWindow:Lcom/miui/screenrecorder/view/ScreenRecorderHintWindow;

    invoke-virtual {v0}, Lcom/miui/screenrecorder/view/ScreenRecorderHintWindow;->hideView()V

    .line 330
    :cond_0
    return-void
.end method

.method public isStopWhileScreenLock()Z
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mConfig:Lcom/miui/screenrecorder/config/ScreenRecorderConfig;

    invoke-virtual {v0}, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->getIsStopWhileLock()Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mScreenRecorder:Lcom/miui/screenrecorder/ScreenRecorder;

    invoke-interface {v0}, Lcom/miui/screenrecorder/ScreenRecorder;->onDestroy()V

    .line 179
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mHintWindow:Lcom/miui/screenrecorder/view/ScreenRecorderHintWindow;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mHintWindow:Lcom/miui/screenrecorder/view/ScreenRecorderHintWindow;

    invoke-virtual {v0}, Lcom/miui/screenrecorder/view/ScreenRecorderHintWindow;->hideView()V

    .line 182
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->showHardKeyTouch(Z)V

    .line 183
    return-void
.end method

.method public preStart(I)V
    .locals 4
    .param p1, "curBattery"    # I

    .prologue
    const/4 v3, 0x0

    .line 80
    invoke-direct {p0}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->setScreenRecorderParams()Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->checkPreConditions(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->isBluetoothHeadsetConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    invoke-static {}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->isUseInnerSound()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    invoke-static {}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->isSupportA2dpInner()Z

    move-result v0

    if-nez v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAppContext:Landroid/content/Context;

    const v2, 0x7f08005d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 91
    const-string v0, "ScreenRecorderController"

    const-string v1, "this device cannot innerrecord when bluetooth a2dp connected"

    invoke-static {v0, v1}, Lcom/miui/screenrecorder/tools/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_2
    invoke-direct {p0, v3}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->showHintAndStart(Z)V

    goto :goto_0
.end method

.method public showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "positiveBtnText"    # Ljava/lang/String;
    .param p4, "negativeBtnText"    # Ljava/lang/String;
    .param p5, "neutralBtnText"    # Ljava/lang/String;
    .param p6, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 356
    iget-object v1, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAlertDialog:Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;

    if-nez v1, :cond_1

    .line 357
    const/4 v0, 0x5

    .line 358
    .local v0, "dialogTheme":I
    invoke-static {}, Lcom/miui/screenrecorder/ScreenRecorderApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/screenrecorder/tools/DisplayUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    const/4 v0, 0x4

    .line 361
    :cond_0
    new-instance v1, Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;

    iget-object v2, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAlertDialog:Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;

    .line 362
    iget-object v1, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAlertDialog:Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;

    invoke-virtual {v1}, Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 363
    iget-object v1, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAlertDialog:Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 364
    iget-object v1, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAlertDialog:Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;->setCancelable(Z)V

    .line 366
    .end local v0    # "dialogTheme":I
    :cond_1
    iget-object v1, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAlertDialog:Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;

    invoke-virtual {v1, p1}, Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 367
    iget-object v1, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAlertDialog:Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;

    invoke-virtual {v1, p2}, Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v1, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAlertDialog:Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, p3, p6}, Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 369
    iget-object v1, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAlertDialog:Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;

    const/4 v2, -0x2

    invoke-virtual {v1, v2, p4, p6}, Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 370
    iget-object v1, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAlertDialog:Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;

    const/4 v2, -0x3

    invoke-virtual {v1, v2, p5, p6}, Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 371
    iget-object v1, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAlertDialog:Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;

    invoke-virtual {v1}, Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;->show()V

    .line 372
    return-void
.end method

.method public showHardKeyTouch(Z)V
    .locals 1
    .param p1, "isShow"    # Z

    .prologue
    .line 291
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAppContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->recorderKeyEvent(Landroid/content/Context;Z)V

    .line 292
    return-void
.end method

.method public showKeyEventUI(I)V
    .locals 3
    .param p1, "keycode"    # I

    .prologue
    .line 295
    iget-object v1, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mHintWindow:Lcom/miui/screenrecorder/view/ScreenRecorderHintWindow;

    if-nez v1, :cond_0

    .line 296
    iget-object v1, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/screenrecorder/view/ScreenRecorderHintWindow;->getInstance(Landroid/content/Context;)Lcom/miui/screenrecorder/view/ScreenRecorderHintWindow;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mHintWindow:Lcom/miui/screenrecorder/view/ScreenRecorderHintWindow;

    .line 298
    :cond_0
    const-string v0, ""

    .line 299
    .local v0, "hintText":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 321
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 322
    iget-object v1, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mHintWindow:Lcom/miui/screenrecorder/view/ScreenRecorderHintWindow;

    invoke-virtual {v1, v0}, Lcom/miui/screenrecorder/view/ScreenRecorderHintWindow;->showView(Ljava/lang/String;)V

    .line 324
    :cond_1
    return-void

    .line 301
    :sswitch_0
    iget-object v1, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAppContext:Landroid/content/Context;

    const v2, 0x7f080021

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 302
    goto :goto_0

    .line 304
    :sswitch_1
    iget-object v1, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAppContext:Landroid/content/Context;

    const v2, 0x7f080020

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 305
    goto :goto_0

    .line 308
    :sswitch_2
    iget-object v1, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAppContext:Landroid/content/Context;

    const v2, 0x7f080022

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 309
    goto :goto_0

    .line 311
    :sswitch_3
    iget-object v1, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAppContext:Landroid/content/Context;

    const v2, 0x7f080025

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 312
    goto :goto_0

    .line 314
    :sswitch_4
    iget-object v1, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAppContext:Landroid/content/Context;

    const v2, 0x7f080024

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 315
    goto :goto_0

    .line 317
    :sswitch_5
    iget-object v1, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAppContext:Landroid/content/Context;

    const v2, 0x7f080023

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 318
    goto :goto_0

    .line 299
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x18 -> :sswitch_3
        0x19 -> :sswitch_4
        0x1a -> :sswitch_5
        0x52 -> :sswitch_2
        0xbb -> :sswitch_2
    .end sparse-switch
.end method

.method public showTouch(Z)V
    .locals 1
    .param p1, "isShowTouch"    # Z

    .prologue
    .line 287
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->writeShowTouchesOption(Landroid/content/ContentResolver;Z)V

    .line 288
    return-void
.end method

.method public showWarning(I)V
    .locals 12
    .param p1, "type"    # I

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v7, 0x1

    const v9, 0x7f08000b

    const v8, 0x7f08000a

    .line 375
    if-eq p1, v7, :cond_0

    if-eq p1, v10, :cond_0

    if-eq p1, v11, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 460
    :goto_0
    return-void

    .line 381
    :cond_0
    const/4 v1, 0x0

    .line 382
    .local v1, "title":Ljava/lang/String;
    const/4 v2, 0x0

    .line 383
    .local v2, "message":Ljava/lang/String;
    const/4 v3, 0x0

    .line 384
    .local v3, "positiveBtnText":Ljava/lang/String;
    const/4 v4, 0x0

    .line 385
    .local v4, "negativeBtnText":Ljava/lang/String;
    const/4 v5, 0x0

    .line 386
    .local v5, "neutralBtnText":Ljava/lang/String;
    if-ne p1, v7, :cond_2

    .line 387
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAppContext:Landroid/content/Context;

    const v7, 0x7f08002c

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 388
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAppContext:Landroid/content/Context;

    const v7, 0x7f08002b

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 389
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAppContext:Landroid/content/Context;

    const v7, 0x7f080008

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 390
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 425
    :cond_1
    :goto_1
    new-instance v6, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController$1;

    invoke-direct {v6, p0, p1}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController$1;-><init>(Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;I)V

    .local v6, "listener":Landroid/content/DialogInterface$OnClickListener;
    move-object v0, p0

    .line 459
    invoke-virtual/range {v0 .. v6}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 391
    .end local v6    # "listener":Landroid/content/DialogInterface$OnClickListener;
    :cond_2
    if-ne p1, v10, :cond_4

    .line 392
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAppContext:Landroid/content/Context;

    const v7, 0x7f08002f

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 393
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAppContext:Landroid/content/Context;

    const v7, 0x7f08002e

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 394
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->isGarbageCleanupAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 395
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAppContext:Landroid/content/Context;

    const v7, 0x7f080009

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 396
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 398
    :cond_3
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAppContext:Landroid/content/Context;

    const v7, 0x7f080008

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 399
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 401
    :cond_4
    if-ne p1, v11, :cond_5

    .line 402
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAppContext:Landroid/content/Context;

    const v7, 0x7f080003

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 403
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAppContext:Landroid/content/Context;

    const v7, 0x7f08002d

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 404
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 406
    :cond_5
    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    .line 407
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAppContext:Landroid/content/Context;

    const v7, 0x7f080003

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 408
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAppContext:Landroid/content/Context;

    const v7, 0x7f080030

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 409
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 410
    :cond_6
    const/4 v0, 0x5

    if-ne p1, v0, :cond_7

    .line 411
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAppContext:Landroid/content/Context;

    const v7, 0x7f08002c

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 412
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAppContext:Landroid/content/Context;

    const v7, 0x7f080004

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 413
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 414
    :cond_7
    const/4 v0, 0x6

    if-ne p1, v0, :cond_8

    .line 415
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAppContext:Landroid/content/Context;

    const v7, 0x7f08002f

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 416
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAppContext:Landroid/content/Context;

    const v7, 0x7f080031

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 417
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 418
    :cond_8
    const/4 v0, 0x7

    if-ne p1, v0, :cond_9

    .line 419
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAppContext:Landroid/content/Context;

    const v7, 0x7f08003b

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 420
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 421
    :cond_9
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAppContext:Landroid/content/Context;

    const v7, 0x7f08003c

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 423
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1
.end method

.method public stopRecorder()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mScreenRecorder:Lcom/miui/screenrecorder/ScreenRecorder;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mScreenRecorder:Lcom/miui/screenrecorder/ScreenRecorder;

    invoke-interface {v0}, Lcom/miui/screenrecorder/ScreenRecorder;->stop()V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mPreSystemTouches:Z

    invoke-static {v0, v1}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->writeShowTouchesOption(Landroid/content/ContentResolver;Z)V

    .line 171
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mHintWindow:Lcom/miui/screenrecorder/view/ScreenRecorderHintWindow;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->mHintWindow:Lcom/miui/screenrecorder/view/ScreenRecorderHintWindow;

    invoke-virtual {v0}, Lcom/miui/screenrecorder/view/ScreenRecorderHintWindow;->hideView()V

    .line 174
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->showHardKeyTouch(Z)V

    .line 175
    return-void
.end method
