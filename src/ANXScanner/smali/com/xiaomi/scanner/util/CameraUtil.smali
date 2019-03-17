.class public Lcom/xiaomi/scanner/util/CameraUtil;
.super Ljava/lang/Object;
.source "CameraUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/util/CameraUtil$ImageFileNamer;,
        Lcom/xiaomi/scanner/util/CameraUtil$Singleton;
    }
.end annotation


# static fields
.field private static ANTI_BANDING_60_COUNTRY:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ASPECT_RATIO_TOLERANCE:D = 0.05

.field private static final LIMIT_SURFACE_WIDTH:I = 0x2d0

.field private static final MAX_PREVIEW_FPS_TIMES_1000:I = 0x61a80

.field private static final MAX_SURFACE_WIDTH:I = 0x438

.field private static final PREFERRED_PREVIEW_FPS_TIMES_1000:I = 0x7530

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

.field private static sCountryIso:Ljava/lang/String;

.field private static sDisplaySize:Landroid/graphics/Point;


# instance fields
.field private final mImageFileNamer:Lcom/xiaomi/scanner/util/CameraUtil$ImageFileNamer;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 31
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "CameraUtil"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/util/CameraUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    .line 41
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "TW"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "KR"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "SA"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "US"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "CA"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "BR"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "CO"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "MX"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "PH"

    aput-object v3, v1, v2

    .line 42
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/xiaomi/scanner/util/CameraUtil;->ANTI_BANDING_60_COUNTRY:Ljava/util/HashSet;

    .line 43
    sput-object v4, Lcom/xiaomi/scanner/util/CameraUtil;->sCountryIso:Ljava/lang/String;

    .line 44
    sput-object v4, Lcom/xiaomi/scanner/util/CameraUtil;->sDisplaySize:Landroid/graphics/Point;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/xiaomi/scanner/util/CameraUtil$ImageFileNamer;

    const v1, 0x7f07014d

    .line 50
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/util/CameraUtil$ImageFileNamer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/util/CameraUtil;->mImageFileNamer:Lcom/xiaomi/scanner/util/CameraUtil$ImageFileNamer;

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/xiaomi/scanner/util/CameraUtil$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/xiaomi/scanner/util/CameraUtil$1;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/util/CameraUtil;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static clamp(III)I
    .locals 0
    .param p0, "x"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 90
    if-le p0, p2, :cond_0

    .line 96
    .end local p2    # "max":I
    :goto_0
    return p2

    .line 93
    .restart local p2    # "max":I
    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    .line 94
    goto :goto_0

    :cond_1
    move p2, p0

    .line 96
    goto :goto_0
.end method

.method public static getAspectRatio(Lcom/android/ex/camera2/portability/Size;)D
    .locals 6
    .param p0, "size"    # Lcom/android/ex/camera2/portability/Size;

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v1

    .line 238
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v0

    .line 239
    .local v0, "height":I
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 240
    :cond_0
    const-wide/16 v2, 0x0

    .line 244
    :goto_0
    return-wide v2

    .line 241
    :cond_1
    if-le v1, v0, :cond_2

    .line 242
    int-to-double v2, v1

    int-to-double v4, v0

    div-double/2addr v2, v4

    goto :goto_0

    .line 244
    :cond_2
    int-to-double v2, v0

    int-to-double v4, v1

    div-double/2addr v2, v4

    goto :goto_0
.end method

