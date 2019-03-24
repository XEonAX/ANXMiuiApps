.class public Lcom/miui/internal/vip/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final ACCOUNT_CHANGE_FILTER:Landroid/content/IntentFilter;

.field static HEX_ARRAY:[C = null

.field static LOG_LEVEL_DEBUG:I = 0x0

.field static LOG_LEVEL_INFO:I = 0x0

.field static LOG_LEVEL_VERBOSE:I = 0x0

.field static LOG_LEVEL_WARN:I = 0x0

.field static final TAG:Ljava/lang/String; = "vip_sdk"

.field private static final URI_ROOT:Ljava/lang/String; = "://"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/miui/internal/vip/utils/Utils;->ACCOUNT_CHANGE_FILTER:Landroid/content/IntentFilter;

    .line 60
    sget-object v0, Lcom/miui/internal/vip/utils/Utils;->ACCOUNT_CHANGE_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.accounts.LOGIN_ACCOUNTS_POST_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    sget-object v0, Lcom/miui/internal/vip/utils/Utils;->ACCOUNT_CHANGE_FILTER:Landroid/content/IntentFilter;

    const-string v1, "com.xiaomi.action.XIAOMI_USER_INFO_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    const/4 v0, -0x1

    sput v0, Lcom/miui/internal/vip/utils/Utils;->LOG_LEVEL_VERBOSE:I

    .line 65
    const/4 v0, 0x0

    sput v0, Lcom/miui/internal/vip/utils/Utils;->LOG_LEVEL_DEBUG:I

    .line 66
    const/4 v0, 0x1

    sput v0, Lcom/miui/internal/vip/utils/Utils;->LOG_LEVEL_INFO:I

    .line 67
    sput v0, Lcom/miui/internal/vip/utils/Utils;->LOG_LEVEL_WARN:I

    .line 369
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/miui/internal/vip/utils/Utils;->HEX_ARRAY:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bitmapToStream(Landroid/graphics/Bitmap;)Ljava/io/InputStream;
    .locals 3
    .param p0, "bmp"    # Landroid/graphics/Bitmap;

    .line 326
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 327
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 328
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v1
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .line 372
    const/4 v0, 0x0

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    .line 373
    .local v1, "hexChars":[C
    nop

    .local v0, "j":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 374
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    .line 375
    .local v2, "v":I
    mul-int/lit8 v3, v0, 0x2

    sget-object v4, Lcom/miui/internal/vip/utils/Utils;->HEX_ARRAY:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v1, v3

    .line 376
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/miui/internal/vip/utils/Utils;->HEX_ARRAY:[C

    and-int/lit8 v5, v2, 0xf

    aget-char v4, v4, v5

    aput-char v4, v1, v3

    .line 373
    .end local v2    # "v":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 378
    .end local v0    # "j":I
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .line 354
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 355
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 356
    .local v3, "item":Ljava/lang/Object;, "TT;"
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 357
    const/4 v0, 0x1

    return v0

    .line 355
    .end local v3    # "item":Ljava/lang/Object;, "TT;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 361
    :cond_1
    return v0
.end method

.method public static createPhoto(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 310
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 311
    .local v0, "output":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 312
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v2, -0x1

    .line 313
    .local v2, "color":I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 314
    .local v3, "paint":Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 315
    .local v4, "rect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 316
    .local v5, "rectF":Landroid/graphics/RectF;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 317
    invoke-virtual {v1, v7, v7, v7, v7}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 318
    const/4 v6, -0x1

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 319
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    invoke-virtual {v1, v6, v7, v8, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 320
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 321
    invoke-virtual {v1, p0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 322
    return-object v0
.end method

.method public static decodeFile(Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "targetWidth"    # I
    .param p2, "targetHeight"    # I
    .param p3, "sampleSize"    # I

    .line 158
    invoke-static {p1, p2}, Lcom/miui/internal/vip/utils/Utils;->shouldScale(II)Z

    move-result v0

    .line 159
    .local v0, "shouldScale":Z
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt p3, v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 173
    .local v3, "opts":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v2, v3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    goto :goto_3

    .line 160
    .end local v3    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/miui/internal/vip/utils/Utils;->getBitmapSize(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    .line 162
    .restart local v3    # "opts":Landroid/graphics/BitmapFactory$Options;
    move v4, p3

    .line 163
    .local v4, "ssize":I
    if-eqz v0, :cond_4

    .line 164
    if-gtz p1, :cond_2

    move v5, v2

    goto :goto_1

    :cond_2
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v5, p1

    .line 165
    .local v5, "sampleSizeByWidth":I
    :goto_1
    if-gtz p2, :cond_3

    move v6, v2

    goto :goto_2

    :cond_3
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v6, p2

    .line 167
    .local v6, "sampleSizeByHeight":I
    :goto_2
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 169
    .end local v5    # "sampleSizeByWidth":I
    .end local v6    # "sampleSizeByHeight":I
    :cond_4
    iput-boolean v2, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 170
    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 171
    .end local v4    # "ssize":I
    nop

    .line 176
    :goto_3
    :try_start_0
    invoke-static {p0, v3}, Lmiui/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 177
    :catch_0
    move-exception v4

    .line 178
    .local v4, "e":Ljava/lang/OutOfMemoryError;
    const-string v5, "Failed to decode bitmap from %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {v5, v1}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    .end local v4    # "e":Ljava/lang/OutOfMemoryError;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static decodeResource(Landroid/content/Context;III)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "resourceId"    # I
    .param p2, "targetWidth"    # I
    .param p3, "targetHeight"    # I

    .line 184
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 185
    .local v0, "opts":Landroid/graphics/BitmapFactory$Options;
    invoke-static {p2, p3}, Lcom/miui/internal/vip/utils/Utils;->shouldScale(II)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 186
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 187
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lmiui/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 189
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v1, p2}, Lcom/miui/internal/vip/utils/Utils;->divCeiling(II)I

    move-result v1

    .line 190
    .local v1, "sampleSizeByWidth":I
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v4, p3}, Lcom/miui/internal/vip/utils/Utils;->divCeiling(II)I

    move-result v4

    .line 192
    .local v4, "sampleSizeByHeight":I
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 194
    .local v5, "sampleSize":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 196
    .local v6, "density":I
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 197
    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 199
    iput v6, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 200
    iput v6, v0, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    .line 201
    iput v6, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 202
    .end local v1    # "sampleSizeByWidth":I
    .end local v4    # "sampleSizeByHeight":I
    .end local v5    # "sampleSize":I
    .end local v6    # "density":I
    goto :goto_0

    .line 203
    :cond_0
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 206
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lmiui/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .local v1, "bmp":Landroid/graphics/Bitmap;
    return-object v1

    .line 208
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 209
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string v4, "Failed to decode resource %s, %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    aput-object v1, v5, v2

    invoke-static {v4, v5}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static divCeiling(II)I
    .locals 2
    .param p0, "dividend"    # I
    .param p1, "divisor"    # I

    .line 298
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 302
    :cond_0
    int-to-float v0, p0

    int-to-float v1, p1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 300
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private static getBitmapSize(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .line 140
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 141
    .local v0, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 142
    invoke-static {p0, v0}, Lmiui/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 143
    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 332
    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getFilePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "subDirName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 131
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 132
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 133
    .end local v0    # "dir":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "getFilePath %s failed, %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .line 119
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const-string v0, ""

    return-object v0

    .line 122
    :cond_0
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 123
    .local v0, "startIndex":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 124
    const-string v1, ""

    return-object v1

    .line 126
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;

    .line 382
    invoke-static {}, Lcom/miui/internal/vip/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 383
    .local v0, "ctx":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 385
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 386
    :catch_0
    move-exception v3

    .line 387
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "vip_sdk"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "failed to get package %s for %s"

    aput-object v6, v5, v2

    const/4 v2, 0x1

    aput-object p0, v5, v2

    const/4 v2, 0x2

    aput-object v3, v5, v2

    invoke-static {v4, v5}, Lcom/miui/internal/vip/utils/Utils;->logI(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    .end local v3    # "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    return-object v2
.end method

.method public static getPictureFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .line 115
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/miui/internal/vip/utils/Utils;->getFilePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasAccount()Z
    .locals 1

    .line 336
    invoke-static {}, Lcom/miui/internal/vip/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static hasData(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)Z"
        }
    .end annotation

    .line 107
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static hasData([Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    .line 306
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isBitmap(Ljava/lang/String;)Z
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .line 148
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/miui/internal/vip/utils/Utils;->getBitmapSize(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    .line 149
    .local v2, "opts":Landroid/graphics/BitmapFactory$Options;
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v3, :cond_0

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 150
    .end local v2    # "opts":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v2

    .line 151
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "isBitmap return false, %s"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    return v1
.end method

.method public static isDebugLogEnabled()Z
    .locals 1

    .line 103
    sget-boolean v0, Lmiui/os/Build;->IS_DEBUGGABLE:Z

    return v0
.end method

.method public static isInMainThread()Z
    .locals 2

    .line 111
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isStringUri(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 217
    const-string v0, "://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static varargs log(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "level"    # I
    .param p1, "log"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 88
    sget v0, Lcom/miui/internal/vip/utils/Utils;->LOG_LEVEL_DEBUG:I

    if-gt p0, v0, :cond_0

    invoke-static {}, Lcom/miui/internal/vip/utils/Utils;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", thread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "formatLog":Ljava/lang/String;
    sget v1, Lcom/miui/internal/vip/utils/Utils;->LOG_LEVEL_WARN:I

    if-ne p0, v1, :cond_1

    .line 91
    const-string v1, "vip_sdk"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    :cond_1
    sget v1, Lcom/miui/internal/vip/utils/Utils;->LOG_LEVEL_INFO:I

    if-ne p0, v1, :cond_2

    .line 93
    const-string v1, "vip_sdk"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 94
    :cond_2
    sget v1, Lcom/miui/internal/vip/utils/Utils;->LOG_LEVEL_DEBUG:I

    if-ne p0, v1, :cond_3

    .line 95
    const-string v1, "vip_sdk"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 97
    :cond_3
    const-string v1, "vip_sdk"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .end local v0    # "formatLog":Ljava/lang/String;
    :cond_4
    :goto_0
    return-void
.end method

.method public static varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 72
    sget v0, Lcom/miui/internal/vip/utils/Utils;->LOG_LEVEL_DEBUG:I

    invoke-static {v0, p0, p1}, Lcom/miui/internal/vip/utils/Utils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public static varargs logI(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 80
    sget v0, Lcom/miui/internal/vip/utils/Utils;->LOG_LEVEL_INFO:I

    invoke-static {v0, p0, p1}, Lcom/miui/internal/vip/utils/Utils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method public static varargs logV(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 76
    sget v0, Lcom/miui/internal/vip/utils/Utils;->LOG_LEVEL_VERBOSE:I

    invoke-static {v0, p0, p1}, Lcom/miui/internal/vip/utils/Utils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public static varargs logW(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 84
    sget v0, Lcom/miui/internal/vip/utils/Utils;->LOG_LEVEL_WARN:I

    invoke-static {v0, p0, p1}, Lcom/miui/internal/vip/utils/Utils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 365
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v1, "MD5"

    invoke-static {v0, v1}, Lmiui/security/DigestUtils;->get([BLjava/lang/String;)[B

    move-result-object v0

    .line 366
    .local v0, "digest":[B
    invoke-static {v0}, Lcom/miui/internal/vip/utils/Utils;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static setIntentExtra(Landroid/content/Intent;Lorg/json/JSONObject;)V
    .locals 6
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "args"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 280
    invoke-virtual {p1}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v0

    .line 281
    .local v0, "names":Lorg/json/JSONArray;
    if-nez v0, :cond_0

    .line 282
    return-void

    .line 284
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 285
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 286
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 287
    .local v4, "value":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 288
    invoke-virtual {p0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 291
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_2
    return-void
.end method

.method private static shouldScale(II)Z
    .locals 1
    .param p0, "targetWidth"    # I
    .param p1, "targetHeight"    # I

    .line 294
    if-gtz p0, :cond_1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static startActivity(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "forResult"    # Z

    .line 228
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 229
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 231
    :cond_0
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 233
    .local v0, "act":Landroid/app/Activity;
    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    .line 234
    :try_start_0
    const-string v3, "startActivityForResult, intent = %s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-virtual {v0, p1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 237
    :cond_2
    const-string v3, "startActivity, intent = %s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_1
    goto :goto_2

    .line 240
    :catch_0
    move-exception v3

    .line 241
    .local v3, "e":Landroid/content/ActivityNotFoundException;
    const-string v4, "startActivity failed, %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {v4, v1}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    invoke-virtual {v3}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 244
    .end local v3    # "e":Landroid/content/ActivityNotFoundException;
    :goto_2
    return-void
.end method

.method public static startActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 247
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/miui/internal/vip/utils/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 248
    return-void
.end method

.method public static startActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "extraJson"    # Ljava/lang/String;

    .line 255
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/miui/internal/vip/utils/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 256
    return-void
.end method

.method public static startActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "extraJson"    # Ljava/lang/String;
    .param p4, "forResult"    # Z

    .line 259
    const-string v0, "startActivity, ctx = %s, action = %s, packageName = %s, extraJson = %s, forResult = %s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    .line 260
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 259
    invoke-static {v0, v1}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    invoke-static {p1}, Lcom/miui/internal/vip/utils/Utils;->isStringUri(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    invoke-static {p0, p1}, Lcom/miui/internal/vip/utils/Utils;->startUri(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 264
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 265
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 266
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 270
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/miui/internal/vip/utils/Utils;->setIntentExtra(Landroid/content/Intent;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    goto :goto_0

    .line 271
    :catch_0
    move-exception v1

    .line 272
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "vip_sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can not set extra parameters, error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", extraJson = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    :goto_0
    invoke-static {p0, v0, p4}, Lcom/miui/internal/vip/utils/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 277
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_1
    return-void
.end method

.method public static startActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "forResult"    # Z

    .line 251
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/miui/internal/vip/utils/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 252
    return-void
.end method

.method public static startUri(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "uri"    # Ljava/lang/String;

    .line 221
    const-string v0, "startUri, ctx = %s, uri = %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v3, 0x1

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 224
    invoke-static {p0, v0, v2}, Lcom/miui/internal/vip/utils/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 225
    return-void
.end method

.method public static varargs toArrayList([[Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([[TT;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 340
    .local p0, "arrayList":[[Ljava/lang/Object;, "[[TT;"
    if-nez p0, :cond_0

    .line 341
    const/4 v0, 0x0

    return-object v0

    .line 344
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 346
    .local v3, "array":[Ljava/lang/Object;, "[TT;"
    if-eqz v3, :cond_1

    array-length v4, v3

    if-lez v4, :cond_1

    .line 347
    invoke-static {v0, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 345
    .end local v3    # "array":[Ljava/lang/Object;, "[TT;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 350
    :cond_2
    return-object v0
.end method
