.class public final Lcom/nexstreaming/nexeditorsdk/nexConfig;
.super Ljava/lang/Object;
.source "nexConfig.java"


# static fields
.field public static final kDeviceMaxGamma:I = 0xa

.field public static final kDeviceMaxLightLevel:I = 0x9

.field public static final kForceDirectExport:I = 0x6

.field public static final kHardwareCodecMemSize:I = 0x1

.field public static final kHardwareDecMaxCount:I = 0x2

.field public static final kMaxResolution:I = 0x5

.field public static final kMaxSupportedFPS:I = 0x3

.field public static final kNativeLogLevel:I = 0x7

.field public static final kSetUserConfig:I = 0x0

.field public static final kSupportMPEGV4:I = 0x4

.field public static final kUseTimeChecker:I = 0x8

.field static sConfigProperty:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 167
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexConfig;->sConfigProperty:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x880000
        0x4
        0x78
        0x0
        0x880000
        0x0
        0x2
        0x1
        0x226
        0x960
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProperty(I)I
    .locals 3

    .prologue
    .line 256
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexConfig;->sConfigProperty:[I

    array-length v0, v0

    if-gt v0, p0, :cond_0

    .line 257
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;

    const/4 v1, 0x0

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexConfig;->sConfigProperty:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;-><init>(III)V

    throw v0

    .line 259
    :cond_0
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexConfig;->sConfigProperty:[I

    aget v0, v0, p0

    return v0
.end method

.method public static set(IIIZI)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 202
    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexConfig;->sConfigProperty:[I

    aput v0, v2, v1

    .line 203
    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexConfig;->sConfigProperty:[I

    aput p0, v2, v0

    .line 204
    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexConfig;->sConfigProperty:[I

    const/4 v3, 0x2

    aput p1, v2, v3

    .line 205
    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexConfig;->sConfigProperty:[I

    const/4 v3, 0x3

    aput p2, v2, v3

    .line 206
    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexConfig;->sConfigProperty:[I

    const/4 v3, 0x4

    if-eqz p3, :cond_0

    :goto_0
    aput v0, v2, v3

    .line 207
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexConfig;->sConfigProperty:[I

    const/4 v1, 0x5

    aput p4, v0, v1

    .line 208
    return-void

    :cond_0
    move v0, v1

    .line 206
    goto :goto_0
.end method

.method public static setCapability(Ljava/io/InputStream;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 212
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 213
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "CodecCapacity"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    new-instance v5, Ljava/io/File;

    const-string v0, "CapabilityResult.txt"

    invoke-direct {v5, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 218
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    new-instance v4, Lcom/nexstreaming/app/common/util/g;

    invoke-direct {v4}, Lcom/nexstreaming/app/common/util/g;-><init>()V

    .line 226
    :try_start_1
    invoke-virtual {v4, v0}, Lcom/nexstreaming/app/common/util/g;->a(Ljava/io/InputStream;)Lcom/nexstreaming/app/common/util/a;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 232
    :goto_1
    invoke-virtual {v1}, Lcom/nexstreaming/app/common/util/a;->e()I

    move-result v0

    invoke-virtual {v1}, Lcom/nexstreaming/app/common/util/a;->f()I

    move-result v4

    if-le v0, v4, :cond_0

    invoke-virtual {v1}, Lcom/nexstreaming/app/common/util/a;->f()I

    move-result v0

    .line 234
    :goto_2
    sget-object v4, Lcom/nexstreaming/nexeditorsdk/nexConfig;->sConfigProperty:[I

    aput v2, v4, v3

    .line 235
    sget-object v4, Lcom/nexstreaming/nexeditorsdk/nexConfig;->sConfigProperty:[I

    invoke-virtual {v1}, Lcom/nexstreaming/app/common/util/a;->a()I

    move-result v5

    aput v5, v4, v2

    .line 236
    sget-object v4, Lcom/nexstreaming/nexeditorsdk/nexConfig;->sConfigProperty:[I

    const/4 v5, 0x2

    aput v0, v4, v5

    .line 237
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexConfig;->sConfigProperty:[I

    const/4 v4, 0x3

    invoke-virtual {v1}, Lcom/nexstreaming/app/common/util/a;->b()I

    move-result v5

    aput v5, v0, v4

    .line 238
    sget-object v4, Lcom/nexstreaming/nexeditorsdk/nexConfig;->sConfigProperty:[I

    const/4 v5, 0x4

    invoke-virtual {v1}, Lcom/nexstreaming/app/common/util/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_3
    aput v0, v4, v5

    .line 239
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexConfig;->sConfigProperty:[I

    const/4 v2, 0x5

    invoke-virtual {v1}, Lcom/nexstreaming/app/common/util/a;->c()I

    move-result v1

    aput v1, v0, v2

    .line 241
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 227
    :catch_1
    move-exception v0

    .line 228
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 232
    :cond_0
    invoke-virtual {v1}, Lcom/nexstreaming/app/common/util/a;->e()I

    move-result v0

    goto :goto_2

    :cond_1
    move v0, v3

    .line 238
    goto :goto_3
.end method

.method public static setProperty(II)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 278
    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexConfig;->sConfigProperty:[I

    array-length v2, v2

    if-gt v2, p0, :cond_0

    .line 283
    :goto_0
    return v0

    .line 281
    :cond_0
    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexConfig;->sConfigProperty:[I

    aput v1, v2, v0

    .line 282
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexConfig;->sConfigProperty:[I

    aput p1, v0, p0

    move v0, v1

    .line 283
    goto :goto_0
.end method