.method public static getDefaultDisplaySize()Landroid/graphics/Point;
    .locals 5

    .prologue
    .line 376
    sget-object v2, Lcom/xiaomi/scanner/util/CameraUtil;->sDisplaySize:Landroid/graphics/Point;

    if-nez v2, :cond_1

    .line 377
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    sput-object v2, Lcom/xiaomi/scanner/util/CameraUtil;->sDisplaySize:Landroid/graphics/Point;

    .line 378
    invoke-static {}, Lcom/xiaomi/scanner/util/AndroidServices;->instance()Lcom/xiaomi/scanner/util/AndroidServices;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/scanner/util/AndroidServices;->provideWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 379
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/scanner/util/CameraUtil;->sDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 381
    sget-object v2, Lcom/xiaomi/scanner/util/CameraUtil;->sDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sget-object v3, Lcom/xiaomi/scanner/util/CameraUtil;->sDisplaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-le v2, v3, :cond_0

    .line 383
    sget-object v2, Lcom/xiaomi/scanner/util/CameraUtil;->sDisplaySize:Landroid/graphics/Point;

    iget v1, v2, Landroid/graphics/Point;->x:I

    .line 384
    .local v1, "x":I
    sget-object v2, Lcom/xiaomi/scanner/util/CameraUtil;->sDisplaySize:Landroid/graphics/Point;

    sget-object v3, Lcom/xiaomi/scanner/util/CameraUtil;->sDisplaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 385
    sget-object v2, Lcom/xiaomi/scanner/util/CameraUtil;->sDisplaySize:Landroid/graphics/Point;

    iput v1, v2, Landroid/graphics/Point;->y:I

    .line 388
    .end local v1    # "x":I
    :cond_0
    sget-boolean v2, Lcom/xiaomi/scanner/util/Util;->isNotchPhone:Z

    if-eqz v2, :cond_1

    .line 389
    sget-object v2, Lcom/xiaomi/scanner/util/CameraUtil;->sDisplaySize:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->y:I

    invoke-static {}, Lcom/xiaomi/scanner/module/code/utils/Utils;->getStatusBarHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 393
    :cond_1
    sget-object v2, Lcom/xiaomi/scanner/util/CameraUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "default display size ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/xiaomi/scanner/util/CameraUtil;->sDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 394
    new-instance v2, Landroid/graphics/Point;

    sget-object v3, Lcom/xiaomi/scanner/util/CameraUtil;->sDisplaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sget-object v4, Lcom/xiaomi/scanner/util/CameraUtil;->sDisplaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method public static getDisplayRotation()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-static {}, Lcom/xiaomi/scanner/util/AndroidServices;->instance()Lcom/xiaomi/scanner/util/AndroidServices;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/scanner/util/AndroidServices;->provideWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 101
    .local v1, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 102
    .local v0, "rotation":I
    packed-switch v0, :pswitch_data_0

    .line 112
    :goto_0
    :pswitch_0
    return v2

    .line 106
    :pswitch_1
    const/16 v2, 0x5a

    goto :goto_0

    .line 108
    :pswitch_2
    const/16 v2, 0xb4

    goto :goto_0

    .line 110
    :pswitch_3
    const/16 v2, 0x10e

    goto :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getImageRotation(IIZ)I
    .locals 1
    .param p0, "sensorOrientation"    # I
    .param p1, "deviceOrientation"    # I
    .param p2, "isFrontCamera"    # Z

    .prologue
    .line 412
    if-eqz p2, :cond_0

    .line 413
    rsub-int v0, p1, 0x168

    rem-int/lit16 p1, v0, 0x168

    .line 415
    :cond_0
    add-int v0, p0, p1

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method public static getLargestPictureSize(FLjava/util/List;I)Lcom/android/ex/camera2/portability/Size;
    .locals 18
    .param p0, "desiredAspectRatio"    # F
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/camera2/portability/Size;",
            ">;I)",
            "Lcom/android/ex/camera2/portability/Size;"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/camera2/portability/Size;>;"
    const/4 v4, 0x0

    .line 181
    .local v4, "maxPixelNumNoAspect":I
    new-instance v6, Lcom/android/ex/camera2/portability/Size;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v6, v12, v13}, Lcom/android/ex/camera2/portability/Size;-><init>(II)V

    .line 186
    .local v6, "maxSize":Lcom/android/ex/camera2/portability/Size;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/ex/camera2/portability/Size;

    .line 187
    .local v11, "size":Lcom/android/ex/camera2/portability/Size;
    invoke-virtual {v11}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v13

    invoke-virtual {v11}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v14

    mul-int v10, v13, v14

    .line 188
    .local v10, "pixelNum":I
    if-le v10, v4, :cond_0

    .line 189
    move v4, v10

    .line 190
    move-object v6, v11

    goto :goto_0

    .line 197
    .end local v10    # "pixelNum":I
    .end local v11    # "size":Lcom/android/ex/camera2/portability/Size;
    :cond_1
    new-instance v7, Lcom/android/ex/camera2/portability/Size;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v7, v12, v13}, Lcom/android/ex/camera2/portability/Size;-><init>(II)V

    .line 198
    .local v7, "maxSizeWithAspect":Lcom/android/ex/camera2/portability/Size;
    const/4 v5, 0x0

    .line 199
    .local v5, "maxPixelNumWithAspect":I
    new-instance v9, Lcom/android/ex/camera2/portability/Size;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v9, v12, v13}, Lcom/android/ex/camera2/portability/Size;-><init>(II)V

    .line 200
    .local v9, "minSizeExceedLimit":Lcom/android/ex/camera2/portability/Size;
    const v8, 0x7fffffff

    .line 201
    .local v8, "minPixelNumExceedLimit":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/ex/camera2/portability/Size;

    .line 202
    .restart local v11    # "size":Lcom/android/ex/camera2/portability/Size;
    invoke-static {v11}, Lcom/xiaomi/scanner/util/CameraUtil;->getAspectRatio(Lcom/android/ex/camera2/portability/Size;)D

    move-result-wide v2

    .line 204
    .local v2, "aspectRatio":D
    move/from16 v0, p0

    float-to-double v14, v0

    sub-double v14, v2, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    const-wide v16, 0x3fa999999999999aL    # 0.05

    cmpl-double v13, v14, v16

    if-gtz v13, :cond_2

    .line 207
    invoke-virtual {v11}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v13

    invoke-virtual {v11}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v14

    mul-int v10, v13, v14

    .line 208
    .restart local v10    # "pixelNum":I
    if-le v10, v5, :cond_4

    .line 209
    move v5, v10

    .line 210
    move-object v6, v11

    .line 211
    move/from16 v0, p2

    if-lt v10, v0, :cond_3

    if-nez p2, :cond_4

    .line 212
    :cond_3
    move-object v7, v11

    .line 215
    :cond_4
    if-eqz p2, :cond_2

    move/from16 v0, p2

    if-le v10, v0, :cond_2

    if-ge v10, v8, :cond_2

    .line 216
    move v8, v10

    .line 217
    move-object v9, v11

    goto :goto_1

    .line 221
    .end local v2    # "aspectRatio":D
    .end local v10    # "pixelNum":I
    .end local v11    # "size":Lcom/android/ex/camera2/portability/Size;
    :cond_5
    invoke-virtual {v7}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v12

    if-eqz v12, :cond_6

    .line 226
    .end local v7    # "maxSizeWithAspect":Lcom/android/ex/camera2/portability/Size;
    :goto_2
    return-object v7

    .line 223
    .restart local v7    # "maxSizeWithAspect":Lcom/android/ex/camera2/portability/Size;
    :cond_6
    invoke-virtual {v9}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v12

    if-eqz v12, :cond_7

    move-object v7, v9

    .line 224
    goto :goto_2

    :cond_7
    move-object v7, v6

    .line 226
    goto :goto_2
