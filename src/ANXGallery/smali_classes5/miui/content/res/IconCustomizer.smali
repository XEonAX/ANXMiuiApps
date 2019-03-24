.class public Lmiui/content/res/IconCustomizer;
.super Ljava/lang/Object;
.source "IconCustomizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/content/res/IconCustomizer$CustomizedIconsListener;,
        Lmiui/content/res/IconCustomizer$IconConfig;
    }
.end annotation


# static fields
.field private static final ANIMATING_ICONS_INNER_PATH:Ljava/lang/String; = "animating_icons/"

.field public static final CUSTOMIZED_ICON_PATH:Ljava/lang/String;

.field private static final FANCY_ICONS_INNER_PATH:Ljava/lang/String; = "fancy_icons/"

.field private static final FINAL_MOD_ICONS:Ljava/lang/String;

.field private static final FINAL_MOD_ICONS_MIUI_VERSION:Ljava/lang/String;

.field private static final ICON_NAME_SUFFIX:Ljava/lang/String; = ".png"

.field private static final ICON_TRANSFORM_CONFIG:Ljava/lang/String; = "transform_config.xml"

.field private static final LOG_TAG:Ljava/lang/String; = "IconCustomizer"

.field private static final MIUI_MOD_BUILT_IN_ICONS:Ljava/lang/String; = "/system/media/theme/miui_mod_icons/"

.field private static final sAlphaShift:I = 0x18

.field private static final sAlphaThreshold:I = 0x32

.field private static final sCanvas:Landroid/graphics/Canvas;

.field private static final sColorByteSize:I = 0x4

.field private static final sColorShift:I = 0x8

.field private static sCustomizedIconContentHeight:I = 0x0

.field private static sCustomizedIconContentWidth:I = 0x0

.field private static sCustomizedIconHeight:I = 0x0

.field private static sCustomizedIconWidth:I = 0x0

.field private static sCustomizedIrregularContentHeight:I = 0x0

.field private static sCustomizedIrregularContentWidth:I = 0x0

.field private static volatile sCutPaint:Landroid/graphics/Paint; = null

.field private static sIconCache:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig; = null

.field private static sIconMapping:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIconTransformMatrix:Landroid/graphics/Matrix; = null

.field private static sIconTransformNeeded:Z = false

.field private static final sMaxContentRatio:F = 2.0f

.field private static sPaintForTransformBitmap:Landroid/graphics/Paint; = null

.field private static final sRGBMask:I = 0xffffff

