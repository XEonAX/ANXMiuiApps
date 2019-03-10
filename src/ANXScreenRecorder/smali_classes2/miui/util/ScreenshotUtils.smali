.class public Lmiui/util/ScreenshotUtils;
.super Ljava/lang/Object;
.source "ScreenshotUtils.java"


# static fields
.field private static final ACTIVITY_SCREENSHOT_FOLDER:Ljava/io/File;

.field private static final ACTIVITY_SCREENSHOT_FOLDER_PATH:Ljava/lang/String; = "/data/system/app_screenshot"

.field public static final BLUR_SCALE_RATIO:F = 0.33333334f

.field public static final DEFAULT_SCREENSHOT_COLOR:I = -0x55000001

.field public static final DEFAULT_SCREEN_BLUR_RADIUS:I

.field public static final REAL_BLUR_BLACK:F

.field public static final REAL_BLUR_MINIFY:I

.field public static final REAL_BLUR_RADIUS:I

.field private static final TAG:Ljava/lang/String; = "ScreenshotUtils"

.field private static sCacheBitmap:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static sCacheBitmapWithNavigationBarHide:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static sCacheBitmapWithNavigationBarShow:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static sDisplay:Landroid/view/Display;

.field private static sHandler:Landroid/os/Handler;

.field private static sHandlerThread:Landroid/os/HandlerThread;

.field private static sKeyguardManager:Landroid/app/KeyguardManager;

.field private static sPaint:Landroid/graphics/Paint;

.field private static sScreenHeight:I

.field private static sScreenWidth:I

.field private static sSizeBuf:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 40
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    .line 46
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110b0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lmiui/util/ScreenshotUtils;->DEFAULT_SCREEN_BLUR_RADIUS:I

    .line 49
    const-string v0, "persist.sys.real_blur_black"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    sput v0, Lmiui/util/ScreenshotUtils;->REAL_BLUR_BLACK:F

    .line 50
    const-string v0, "persist.sys.real_blur_minify"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmiui/util/ScreenshotUtils;->REAL_BLUR_MINIFY:I

    .line 51
    const-string v0, "persist.sys.real_blur_radius"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmiui/util/ScreenshotUtils;->REAL_BLUR_RADIUS:I

    .line 80
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/app_screenshot"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/util/ScreenshotUtils;->ACTIVITY_SCREENSHOT_FOLDER:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;IZZ)V
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .line 35
    invoke-static {p0, p1, p2, p3}, Lmiui/util/ScreenshotUtils;->screenShotAndSave(Ljava/lang/String;IZZ)V

    return-void
.end method