.end method

.method public static getOptimalPreviewSize(Ljava/util/List;D)Lcom/android/ex/camera2/portability/Size;
    .locals 3
    .param p1, "targetRatio"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/camera2/portability/Size;",
            ">;D)",
            "Lcom/android/ex/camera2/portability/Size;"
        }
    .end annotation

    .prologue
    .line 249
    .local p0, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/camera2/portability/Size;>;"
    invoke-static {p0, p1, p2}, Lcom/xiaomi/scanner/util/CameraUtil;->getOptimalPreviewSizeIndex(Ljava/util/List;D)I

    move-result v0

    .line 250
    .local v0, "optimalPickIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 251
    const/4 v1, 0x0

    .line 253
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ex/camera2/portability/Size;

    goto :goto_0
.end method

.method public static getOptimalPreviewSizeIndex(Ljava/util/List;D)I
    .locals 3
    .param p1, "targetRatio"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/camera2/portability/Size;",
            ">;D)I"
        }
    .end annotation

    .prologue
    .line 272
    .local p0, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/camera2/portability/Size;>;"
    const-wide v0, 0x3fa999999999999aL    # 0.05

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/xiaomi/scanner/util/CameraUtil;->getOptimalPreviewSizeIndex(Ljava/util/List;DLjava/lang/Double;)I

    move-result v0

    return v0