.field private static sRawIconCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile sThemeRuntimeManager:Lmiui/content/res/ThemeRuntimeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lmiui/content/res/ThemeResources;->THEME_MAGIC_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "customized_icons/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/content/res/IconCustomizer;->FINAL_MOD_ICONS:Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lmiui/content/res/IconCustomizer;->FINAL_MOD_ICONS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "miui_version"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/content/res/IconCustomizer;->FINAL_MOD_ICONS_MIUI_VERSION:Ljava/lang/String;

    .line 85
    sget-object v0, Lmiui/content/res/IconCustomizer;->FINAL_MOD_ICONS:Ljava/lang/String;

    sput-object v0, Lmiui/content/res/IconCustomizer;->CUSTOMIZED_ICON_PATH:Ljava/lang/String;

    .line 97
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lmiui/content/res/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    .line 100
    const/4 v0, 0x0

    sput-object v0, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    .line 101
    sput-object v0, Lmiui/content/res/IconCustomizer;->sIconTransformMatrix:Landroid/graphics/Matrix;

    .line 102
    const/4 v1, 0x0

    sput-boolean v1, Lmiui/content/res/IconCustomizer;->sIconTransformNeeded:Z

    .line 125
    sget-object v1, Lmiui/content/res/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    new-instance v2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v3, 0x4

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 128
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lmiui/content/res/IconCustomizer;->sRawIconCache:Ljava/util/Map;

    .line 129
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    .line 171
    const/4 v1, -0x1

    sput v1, Lmiui/content/res/IconCustomizer;->sCustomizedIrregularContentWidth:I

    .line 185
    sput v1, Lmiui/content/res/IconCustomizer;->sCustomizedIrregularContentHeight:I

    .line 199
    sput v1, Lmiui/content/res/IconCustomizer;->sCustomizedIconContentWidth:I

    .line 211
    sput v1, Lmiui/content/res/IconCustomizer;->sCustomizedIconContentHeight:I

    .line 223
    sput v1, Lmiui/content/res/IconCustomizer;->sCustomizedIconWidth:I

    .line 233
    sput v1, Lmiui/content/res/IconCustomizer;->sCustomizedIconHeight:I

    .line 481
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    .line 483
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v2, "com.android.contacts.activities.TwelveKeyDialer.png"

    const-string v3, "com.android.contacts.TwelveKeyDialer.png"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v2, "com.miui.weather2.png"

    const-string v3, "com.miui.weather.png"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v2, "com.miui.gallery.png"

    const-string v3, "com.android.gallery.png"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v2, "com.android.gallery3d.png"

    const-string v3, "com.cooliris.media.png"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v2, "com.xiaomi.market.png"

    const-string v3, "com.miui.supermarket.png"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v2, "com.wali.miui.networkassistant.png"

    const-string v3, "com.android.monitor.png"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v2, "com.xiaomi.scanner.png"

    const-string v3, "com.miui.barcodescanner.png"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v2, "com.miui.calculator.png"

    const-string v3, "com.android.calculator2.png"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v2, "com.android.camera.CameraEntry.png"

    const-string v3, "com.android.camera.png"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v2, "com.htc.album.png"

    const-string v3, "com.miui.gallery.png"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v2, "com.htc.fm.activity.FMRadioMain.png"

    const-string v3, "com.miui.fmradio.png"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v2, "com.htc.fm.FMRadio.png"

    const-string v3, "com.miui.fmradio.png"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v2, "com.htc.fm.png"

    const-string v3, "com.miui.fmradio.png"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v2, "com.sec.android.app.camera.Camera.png"

    const-string v3, "com.android.camera.png"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v2, "com.sec.android.app.fm.png"

    const-string v3, "com.miui.fmradio.png"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v2, "com.android.gallery3d#com.android.camera.CameraLauncher.png"

    const-string v3, "com.android.camera.png"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v2, "com.android.hwcamera.png"

    const-string v3, "com.android.camera.png"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v2, "com.huawei.android.FMRadio.png"

    const-string v3, "com.miui.fmradio.png"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v2, "com.sonyericsson.android.camera.png"

    const-string v3, "com.android.camera.png"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v2, "com.sonyericsson.fmradio.png"

    const-string v3, "com.miui.fmradio.png"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v2, "com.motorola.Camera.Camera.png"

    const-string v3, "com.android.camera.png"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v2, "com.lge.camera.png"

    const-string v3, "com.android.camera.png"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v2, "com.oppo.camera.OppoCamera.png"

    const-string v3, "com.android.camera.png"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v2, "com.lenovo.scg#com.android.camera.CameraLauncher.png"

    const-string v3, "com.android.camera.png"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v2, "com.lenovo.fm.png"

    const-string v3, "com.miui.fmradio.png"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v2, "com.android.camera2#com.android.camera.CameraLauncher.png"

    const-string v3, "com.android.camera.png"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v1, Lmiui/content/res/IconCustomizer;->sPaintForTransformBitmap:Landroid/graphics/Paint;

    .line 1000
    sput-object v0, Lmiui/content/res/IconCustomizer;->sCutPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static RGBToColor([I)I
    .locals 2
    .param p0, "RGB"    # [I

    .line 1397
    const/4 v0, 0x0

    aget v0, p0, v0

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aget v1, p0, v1

    add-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x2

    aget v1, p0, v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static calcBackgroundColor(III[ILandroid/graphics/Bitmap;)[F
    .locals 18
    .param p0, "pixelSize"    # I
    .param p1, "width"    # I
    .param p2, "strideSize"    # I
    .param p3, "basePixels"    # [I
    .param p4, "bg"    # Landroid/graphics/Bitmap;

    .line 1317
    const/4 v0, 0x0

    .line 1318
    .local v0, "sum":I
    const/4 v1, 0x4

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    .line 1321
    .local v2, "sumRGBA":[I
    const/4 v3, 0x3

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    .line 1325
    .local v4, "RGB":[I
    const/4 v5, 0x0

    .line 1326
    .local v5, "i":I
    invoke-static/range {p4 .. p4}, Lmiui/graphics/BitmapUtil;->getBuffer(Landroid/graphics/Bitmap;)[B

    move-result-object v6

    .line 1327
    .local v6, "bgPixels":[B
    :goto_0
    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    move/from16 v10, p0

    if-ge v5, v10, :cond_3

    .line 1328
    move v11, v0

    move v0, v8

    .local v0, "j":I
    .local v11, "sum":I
    :goto_1
    move/from16 v12, p1

    if-ge v0, v12, :cond_2

    .line 1329
    add-int v13, v5, v0

    aget v13, p3, v13

    .line 1331
    .local v13, "color":I
    const v14, 0xffffff

    and-int/2addr v14, v13

    if-lez v14, :cond_0

    .line 1333
    aget v14, v2, v8

    const/high16 v15, 0xff0000

    and-int/2addr v15, v13

    shr-int/lit8 v15, v15, 0x10

    add-int/2addr v14, v15

    aput v14, v2, v8

    .line 1334
    aget v14, v2, v9

    const v15, 0xff00

    and-int/2addr v15, v13

    shr-int/lit8 v15, v15, 0x8

    add-int/2addr v14, v15

    aput v14, v2, v9

    .line 1335
    aget v14, v2, v7

    and-int/lit16 v1, v13, 0xff

    add-int/2addr v14, v1

    aput v14, v2, v7

    .line 1336
    add-int/lit8 v11, v11, 0x1

    .line 1338
    :cond_0
    aget v1, v2, v3

    if-nez v1, :cond_1

    if-eqz v6, :cond_1

    .line 1339
    aget v1, v2, v3

    shr-int/lit8 v14, v13, 0x18

    add-int v15, v5, v0

    shl-int/2addr v15, v7

    add-int/2addr v15, v3

    aget-byte v15, v6, v15

    sub-int/2addr v14, v15

    add-int/2addr v1, v14

    aput v1, v2, v3

    .line 1328
    :cond_1
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x4

    goto :goto_1

    .line 1342
    .end local v0    # "j":I
    .end local v13    # "color":I
    :cond_2
    add-int v5, v5, p2

    .line 1326
    move v0, v11

    const/4 v1, 0x4

    goto :goto_0

    .line 1345
    .end local v11    # "sum":I
    .local v0, "sum":I
    :cond_3
    move/from16 v12, p1

    if-lez v0, :cond_4

    .line 1346
    aget v11, v2, v8

    div-int/2addr v11, v0

    aput v11, v2, v8

    .line 1347
    aget v11, v2, v9

    div-int/2addr v11, v0

    aput v11, v2, v9

    .line 1348
    aget v11, v2, v7

    div-int/2addr v11, v0

    aput v11, v2, v7

    .line 1352
    :cond_4
    invoke-static {v2}, Lmiui/content/res/IconCustomizer;->RGBToColor([I)I

    move-result v11

    .line 1353
    .local v11, "color":I
    invoke-static {v11, v4}, Lmiui/content/res/IconCustomizer;->getSaturation(I[I)F

    move-result v13

    move-object/from16 v16, v4

    float-to-double v3, v13

    .end local v4    # "RGB":[I
    .local v16, "RGB":[I
    const-wide v14, 0x3f947ae147ae147bL    # 0.02

    cmpg-double v3, v3, v14

    if-gez v3, :cond_5

    .line 1354
    const/4 v3, 0x0

    .line 1386
    .end local v11    # "color":I
    .local v3, "color":I
    move v4, v5

    move-object/from16 v5, v16

    goto :goto_4

    .line 1357
    .end local v3    # "color":I
    .restart local v11    # "color":I
    :cond_5
    new-array v3, v7, [[I

    new-array v4, v7, [I

    fill-array-data v4, :array_2

    aput-object v4, v3, v8

    new-array v4, v7, [I

    fill-array-data v4, :array_3

    aput-object v4, v3, v9

    .line 1364
    .local v3, "mappingSections":[[I
    const/4 v0, 0x0

    .line 1365
    const/4 v4, 0x0

    .end local v5    # "i":I
    .local v4, "i":I
    :goto_2
    array-length v5, v3

    if-ge v4, v5, :cond_6

    .line 1366
    aget-object v5, v3, v4

    aget v5, v5, v9

    aget-object v13, v3, v4

    aget v13, v13, v8

    sub-int/2addr v5, v13

    add-int/2addr v0, v5

    .line 1365
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1369
    :cond_6
    move-object/from16 v5, v16

    invoke-static {v11, v5}, Lmiui/content/res/IconCustomizer;->getHue(I[I)F

    move-result v13

    .line 1370
    .end local v16    # "RGB":[I
    .local v5, "RGB":[I
    .local v13, "hue":F
    int-to-float v14, v0

    mul-float/2addr v14, v13

    const/high16 v15, 0x43b40000    # 360.0f

    div-float/2addr v14, v15

    .line 1371
    .end local v13    # "hue":F
    .local v14, "hue":F
    const/4 v4, 0x0

    :goto_3
    array-length v13, v3

    if-ge v4, v13, :cond_8

    .line 1372
    aget-object v13, v3, v4

    aget v13, v13, v9

    aget-object v15, v3, v4

    aget v15, v15, v8

    sub-int/2addr v13, v15

    .line 1373
    .local v13, "length":I
    int-to-float v7, v13

    cmpl-float v7, v14, v7

    if-lez v7, :cond_7

    .line 1374
    int-to-float v7, v13

    sub-float/2addr v14, v7

    .line 1371
    .end local v13    # "length":I
    add-int/lit8 v4, v4, 0x1

    const/4 v7, 0x2

    goto :goto_3

    .line 1376
    .restart local v13    # "length":I
    :cond_7
    aget-object v7, v3, v4

    aget v7, v7, v8

    int-to-float v7, v7

    add-float/2addr v14, v7

    .line 1377
    nop

    .line 1380
    .end local v13    # "length":I
    :cond_8
    invoke-static {v11, v14, v5}, Lmiui/content/res/IconCustomizer;->setHue(IF[I)I

    move-result v7

    .line 1383
    .end local v11    # "color":I
    .local v7, "color":I
    const v11, 0x3f19999a    # 0.6f

    invoke-static {v7, v11, v5}, Lmiui/content/res/IconCustomizer;->setValue(IF[I)I

    move-result v7

    .line 1384
    const v11, 0x3ecccccd    # 0.4f

    invoke-static {v7, v11, v5}, Lmiui/content/res/IconCustomizer;->setSaturation(IF[I)I

    move-result v3

    .line 1386
    .end local v7    # "color":I
    .end local v14    # "hue":F
    .local v3, "color":I
    :goto_4
    invoke-static {v3, v2}, Lmiui/content/res/IconCustomizer;->colorToRGB(I[I)V

    .line 1387
    const/4 v7, 0x4

    new-array v7, v7, [F

    aget v11, v2, v8

    int-to-float v11, v11

    const/high16 v13, 0x437f0000    # 255.0f

    div-float/2addr v11, v13

    aput v11, v7, v8

    aget v8, v2, v9

    int-to-float v8, v8

    div-float/2addr v8, v13

    aput v8, v7, v9

    const/4 v8, 0x2

    aget v9, v2, v8

    int-to-float v9, v9

    div-float/2addr v9, v13

    aput v9, v7, v8

    const/4 v8, 0x3

    aget v9, v2, v8

    int-to-float v9, v9

    div-float/2addr v9, v13

    aput v9, v7, v8

    return-object v7

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x64
        0x6e
    .end array-data

    :array_3
    .array-data 4
        0xbe
        0x113
    .end array-data
.end method

.method public static checkModIconsTimestamp()V
    .locals 10

    .line 313
    new-instance v0, Ljava/io/File;

    sget-object v1, Lmiui/content/res/IconCustomizer;->FINAL_MOD_ICONS:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 314
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 315
    const/4 v1, 0x0

    .line 317
    .local v1, "clearReason":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lmiui/content/res/IconCustomizer;->FINAL_MOD_ICONS:Ljava/lang/String;

    invoke-static {v2}, Lmiui/io/FileStat;->getCreatedTime(Ljava/lang/String;)J

    move-result-wide v2

    .line 318
    .local v2, "createdTime":J
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lmiui/content/res/IconCustomizer;->getMiuiModDownloadIconDir()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 319
    .local v4, "modifiedTime":J
    cmp-long v6, v4, v2

    if-gtz v6, :cond_2

    .line 320
    new-instance v6, Ljava/io/File;

    sget-object v7, Lmiui/content/res/IconCustomizer;->FINAL_MOD_ICONS_MIUI_VERSION:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 321
    .local v6, "lastVersionFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 322
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 323
    .local v7, "reader":Ljava/io/BufferedReader;
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconVersionContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 324
    const-string v8, "miui version update"

    move-object v1, v8

    .line 326
    :cond_0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 327
    .end local v7    # "reader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 328
    :cond_1
    const-string v7, "miui version flag miss"

    move-object v1, v7

    .line 330
    .end local v6    # "lastVersionFile":Ljava/io/File;
    :goto_0
    goto :goto_1

    .line 331
    :cond_2
    const-string v6, "mod download icon update"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v6

    .line 336
    .end local v2    # "createdTime":J
    .end local v4    # "modifiedTime":J
    :goto_1
    goto :goto_2

    .line 333
    :catch_0
    move-exception v2

    .line 334
    .local v2, "e":Ljava/lang/Exception;
    const-string v1, "miui version read exception"

    .line 335
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 337
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    const-string v2, "IconCustomizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check time stamp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    if-eqz v1, :cond_3

    .line 339
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiui/content/res/ThemeNativeUtils;->deleteContents(Ljava/lang/String;)V

    .line 340
    invoke-static {}, Lmiui/content/res/IconCustomizer;->clearCache()V

    .line 344
    .end local v1    # "clearReason":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    .line 345
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/theme/ThemeFileUtils;->mkdirs(Ljava/lang/String;)Z

    .line 347
    :cond_4
    return-void
.end method

.method public static clearCache()V
    .locals 1

    .line 280
    const/4 v0, 0x0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->clearCache(Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method public static clearCache(Ljava/lang/String;)V
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;

    .line 284
    if-nez p0, :cond_0

    .line 285
    sget-object v0, Lmiui/content/res/IconCustomizer;->sRawIconCache:Ljava/util/Map;

    monitor-enter v0

    .line 286
    :try_start_0
    sget-object v1, Lmiui/content/res/IconCustomizer;->sRawIconCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 287
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 288
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    monitor-enter v1

    .line 289
    :try_start_1
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 290
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    const/4 v0, 0x0

    sput-object v0, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    .line 292
    const/4 v0, 0x0

    sput-boolean v0, Lmiui/content/res/IconCustomizer;->sIconTransformNeeded:Z

    .line 293
    const/4 v0, -0x1

    sput v0, Lmiui/content/res/IconCustomizer;->sCustomizedIrregularContentWidth:I

    .line 294
    sput v0, Lmiui/content/res/IconCustomizer;->sCustomizedIrregularContentHeight:I

    .line 295
    sput v0, Lmiui/content/res/IconCustomizer;->sCustomizedIconContentWidth:I

    .line 296
    sput v0, Lmiui/content/res/IconCustomizer;->sCustomizedIconContentHeight:I

    .line 297
    sput v0, Lmiui/content/res/IconCustomizer;->sCustomizedIconWidth:I

    .line 298
    sput v0, Lmiui/content/res/IconCustomizer;->sCustomizedIconHeight:I

    goto :goto_1

    .line 290
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 287
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 300
    :cond_0
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    monitor-enter v0

    .line 301
    :try_start_4
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 302
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 303
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 304
    .local v2, "p":Ljava/lang/String;
    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 305
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 307
    .end local v2    # "p":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 308
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;>;>;"
    :cond_2
    monitor-exit v0

    .line 310
    :goto_1
    return-void

    .line 308
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method

.method public static clearCustomizedIcons(Ljava/lang/String;)V
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;

    .line 372
    sget-boolean v0, Lmiui/os/Build;->IS_MIUI:Z

    if-nez v0, :cond_0

    .line 373
    return-void

    .line 375
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    sget-object v0, Lmiui/content/res/IconCustomizer;->FINAL_MOD_ICONS:Ljava/lang/String;

    invoke-static {v0}, Lmiui/content/res/ThemeNativeUtils;->deleteContents(Ljava/lang/String;)V

    .line 377
    invoke-static {}, Lmiui/content/res/IconCustomizer;->clearCache()V

    goto :goto_1

    .line 379
    :cond_1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lmiui/content/res/IconCustomizer;->FINAL_MOD_ICONS:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 380
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 381
    .local v1, "fileNames":[Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 382
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 383
    .local v4, "fileName":Ljava/lang/String;
    invoke-virtual {v4, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 384
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lmiui/content/res/IconCustomizer;->FINAL_MOD_ICONS:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lmiui/content/res/ThemeNativeUtils;->remove(Ljava/lang/String;)Z

    .line 382
    .end local v4    # "fileName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 388
    :cond_3
    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->clearCache(Ljava/lang/String;)V

    .line 390
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "fileNames":[Ljava/lang/String;
    :goto_1
    return-void
.end method

.method private static colorToRGB(I[I)V
    .locals 2
    .param p0, "color"    # I
    .param p1, "rgb"    # [I

    .line 1391
    const/high16 v0, 0xff0000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 1392
    const v0, 0xff00

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 1393
    and-int/lit16 v0, p0, 0xff

    const/4 v1, 0x2

    aput v0, p1, v1

    .line 1394
    return-void
.end method

.method private static composeIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 25
    .param p0, "base"    # Landroid/graphics/Bitmap;
    .param p1, "modMask"    # Landroid/graphics/Bitmap;
    .param p2, "modBackground"    # Landroid/graphics/Bitmap;
    .param p3, "modPattern"    # Landroid/graphics/Bitmap;
    .param p4, "modCover"    # Landroid/graphics/Bitmap;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1004
    move-object/from16 v4, p4

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    .line 1005
    .local v15, "baseWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    .line 1006
    .local v16, "baseHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    const/16 v17, 0x4

    div-int/lit8 v14, v0, 0x4

    .line 1007
    .local v14, "pixelSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    div-int/lit8 v13, v0, 0x4

    .line 1009
    .local v13, "strideSize":I
    new-array v12, v14, [I

    .line 1010
    .local v12, "basePixels":[I
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object v6, v12

    move v8, v13

    move v11, v15

    move-object/from16 v18, v12

    move/from16 v12, v16

    .end local v12    # "basePixels":[I
    .local v18, "basePixels":[I
    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 1011
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1014
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconWidth()I

    move-result v0

    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 1015
    .local v12, "result":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v11, v0

    .line 1018
    .local v11, "canvas":Landroid/graphics/Canvas;
    const/4 v0, 0x1

    const/16 v19, 0x0

    move-object v5, v11

    move-object/from16 v6, v18

    move-object/from16 v20, v11

    move v11, v15

    .end local v11    # "canvas":Landroid/graphics/Canvas;
    .local v20, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v21, v12

    move/from16 v12, v16

    .end local v12    # "result":Landroid/graphics/Bitmap;
    .local v21, "result":Landroid/graphics/Bitmap;
    move/from16 v22, v13

    move v13, v0

    .end local v13    # "strideSize":I
    .local v22, "strideSize":I
    move v4, v14

    move-object/from16 v14, v19

    .end local v14    # "pixelSize":I
    .local v4, "pixelSize":I
    invoke-virtual/range {v5 .. v14}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 1021
    const/4 v0, 0x0

    const/4 v14, 0x0

    if-eqz v1, :cond_2

    .line 1022
    sget-object v5, Lmiui/content/res/IconCustomizer;->sCutPaint:Landroid/graphics/Paint;

    if-nez v5, :cond_1

    .line 1023
    const-class v5, Lmiui/content/res/IconCustomizer;

    monitor-enter v5

    .line 1024
    :try_start_0
    sget-object v6, Lmiui/content/res/IconCustomizer;->sCutPaint:Landroid/graphics/Paint;

    if-nez v6, :cond_0

    .line 1025
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 1026
    .local v6, "paint":Landroid/graphics/Paint;
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1027
    sput-object v6, Lmiui/content/res/IconCustomizer;->sCutPaint:Landroid/graphics/Paint;

    .line 1029
    .end local v6    # "paint":Landroid/graphics/Paint;
    :cond_0
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1031
    :cond_1
    :goto_0
    sget-object v5, Lmiui/content/res/IconCustomizer;->sCutPaint:Landroid/graphics/Paint;

    move-object/from16 v13, v20

    invoke-virtual {v13, v1, v14, v14, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1032
    .end local v20    # "canvas":Landroid/graphics/Canvas;
    .local v13, "canvas":Landroid/graphics/Canvas;
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, v21

    move-object/from16 v6, v18

    move/from16 v8, v22

    move v11, v15

    move/from16 v12, v16

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 1033
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v13, v0, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 1036
    .end local v13    # "canvas":Landroid/graphics/Canvas;
    .restart local v20    # "canvas":Landroid/graphics/Canvas;
    :cond_2
    move-object/from16 v13, v20

    .end local v20    # "canvas":Landroid/graphics/Canvas;
    .restart local v13    # "canvas":Landroid/graphics/Canvas;
    :goto_1
    const/4 v5, 0x0

    .line 1037
    .local v5, "bgColor":[F
    if-eqz v2, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v6

    div-int/lit8 v6, v6, 0x4

    if-ne v6, v4, :cond_3

    .line 1038
    move-object/from16 v11, v18

    move/from16 v12, v22

    invoke-static {v4, v15, v12, v11, v2}, Lmiui/content/res/IconCustomizer;->calcBackgroundColor(III[ILandroid/graphics/Bitmap;)[F

    move-result-object v5

    .end local v5    # "bgColor":[F
    .end local v18    # "basePixels":[I
    .end local v22    # "strideSize":I
    .local v11, "basePixels":[I
    .local v12, "strideSize":I
    :goto_2
    goto :goto_3

    .line 1042
    .end local v11    # "basePixels":[I
    .end local v12    # "strideSize":I
    .restart local v5    # "bgColor":[F
    .restart local v18    # "basePixels":[I
    .restart local v22    # "strideSize":I
    :cond_3
    move-object/from16 v11, v18

    move/from16 v12, v22

    goto :goto_2

    .end local v5    # "bgColor":[F
    .end local v22    # "strideSize":I
    .restart local v11    # "basePixels":[I
    .restart local v12    # "strideSize":I
    .local v18, "bgColor":[F
    :goto_3
    move-object/from16 v18, v5

    const/4 v5, 0x3

    if-eqz v18, :cond_4

    aget v6, v18, v5

    cmpl-float v6, v6, v14

    if-eqz v6, :cond_4

    .line 1043
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 1044
    .local v6, "bgPaint":Landroid/graphics/Paint;
    new-instance v7, Landroid/graphics/ColorMatrix;

    invoke-direct {v7}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 1045
    .local v7, "cm":Landroid/graphics/ColorMatrix;
    const/16 v8, 0x14

    new-array v8, v8, [F

    aget v9, v18, v0

    aput v9, v8, v0

    const/4 v0, 0x1

    aput v14, v8, v0

    const/4 v9, 0x2

    aput v14, v8, v9

    aput v14, v8, v5

    aput v14, v8, v17

    const/4 v10, 0x5

    aput v14, v8, v10

    const/4 v10, 0x6

    aget v0, v18, v0

    aput v0, v8, v10

    const/4 v0, 0x7

    aput v14, v8, v0

    const/16 v0, 0x8

    aput v14, v8, v0

    const/16 v0, 0x9

    aput v14, v8, v0

    const/16 v0, 0xa

    aput v14, v8, v0

    const/16 v0, 0xb

    aput v14, v8, v0

    const/16 v0, 0xc

    aget v9, v18, v9

    aput v9, v8, v0

    const/16 v0, 0xd

    aput v14, v8, v0

    const/16 v0, 0xe

    aput v14, v8, v0

    const/16 v0, 0xf

    aput v14, v8, v0

    const/16 v0, 0x10

    aput v14, v8, v0

    const/16 v0, 0x11

    aput v14, v8, v0

    const/16 v0, 0x12

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v8, v0

    const/16 v0, 0x13

    aput v14, v8, v0

    invoke-virtual {v7, v8}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 1049
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, v7}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1050
    invoke-virtual {v13, v2, v14, v14, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1055
    .end local v6    # "bgPaint":Landroid/graphics/Paint;
    .end local v7    # "cm":Landroid/graphics/ColorMatrix;
    :cond_4
    const/4 v0, 0x0

    if-eqz v18, :cond_5

    aget v5, v18, v5

    cmpl-float v5, v5, v14

    if-nez v5, :cond_6

    :cond_5
    if-nez v18, :cond_7

    .line 1056
    :cond_6
    if-eqz v3, :cond_7

    .line 1057
    invoke-virtual {v13, v3, v14, v14, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1062
    :cond_7
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v17, 0x1

    const/16 v19, 0x0

    move-object v5, v13

    move-object v6, v11

    move v8, v12

    move-object/from16 v20, v11

    move v11, v15

    .end local v11    # "basePixels":[I
    .local v20, "basePixels":[I
    move/from16 v22, v12

    move/from16 v12, v16

    .end local v12    # "strideSize":I
    .restart local v22    # "strideSize":I
    move-object/from16 v23, v13

    move/from16 v13, v17

    .end local v13    # "canvas":Landroid/graphics/Canvas;
    .local v23, "canvas":Landroid/graphics/Canvas;
    move v0, v14

    move-object/from16 v14, v19

    invoke-virtual/range {v5 .. v14}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 1065
    move v5, v4

    move-object/from16 v4, p4

    if-eqz v4, :cond_8

    .line 1066
    .end local v4    # "pixelSize":I
    .local v5, "pixelSize":I
    move-object/from16 v6, v23

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v0, v0, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 1069
    :cond_8
    move-object/from16 v6, v23

    .end local v23    # "canvas":Landroid/graphics/Canvas;
    .local v6, "canvas":Landroid/graphics/Canvas;
    :goto_4
    return-object v21
.end method

.method private static composeIconWithTransform(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "base"    # Landroid/graphics/Bitmap;
    .param p1, "modMask"    # Ljava/lang/String;
    .param p2, "modBackground"    # Ljava/lang/String;
    .param p3, "modPattern"    # Ljava/lang/String;
    .param p4, "modCover"    # Ljava/lang/String;

    .line 971
    invoke-static {}, Lmiui/content/res/IconCustomizer;->ensureIconConfigLoaded()V

    .line 972
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget-object v0, v0, Lmiui/content/res/IconCustomizer$IconConfig;->mIconFilters:Lmiui/imagefilters/IImageFilter$ImageFilterGroup;

    if-eqz v0, :cond_0

    .line 973
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget-object v0, v0, Lmiui/content/res/IconCustomizer$IconConfig;->mIconFilters:Lmiui/imagefilters/IImageFilter$ImageFilterGroup;

    invoke-virtual {v0, p0}, Lmiui/imagefilters/IImageFilter$ImageFilterGroup;->processAll(Landroid/graphics/Bitmap;)Lmiui/imagefilters/ImageData;

    move-result-object v0

    .line 974
    .local v0, "imgData":Lmiui/imagefilters/ImageData;
    invoke-static {v0}, Lmiui/imagefilters/ImageData;->imageDataToBitmap(Lmiui/imagefilters/ImageData;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 976
    .end local v0    # "imgData":Lmiui/imagefilters/ImageData;
    :cond_0
    sget-boolean v0, Lmiui/content/res/IconCustomizer;->sIconTransformNeeded:Z

    if-eqz v0, :cond_1

    .line 977
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconTransformMatrix:Landroid/graphics/Matrix;

    invoke-static {p0, v0}, Lmiui/content/res/IconCustomizer;->transformBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 980
    :cond_1
    invoke-static {p1}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 981
    .local v0, "mask":Landroid/graphics/Bitmap;
    invoke-static {p2}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 982
    .local v1, "background":Landroid/graphics/Bitmap;
    invoke-static {p3}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 983
    .local v2, "pattern":Landroid/graphics/Bitmap;
    invoke-static {p4}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 985
    .local v3, "cover":Landroid/graphics/Bitmap;
    invoke-static {p0, v0, v1, v2, v3}, Lmiui/content/res/IconCustomizer;->composeIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "ratio"    # F

    .line 892
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lmiui/content/res/IconCustomizer;->drawableToBitmap(Landroid/graphics/drawable/Drawable;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;FZ)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "ratio"    # F
    .param p2, "isAdaptiveIconDrawable"    # Z

    .line 896
    sget-object v0, Lmiui/content/res/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v0

    .line 897
    :try_start_0
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconWidth()I

    move-result v1

    .line 898
    .local v1, "targetWidth":I
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconHeight()I

    move-result v2

    .line 900
    .local v2, "targetHeight":I
    instance-of v3, p0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v3, :cond_0

    .line 901
    move-object v3, p0

    check-cast v3, Landroid/graphics/drawable/PaintDrawable;

    .line 902
    .local v3, "painter":Landroid/graphics/drawable/PaintDrawable;
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 903
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 904
    .end local v3    # "painter":Landroid/graphics/drawable/PaintDrawable;
    goto :goto_0

    :cond_0
    instance-of v3, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_2

    .line 906
    move-object v3, p0

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 907
    .local v3, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 908
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v5

    .line 909
    .local v5, "bitmapDensity":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 910
    .local v6, "displayMetrics":Landroid/util/DisplayMetrics;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1c

    if-lt v7, v8, :cond_1

    .line 911
    iget v7, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    if-eq v5, v7, :cond_2

    .line 912
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(I)V

    goto :goto_0

    .line 915
    :cond_1
    if-nez v5, :cond_2

    .line 916
    invoke-virtual {v3, v6}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 920
    .end local v3    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "bitmapDensity":I
    .end local v6    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 921
    .local v3, "sourceWidth":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 923
    .local v4, "sourceHeight":I
    if-eqz p2, :cond_3

    .line 924
    move v3, v1

    .line 925
    move v4, v2

    .line 926
    const/high16 p1, 0x3f800000    # 1.0f

    .line 928
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 930
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 932
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    sget-object v6, Lmiui/content/res/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    .line 933
    .local v6, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v6, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 934
    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    .line 935
    int-to-float v7, v1

    int-to-float v8, v3

    mul-float/2addr v8, p1

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    int-to-float v9, v2

    int-to-float v10, v4

    mul-float/2addr v10, p1

    sub-float/2addr v9, v10

    div-float/2addr v9, v8

    invoke-virtual {v6, v7, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 936
    invoke-virtual {v6, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 937
    invoke-virtual {p0, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 938
    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    .line 941
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 943
    monitor-exit v0

    return-object v5

    .line 944
    .end local v1    # "targetWidth":I
    .end local v2    # "targetHeight":I
    .end local v3    # "sourceWidth":I
    .end local v4    # "sourceHeight":I
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static ensureIconConfigLoaded()V
    .locals 3

    .line 989
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    if-nez v0, :cond_1

    .line 990
    const-class v0, Lmiui/content/res/IconCustomizer;

    monitor-enter v0

    .line 991
    :try_start_0
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    if-nez v1, :cond_0

    .line 992
    invoke-static {}, Lmiui/content/res/IconCustomizer;->loadIconConfig()Lmiui/content/res/IconCustomizer$IconConfig;

    move-result-object v1

    .line 993
    .local v1, "iconConfig":Lmiui/content/res/IconCustomizer$IconConfig;
    invoke-static {v1}, Lmiui/content/res/IconCustomizer;->makeIconMatrix(Lmiui/content/res/IconCustomizer$IconConfig;)Landroid/graphics/Matrix;

    move-result-object v2

    sput-object v2, Lmiui/content/res/IconCustomizer;->sIconTransformMatrix:Landroid/graphics/Matrix;

    .line 994
    sput-object v1, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    .line 996
    .end local v1    # "iconConfig":Lmiui/content/res/IconCustomizer$IconConfig;
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 998
    :cond_1
    :goto_0
    return-void
.end method

.method public static ensureMiuiVersionFlagExist(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 351
    new-instance v0, Ljava/io/File;

    sget-object v1, Lmiui/content/res/IconCustomizer;->FINAL_MOD_ICONS_MIUI_VERSION:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    return-void

    .line 354
    :cond_0
    sget-object v0, Lmiui/content/res/IconCustomizer;->FINAL_MOD_ICONS_MIUI_VERSION:Ljava/lang/String;

    .line 355
    .local v0, "tmpPath":Ljava/lang/String;
    if-eqz p0, :cond_1

    const-string v1, "android"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 356
    const-string v1, "customized_icons_version"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 359
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 360
    .local v1, "out":Ljava/io/BufferedWriter;
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconVersionContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 361
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    .end local v1    # "out":Ljava/io/BufferedWriter;
    goto :goto_0

    .line 362
    :catch_0
    move-exception v1

    .line 364
    :goto_0
    sget-object v1, Lmiui/content/res/IconCustomizer;->FINAL_MOD_ICONS_MIUI_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 365
    sget-object v1, Lmiui/content/res/IconCustomizer;->FINAL_MOD_ICONS_MIUI_VERSION:Ljava/lang/String;

    invoke-static {v0, v1}, Lmiui/content/res/ThemeNativeUtils;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    .line 366
    invoke-static {v0}, Lmiui/content/res/ThemeNativeUtils;->remove(Ljava/lang/String;)Z

    .line 367
    sget-object v1, Lmiui/content/res/IconCustomizer;->FINAL_MOD_ICONS_MIUI_VERSION:Ljava/lang/String;

    invoke-static {v1}, Lmiui/content/res/ThemeNativeUtils;->updateFilePermissionWithThemeContext(Ljava/lang/String;)Z

    .line 369
    :cond_2
    return-void
.end method

.method public static generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .param p0, "base"    # Landroid/graphics/drawable/Drawable;

    .line 603
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2
    .param p0, "base"    # Landroid/graphics/drawable/Drawable;
    .param p1, "mask"    # Landroid/graphics/Bitmap;
    .param p2, "background"    # Landroid/graphics/Bitmap;
    .param p3, "pattern"    # Landroid/graphics/Bitmap;
    .param p4, "cover"    # Landroid/graphics/Bitmap;
    .param p5, "cropOutside"    # Z

    .line 617
    invoke-static {p0, p5}, Lmiui/content/res/IconCustomizer;->getScaleRatio(Landroid/graphics/drawable/Drawable;Z)F

    move-result v0

    invoke-static {p0, v0}, Lmiui/content/res/IconCustomizer;->drawableToBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 618
    .local v0, "icon":Landroid/graphics/Bitmap;
    invoke-static {v0, p1, p2, p3, p4}, Lmiui/content/res/IconCustomizer;->composeIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 619
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    return-object v1
.end method

.method public static generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5
    .param p0, "base"    # Landroid/graphics/drawable/Drawable;
    .param p1, "cropOutside"    # Z

    .line 607
    invoke-static {p0, p1}, Lmiui/content/res/IconCustomizer;->getScaleRatio(Landroid/graphics/drawable/Drawable;Z)F

    move-result v0

    invoke-static {p0, v0}, Lmiui/content/res/IconCustomizer;->drawableToBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 608
    .local v0, "icon":Landroid/graphics/Bitmap;
    sget-boolean v1, Lmiui/os/Build;->IS_MIUI:Z

    if-eqz v1, :cond_0

    .line 609
    const-string v1, "icon_mask.png"

    const-string v2, "icon_background.png"

    const-string v3, "icon_pattern.png"

    const-string v4, "icon_border.png"

    invoke-static {v0, v1, v2, v3, v4}, Lmiui/content/res/IconCustomizer;->composeIconWithTransform(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 611
    :cond_0
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    return-object v1
.end method

.method public static generateShortcutIconDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5
    .param p0, "base"    # Landroid/graphics/drawable/Drawable;

    .line 595
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/content/res/IconCustomizer;->getScaleRatio(Landroid/graphics/drawable/Drawable;Z)F

    move-result v0

    invoke-static {p0, v0}, Lmiui/content/res/IconCustomizer;->drawableToBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 596
    .local v0, "icon":Landroid/graphics/Bitmap;
    sget-boolean v1, Lmiui/os/Build;->IS_MIUI:Z

    if-eqz v1, :cond_0

    .line 597
    const-string v1, "icon_mask.png"

    const/4 v2, 0x0

    const-string v3, "icon_shortcut.png"

    const-string v4, "icon_shortcut_arrow.png"

    invoke-static {v0, v1, v2, v3, v4}, Lmiui/content/res/IconCustomizer;->composeIconWithTransform(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 599
    :cond_0
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    return-object v1
.end method

.method public static getAnimatingIconRelativePath(Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "info"    # Landroid/content/pm/PackageItemInfo;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 536
    const-string v0, "animating_icons/"

    const-string v1, "fancy/manifest.xml"

    invoke-static {p0, p1, p2, v0, v1}, Lmiui/content/res/IconCustomizer;->getIconRelativePath(Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getContentRatio(Landroid/graphics/drawable/Drawable;)F
    .locals 15
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 797
    invoke-static {}, Lmiui/content/res/IconCustomizer;->ensureIconConfigLoaded()V

    .line 798
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    const/high16 v1, -0x40800000    # -1.0f

    if-nez v0, :cond_0

    return v1

    .line 800
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 801
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v2, v3, :cond_1

    return v1

    .line 804
    :cond_1
    const/4 v1, 0x1

    .line 805
    .local v1, "isRegularShape":Z
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v3, v2}, Lmiui/content/res/IconCustomizer;->getEdgePosition(Landroid/graphics/Bitmap;ZZ)I

    move-result v4

    .line 806
    .local v4, "top":I
    invoke-static {v0, v3, v3}, Lmiui/content/res/IconCustomizer;->getEdgePosition(Landroid/graphics/Bitmap;ZZ)I

    move-result v5

    .line 807
    .local v5, "bottom":I
    invoke-static {v0, v2, v2}, Lmiui/content/res/IconCustomizer;->getEdgePosition(Landroid/graphics/Bitmap;ZZ)I

    move-result v6

    .line 808
    .local v6, "left":I
    invoke-static {v0, v2, v3}, Lmiui/content/res/IconCustomizer;->getEdgePosition(Landroid/graphics/Bitmap;ZZ)I

    move-result v2

    .line 810
    .local v2, "right":I
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconContentWidth()I

    move-result v7

    .line 811
    .local v7, "contentWidth":I
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconContentHeight()I

    move-result v8

    .line 812
    .local v8, "contentHeight":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    sub-int v10, v2, v6

    add-int/2addr v10, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    .line 813
    .local v9, "iconContentWidth":F
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    sub-int v11, v5, v4

    add-int/2addr v11, v3

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    .line 816
    .local v3, "iconContentHeight":F
    const v10, 0x3f4ccccd    # 0.8f

    mul-float v11, v3, v10

    cmpg-float v11, v9, v11

    if-ltz v11, :cond_3

    mul-float/2addr v10, v9

    cmpg-float v10, v3, v10

    if-gez v10, :cond_2

    goto :goto_0

    .line 820
    :cond_2
    invoke-static {v0, v6, v4, v2, v5}, Lmiui/content/res/IconCustomizer;->isRegularShape(Landroid/graphics/Bitmap;IIII)Z

    move-result v10

    if-nez v10, :cond_4

    .line 821
    const/4 v1, 0x0

    goto :goto_1

    .line 817
    :cond_3
    :goto_0
    const/4 v1, 0x0

    .line 824
    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 825
    int-to-float v10, v7

    div-float/2addr v10, v9

    int-to-float v11, v8

    div-float/2addr v11, v3

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    return v10

    .line 828
    :cond_5
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIrregularContentWidth()I

    move-result v10

    .line 829
    .local v10, "customizedIrregularContentWidth":I
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIrregularContentHeight()I

    move-result v11

    .line 830
    .local v11, "customizedIrregularContentHeight":I
    int-to-float v12, v10

    div-float/2addr v12, v9

    .line 831
    .local v12, "ratioW":F
    int-to-float v13, v11

    div-float/2addr v13, v3

    .line 832
    .local v13, "ratioH":F
    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v14

    return v14
.end method

.method public static getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;

    .line 632
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 633
    .local v0, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lmiui/content/res/IconCustomizer;->getCustomizedIconInner(Landroid/content/Context;Ljava/util/List;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    return-object v1
.end method

.method public static getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/BitmapDrawable;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "resid"    # I
    .param p4, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p5, "isPackageIcon"    # Z

    .line 639
    invoke-static {}, Lmiui/content/res/IconCustomizer;->ensureIconConfigLoaded()V

    .line 640
    invoke-static {p1, p2}, Lmiui/content/res/IconCustomizer;->getIconNames(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 648
    .local v0, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 649
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 650
    .local v3, "filename":Ljava/lang/String;
    sget-object v4, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget-boolean v4, v4, Lmiui/content/res/IconCustomizer$IconConfig;->mUseModIcon:Z

    const/4 v5, 0x0

    invoke-static {p0, v0, v5, v4}, Lmiui/content/res/IconCustomizer;->getCustomizedIconInner(Landroid/content/Context;Ljava/util/List;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    .line 651
    .local v4, "dr":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v4, :cond_0

    .line 652
    return-object v4

    .line 655
    :cond_0
    const/4 v6, 0x0

    .line 656
    .local v6, "original":Landroid/graphics/drawable/Drawable;
    if-nez p4, :cond_1

    .line 658
    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p4, v2

    .line 660
    goto :goto_0

    .line 659
    :catch_0
    move-exception v2

    .line 662
    :cond_1
    :goto_0
    if-eqz p3, :cond_4

    if-eqz p4, :cond_2

    iget v2, p4, Landroid/content/pm/ApplicationInfo;->icon:I

    if-ne p3, v2, :cond_3

    :cond_2
    if-eqz p5, :cond_4

    .line 663
    :cond_3
    invoke-virtual {v1, p1, p3, p4}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 665
    :cond_4
    invoke-static {p0, v5, v6, v3}, Lmiui/content/res/IconCustomizer;->transToMiuiModIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    .line 666
    .end local v4    # "dr":Landroid/graphics/drawable/BitmapDrawable;
    .local v2, "dr":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v2, :cond_5

    .line 667
    sget-object v4, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    monitor-enter v4

    .line 668
    :try_start_1
    sget-object v5, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v5, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 671
    :cond_5
    :goto_1
    return-object v2
.end method

.method public static getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "original"    # Landroid/graphics/drawable/Drawable;

    .line 627
    invoke-static {}, Lmiui/content/res/IconCustomizer;->ensureIconConfigLoaded()V

    .line 628
    invoke-static {p1, p2}, Lmiui/content/res/IconCustomizer;->getIconNames(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget-boolean v1, v1, Lmiui/content/res/IconCustomizer$IconConfig;->mUseModIcon:Z

    invoke-static {p0, v0, p3, v1}, Lmiui/content/res/IconCustomizer;->getCustomizedIconInner(Landroid/content/Context;Ljava/util/List;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method private static getCustomizedIconContentHeight()I
    .locals 3

    .line 214
    sget v0, Lmiui/content/res/IconCustomizer;->sCustomizedIconContentHeight:I

    .line 215
    .local v0, "ret":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 216
    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/system/internal/R$dimen;->customizer_icon_content_size:I

    .line 217
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 218
    sput v0, Lmiui/content/res/IconCustomizer;->sCustomizedIconContentHeight:I

    .line 220
    :cond_0
    return v0
.end method

.method private static getCustomizedIconContentWidth()I
    .locals 3

    .line 202
    sget v0, Lmiui/content/res/IconCustomizer;->sCustomizedIconContentWidth:I

    .line 203
    .local v0, "ret":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 204
    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/system/internal/R$dimen;->customizer_icon_content_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 206
    sput v0, Lmiui/content/res/IconCustomizer;->sCustomizedIconContentWidth:I

    .line 208
    :cond_0
    return v0
.end method

.method public static getCustomizedIconFromCache(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;

    .line 623
    invoke-static {p0, p1}, Lmiui/content/res/IconCustomizer;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getDrawableFromMemoryCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static getCustomizedIconHeight()I
    .locals 3

    .line 235
    sget v0, Lmiui/content/res/IconCustomizer;->sCustomizedIconHeight:I

    .line 236
    .local v0, "ret":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 237
    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/system/internal/R$dimen;->customizer_icon_size:I

    .line 238
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 239
    sput v0, Lmiui/content/res/IconCustomizer;->sCustomizedIconHeight:I

    .line 241
    :cond_0
    return v0
.end method

.method private static getCustomizedIconInner(Landroid/content/Context;Ljava/util/List;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "original"    # Landroid/graphics/drawable/Drawable;
    .param p3, "tryModIcon"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/graphics/drawable/Drawable;",
            "Z)",
            "Landroid/graphics/drawable/BitmapDrawable;"
        }
    .end annotation

    .line 694
    .local p1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 695
    .local v1, "filename":Ljava/lang/String;
    invoke-static {v1}, Lmiui/content/res/IconCustomizer;->getDrawableFromMemoryCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    .line 696
    .local v2, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v2, :cond_0

    return-object v2

    .line 698
    :cond_0
    invoke-static {v1}, Lmiui/content/res/IconCustomizer;->getDrawableFromStaticCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    .line 700
    move-object v3, v2

    move v2, v0

    .local v2, "i":I
    .local v3, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    if-nez v3, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 701
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lmiui/content/res/IconCustomizer;->getIconFromTheme(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Lmiui/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    .line 700
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 704
    .end local v2    # "i":I
    :cond_1
    if-nez v3, :cond_3

    .line 705
    const/4 v2, 0x0

    .line 706
    .local v2, "icon":Landroid/graphics/Bitmap;
    if-eqz p3, :cond_2

    .line 707
    nop

    .local v0, "i":I
    :goto_1
    if-nez v2, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 708
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lmiui/content/res/IconCustomizer;->getMiuiModIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 707
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 711
    .end local v0    # "i":I
    :cond_2
    invoke-static {p0, v2, p2, v1}, Lmiui/content/res/IconCustomizer;->transToMiuiModIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    .line 714
    .end local v2    # "icon":Landroid/graphics/Bitmap;
    :cond_3
    if-eqz v3, :cond_4

    .line 715
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    monitor-enter v0

    .line 716
    :try_start_0
    sget-object v2, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 719
    :cond_4
    :goto_2
    return-object v3
.end method

.method private static getCustomizedIconVersionContent()Ljava/lang/String;
    .locals 2

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/util/MiuiDisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCustomizedIconWidth()I
    .locals 3

    .line 225
    sget v0, Lmiui/content/res/IconCustomizer;->sCustomizedIconWidth:I

    .line 226
    .local v0, "ret":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 227
    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/system/internal/R$dimen;->customizer_icon_size:I

    .line 228
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 229
    sput v0, Lmiui/content/res/IconCustomizer;->sCustomizedIconWidth:I

    .line 231
    :cond_0
    return v0
.end method

.method private static getCustomizedIrregularContentHeight()I
    .locals 3

    .line 188
    sget v0, Lmiui/content/res/IconCustomizer;->sCustomizedIrregularContentHeight:I

    .line 189
    .local v0, "ret":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 190
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v1, v1, Lmiui/content/res/IconCustomizer$IconConfig;->mOverridedIrregularContentHeight:I

    if-lez v1, :cond_0

    .line 191
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v1, v1, Lmiui/content/res/IconCustomizer$IconConfig;->mOverridedIrregularContentHeight:I

    goto :goto_0

    .line 192
    :cond_0
    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/system/internal/R$dimen;->customizer_irregular_content_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_0
    move v0, v1

    .line 194
    sput v0, Lmiui/content/res/IconCustomizer;->sCustomizedIrregularContentHeight:I

    .line 196
    :cond_1
    return v0
.end method

.method private static getCustomizedIrregularContentWidth()I
    .locals 3

    .line 174
    sget v0, Lmiui/content/res/IconCustomizer;->sCustomizedIrregularContentWidth:I

    .line 175
    .local v0, "ret":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 176
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v1, v1, Lmiui/content/res/IconCustomizer$IconConfig;->mOverridedIrregularContentWidth:I

    if-lez v1, :cond_0

    .line 177
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v1, v1, Lmiui/content/res/IconCustomizer$IconConfig;->mOverridedIrregularContentWidth:I

    goto :goto_0

    .line 178
    :cond_0
    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/system/internal/R$dimen;->customizer_irregular_content_size:I

    .line 179
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_0
    move v0, v1

    .line 180
    sput v0, Lmiui/content/res/IconCustomizer;->sCustomizedIrregularContentWidth:I

    .line 182
    :cond_1
    return v0
.end method

.method private static getDimension(Ljava/lang/String;)I
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 1311
    nop

    .line 1312
    invoke-static {p0}, Landroid/app/MiuiThemeHelper;->parseDimension(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1313
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1312
    invoke-static {v0, v1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 1311
    return v0
.end method

.method private static getDrawableFromMemoryCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 579
    const/4 v0, 0x0

    .line 580
    .local v0, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    monitor-enter v1

    .line 581
    :try_start_0
    sget-object v2, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    move-object v0, v2

    .line 582
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v1}, Lmiui/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 582
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private static getDrawableFromStaticCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4
    .param p0, "filename"    # Ljava/lang/String;

    .line 564
    const/4 v0, 0x0

    .line 565
    .local v0, "icon":Landroid/graphics/Bitmap;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lmiui/content/res/IconCustomizer;->FINAL_MOD_ICONS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 566
    .local v1, "pathName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 567
    .local v2, "iconFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 568
    invoke-static {v1}, Lmiui/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 569
    if-nez v0, :cond_0

    .line 572
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 575
    :cond_0
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    return-object v3
.end method

.method private static getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 766
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_0
    return-object v0
.end method

.method private static getEdgePosition(Landroid/graphics/Bitmap;ZZ)I
    .locals 12
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "isHorizontal"    # Z
    .param p2, "isInvert"    # Z

    .line 855
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 856
    .local v0, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 857
    .local v1, "height":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v2

    .line 858
    .local v2, "rowBytes":I
    invoke-static {p0}, Lmiui/graphics/BitmapUtil;->getBuffer(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    .line 860
    .local v3, "pixels":[B
    const/4 v4, -0x1

    if-nez p2, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v0

    .line 861
    .local v5, "x":I
    :goto_0
    if-nez p2, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v1

    .line 862
    .local v6, "y":I
    :goto_1
    const/4 v7, 0x1

    if-eqz p2, :cond_2

    move v8, v4

    goto :goto_2

    :cond_2
    move v8, v7

    .line 863
    .local v8, "dx":I
    :goto_2
    if-eqz p2, :cond_3

    goto :goto_3

    :cond_3
    move v4, v7

    .line 865
    .local v4, "dy":I
    :goto_3
    if-eqz v3, :cond_a

    .line 866
    const/4 v7, 0x0

    .line 867
    .local v7, "length":I
    :cond_4
    if-nez v7, :cond_a

    .line 868
    const/16 v9, 0x32

    if-eqz p1, :cond_7

    .line 869
    add-int/2addr v6, v4

    .line 870
    if-ltz v6, :cond_a

    if-lt v6, v1, :cond_5

    .end local v7    # "length":I
    goto :goto_6

    .line 872
    .restart local v7    # "length":I
    :cond_5
    const/4 v5, 0x0

    :goto_4
    if-ge v5, v0, :cond_4

    .line 873
    mul-int v10, v6, v2

    shl-int/lit8 v11, v5, 0x2

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, 0x3

    aget-byte v10, v3, v10

    and-int/lit16 v10, v10, 0xff

    if-le v10, v9, :cond_6

    .line 874
    add-int/lit8 v7, v7, 0x1

    .line 872
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 877
    :cond_7
    add-int/2addr v5, v8

    .line 878
    if-ltz v5, :cond_a

    if-lt v5, v0, :cond_8

    .end local v7    # "length":I
    goto :goto_6

    .line 880
    .restart local v7    # "length":I
    :cond_8
    const/4 v6, 0x0

    :goto_5
    if-ge v6, v1, :cond_4

    .line 881
    mul-int v10, v6, v2

    shl-int/lit8 v11, v5, 0x2

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, 0x3

    aget-byte v10, v3, v10

    and-int/lit16 v10, v10, 0xff

    if-le v10, v9, :cond_9

    .line 882
    add-int/lit8 v7, v7, 0x1

    .line 880
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 888
    .end local v7    # "length":I
    :cond_a
    :goto_6
    if-eqz p1, :cond_b

    move v7, v6

    goto :goto_7

    :cond_b
    move v7, v5

    :goto_7
    return v7
.end method

.method public static getFancyIconRelativePath(Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "info"    # Landroid/content/pm/PackageItemInfo;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 541
    const-string v0, "fancy_icons/"

    const-string v1, "manifest.xml"

    invoke-static {p0, p1, p2, v0, v1}, Lmiui/content/res/IconCustomizer;->getIconRelativePath(Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;

    .line 268
    if-nez p1, :cond_0

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 272
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 276
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getHue(I[I)F
    .locals 8
    .param p0, "color"    # I
    .param p1, "RGB"    # [I

    .line 1450
    invoke-static {p0, p1}, Lmiui/content/res/IconCustomizer;->colorToRGB(I[I)V

    .line 1452
    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    const/4 v4, 0x2

    aget v5, p1, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1453
    .local v1, "min":I
    aget v3, p1, v0

    aget v2, p1, v2

    aget v5, p1, v4

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1455
    .local v2, "max":I
    sub-int v3, v2, v1

    .line 1456
    .local v3, "range":I
    if-nez v3, :cond_0

    .line 1457
    const/4 v0, 0x0

    return v0

    .line 1459
    :cond_0
    nop

    .line 1460
    .local v0, "index":I
    :goto_0
    if-ge v0, v4, :cond_1

    aget v5, p1, v0

    if-eq v1, v5, :cond_1

    .line 1461
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1463
    :cond_1
    const/16 v4, 0x78

    add-int/lit8 v5, v0, 0x1

    rem-int/lit8 v5, v5, 0x3

    mul-int/2addr v4, v5

    int-to-float v4, v4

    .line 1464
    .local v4, "hue":F
    add-int/lit8 v5, v0, 0x2

    rem-int/lit8 v5, v5, 0x3

    aget v5, p1, v5

    sub-int/2addr v5, v1

    int-to-float v5, v5

    const/high16 v6, 0x42700000    # 60.0f

    mul-float/2addr v5, v6

    int-to-float v7, v3

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    .line 1465
    add-int/lit8 v5, v0, 0x1

    rem-int/lit8 v5, v5, 0x3

    aget v5, p1, v5

    sub-int v5, v2, v5

    int-to-float v5, v5

    mul-float/2addr v6, v5

    int-to-float v5, v3

    div-float/2addr v6, v5

    add-float/2addr v4, v6

    .line 1467
    return v4
.end method

.method private static getIconFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 587
    const/4 v0, 0x0

    .line 588
    .local v0, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    sget-object v1, Lmiui/content/res/IconCustomizer;->sRawIconCache:Ljava/util/Map;

    monitor-enter v1

    .line 589
    :try_start_0
    sget-object v2, Lmiui/content/res/IconCustomizer;->sRawIconCache:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    move-object v0, v2

    .line 590
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 591
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 590
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private static getIconFromTheme(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;

    .line 164
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 165
    const/4 v0, 0x0

    return-object v0

    .line 168
    :cond_0
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/content/res/ThemeResourcesSystem;->getIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static getIconNames(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 747
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 748
    .local v0, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lmiui/content/res/IconCustomizer;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 750
    .local v1, "fileName":Ljava/lang/String;
    sget-object v2, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 751
    .local v2, "mappingName":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 752
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 759
    const-string v3, "%s.png"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    :cond_1
    return-object v0
.end method

.method private static getIconRelativePath(Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "info"    # Landroid/content/pm/PackageItemInfo;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "innerPath"    # Ljava/lang/String;
    .param p4, "checkFilePath"    # Ljava/lang/String;

    .line 546
    invoke-static {p1, p2}, Lmiui/content/res/IconCustomizer;->getIconNames(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 547
    .local v0, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    if-eqz p0, :cond_0

    iget v1, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    if-nez v1, :cond_0

    .line 548
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 551
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 552
    .local v3, "name":Ljava/lang/String;
    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 553
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, ".png"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 555
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 556
    .local v4, "relativePath":Ljava/lang/String;
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmiui/content/res/ThemeResourcesSystem;->hasIcon(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 557
    return-object v4

    .line 550
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "relativePath":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 560
    .end local v2    # "i":I
    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getMiuiModDownloadIconDir()Ljava/lang/String;
    .locals 2

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/user/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/com.xiaomi.market/files/miui_mod_icons/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMiuiModIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .line 727
    sget-boolean v0, Lmiui/os/Build;->IS_CU_CUSTOMIZATION_TEST:Z

    if-eqz v0, :cond_1

    .line 728
    const-string v0, "com.android.stk.png"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    const-string p0, "com.android.stk.cu.png"

    goto :goto_0

    .line 730
    :cond_0
    const-string v0, "com.android.stk.StkLauncherActivity2.png"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 731
    const-string p0, "com.android.stk.cu.2.png"

    .line 735
    :cond_1
    :goto_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/media/theme/miui_mod_icons/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 737
    .local v0, "iconFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 738
    .local v1, "icon":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 739
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiui/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 740
    invoke-static {v1}, Lmiui/content/res/IconCustomizer;->scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 743
    :cond_2
    return-object v1
.end method

.method public static getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "filename"    # Ljava/lang/String;

    .line 145
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 147
    :cond_0
    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->getIconFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 148
    .local v0, "icon":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 149
    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->getIconFromTheme(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 150
    if-nez v0, :cond_1

    .line 151
    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->getMiuiModIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 153
    :cond_1
    if-eqz v0, :cond_2

    .line 154
    sget-object v1, Lmiui/content/res/IconCustomizer;->sRawIconCache:Ljava/util/Map;

    monitor-enter v1

    .line 155
    :try_start_0
    sget-object v2, Lmiui/content/res/IconCustomizer;->sRawIconCache:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 160
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getRawIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5
    .param p0, "filename"    # Ljava/lang/String;

    .line 132
    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->getDrawableFromMemoryCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 133
    .local v0, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    if-nez v0, :cond_0

    .line 134
    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lmiui/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_0

    .line 136
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    monitor-enter v1

    .line 137
    :try_start_0
    sget-object v2, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 141
    :cond_0
    :goto_0
    return-object v0
.end method

.method private static getSaturation(I[I)F
    .locals 6
    .param p0, "color"    # I
    .param p1, "RGB"    # [I

    .line 1423
    invoke-static {p0, p1}, Lmiui/content/res/IconCustomizer;->colorToRGB(I[I)V

    .line 1425
    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    const/4 v4, 0x2

    aget v5, p1, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1426
    .local v1, "min":I
    aget v0, p1, v0

    aget v2, p1, v2

    aget v3, p1, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1427
    .local v0, "max":I
    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1430
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    sub-int v3, v0, v1

    int-to-float v3, v3

    mul-float/2addr v2, v3

    int-to-float v3, v0

    div-float/2addr v2, v3

    return v2

    .line 1428
    :cond_1
    :goto_0
    int-to-float v2, p0

    return v2
.end method

.method private static getScaleRatio(Landroid/graphics/drawable/Drawable;Z)F
    .locals 11
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "cropOutside"    # Z

    .line 770
    instance-of v0, p0, Landroid/graphics/drawable/PaintDrawable;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    return v1

    .line 772
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 773
    .local v0, "sourceWidth":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 774
    .local v2, "sourceHeight":I
    if-lez v0, :cond_4

    if-gtz v0, :cond_1

    goto :goto_0

    .line 776
    :cond_1
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconContentWidth()I

    move-result v3

    .line 777
    .local v3, "customizedIconContentWidth":I
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconContentHeight()I

    move-result v4

    .line 778
    .local v4, "customizedIconContentHeight":I
    int-to-float v5, v3

    int-to-float v6, v0

    div-float/2addr v5, v6

    .line 779
    .local v5, "ratioW":F
    int-to-float v6, v4

    int-to-float v7, v2

    div-float/2addr v6, v7

    .line 781
    .local v6, "ratioH":F
    if-eqz p1, :cond_2

    .line 782
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconWidth()I

    move-result v1

    int-to-float v1, v1

    int-to-float v7, v0

    div-float/2addr v1, v7

    .line 783
    .end local v5    # "ratioW":F
    .local v1, "ratioW":F
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconHeight()I

    move-result v5

    int-to-float v5, v5

    int-to-float v7, v2

    div-float/2addr v5, v7

    .line 784
    .end local v6    # "ratioH":F
    .local v5, "ratioH":F
    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v6

    return v6

    .line 787
    .end local v1    # "ratioW":F
    .local v5, "ratioW":F
    .restart local v6    # "ratioH":F
    :cond_2
    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->getContentRatio(Landroid/graphics/drawable/Drawable;)F

    move-result v7

    .line 788
    .local v7, "contentRatio":F
    const-string v8, "IconCustomizer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Content Ratio = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    const/4 v8, 0x0

    cmpl-float v8, v7, v8

    if-lez v8, :cond_3

    const/high16 v8, 0x40000000    # 2.0f

    cmpg-float v8, v7, v8

    if-gtz v8, :cond_3

    .line 790
    return v7

    .line 792
    :cond_3
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    return v1

    .line 774
    .end local v3    # "customizedIconContentWidth":I
    .end local v4    # "customizedIconContentHeight":I
    .end local v5    # "ratioW":F
    .end local v6    # "ratioH":F
    .end local v7    # "contentRatio":F
    :cond_4
    :goto_0
    return v1
.end method

.method private static getServiceManager(Landroid/content/Context;)Lmiui/content/res/ThemeRuntimeManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 467
    sget-object v0, Lmiui/content/res/IconCustomizer;->sThemeRuntimeManager:Lmiui/content/res/ThemeRuntimeManager;

    if-nez v0, :cond_2

    .line 468
    const-class v0, Lmiui/content/res/IconCustomizer;

    monitor-enter v0

    .line 469
    :try_start_0
    sget-object v1, Lmiui/content/res/IconCustomizer;->sThemeRuntimeManager:Lmiui/content/res/ThemeRuntimeManager;

    if-nez v1, :cond_1

    .line 470
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 471
    .local v1, "saveContext":Landroid/content/Context;
    if-nez v1, :cond_0

    .line 472
    move-object v1, p0

    .line 474
    :cond_0
    new-instance v2, Lmiui/content/res/ThemeRuntimeManager;

    invoke-direct {v2, v1}, Lmiui/content/res/ThemeRuntimeManager;-><init>(Landroid/content/Context;)V

    sput-object v2, Lmiui/content/res/IconCustomizer;->sThemeRuntimeManager:Lmiui/content/res/ThemeRuntimeManager;

    .line 476
    .end local v1    # "saveContext":Landroid/content/Context;
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 478
    :cond_2
    :goto_0
    sget-object v0, Lmiui/content/res/IconCustomizer;->sThemeRuntimeManager:Lmiui/content/res/ThemeRuntimeManager;

    return-object v0
.end method

.method private static getValue(I[I)F
    .locals 3
    .param p0, "color"    # I
    .param p1, "RGB"    # [I

    .line 1401
    invoke-static {p0, p1}, Lmiui/content/res/IconCustomizer;->colorToRGB(I[I)V

    .line 1403
    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget v2, p1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1404
    .local v0, "max":I
    int-to-float v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v2, v1

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v2, v1

    return v2
.end method

.method public static hdpiIconSizeToCurrent(D)D
    .locals 4
    .param p0, "pixelSize"    # D

    .line 1176
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconWidth()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, p0

    const-wide v2, 0x4056800000000000L    # 90.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static hdpiIconSizeToCurrent(F)F
    .locals 2
    .param p0, "pixelSize"    # F

    .line 1168
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p0

    const/high16 v1, 0x42b40000    # 90.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static hdpiIconSizeToCurrent(I)I
    .locals 2
    .param p0, "pixelSize"    # I

    .line 1172
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconWidth()I

    move-result v0

    mul-int/2addr v0, p0

    int-to-float v0, v0

    const/high16 v1, 0x42b40000    # 90.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private static isAdaptiveIconDrawale(Landroid/graphics/drawable/Drawable;)Z
    .locals 4
    .param p0, "dr"    # Landroid/graphics/drawable/Drawable;

    .line 948
    const/4 v0, 0x0

    .line 950
    .local v0, "ret":Z
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    if-eqz p0, :cond_0

    .line 952
    :try_start_0
    const-string v1, "android.graphics.drawable.AdaptiveIconDrawable"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 953
    .local v1, "clazz":Ljava/lang/Class;
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 956
    .end local v1    # "clazz":Ljava/lang/Class;
    goto :goto_0

    .line 954
    :catch_0
    move-exception v1

    .line 955
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "IconCustomizer"

    const-string v3, "check adaptive icon fail"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return v0
.end method

.method private static isRegularShape(Landroid/graphics/Bitmap;IIII)Z
    .locals 9
    .param p0, "b"    # Landroid/graphics/Bitmap;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 837
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    .line 838
    .local v0, "rowBytes":I
    invoke-static {p0}, Lmiui/graphics/BitmapUtil;->getBuffer(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    .line 839
    .local v1, "pixels":[B
    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 840
    return v2

    .line 843
    :cond_0
    sub-int v3, p3, p1

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v3, p1

    .local v3, "x":I
    :goto_0
    sub-int v4, p3, p1

    const/4 v5, 0x3

    mul-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x4

    add-int/2addr v4, p1

    const/4 v6, 0x0

    const/16 v7, 0x32

    if-ge v3, v4, :cond_3

    .line 844
    mul-int v4, p2, v0

    shl-int/lit8 v8, v3, 0x2

    add-int/2addr v4, v8

    add-int/2addr v4, v5

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    if-ge v4, v7, :cond_1

    return v6

    .line 845
    :cond_1
    mul-int v4, p4, v0

    shl-int/lit8 v8, v3, 0x2

    add-int/2addr v4, v8

    add-int/2addr v4, v5

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    if-ge v4, v7, :cond_2

    return v6

    .line 843
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 847
    .end local v3    # "x":I
    :cond_3
    sub-int v3, p4, p2

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v3, p2

    .local v3, "y":I
    :goto_1
    sub-int v4, p4, p2

    mul-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x4

    add-int/2addr v4, p2

    if-ge v3, v4, :cond_6

    .line 848
    mul-int v4, v3, v0

    shl-int/lit8 v8, p1, 0x2

    add-int/2addr v4, v8

    add-int/2addr v4, v5

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    if-ge v4, v7, :cond_4

    return v6

    .line 849
    :cond_4
    mul-int v4, v3, v0

    shl-int/lit8 v8, p3, 0x2

    add-int/2addr v4, v8

    add-int/2addr v4, v5

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    if-ge v4, v7, :cond_5

    return v6

    .line 847
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 851
    .end local v3    # "y":I
    :cond_6
    return v2
.end method

.method private static loadIconConfig()Lmiui/content/res/IconCustomizer$IconConfig;
    .locals 17

    .line 1180
    new-instance v0, Lmiui/content/res/IconCustomizer$IconConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/content/res/IconCustomizer$IconConfig;-><init>(Lmiui/content/res/IconCustomizer$1;)V

    move-object v2, v0

    .line 1197
    .local v2, "iconConfig":Lmiui/content/res/IconCustomizer$IconConfig;
    sget-boolean v0, Lmiui/os/Build;->IS_MIUI:Z

    if-eqz v0, :cond_1a

    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 1202
    :cond_0
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v0

    const-string v3, "transform_config.xml"

    invoke-virtual {v0, v3, v1}, Lmiui/content/res/ThemeResourcesSystem;->getIconStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object v1

    .line 1203
    .local v1, "input":Ljava/io/InputStream;
    if-nez v1, :cond_1

    .line 1204
    const-string v0, "IconCustomizer"

    const-string v3, "can\'t load transform_config.xml"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    return-object v2

    .line 1208
    :cond_1
    const/4 v3, 0x0

    .line 1209
    .local v3, "root":Lorg/w3c/dom/Element;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    move-object v4, v0

    .line 1211
    .local v4, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 1212
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object v3, v5

    .line 1216
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    nop

    .line 1219
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1223
    nop

    .line 1225
    if-eqz v3, :cond_19

    .line 1226
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    move-object v5, v0

    .line 1228
    .local v5, "configs":Lorg/w3c/dom/NodeList;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    :try_start_2
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    const/4 v8, 0x1

    if-ge v6, v7, :cond_18

    .line 1229
    invoke-interface {v5, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    if-eq v7, v8, :cond_2

    .line 1230
    goto/16 :goto_4

    .line 1232
    :cond_2
    invoke-interface {v5, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 1233
    .local v7, "config":Lorg/w3c/dom/Element;
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v9

    .line 1234
    .local v9, "name":Ljava/lang/String;
    const-string v10, "IconFilters"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1235
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    invoke-static {v8}, Lmiui/content/res/IconCustomizer;->loadIconFilters(Lorg/w3c/dom/NodeList;)Lmiui/imagefilters/IImageFilter$ImageFilterGroup;

    move-result-object v8

    iput-object v8, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mIconFilters:Lmiui/imagefilters/IImageFilter$ImageFilterGroup;

    goto/16 :goto_4

    .line 1236
    :cond_3
    const-string v10, "PointsMapping"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1237
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 1238
    .local v10, "points":Lorg/w3c/dom/NodeList;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1239
    .local v11, "pointsMappingFrom":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1240
    .local v12, "pointsMappingTo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_1
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    if-ge v13, v14, :cond_6

    .line 1241
    invoke-interface {v10, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v14

    if-eq v14, v8, :cond_4

    .line 1242
    goto :goto_2

    .line 1244
    :cond_4
    invoke-interface {v10, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;

    .line 1245
    .local v14, "point":Lorg/w3c/dom/Element;
    const-string v15, "Point"

    invoke-interface {v14}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1246
    const-string v0, "fromX"

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1247
    const-string v0, "fromY"

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1248
    const-string v0, "toX"

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1249
    const-string v0, "toY"

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1240
    .end local v14    # "point":Lorg/w3c/dom/Element;
    :cond_5
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1253
    .end local v13    # "j":I
    :cond_6
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    .line 1254
    .local v0, "size":I
    if-lez v0, :cond_7

    const/16 v8, 0x8

    if-gt v0, v8, :cond_7

    .line 1255
    new-array v8, v0, [F

    iput-object v8, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingFrom:[F

    .line 1256
    new-array v8, v0, [F

    iput-object v8, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingTo:[F

    .line 1257
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_3
    if-ge v8, v0, :cond_7

    .line 1258
    iget-object v13, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingFrom:[F

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    aput v14, v13, v8

    .line 1259
    iget-object v13, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingTo:[F

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    aput v14, v13, v8

    .line 1257
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1262
    .end local v0    # "size":I
    .end local v8    # "j":I
    .end local v10    # "points":Lorg/w3c/dom/NodeList;
    .end local v11    # "pointsMappingFrom":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v12    # "pointsMappingTo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :cond_7
    goto/16 :goto_4

    :cond_8
    const-string v0, "Config"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1263
    const-string v0, "name"

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1264
    .local v0, "configName":Ljava/lang/String;
    const-string v8, "value"

    invoke-interface {v7, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1265
    .local v8, "configValue":Ljava/lang/String;
    const-string v10, "UseModIcon"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1266
    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mUseModIcon:Z

    .line 1268
    .end local v0    # "configName":Ljava/lang/String;
    .end local v8    # "configValue":Ljava/lang/String;
    :cond_9
    goto/16 :goto_4

    .line 1271
    :cond_a
    const-string v0, "ScaleX"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1272
    const-string v0, "value"

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mScaleX:F

    goto/16 :goto_4

    .line 1273
    :cond_b
    const-string v0, "ScaleY"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1274
    const-string v0, "value"

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mScaleY:F

    goto/16 :goto_4

    .line 1275
    :cond_c
    const-string v0, "SkewX"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1276
    const-string v0, "value"

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mSkewX:F

    goto/16 :goto_4

    .line 1277
    :cond_d
    const-string v0, "SkewY"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1278
    const-string v0, "value"

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mSkewY:F

    goto/16 :goto_4

    .line 1279
    :cond_e
    const-string v0, "TransX"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1280
    const-string v0, "value"

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(F)F

    move-result v0

    iput v0, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mTransX:F

    goto/16 :goto_4

    .line 1281
    :cond_f
    const-string v0, "TransY"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1282
    const-string v0, "value"

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(F)F

    move-result v0

    iput v0, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mTransY:F

    goto/16 :goto_4

    .line 1283
    :cond_10
    const-string v0, "RotateX"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1284
    const-string v0, "value"

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mRotateX:F

    goto/16 :goto_4

    .line 1285
    :cond_11
    const-string v0, "RotateY"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1286
    const-string v0, "value"

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mRotateY:F

    goto/16 :goto_4

    .line 1287
    :cond_12
    const-string v0, "RotateZ"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1288
    const-string v0, "value"

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mRotateZ:F

    goto :goto_4

    .line 1289
    :cond_13
    const-string v0, "CameraX"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1290
    const-string v0, "value"

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(F)F

    move-result v0

    iput v0, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mCameraX:F

    goto :goto_4

    .line 1291
    :cond_14
    const-string v0, "CameraY"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1292
    const-string v0, "value"

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(F)F

    move-result v0

    iput v0, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mCameraY:F

    goto :goto_4

    .line 1293
    :cond_15
    const-string v0, "OverridedIrregularContentWidth"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1294
    const-string v0, "value"

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getDimension(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mOverridedIrregularContentWidth:I

    goto :goto_4

    .line 1295
    :cond_16
    const-string v0, "OverridedIrregularContentHeight"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1296
    const-string v0, "value"

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getDimension(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mOverridedIrregularContentHeight:I

    .line 1228
    .end local v7    # "config":Lorg/w3c/dom/Element;
    .end local v9    # "name":Ljava/lang/String;
    :cond_17
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1301
    .end local v6    # "i":I
    :cond_18
    sput-boolean v8, Lmiui/content/res/IconCustomizer;->sIconTransformNeeded:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1304
    goto :goto_5

    .line 1302
    :catch_0
    move-exception v0

    .line 1303
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "IconCustomizer"

    const-string v7, "transform_config.xml parse failed."

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1307
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "configs":Lorg/w3c/dom/NodeList;
    :cond_19
    :goto_5
    return-object v2

    .line 1220
    :catch_1
    move-exception v0

    move-object v5, v0

    .line 1221
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1222
    return-object v2

    .line 1213
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 1214
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "IconCustomizer"

    const-string v6, "load icon config failed."

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1215
    return-object v2

    .line 1198
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "input":Ljava/io/InputStream;
    .end local v3    # "root":Lorg/w3c/dom/Element;
    .end local v4    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :cond_1a
    :goto_6
    const-string v0, "IconCustomizer"

    const-string v1, "can\'t load ThemeResources"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    return-object v2
.end method

.method private static loadIconFilters(Lorg/w3c/dom/NodeList;)Lmiui/imagefilters/IImageFilter$ImageFilterGroup;
    .locals 17
    .param p0, "configs"    # Lorg/w3c/dom/NodeList;

    .line 1101
    move-object/from16 v1, p0

    const-string v2, "ignoreWhenNotSupported"

    .line 1102
    .local v2, "IGNORE_WHEN_NOT_SUPPORT":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 1104
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lmiui/imagefilters/IImageFilter;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move v5, v0

    .end local v0    # "i":I
    .local v5, "i":I
    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v5, v0, :cond_d

    .line 1105
    invoke-interface {v1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v6, 0x1

    if-eq v0, v6, :cond_0

    goto/16 :goto_8

    .line 1107
    :cond_0
    new-instance v0, Lmiui/imagefilters/ImageFilterBuilder;

    invoke-direct {v0}, Lmiui/imagefilters/ImageFilterBuilder;-><init>()V

    move-object v7, v0

    .line 1108
    .local v7, "builder":Lmiui/imagefilters/ImageFilterBuilder;
    invoke-interface {v1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lorg/w3c/dom/Element;

    .line 1109
    .local v8, "ele":Lorg/w3c/dom/Element;
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v9

    .line 1111
    .local v9, "name":Ljava/lang/String;
    const-string v0, "Filter"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1112
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 1113
    .local v10, "filterChildren":Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-ge v0, v11, :cond_9

    .line 1114
    invoke-interface {v10, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v11

    if-eq v11, v6, :cond_1

    goto/16 :goto_6

    .line 1116
    :cond_1
    invoke-interface {v10, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Element;

    .line 1117
    .local v11, "paramEle":Lorg/w3c/dom/Element;
    const-string v12, "Param"

    invoke-interface {v11}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1118
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1119
    .local v12, "paramValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-string v13, "ignoreWhenNotSupported"

    invoke-interface {v11, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1121
    .local v13, "strParamIgnoreWhenNotSupported":Ljava/lang/String;
    invoke-interface {v11}, Lorg/w3c/dom/Element;->hasChildNodes()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1122
    invoke-interface {v11}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v14

    .line 1123
    .local v14, "paramChildNodes":Lorg/w3c/dom/NodeList;
    const/4 v15, 0x0

    .local v15, "k":I
    :goto_2
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v15, v4, :cond_4

    .line 1124
    invoke-interface {v14, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    if-eq v4, v6, :cond_2

    .line 1125
    goto :goto_3

    .line 1127
    :cond_2
    invoke-interface {v14, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 1128
    .local v4, "paramChildEle":Lorg/w3c/dom/Element;
    const-string v6, "IconFilters"

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1129
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-static {v1}, Lmiui/content/res/IconCustomizer;->loadIconFilters(Lorg/w3c/dom/NodeList;)Lmiui/imagefilters/IImageFilter$ImageFilterGroup;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1123
    .end local v4    # "paramChildEle":Lorg/w3c/dom/Element;
    :cond_3
    :goto_3
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p0

    const/4 v6, 0x1

    goto :goto_2

    .line 1134
    .end local v14    # "paramChildNodes":Lorg/w3c/dom/NodeList;
    .end local v15    # "k":I
    :cond_4
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_6

    .line 1135
    const-string v1, "value"

    invoke-interface {v11, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1136
    .local v1, "strParamValue":Ljava/lang/String;
    const-string v4, "\\|"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1137
    .local v4, "arrParamValue":[Ljava/lang/String;
    array-length v6, v4

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v6, :cond_6

    aget-object v15, v4, v14

    .line 1138
    .local v15, "str":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_5

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1137
    .end local v15    # "str":Ljava/lang/String;
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 1142
    .end local v1    # "strParamValue":Ljava/lang/String;
    .end local v4    # "arrParamValue":[Ljava/lang/String;
    :cond_6
    const-string v1, "name"

    invoke-interface {v11, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1143
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1142
    const/4 v4, 0x0

    goto :goto_5

    .line 1143
    :cond_7
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .line 1142
    :goto_5
    invoke-virtual {v7, v1, v12, v4}, Lmiui/imagefilters/ImageFilterBuilder;->addParam(Ljava/lang/String;Ljava/util/List;Z)V

    .line 1113
    .end local v11    # "paramEle":Lorg/w3c/dom/Element;
    .end local v12    # "paramValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v13    # "strParamIgnoreWhenNotSupported":Ljava/lang/String;
    :cond_8
    :goto_6
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, p0

    const/4 v6, 0x1

    goto/16 :goto_1

    .line 1146
    .end local v0    # "j":I
    :cond_9
    const-string v0, "name"

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lmiui/imagefilters/ImageFilterBuilder;->setFilterName(Ljava/lang/String;)V

    .line 1147
    const-string v0, "ignoreWhenNotSupported"

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1148
    .local v1, "strFilterIgnoreWhenNotSupported":Ljava/lang/String;
    nop

    .line 1149
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1148
    const/4 v4, 0x0

    goto :goto_7

    .line 1149
    :cond_a
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .line 1148
    :goto_7
    invoke-virtual {v7, v4}, Lmiui/imagefilters/ImageFilterBuilder;->setIgnoreWhenNotSupported(Z)V

    .line 1152
    :try_start_0
    invoke-virtual {v7}, Lmiui/imagefilters/ImageFilterBuilder;->createImageFilter()Lmiui/imagefilters/IImageFilter;

    move-result-object v0

    .line 1153
    .local v0, "filter":Lmiui/imagefilters/IImageFilter;
    if-eqz v0, :cond_b

    .line 1154
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lmiui/imagefilters/ImageFilterBuilder$NoSupportException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1160
    .end local v0    # "filter":Lmiui/imagefilters/IImageFilter;
    :cond_b
    goto :goto_8

    .line 1156
    :catch_0
    move-exception v0

    .line 1157
    .local v0, "e":Lmiui/imagefilters/ImageFilterBuilder$NoSupportException;
    invoke-virtual {v0}, Lmiui/imagefilters/ImageFilterBuilder$NoSupportException;->printStackTrace()V

    .line 1158
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1159
    goto :goto_9

    .line 1104
    .end local v0    # "e":Lmiui/imagefilters/ImageFilterBuilder$NoSupportException;
    .end local v1    # "strFilterIgnoreWhenNotSupported":Ljava/lang/String;
    .end local v7    # "builder":Lmiui/imagefilters/ImageFilterBuilder;
    .end local v8    # "ele":Lorg/w3c/dom/Element;
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "filterChildren":Lorg/w3c/dom/NodeList;
    :cond_c
    :goto_8
    add-int/lit8 v0, v5, 0x1

    .end local v5    # "i":I
    .local v0, "i":I
    move-object/from16 v1, p0

    goto/16 :goto_0

    .line 1164
    .end local v0    # "i":I
    :cond_d
    :goto_9
    new-instance v0, Lmiui/imagefilters/IImageFilter$ImageFilterGroup;

    const/4 v1, 0x0

    new-array v1, v1, [Lmiui/imagefilters/IImageFilter;

    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lmiui/imagefilters/IImageFilter;

    invoke-direct {v0, v1}, Lmiui/imagefilters/IImageFilter$ImageFilterGroup;-><init>([Lmiui/imagefilters/IImageFilter;)V

    return-object v0
.end method

.method private static makeIconMatrix(Lmiui/content/res/IconCustomizer$IconConfig;)Landroid/graphics/Matrix;
    .locals 7
    .param p0, "iconConfig"    # Lmiui/content/res/IconCustomizer$IconConfig;

    .line 1073
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1075
    .local v0, "matrix":Landroid/graphics/Matrix;
    iget-object v1, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingFrom:[F

    if-eqz v1, :cond_0

    .line 1076
    iget-object v2, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingFrom:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingTo:[F

    const/4 v5, 0x0

    iget-object v1, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingFrom:[F

    array-length v1, v1

    div-int/lit8 v6, v1, 0x2

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    goto :goto_0

    .line 1080
    :cond_0
    new-instance v1, Landroid/graphics/Camera;

    invoke-direct {v1}, Landroid/graphics/Camera;-><init>()V

    .line 1081
    .local v1, "camera":Landroid/graphics/Camera;
    iget v2, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mRotateX:F

    invoke-virtual {v1, v2}, Landroid/graphics/Camera;->rotateX(F)V

    .line 1082
    iget v2, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mRotateY:F

    invoke-virtual {v1, v2}, Landroid/graphics/Camera;->rotateY(F)V

    .line 1083
    iget v2, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mRotateZ:F

    invoke-virtual {v1, v2}, Landroid/graphics/Camera;->rotateZ(F)V

    .line 1084
    invoke-virtual {v1, v0}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 1087
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconWidth()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v4, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mCameraX:F

    sub-float/2addr v2, v4

    .line 1088
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    iget v5, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mCameraY:F

    sub-float/2addr v4, v5

    .line 1087
    invoke-virtual {v0, v2, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1089
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    iget v4, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mCameraX:F

    add-float/2addr v2, v4

    .line 1090
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    iget v3, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mCameraY:F

    add-float/2addr v4, v3

    .line 1089
    invoke-virtual {v0, v2, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1093
    iget v2, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mScaleX:F

    iget v3, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mScaleY:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1094
    iget v2, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mSkewX:F

    iget v3, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mSkewY:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postSkew(FF)Z

    .line 1097
    .end local v1    # "camera":Landroid/graphics/Camera;
    :goto_0
    return-object v0
.end method

.method public static prepareCustomizedIcons(Landroid/content/Context;Lmiui/content/res/IconCustomizer$CustomizedIconsListener;)V
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "l"    # Lmiui/content/res/IconCustomizer$CustomizedIconsListener;

    .line 393
    move-object/from16 v1, p1

    const-string v0, "icon_mask.png"

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 394
    .local v2, "mask":Landroid/graphics/Bitmap;
    const-string v0, "icon_background.png"

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 395
    .local v3, "background":Landroid/graphics/Bitmap;
    const-string v0, "icon_pattern.png"

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 396
    .local v4, "pattern":Landroid/graphics/Bitmap;
    const-string v0, "icon_border.png"

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 398
    .local v5, "cover":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    const/4 v7, 0x0

    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v6, v0

    .line 399
    .local v6, "launcherIntent":Landroid/content/Intent;
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 402
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    invoke-virtual {v7, v6, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 404
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    .line 405
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v0}, Lmiui/content/res/IconCustomizer$CustomizedIconsListener;->beforePrepareIcon(I)V

    .line 408
    :cond_0
    const/4 v0, 0x1

    .line 409
    .local v0, "taskCnt":I
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v9

    invoke-static {v9}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v9

    .line 411
    .local v9, "execService":Ljava/util/concurrent/ExecutorService;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 412
    .local v10, "time":J
    const-string v12, "IconCustomizer"

    const-string v13, "prepareCustomizedIcons start"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 414
    .local v12, "futures":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<*>;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 415
    .local v14, "info":Landroid/content/pm/ResolveInfo;
    new-instance v15, Lmiui/content/res/IconCustomizer$1;

    invoke-direct {v15, v14, v7}, Lmiui/content/res/IconCustomizer$1;-><init>(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)V

    invoke-interface {v9, v15}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v15

    .line 420
    .local v15, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    .end local v14    # "info":Landroid/content/pm/ResolveInfo;
    .end local v15    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    goto :goto_0

    .line 422
    :cond_1
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v14, v0

    .end local v0    # "taskCnt":I
    .local v14, "taskCnt":I
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    move-object v15, v0

    .line 424
    .restart local v15    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :try_start_0
    invoke-interface {v15}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    :goto_2
    goto :goto_3

    .line 427
    :catch_0
    move-exception v0

    move-object/from16 v16, v0

    .line 428
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    goto :goto_3

    .line 425
    :catch_1
    move-exception v0

    move-object/from16 v16, v0

    .line 426
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_2

    .line 430
    :goto_3
    if-eqz v1, :cond_2

    .line 431
    add-int/lit8 v0, v14, 0x1

    .local v0, "taskCnt":I
    invoke-interface {v1, v14}, Lmiui/content/res/IconCustomizer$CustomizedIconsListener;->finishPrepareIcon(I)V

    .line 433
    .end local v14    # "taskCnt":I
    .end local v15    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    move v14, v0

    .end local v0    # "taskCnt":I
    .restart local v14    # "taskCnt":I
    :cond_2
    goto :goto_1

    .line 434
    :cond_3
    invoke-interface {v9}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 435
    const-string v0, "IconCustomizer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "prepareCustomizedIcons end "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    sub-long v2, v15, v10

    .end local v2    # "mask":Landroid/graphics/Bitmap;
    .end local v3    # "background":Landroid/graphics/Bitmap;
    .local v17, "mask":Landroid/graphics/Bitmap;
    .local v18, "background":Landroid/graphics/Bitmap;
    invoke-virtual {v13, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    if-eqz v1, :cond_4

    .line 438
    invoke-interface/range {p1 .. p1}, Lmiui/content/res/IconCustomizer$CustomizedIconsListener;->finishAllIcons()V

    .line 440
    :cond_4
    return-void
.end method

.method private static saveCustomizedIconBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Context;)V
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .param p2, "context"    # Landroid/content/Context;

    .line 461
    invoke-static {p2}, Lmiui/content/res/IconCustomizer;->getServiceManager(Landroid/content/Context;)Lmiui/content/res/ThemeRuntimeManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lmiui/content/res/ThemeRuntimeManager;->saveIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 462
    return-void
.end method

.method public static saveCustomizedIconBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "dr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "context"    # Landroid/content/Context;

    .line 451
    instance-of v0, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 452
    invoke-static {p0, p1}, Lmiui/content/res/IconCustomizer;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lmiui/content/res/IconCustomizer;->saveCustomizedIconBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Context;)V

    .line 454
    :cond_0
    return-void
.end method

.method private static scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "icon"    # Landroid/graphics/Bitmap;

    .line 245
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 247
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 248
    .local v0, "density":I
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 249
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconWidth()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 250
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconHeight()I

    move-result v2

    if-ne v1, v2, :cond_1

    return-object p0

    .line 253
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 254
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 253
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 255
    .local v1, "scaleReverse":F
    const v2, 0x3dcccccd    # 0.1f

    add-float/2addr v1, v2

    .line 256
    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v2, v3, :cond_2

    .line 257
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, v1, v2

    float-to-int v2, v2

    .line 258
    .local v2, "blurRadius":I
    invoke-static {p0, v2}, Lmiui/graphics/BitmapFactory;->fastBlur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 259
    .local v3, "tempBlur":Landroid/graphics/Bitmap;
    move-object p0, v3

    .line 262
    .end local v2    # "blurRadius":I
    .end local v3    # "tempBlur":Landroid/graphics/Bitmap;
    :cond_2
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconWidth()I

    move-result v2

    invoke-static {}, Lmiui/content/res/IconCustomizer;->getCustomizedIconHeight()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {p0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 263
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 264
    return-object v2
.end method

.method private static setHue(IF[I)I
    .locals 10
    .param p0, "color"    # I
    .param p1, "hue"    # F
    .param p2, "RGB"    # [I

    .line 1471
    invoke-static {p0, p2}, Lmiui/content/res/IconCustomizer;->colorToRGB(I[I)V

    .line 1473
    const/4 v0, 0x0

    aget v1, p2, v0

    const/4 v2, 0x1

    aget v3, p2, v2

    const/4 v4, 0x2

    aget v5, p2, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1474
    .local v1, "min":I
    aget v0, p2, v0

    aget v2, p2, v2

    aget v3, p2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1476
    .local v0, "max":I
    sub-int v2, v0, v1

    .line 1477
    .local v2, "range":I
    if-nez v2, :cond_0

    .line 1478
    return p0

    .line 1480
    :cond_0
    :goto_0
    const/4 v3, 0x0

    cmpg-float v4, p1, v3

    const/high16 v5, 0x43b40000    # 360.0f

    if-gez v4, :cond_1

    .line 1481
    add-float/2addr p1, v5

    goto :goto_0

    .line 1482
    :cond_1
    :goto_1
    cmpl-float v4, p1, v5

    if-lez v4, :cond_2

    .line 1483
    sub-float/2addr p1, v5

    goto :goto_1

    .line 1485
    :cond_2
    const/high16 v4, 0x42f00000    # 120.0f

    div-float v4, p1, v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 1486
    .local v4, "index":I
    mul-int/lit8 v5, v4, 0x78

    int-to-float v5, v5

    sub-float/2addr p1, v5

    .line 1487
    add-int/lit8 v5, v4, 0x2

    rem-int/lit8 v5, v5, 0x3

    .line 1489
    .end local v4    # "index":I
    .local v5, "index":I
    aput v1, p2, v5

    .line 1490
    add-int/lit8 v4, v5, 0x2

    rem-int/lit8 v4, v4, 0x3

    int-to-float v6, v1

    int-to-float v7, v2

    const/high16 v8, 0x42700000    # 60.0f

    invoke-static {p1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v9

    mul-float/2addr v7, v9

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v6, v6

    aput v6, p2, v4

    .line 1491
    add-int/lit8 v4, v5, 0x1

    rem-int/lit8 v4, v4, 0x3

    int-to-float v6, v0

    int-to-float v7, v2

    sub-float v9, p1, v8

    invoke-static {v3, v9}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float/2addr v7, v3

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    float-to-int v3, v6

    aput v3, p2, v4

    .line 1493
    invoke-static {p2}, Lmiui/content/res/IconCustomizer;->RGBToColor([I)I

    move-result v3

    return v3
.end method

.method private static setSaturation(IF[I)I
    .locals 8
    .param p0, "color"    # I
    .param p1, "saturation"    # F
    .param p2, "RGB"    # [I

    .line 1434
    invoke-static {p0, p2}, Lmiui/content/res/IconCustomizer;->colorToRGB(I[I)V

    .line 1436
    const/4 v0, 0x0

    aget v1, p2, v0

    const/4 v2, 0x1

    aget v3, p2, v2

    const/4 v4, 0x2

    aget v5, p2, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1437
    .local v1, "min":I
    aget v3, p2, v0

    aget v5, p2, v2

    aget v6, p2, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1438
    .local v3, "max":I
    if-eqz v3, :cond_1

    if-ne v3, v1, :cond_0

    goto :goto_0

    .line 1441
    :cond_0
    const/high16 v5, 0x3f800000    # 1.0f

    sub-int v6, v3, v1

    int-to-float v6, v6

    mul-float/2addr v5, v6

    int-to-float v6, v3

    div-float/2addr v5, v6

    .line 1442
    .local v5, "currentSaturation":F
    int-to-float v6, v3

    aget v7, p2, v0

    sub-int v7, v3, v7

    int-to-float v7, v7

    mul-float/2addr v7, p1

    div-float/2addr v7, v5

    sub-float/2addr v6, v7

    float-to-int v6, v6

    aput v6, p2, v0

    .line 1443
    int-to-float v0, v3

    aget v6, p2, v2

    sub-int v6, v3, v6

    int-to-float v6, v6

    mul-float/2addr v6, p1

    div-float/2addr v6, v5

    sub-float/2addr v0, v6

    float-to-int v0, v0

    aput v0, p2, v2

    .line 1444
    int-to-float v0, v3

    aget v2, p2, v4

    sub-int v2, v3, v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    div-float/2addr v2, v5

    sub-float/2addr v0, v2

    float-to-int v0, v0

    aput v0, p2, v4

    .line 1446
    invoke-static {p2}, Lmiui/content/res/IconCustomizer;->RGBToColor([I)I

    move-result v0

    return v0

    .line 1439
    .end local v5    # "currentSaturation":F
    :cond_1
    :goto_0
    return p0
.end method

.method private static setValue(IF[I)I
    .locals 6
    .param p0, "color"    # I
    .param p1, "value"    # F
    .param p2, "RGB"    # [I

    .line 1408
    invoke-static {p0, p2}, Lmiui/content/res/IconCustomizer;->colorToRGB(I[I)V

    .line 1410
    const/4 v0, 0x0

    aget v1, p2, v0

    const/4 v2, 0x1

    aget v3, p2, v2

    const/4 v4, 0x2

    aget v5, p2, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1411
    .local v1, "max":I
    if-nez v1, :cond_0

    .line 1412
    return p0

    .line 1414
    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    int-to-float v5, v1

    mul-float/2addr v3, v5

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v3, v5

    .line 1415
    .local v3, "currentValue":F
    aget v5, p2, v0

    int-to-float v5, v5

    mul-float/2addr v5, p1

    div-float/2addr v5, v3

    float-to-int v5, v5

    aput v5, p2, v0

    .line 1416
    aget v0, p2, v2

    int-to-float v0, v0

    mul-float/2addr v0, p1

    div-float/2addr v0, v3

    float-to-int v0, v0

    aput v0, p2, v2

    .line 1417
    aget v0, p2, v4

    int-to-float v0, v0

    mul-float/2addr v0, p1

    div-float/2addr v0, v3

    float-to-int v0, v0

    aput v0, p2, v4

    .line 1419
    invoke-static {p2}, Lmiui/content/res/IconCustomizer;->RGBToColor([I)I

    move-result v0

    return v0
.end method

.method private static transToMiuiModIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .param p2, "original"    # Landroid/graphics/drawable/Drawable;
    .param p3, "filename"    # Ljava/lang/String;

    .line 676
    const/4 v0, 0x0

    .line 677
    .local v0, "dr":Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {p2}, Lmiui/content/res/IconCustomizer;->isAdaptiveIconDrawale(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    .line 678
    .local v1, "isAdaptiveIconDrawale":Z
    const/4 v2, 0x0

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 679
    invoke-static {p2, v2}, Lmiui/content/res/IconCustomizer;->getScaleRatio(Landroid/graphics/drawable/Drawable;Z)F

    move-result v3

    invoke-static {p2, v3, v1}, Lmiui/content/res/IconCustomizer;->drawableToBitmap(Landroid/graphics/drawable/Drawable;FZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 682
    :cond_0
    if-eqz p1, :cond_1

    .line 683
    const-string v3, "IconCustomizer"

    const-string v4, "Generate customized icon for %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p3, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const-string v2, "icon_mask.png"

    const-string v3, "icon_background.png"

    const-string v4, "icon_pattern.png"

    const-string v5, "icon_border.png"

    invoke-static {p1, v2, v3, v4, v5}, Lmiui/content/res/IconCustomizer;->composeIconWithTransform(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 685
    if-nez v1, :cond_1

    .line 686
    invoke-static {p3, p1, p0}, Lmiui/content/res/IconCustomizer;->saveCustomizedIconBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Context;)V

    .line 689
    :cond_1
    invoke-static {p1}, Lmiui/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 690
    return-object v0
.end method

.method private static transformBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "base"    # Landroid/graphics/Bitmap;
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .line 963
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 964
    .local v0, "outBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 965
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 966
    .local v1, "canvas":Landroid/graphics/Canvas;
    sget-object v2, Lmiui/content/res/IconCustomizer;->sPaintForTransformBitmap:Landroid/graphics/Paint;

    invoke-virtual {v1, p0, p1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 967
    return-object v0
.end method