.method public static captureActivityScreenshot(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shortComponentName"    # Ljava/lang/String;

    .line 105
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lmiui/util/ScreenshotUtils;->captureActivityScreenshot(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 106
    return-void
.end method

.method public static captureActivityScreenshot(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shortComponentName"    # Ljava/lang/String;
    .param p2, "isAsync"    # Ljava/lang/Boolean;

    .line 109
    invoke-static {p0}, Lmiui/util/ScreenshotUtils;->initializeIfNeed(Landroid/content/Context;)V

    .line 111
    sget-object v0, Lmiui/util/ScreenshotUtils;->sKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    .line 113
    :cond_c
    invoke-static {p0}, Lmiui/util/ScreenshotUtils;->disallowTaskManagerScreenshotMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1c

    const-string v0, "persist.sys.screenshot_mode"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_32

    .line 114
    :cond_1c
    invoke-static {p1, v1}, Lmiui/util/ScreenshotUtils;->getActivityScreenshotFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_27

    return-void

    .line 115
    :cond_27
    invoke-static {p1, v2}, Lmiui/util/ScreenshotUtils;->getActivityScreenshotFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_32

    return-void

    .line 118
    :cond_32
    sget-object v0, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 119
    .local v0, "rotation":I
    if-eqz v0, :cond_40

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3e

    goto :goto_40

    :cond_3e
    move v1, v2

    nop

    .line 121
    .local v1, "isPort":Z
    :cond_40
    :goto_40
    sget-object v2, Lmiui/util/ScreenshotUtils;->sHandler:Landroid/os/Handler;

    if-nez v2, :cond_6b

    .line 122
    const-class v2, Lmiui/util/ScreenshotUtils;

    monitor-enter v2

    .line 123
    :try_start_47
    sget-object v3, Lmiui/util/ScreenshotUtils;->sHandler:Landroid/os/Handler;

    if-nez v3, :cond_66

    .line 124
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "ScreenshotUtils"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v3, Lmiui/util/ScreenshotUtils;->sHandlerThread:Landroid/os/HandlerThread;

    .line 125
    sget-object v3, Lmiui/util/ScreenshotUtils;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 126
    new-instance v3, Landroid/os/Handler;

    sget-object v4, Lmiui/util/ScreenshotUtils;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v3, Lmiui/util/ScreenshotUtils;->sHandler:Landroid/os/Handler;

    .line 128
    :cond_66
    monitor-exit v2

    goto :goto_6b

    :catchall_68
    move-exception v3

    monitor-exit v2
    :try_end_6a
    .catchall {:try_start_47 .. :try_end_6a} :catchall_68

    throw v3

    .line 131
    :cond_6b
    :goto_6b
    const/4 v2, 0x0

    .line 132
    .local v2, "hasNavigationBar":Z
    const-string v3, "window"

    .line 133
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 132
    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    .line 135
    .local v3, "mIWindowManager":Landroid/view/IWindowManager;
    :try_start_76
    invoke-interface {v3}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v4
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_76 .. :try_end_7a} :catch_7c

    move v2, v4

    .line 138
    goto :goto_80

    .line 136
    :catch_7c
    move-exception v4

    .line 137
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 139
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_80
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_92

    .line 140
    move v4, v2

    .line 141
    .local v4, "finalHasNavigationBar":Z
    sget-object v5, Lmiui/util/ScreenshotUtils;->sHandler:Landroid/os/Handler;

    new-instance v6, Lmiui/util/ScreenshotUtils$1;

    invoke-direct {v6, p1, v0, v1, v4}, Lmiui/util/ScreenshotUtils$1;-><init>(Ljava/lang/String;IZZ)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 146
    .end local v4    # "finalHasNavigationBar":Z
    goto :goto_95

    .line 147
    :cond_92
    invoke-static {p1, v0, v1, v2}, Lmiui/util/ScreenshotUtils;->screenShotAndSave(Ljava/lang/String;IZZ)V

    .line 149
    :goto_95
    return-void
.end method

.method public static disallowTaskManagerScreenshotMode(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 93
    invoke-static {}, Lmiui/util/MiuiFeatureUtils;->isLiteMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 94
    return v1

    .line 96
    :cond_8
    const-string v0, "enable_miui_lite"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getActivityScreenshotFile(Ljava/lang/String;Z)Ljava/io/File;
    .registers 8
    .param p0, "shortComponentName"    # Ljava/lang/String;
    .param p1, "isPort"    # Z

    .line 228
    new-instance v0, Ljava/io/File;

    sget-object v1, Lmiui/util/ScreenshotUtils;->ACTIVITY_SCREENSHOT_FOLDER:Ljava/io/File;

    const-string v2, "%s--%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 229
    const/16 v4, 0x2f

    const/16 v5, 0x2d

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    if-eqz p1, :cond_19

    const-string v4, "p"

    goto :goto_1b

    :cond_19
    const-string v4, "l"

    :goto_1b
    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 228
    return-object v0
.end method

.method public static getActivityScreenshotSize(Landroid/content/Context;Landroid/graphics/Point;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "size"    # Landroid/graphics/Point;

    .line 84
    invoke-static {p0}, Lmiui/util/ScreenshotUtils;->initializeIfNeed(Landroid/content/Context;)V

    .line 86
    sget-object v0, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    invoke-virtual {v0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 87
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110b0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    .line 88
    .local v0, "scale":F
    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 89
    iget v1, p1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 90
    return-void
.end method

.method public static getBlurBackground(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cache"    # Landroid/graphics/Bitmap;

    .line 318
    const/4 v0, 0x0

    const v1, 0x3eaaaaab

    invoke-static {p0, v1, v0, v0, v0}, Lmiui/util/ScreenshotUtils;->getScreenshot(Landroid/content/Context;FIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 319
    .local v0, "screenshot":Landroid/graphics/Bitmap;
    invoke-static {v0, p1}, Lmiui/util/ScreenshotUtils;->getBlurBackground(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 320
    .local v1, "bluredBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 321
    return-object v1
.end method

.method public static getBlurBackground(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 5
    .param p0, "screenshot"    # Landroid/graphics/Bitmap;
    .param p1, "cache"    # Landroid/graphics/Bitmap;

    .line 333
    if-eqz p0, :cond_11

    .line 334
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110b0012

    .line 335
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 334
    invoke-static {p0, p1, v0}, Lmiui/graphics/BitmapFactory;->fastBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 338
    :cond_11
    if-eqz p1, :cond_25

    .line 339
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 340
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiui/system/R$color;->blur_background_mask:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 342
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    :cond_25
    return-object p1
.end method

.method private static getCacheBitmap(Z)Ljava/lang/ref/SoftReference;
    .registers 6
    .param p0, "hasNavigationBar"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 346
    if-nez p0, :cond_5

    .line 347
    sget-object v0, Lmiui/util/ScreenshotUtils;->sCacheBitmap:Ljava/lang/ref/SoftReference;

    return-object v0

    .line 349
    :cond_5
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 350
    .local v0, "displaySize":Landroid/graphics/Point;
    sget-object v1, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 351
    sget-object v1, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 352
    .local v1, "rotation":I
    if-eqz v1, :cond_1d

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v2, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v2, 0x1

    .line 353
    .local v2, "isPort":Z
    :goto_1e
    if-eqz v2, :cond_23

    iget v3, v0, Landroid/graphics/Point;->y:I

    goto :goto_25

    :cond_23
    iget v3, v0, Landroid/graphics/Point;->x:I

    .line 354
    .local v3, "displayHeight":I
    :goto_25
    sget v4, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    if-ne v3, v4, :cond_2c

    sget-object v4, Lmiui/util/ScreenshotUtils;->sCacheBitmapWithNavigationBarHide:Ljava/lang/ref/SoftReference;

    goto :goto_2e

    :cond_2c
    sget-object v4, Lmiui/util/ScreenshotUtils;->sCacheBitmapWithNavigationBarShow:Ljava/lang/ref/SoftReference;

    :goto_2e
    return-object v4
.end method

.method public static getScreenshot(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 233
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v0, v2}, Lmiui/util/ScreenshotUtils;->getScreenshot(Landroid/content/Context;FIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getScreenshot(Landroid/content/Context;FIIZ)Landroid/graphics/Bitmap;
    .registers 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "scale"    # F
    .param p2, "minLayer"    # I
    .param p3, "maxLayer"    # I
    .param p4, "includeNavigationBar"    # Z

    move/from16 v1, p2

    move/from16 v2, p3

    .line 237
    invoke-static {p0}, Lmiui/util/ScreenshotUtils;->initializeIfNeed(Landroid/content/Context;)V

    .line 238
    sget v0, Lmiui/util/ScreenshotUtils;->sScreenWidth:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v0, v3

    float-to-int v4, v0

    .line 239
    .local v4, "screenshotWidth":I
    sget v0, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    add-float/2addr v0, v3

    float-to-int v5, v0

    .line 242
    .local v5, "screenshotHeight":I
    if-nez v1, :cond_20

    if-nez v2, :cond_20

    .line 243
    invoke-static {v4, v5}, Lmiui/util/CompatibilityHelper;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "screenshot":Landroid/graphics/Bitmap;
    goto :goto_24

    .line 246
    .end local v0    # "screenshot":Landroid/graphics/Bitmap;
    :cond_20
    invoke-static {v4, v5, v1, v2}, Lmiui/util/CompatibilityHelper;->screenshot(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "screenshot":Landroid/graphics/Bitmap;
    :goto_24
    move-object v6, v0

    .line 249
    .end local v0    # "screenshot":Landroid/graphics/Bitmap;
    .local v6, "screenshot":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_100

    .line 250
    sget-object v0, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v7

    .line 251
    .local v7, "degree":I
    const/4 v0, 0x0

    if-eqz v7, :cond_36

    const/4 v8, 0x2

    if-ne v7, v8, :cond_34

    goto :goto_36

    :cond_34
    move v8, v0

    goto :goto_37

    :cond_36
    :goto_36
    const/4 v8, 0x1

    .line 253
    .local v8, "isPortrait":Z
    :goto_37
    if-eqz p4, :cond_41

    .line 254
    sget-object v0, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    sget-object v9, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    invoke-virtual {v0, v9}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_a3

    .line 256
    :cond_41
    const/4 v9, 0x0

    .line 257
    .local v9, "hasNavigationBar":Z
    move v10, v0

    .line 259
    .local v10, "navigationBarHeight":I
    :try_start_43
    const-string v0, "window"

    .line 260
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 259
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 261
    .local v0, "iWindow":Landroid/view/IWindowManager;
    invoke-interface {v0}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v11

    move v9, v11

    .line 262
    if-eqz v9, :cond_61

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "force_fsg_nav_bar"

    invoke-static {v11, v12}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_61

    .line 264
    const/4 v9, 0x0

    .line 266
    :cond_61
    if-eqz v9, :cond_7d

    .line 267
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "navigation_bar_size"

    const-string v13, "dimen"

    const-string v3, "android"

    invoke-virtual {v11, v12, v13, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 268
    .local v3, "resourceId":I
    if-lez v3, :cond_7d

    .line 269
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_7b} :catch_7e

    move v0, v11

    .line 274
    .end local v3    # "resourceId":I
    .end local v10    # "navigationBarHeight":I
    .local v0, "navigationBarHeight":I
    move v10, v0

    .end local v0    # "navigationBarHeight":I
    .restart local v10    # "navigationBarHeight":I
    :cond_7d
    goto :goto_7f

    .line 272
    :catch_7e
    move-exception v0

    .line 275
    :goto_7f
    sget-object v0, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    sget-object v3, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    invoke-virtual {v0, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 276
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_92

    .line 277
    sget-object v0, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    iget v3, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v10

    iput v3, v0, Landroid/graphics/Point;->y:I

    goto :goto_a3

    .line 279
    :cond_92
    if-eqz v8, :cond_9c

    .line 280
    sget-object v0, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    iget v3, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v10

    iput v3, v0, Landroid/graphics/Point;->y:I

    goto :goto_a3

    .line 282
    :cond_9c
    sget-object v0, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    iget v3, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v10

    iput v3, v0, Landroid/graphics/Point;->x:I

    .line 286
    .end local v9    # "hasNavigationBar":Z
    .end local v10    # "navigationBarHeight":I
    :goto_a3
    sget-object v0, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 287
    .local v0, "targetWidth":I
    sget-object v9, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    mul-float v9, v9, p1

    add-float/2addr v9, v3

    float-to-int v3, v9

    .line 289
    .local v3, "targetHeight":I
    if-ne v4, v0, :cond_bd

    if-ne v5, v3, :cond_bd

    if-eqz v7, :cond_100

    .line 290
    :cond_bd
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 291
    .local v9, "matrix":Landroid/graphics/Matrix;
    if-eqz v7, :cond_e9

    .line 292
    neg-int v10, v4

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    neg-int v12, v5

    int-to-float v12, v12

    div-float/2addr v12, v11

    invoke-virtual {v9, v10, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 293
    mul-int/lit8 v10, v7, 0x5a

    rsub-int v10, v10, 0x168

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 294
    nop

    .line 295
    if-eqz v8, :cond_dd

    int-to-float v10, v4

    :goto_db
    div-float/2addr v10, v11

    goto :goto_df

    :cond_dd
    int-to-float v10, v5

    goto :goto_db

    .line 296
    :goto_df
    if-eqz v8, :cond_e4

    int-to-float v12, v5

    :goto_e2
    div-float/2addr v12, v11

    goto :goto_e6

    :cond_e4
    int-to-float v12, v4

    goto :goto_e2

    .line 294
    :goto_e6
    invoke-virtual {v9, v10, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 299
    :cond_e9
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 300
    .local v10, "temp":Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 301
    .local v11, "canvas":Landroid/graphics/Canvas;
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v11, v6, v9, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 302
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 303
    move-object v6, v10

    .line 307
    .end local v0    # "targetWidth":I
    .end local v3    # "targetHeight":I
    .end local v7    # "degree":I
    .end local v8    # "isPortrait":Z
    .end local v9    # "matrix":Landroid/graphics/Matrix;
    .end local v10    # "temp":Landroid/graphics/Bitmap;
    .end local v11    # "canvas":Landroid/graphics/Canvas;
    :cond_100
    return-object v6
.end method

.method private static initializeIfNeed(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 54
    sget-object v0, Lmiui/util/ScreenshotUtils;->ACTIVITY_SCREENSHOT_FOLDER:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 55
    sget-object v0, Lmiui/util/ScreenshotUtils;->ACTIVITY_SCREENSHOT_FOLDER:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 56
    sget-object v0, Lmiui/util/ScreenshotUtils;->ACTIVITY_SCREENSHOT_FOLDER:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1fd

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 61
    :cond_1c
    sget-object v0, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    if-nez v0, :cond_2e

    .line 62
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 63
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sput-object v0, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    .line 66
    :cond_2e
    sget-object v0, Lmiui/util/ScreenshotUtils;->sKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_3c

    .line 67
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    sput-object v0, Lmiui/util/ScreenshotUtils;->sKeyguardManager:Landroid/app/KeyguardManager;

    .line 70
    :cond_3c
    sget-object v0, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    if-eqz v0, :cond_70

    .line 71
    sget-object v0, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 72
    .local v0, "degree":I
    if-eqz v0, :cond_4e

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4c

    goto :goto_4e

    :cond_4c
    const/4 v1, 0x0

    goto :goto_4f

    :cond_4e
    :goto_4e
    const/4 v1, 0x1

    .line 73
    .local v1, "isPortrait":Z
    :goto_4f
    sget-object v2, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    sget-object v3, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    invoke-static {v2, v3}, Lmiui/util/CustomizeUtil;->getRealSize(Landroid/view/Display;Landroid/graphics/Point;)V

    .line 74
    if-eqz v1, :cond_5d

    sget-object v2, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    goto :goto_61

    :cond_5d
    sget-object v2, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    :goto_61
    sput v2, Lmiui/util/ScreenshotUtils;->sScreenWidth:I

    .line 75
    if-eqz v1, :cond_6a

    sget-object v2, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    goto :goto_6e

    :cond_6a
    sget-object v2, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    :goto_6e
    sput v2, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    .line 77
    .end local v0    # "degree":I
    .end local v1    # "isPortrait":Z
    :cond_70
    return-void
.end method

.method private static screenShotAndSave(Ljava/lang/String;IZZ)V
    .registers 25
    .param p0, "shortComponentName"    # Ljava/lang/String;
    .param p1, "rotation"    # I
    .param p2, "isPort"    # Z
    .param p3, "hasNavigationBar"    # Z

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    .line 157
    move/from16 v4, p3

    const/16 v0, 0x7530

    .line 158
    .local v0, "maxLayer":I
    :try_start_a
    sget v5, Lmiui/util/ScreenshotUtils;->sScreenWidth:I

    sget v6, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    const/4 v7, 0x0

    invoke-static {v5, v6, v7, v0}, Lmiui/util/CompatibilityHelper;->screenshot(IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 162
    .local v5, "screenshot":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 163
    .local v6, "displaySize":Landroid/graphics/Point;
    sget-object v8, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    invoke-virtual {v8, v6}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 164
    if-eqz v3, :cond_22

    iget v8, v6, Landroid/graphics/Point;->x:I

    goto :goto_24

    :cond_22
    iget v8, v6, Landroid/graphics/Point;->y:I

    .line 165
    .local v8, "displayWidth":I
    :goto_24
    if-eqz v3, :cond_29

    iget v9, v6, Landroid/graphics/Point;->y:I

    goto :goto_2b

    :cond_29
    iget v9, v6, Landroid/graphics/Point;->x:I

    .line 166
    .local v9, "displayHeight":I
    :goto_2b
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x110b0013

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v10

    .line 168
    .local v10, "scale":F
    const/4 v11, 0x2

    const/4 v12, 0x3

    if-eqz v4, :cond_50

    .line 170
    if-eq v2, v12, :cond_45

    if-ne v2, v11, :cond_3f

    goto :goto_45

    .line 173
    :cond_3f
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13, v7, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v13, "src":Landroid/graphics/Rect;
    :goto_44
    goto :goto_59

    .line 171
    .end local v13    # "src":Landroid/graphics/Rect;
    :cond_45
    :goto_45
    new-instance v13, Landroid/graphics/Rect;

    sget v14, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    sub-int/2addr v14, v9

    sget v15, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    invoke-direct {v13, v7, v14, v8, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_44

    .line 176
    :cond_50
    new-instance v13, Landroid/graphics/Rect;

    sget v14, Lmiui/util/ScreenshotUtils;->sScreenWidth:I

    sget v15, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    invoke-direct {v13, v7, v7, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 180
    .restart local v13    # "src":Landroid/graphics/Rect;
    :goto_59
    invoke-static/range {p3 .. p3}, Lmiui/util/ScreenshotUtils;->getCacheBitmap(Z)Ljava/lang/ref/SoftReference;

    move-result-object v14

    if-nez v14, :cond_61

    const/4 v14, 0x0

    goto :goto_6b

    :cond_61
    invoke-static/range {p3 .. p3}, Lmiui/util/ScreenshotUtils;->getCacheBitmap(Z)Ljava/lang/ref/SoftReference;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Bitmap;

    .line 181
    .local v14, "saveBitmap":Landroid/graphics/Bitmap;
    :goto_6b
    if-nez v14, :cond_96

    .line 183
    if-eqz v4, :cond_71

    move v15, v8

    goto :goto_73

    :cond_71
    sget v15, Lmiui/util/ScreenshotUtils;->sScreenWidth:I

    :goto_73
    int-to-float v15, v15

    mul-float/2addr v15, v10

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v15, v15, v16

    float-to-int v15, v15

    .line 184
    if-eqz v4, :cond_7e

    move v7, v9

    goto :goto_82

    :cond_7e
    sget v17, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    move/from16 v7, v17

    :goto_82
    int-to-float v7, v7

    mul-float/2addr v7, v10

    add-float v7, v7, v16

    float-to-int v7, v7

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 182
    invoke-static {v15, v7, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object v14, v7

    .line 186
    new-instance v7, Ljava/lang/ref/SoftReference;

    invoke-direct {v7, v14}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v7, v4}, Lmiui/util/ScreenshotUtils;->setCacheBitmap(Ljava/lang/ref/SoftReference;Z)V

    .line 189
    :cond_96
    sget-object v7, Lmiui/util/ScreenshotUtils;->sPaint:Landroid/graphics/Paint;

    if-nez v7, :cond_a1

    .line 190
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v12}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v7, Lmiui/util/ScreenshotUtils;->sPaint:Landroid/graphics/Paint;

    .line 192
    :cond_a1
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 195
    .local v7, "canvas":Landroid/graphics/Canvas;
    const/4 v11, 0x1

    if-eq v2, v11, :cond_ac

    const/4 v11, 0x2

    if-ne v2, v11, :cond_bf

    .line 196
    :cond_ac
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v12, v15

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v15

    const/high16 v15, 0x43340000    # 180.0f

    invoke-virtual {v7, v15, v12, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 200
    :cond_bf
    invoke-virtual {v7, v10, v10}, Landroid/graphics/Canvas;->scale(FF)V

    .line 201
    if-eqz v5, :cond_e1

    .line 202
    new-instance v11, Landroid/graphics/Rect;

    .line 203
    if-eqz v4, :cond_ca

    move v12, v8

    goto :goto_cc

    :cond_ca
    sget v12, Lmiui/util/ScreenshotUtils;->sScreenWidth:I

    :goto_cc
    if-eqz v4, :cond_d0

    move v15, v9

    goto :goto_d2

    :cond_d0
    sget v15, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    :goto_d2
    move/from16 v18, v0

    const/4 v0, 0x0

    invoke-direct {v11, v0, v0, v12, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .end local v0    # "maxLayer":I
    .local v18, "maxLayer":I
    sget-object v0, Lmiui/util/ScreenshotUtils;->sPaint:Landroid/graphics/Paint;

    .line 202
    invoke-virtual {v7, v5, v13, v11, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 204
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_eb

    .line 206
    .end local v18    # "maxLayer":I
    .restart local v0    # "maxLayer":I
    :cond_e1
    move/from16 v18, v0

    .end local v0    # "maxLayer":I
    .restart local v18    # "maxLayer":I
    const v0, -0x55000001

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v0, v11}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 210
    :goto_eb
    new-instance v0, Ljava/io/FileOutputStream;

    .line 211
    invoke-static {v1, v3}, Lmiui/util/ScreenshotUtils;->getActivityScreenshotFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 212
    .local v0, "outStream":Ljava/io/FileOutputStream;
    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v12, 0x5a

    invoke-virtual {v14, v11, v12, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 213
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 216
    xor-int/lit8 v11, v3, 0x1

    invoke-static {v1, v11}, Lmiui/util/ScreenshotUtils;->getActivityScreenshotFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v11

    .line 217
    .local v11, "anotherFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_12c

    .line 218
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v12

    .line 219
    .local v12, "delete":Z
    if-eqz v12, :cond_12c

    .line 220
    const-string v15, "ScreenshotUtils"

    move-object/from16 v19, v0

    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "outStream":Ljava/io/FileOutputStream;
    .local v19, "outStream":Ljava/io/FileOutputStream;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "delete failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_12c} :catch_12d

    .line 224
    .end local v5    # "screenshot":Landroid/graphics/Bitmap;
    .end local v6    # "displaySize":Landroid/graphics/Point;
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "displayWidth":I
    .end local v9    # "displayHeight":I
    .end local v10    # "scale":F
    .end local v11    # "anotherFile":Ljava/io/File;
    .end local v12    # "delete":Z
    .end local v13    # "src":Landroid/graphics/Rect;
    .end local v14    # "saveBitmap":Landroid/graphics/Bitmap;
    .end local v18    # "maxLayer":I
    .end local v19    # "outStream":Ljava/io/FileOutputStream;
    :cond_12c
    goto :goto_135

    .line 222
    :catch_12d
    move-exception v0

    .line 223
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "ScreenshotUtils"

    const-string v5, "screenShotAndSave"

    invoke-static {v1, v5, v0}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 225
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_135
    return-void
.end method

.method private static setCacheBitmap(Ljava/lang/ref/SoftReference;Z)V
    .registers 7
    .param p1, "hasNavigationBar"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;Z)V"
        }
    .end annotation

    .line 358
    .local p0, "cacheBitmap":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-nez p1, :cond_5

    .line 359
    sput-object p0, Lmiui/util/ScreenshotUtils;->sCacheBitmap:Ljava/lang/ref/SoftReference;

    .line 360
    return-void

    .line 362
    :cond_5
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 363
    .local v0, "displaySize":Landroid/graphics/Point;
    sget-object v1, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 364
    sget-object v1, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 365
    .local v1, "rotation":I
    if-eqz v1, :cond_1d

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v2, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v2, 0x1

    .line 366
    .local v2, "isPort":Z
    :goto_1e
    if-eqz v2, :cond_23

    iget v3, v0, Landroid/graphics/Point;->y:I

    goto :goto_25

    :cond_23
    iget v3, v0, Landroid/graphics/Point;->x:I

    .line 367
    .local v3, "displayHeight":I
    :goto_25
    sget v4, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    if-ne v3, v4, :cond_2c

    .line 368
    sput-object p0, Lmiui/util/ScreenshotUtils;->sCacheBitmapWithNavigationBarHide:Ljava/lang/ref/SoftReference;

    goto :goto_2e

    .line 370
    :cond_2c
    sput-object p0, Lmiui/util/ScreenshotUtils;->sCacheBitmapWithNavigationBarShow:Ljava/lang/ref/SoftReference;

    .line 372
    :goto_2e
    return-void
.end method