.end method

.method public static getOptimalPreviewSizeIndex(Ljava/util/List;DLjava/lang/Double;)I
    .locals 19
    .param p1, "targetRatio"    # D
    .param p3, "aspectRatioTolerance"    # Ljava/lang/Double;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/camera2/portability/Size;",
            ">;D",
            "Ljava/lang/Double;",
            ")I"
        }
    .end annotation

    .prologue
    .line 290
    .local p0, "previewSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/camera2/portability/Size;>;"
    if-nez p0, :cond_1

    .line 291
    const/4 v7, -0x1

    .line 366
    :cond_0
    :goto_0
    return v7

    .line 295
    :cond_1
    if-nez p3, :cond_2

    .line 296
    invoke-static/range {p0 .. p2}, Lcom/xiaomi/scanner/util/CameraUtil;->getOptimalPreviewSizeIndex(Ljava/util/List;D)I

    move-result v7

    goto :goto_0

    .line 299
    :cond_2
    const/4 v7, -0x1

    .line 300
    .local v7, "optimalSizeIndex":I
    const/4 v8, -0x1

    .line 301
    .local v8, "optimalSizeIndexLargger":I
    const v5, 0x7fffffff

    .line 302
    .local v5, "minDiff":I
    const v6, 0x7fffffff

    .line 306
    .local v6, "minDiffSmaller":I
    const/4 v9, 0x0

    .line 307
    .local v9, "point":Landroid/graphics/Point;
    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isMi2()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 308
    new-instance v9, Landroid/graphics/Point;

    .end local v9    # "point":Landroid/graphics/Point;
    const/16 v13, 0x3c0

    const/16 v14, 0x500

    invoke-direct {v9, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    .line 313
    .restart local v9    # "point":Landroid/graphics/Point;
    :goto_1
    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isSurfaceSizeLimited()Z

    move-result v13

    if-eqz v13, :cond_6

    const/16 v4, 0x2d0

    .line 314
    .local v4, "limitWidth":I
    :goto_2
    iget v13, v9, Landroid/graphics/Point;->x:I

    if-le v13, v4, :cond_3

    .line 315
    iget v13, v9, Landroid/graphics/Point;->y:I

    mul-int/2addr v13, v4

    iget v14, v9, Landroid/graphics/Point;->x:I

    div-int/2addr v13, v14

    iput v13, v9, Landroid/graphics/Point;->y:I

    .line 316
    iput v4, v9, Landroid/graphics/Point;->x:I

    .line 320
    :cond_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v13

    if-ge v3, v13, :cond_8

    .line 321
    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/ex/camera2/portability/Size;

    .line 322
    .local v12, "size":Lcom/android/ex/camera2/portability/Size;
    invoke-virtual {v12}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v13

    int-to-double v14, v13

    invoke-virtual {v12}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v13

    int-to-double v0, v13

    move-wide/from16 v16, v0

    div-double v10, v14, v16

    .line 323
    .local v10, "ratio":D
    sub-double v14, v10, p1

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    cmpl-double v13, v14, v16

    if-lez v13, :cond_7

    .line 320
    :cond_4
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 310
    .end local v3    # "i":I
    .end local v4    # "limitWidth":I
    .end local v10    # "ratio":D
    .end local v12    # "size":Lcom/android/ex/camera2/portability/Size;
    :cond_5
    invoke-static {}, Lcom/xiaomi/scanner/util/CameraUtil;->getDefaultDisplaySize()Landroid/graphics/Point;

    move-result-object v9

    goto :goto_1

    .line 313
    :cond_6
    const/16 v4, 0x438

    goto :goto_2

    .line 327
    .restart local v3    # "i":I
    .restart local v4    # "limitWidth":I
    .restart local v10    # "ratio":D
    .restart local v12    # "size":Lcom/android/ex/camera2/portability/Size;
    :cond_7
    invoke-virtual {v12}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v13

    iget v14, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    invoke-virtual {v12}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v14

    iget v15, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    add-int v2, v13, v14

    .line 328
    .local v2, "diff":I
    if-nez v2, :cond_b

    .line 329
    move v7, v3

    .line 330
    move v8, v3

    .line 347
    .end local v2    # "diff":I
    .end local v10    # "ratio":D
    .end local v12    # "size":Lcom/android/ex/camera2/portability/Size;
    :cond_8
    const/4 v13, -0x1

    if-eq v8, v13, :cond_9

    .line 348
    move v7, v8

    .line 353
    :cond_9
    const/4 v13, -0x1

    if-ne v7, v13, :cond_0

    .line 354
    sget-object v13, Lcom/xiaomi/scanner/util/CameraUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "No preview size match the aspect ratio. available sizes: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 355
    const v5, 0x7fffffff

    .line 356
    const/4 v3, 0x0

    :goto_5
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v13

    if-ge v3, v13, :cond_0

    .line 357
    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/ex/camera2/portability/Size;

    .line 358
    .restart local v12    # "size":Lcom/android/ex/camera2/portability/Size;
    invoke-virtual {v12}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v13

    iget v14, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    invoke-virtual {v12}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v14

    iget v15, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    add-int v2, v13, v14

    .line 359
    .restart local v2    # "diff":I
    if-ge v2, v5, :cond_a

    .line 360
    move v7, v3

    .line 361
    move v5, v2

    .line 356
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 333
    .restart local v10    # "ratio":D
    :cond_b
    invoke-virtual {v12}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v13

    iget v14, v9, Landroid/graphics/Point;->x:I

    if-lt v13, v14, :cond_c

    invoke-virtual {v12}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v13

    iget v14, v9, Landroid/graphics/Point;->y:I

    if-lt v13, v14, :cond_c

    .line 334
    if-ge v2, v6, :cond_c

    .line 335
    move v8, v3

    .line 336
    move v6, v2

    .line 339
    :cond_c
    if-ge v2, v5, :cond_4

    .line 340
    move v7, v3

    .line 341
    move v5, v2

    goto/16 :goto_4
.end method

.method public static getPhotoPreviewFpsRange(Lcom/android/ex/camera2/portability/CameraCapabilities;)[I
    .locals 1
    .param p0, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/scanner/util/CameraUtil;->getPhotoPreviewFpsRange(Ljava/util/List;)[I

    move-result-object v0

    return-object v0
.end method

.method public static getPhotoPreviewFpsRange(Ljava/util/List;)[I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[I>;)[I"
        }
    .end annotation

    .prologue
    .local p0, "frameRates":Ljava/util/List;, "Ljava/util/List<[I>;"
    const/4 v7, 0x0

    const/16 v12, 0x7530

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 130
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 131
    :cond_0
    sget-object v8, Lcom/xiaomi/scanner/util/CameraUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v9, "No supported frame rates returned!"

    invoke-static {v8, v9}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 165
    :goto_0
    return-object v7

    .line 136
    :cond_1
    const v2, 0x61a80

    .line 137
    .local v2, "lowestMinRate":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 138
    .local v5, "rate":[I
    aget v4, v5, v10

    .line 139
    .local v4, "minFps":I
    aget v3, v5, v11

    .line 140
    .local v3, "maxFps":I
    if-lt v3, v12, :cond_2

    if-gt v4, v12, :cond_2

    if-ge v4, v2, :cond_2

    .line 143
    move v2, v4

    goto :goto_1

    .line 149
    .end local v3    # "maxFps":I
    .end local v4    # "minFps":I
    .end local v5    # "rate":[I
    :cond_3
    const/4 v6, -0x1

    .line 150
    .local v6, "resultIndex":I
    const/4 v0, 0x0

    .line 151
    .local v0, "highestMaxRate":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_5

    .line 152
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 153
    .restart local v5    # "rate":[I
    aget v4, v5, v10

    .line 154
    .restart local v4    # "minFps":I
    aget v3, v5, v11

    .line 155
    .restart local v3    # "maxFps":I
    if-ne v4, v2, :cond_4

    if-ge v0, v3, :cond_4

    .line 156
    move v0, v3

    .line 157
    move v6, v1

    .line 151
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 161
    .end local v3    # "maxFps":I
    .end local v4    # "minFps":I
    .end local v5    # "rate":[I
    :cond_5
    if-ltz v6, :cond_6

    .line 162
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    goto :goto_0

    .line 164
    :cond_6
    sget-object v8, Lcom/xiaomi/scanner/util/CameraUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v9, "Can\'t find an appropriate frame rate range!"

    invoke-static {v8, v9}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static inlineRectToRectF(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 1
    .param p0, "rectF"    # Landroid/graphics/RectF;
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 79
    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 80
    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 81
    iget v0, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 82
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 83
    return-void
.end method

.method public static instance()Lcom/xiaomi/scanner/util/CameraUtil;
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lcom/xiaomi/scanner/util/CameraUtil$Singleton;->access$100()Lcom/xiaomi/scanner/util/CameraUtil;

    move-result-object v0

    return-object v0
.end method

.method public static isAntibanding60()Z
    .locals 2

    .prologue
    .line 424
    sget-object v0, Lcom/xiaomi/scanner/util/CameraUtil;->ANTI_BANDING_60_COUNTRY:Ljava/util/HashSet;

    sget-object v1, Lcom/xiaomi/scanner/util/CameraUtil;->sCountryIso:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static rectFToRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "rectF"    # Landroid/graphics/RectF;

    .prologue
    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 74
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-static {p0, v0}, Lcom/xiaomi/scanner/util/CameraUtil;->inlineRectToRectF(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 75
    return-object v0
.end method

.method public static rectToRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;
    .locals 5
    .param p0, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 86
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public static throwIfCameraDisabled()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/scanner/camera/CameraDisabledException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {}, Lcom/xiaomi/scanner/util/AndroidServices;->instance()Lcom/xiaomi/scanner/util/AndroidServices;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/scanner/util/AndroidServices;->provideDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 67
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    new-instance v1, Lcom/xiaomi/scanner/camera/CameraDisabledException;

    invoke-direct {v1}, Lcom/xiaomi/scanner/camera/CameraDisabledException;-><init>()V

    throw v1

    .line 70
    :cond_0
    return-void
.end method

.method public static updateCountryIso(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 434
    :try_start_0
    const-string v5, "android.content.Context"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 435
    .local v1, "ctx":Ljava/lang/Class;
    const-string v5, "COUNTRY_DETECTOR"

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const-string v6, "COUNTRY_DETECTOR"

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 436
    .local v3, "detectorStr":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/CountryDetector;

    .line 437
    .local v2, "detector":Landroid/location/CountryDetector;
    if-eqz v2, :cond_0

    .line 438
    invoke-virtual {v2}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    .line 439
    .local v0, "country":Landroid/location/Country;
    if-eqz v0, :cond_0

    .line 440
    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/xiaomi/scanner/util/CameraUtil;->sCountryIso:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    .end local v0    # "country":Landroid/location/Country;
    .end local v1    # "ctx":Ljava/lang/Class;
    .end local v2    # "detector":Landroid/location/CountryDetector;
    .end local v3    # "detectorStr":Ljava/lang/String;
    :cond_0
    :goto_0
    sget-object v5, Lcom/xiaomi/scanner/util/CameraUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "countryIso="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/xiaomi/scanner/util/CameraUtil;->sCountryIso:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 447
    return-void

    .line 443
    :catch_0
    move-exception v4

    .line 444
    .local v4, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/xiaomi/scanner/util/CameraUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v6, "reflect method error"

    invoke-static {v5, v6, v4}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public createJpegName(J)Ljava/lang/String;
    .locals 3
    .param p1, "dateTaken"    # J

    .prologue
    .line 450
    iget-object v1, p0, Lcom/xiaomi/scanner/util/CameraUtil;->mImageFileNamer:Lcom/xiaomi/scanner/util/CameraUtil$ImageFileNamer;

    monitor-enter v1

    .line 451
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/scanner/util/CameraUtil;->mImageFileNamer:Lcom/xiaomi/scanner/util/CameraUtil$ImageFileNamer;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/scanner/util/CameraUtil$ImageFileNamer;->generateName(J)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 452
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
