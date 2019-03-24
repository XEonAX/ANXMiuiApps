.class public Lmiui/drm/DrmManager;
.super Ljava/lang/Object;
.source "DrmManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/drm/DrmManager$DrmNSContext;,
        Lmiui/drm/DrmManager$TrialLimits;,
        Lmiui/drm/DrmManager$RightObject;,
        Lmiui/drm/DrmManager$RightObjectCache;,
        Lmiui/drm/DrmManager$DrmResult;
    }
.end annotation


# static fields
.field private static final ASSET_XPATH:Ljava/lang/String; = "/o-ex:rights/o-ex:agreement/o-ex:asset/o-ex:context/o-dd:uid"

.field private static final DISPLAY_COUNT_XPATH:Ljava/lang/String; = "/o-ex:rights/o-ex:agreement/o-ex:permission/o-dd:display/o-ex:constraint/o-dd:count"

.field private static final IMEI_EVERYONE:Ljava/lang/String; = "-1"

.field private static final IMEI_PREFIX:Ljava/lang/String; = "d"

.field private static final INDIVIDUAL_XPATH:Ljava/lang/String; = "/o-ex:rights/o-ex:agreement/o-ex:permission/o-dd:execute/o-ex:constraint/oma-dd:individual/o-ex:context/o-dd:uid"

.field private static final ITEM_SEPARATOR:Ljava/lang/String; = ","

.field private static final O_EX_ID_CATEGORY:Ljava/lang/String; = "o-ex:id"

.field private static final PAIR_SEPARATOR:Ljava/lang/String; = ":"

.field private static final PUBLIC_KEY_E:Ljava/lang/String; = "10001"

.field private static final PUBLIC_KEY_M:Ljava/lang/String; = "a2ebd07cfae9a72345fc3c95d80cf5a21a55bf553fbab3025c82747ba4d53d1f9b02f46c20b5520585a910732698b165f0ecf7bd9ce5402e27c646cd0c5d34cff92b184d6a477e156a7d3503b756cc3e8531fb26c0da0ca051ab531c7f9f2a040a06642cadb698882c048630030b73edbbd62da73f7027065443c6e2558edfbd"

.field private static final SUPPORT_AD:Ljava/lang/String; = "support_ad"

.field public static final TAG:Ljava/lang/String; = "drm"

.field private static final TIME_END_XPATH:Ljava/lang/String; = "/o-ex:rights/o-ex:agreement/o-ex:permission/o-dd:execute/o-ex:constraint/o-dd:datetime/o-dd:end"

.field private static final TIME_START_XPATH:Ljava/lang/String; = "/o-ex:rights/o-ex:agreement/o-ex:permission/o-dd:execute/o-ex:constraint/o-dd:datetime/o-dd:start"

.field private static final USER_EVERYONE:Ljava/lang/String; = "-1"

.field private static final USER_PREFIX:Ljava/lang/String; = "m"

.field private static mRightsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiui/drm/DrmManager$RightObjectCache;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 100
    new-instance v0, Lmiui/drm/DrmManager$1;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lmiui/drm/DrmManager$1;-><init>(IFZ)V

    sput-object v0, Lmiui/drm/DrmManager;->mRightsCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertHexStringToBytes(Ljava/lang/String;)[B
    .locals 5
    .param p0, "hex"    # Ljava/lang/String;

    .line 428
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 429
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 430
    div-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 429
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 432
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static exportFatalLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 436
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const/4 v0, 0x0

    .line 439
    .local v0, "writer":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lmiui/content/res/ThemeResources;->THEME_MAGIC_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "drm.log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 440
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x19000

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 441
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recreate log file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 444
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 445
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create log file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 448
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "export error message into "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v0, v2

    .line 450
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmiui/drm/DrmManager;->getContextInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 451
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    .end local v1    # "file":Ljava/io/File;
    nop

    .line 457
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 460
    :goto_0
    goto :goto_1

    .line 458
    :catch_0
    move-exception v1

    .line 459
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 455
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 452
    :catch_1
    move-exception v1

    .line 453
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 455
    .end local v1    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_2

    .line 457
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 463
    :cond_2
    :goto_1
    return-void

    .line 455
    :goto_2
    if-eqz v0, :cond_3

    .line 457
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 460
    goto :goto_3

    .line 458
    :catch_2
    move-exception v2

    .line 459
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 460
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    :goto_3
    throw v1
.end method

.method private static getContextInfo()Ljava/lang/String;
    .locals 4

    .line 466
    const-string v0, "%s %s_%s %s"

    .line 467
    .local v0, "info":Ljava/lang/String;
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 468
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 467
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getEncodedImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .line 472
    invoke-static {p0}, Lmiui/drm/DrmManager;->getOriginImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, "imei":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 474
    const-string v1, ""

    return-object v1

    .line 476
    :cond_0
    invoke-static {v0}, Lmiui/util/HashUtils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 477
    return-object v0
.end method

.method public static getMorePreciseDrmResult(Lmiui/drm/DrmManager$DrmResult;Lmiui/drm/DrmManager$DrmResult;)Lmiui/drm/DrmManager$DrmResult;
    .locals 1
    .param p0, "r1"    # Lmiui/drm/DrmManager$DrmResult;
    .param p1, "r2"    # Lmiui/drm/DrmManager$DrmResult;

    .line 177
    invoke-virtual {p0, p1}, Lmiui/drm/DrmManager$DrmResult;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method private static getOriginImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .line 481
    invoke-static {}, Lmiui/telephony/TelephonyManagerUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 482
    .local v0, "imei":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 483
    const-string v1, ""

    return-object v1

    .line 485
    :cond_0
    return-object v0
.end method

.method private static getTime(Ljava/lang/String;)J
    .locals 4
    .param p0, "rfc822"    # Ljava/lang/String;

    .line 361
    const-wide/16 v0, 0x0

    .line 363
    .local v0, "time":J
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    .line 367
    goto :goto_0

    .line 364
    :catch_0
    move-exception v2

    .line 365
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    .line 366
    const-wide/16 v0, -0x1

    .line 368
    .end local v2    # "e":Ljava/text/ParseException;
    :goto_0
    return-wide v0
.end method

.method public static getTrialLimits(Ljava/io/File;)Lmiui/drm/DrmManager$TrialLimits;
    .locals 6
    .param p0, "rightsFile"    # Ljava/io/File;

    .line 353
    invoke-static {p0}, Lmiui/drm/DrmManager;->parseRightsFile(Ljava/io/File;)Lmiui/drm/DrmManager$RightObject;

    move-result-object v0

    .line 354
    .local v0, "ro":Lmiui/drm/DrmManager$RightObject;
    if-eqz v0, :cond_0

    .line 355
    new-instance v1, Lmiui/drm/DrmManager$TrialLimits;

    iget-wide v2, v0, Lmiui/drm/DrmManager$RightObject;->startTime:J

    iget-wide v4, v0, Lmiui/drm/DrmManager$RightObject;->endTime:J

    invoke-direct {v1, v2, v3, v4, v5}, Lmiui/drm/DrmManager$TrialLimits;-><init>(JJ)V

    return-object v1

    .line 357
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static isLegal(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Lmiui/drm/DrmManager$DrmResult;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentFile"    # Ljava/io/File;
    .param p2, "rightsFile"    # Ljava/io/File;

    .line 197
    invoke-static {p1}, Lmiui/util/HashUtils;->getSHA1(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "hash":Ljava/lang/String;
    invoke-static {p0, v0, p2}, Lmiui/drm/DrmManager;->isLegal(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Lmiui/drm/DrmManager$DrmResult;

    move-result-object v1

    return-object v1
.end method

.method public static isLegal(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Lmiui/drm/DrmManager$DrmResult;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hash"    # Ljava/lang/String;
    .param p2, "rightsFile"    # Ljava/io/File;

    .line 202
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    sget-object v0, Lmiui/drm/DrmManager$DrmResult;->DRM_ERROR_RIGHT_FILE_NOT_EXISTS:Lmiui/drm/DrmManager$DrmResult;

    return-object v0

    .line 205
    :cond_0
    sget-object v0, Lmiui/drm/DrmManager$DrmResult;->DRM_ERROR_UNKNOWN:Lmiui/drm/DrmManager$DrmResult;

    .line 206
    .local v0, "ret":Lmiui/drm/DrmManager$DrmResult;
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 207
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 208
    .local v4, "file":Ljava/io/File;
    const-string v5, "drm"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checking asset "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-static {v4}, Lmiui/drm/DrmManager;->parseRightsFile(Ljava/io/File;)Lmiui/drm/DrmManager$RightObject;

    move-result-object v5

    .line 210
    .local v5, "ro":Lmiui/drm/DrmManager$RightObject;
    invoke-static {p0, p1, v5}, Lmiui/drm/DrmManager;->isLegal(Landroid/content/Context;Ljava/lang/String;Lmiui/drm/DrmManager$RightObject;)Lmiui/drm/DrmManager$DrmResult;

    move-result-object v6

    .line 211
    .local v6, "tempRet":Lmiui/drm/DrmManager$DrmResult;
    sget-object v7, Lmiui/drm/DrmManager$DrmResult;->DRM_SUCCESS:Lmiui/drm/DrmManager$DrmResult;

    if-ne v6, v7, :cond_1

    .line 212
    sget-object v1, Lmiui/drm/DrmManager$DrmResult;->DRM_SUCCESS:Lmiui/drm/DrmManager$DrmResult;

    return-object v1

    .line 214
    :cond_1
    invoke-static {v0, v6}, Lmiui/drm/DrmManager;->getMorePreciseDrmResult(Lmiui/drm/DrmManager$DrmResult;Lmiui/drm/DrmManager$DrmResult;)Lmiui/drm/DrmManager$DrmResult;

    move-result-object v0

    .line 207
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "ro":Lmiui/drm/DrmManager$RightObject;
    .end local v6    # "tempRet":Lmiui/drm/DrmManager$DrmResult;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 216
    :cond_2
    return-object v0

    .line 218
    :cond_3
    const-string v1, "drm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checking asset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-static {p2}, Lmiui/drm/DrmManager;->parseRightsFile(Ljava/io/File;)Lmiui/drm/DrmManager$RightObject;

    move-result-object v1

    .line 220
    .local v1, "ro":Lmiui/drm/DrmManager$RightObject;
    invoke-static {p0, p1, v1}, Lmiui/drm/DrmManager;->isLegal(Landroid/content/Context;Ljava/lang/String;Lmiui/drm/DrmManager$RightObject;)Lmiui/drm/DrmManager$DrmResult;

    move-result-object v2

    return-object v2
.end method

.method private static isLegal(Landroid/content/Context;Ljava/lang/String;Lmiui/drm/DrmManager$RightObject;)Lmiui/drm/DrmManager$DrmResult;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetAsset"    # Ljava/lang/String;
    .param p2, "ro"    # Lmiui/drm/DrmManager$RightObject;

    .line 225
    if-nez p2, :cond_0

    .line 226
    sget-object v0, Lmiui/drm/DrmManager$DrmResult;->DRM_ERROR_RIGHT_OBJECT_IS_NULL:Lmiui/drm/DrmManager$DrmResult;

    return-object v0

    .line 228
    :cond_0
    iget-wide v0, p2, Lmiui/drm/DrmManager$RightObject;->startTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_d

    iget-wide v0, p2, Lmiui/drm/DrmManager$RightObject;->endTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    goto/16 :goto_5

    .line 230
    :cond_1
    iget-wide v0, p2, Lmiui/drm/DrmManager$RightObject;->endTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 232
    .local v0, "current":J
    iget-wide v2, p2, Lmiui/drm/DrmManager$RightObject;->startTime:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    iget-wide v2, p2, Lmiui/drm/DrmManager$RightObject;->endTime:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    .line 233
    :cond_2
    sget-object v2, Lmiui/drm/DrmManager$DrmResult;->DRM_ERROR_TIME_NOT_MATCH:Lmiui/drm/DrmManager$DrmResult;

    return-object v2

    .line 236
    .end local v0    # "current":J
    :cond_3
    const/4 v0, 0x0

    .line 237
    .local v0, "match":Z
    iget-object v1, p2, Lmiui/drm/DrmManager$RightObject;->assets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 238
    .local v2, "asset":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 239
    const/4 v0, 0x1

    .line 240
    goto :goto_1

    .line 242
    .end local v2    # "asset":Ljava/lang/String;
    :cond_4
    goto :goto_0

    .line 243
    :cond_5
    :goto_1
    if-nez v0, :cond_6

    .line 244
    const-string v1, "drm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "right object has no definition for asset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/drm/DrmManager;->exportFatalLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    sget-object v1, Lmiui/drm/DrmManager$DrmResult;->DRM_ERROR_ASSET_NOT_MATCH:Lmiui/drm/DrmManager$DrmResult;

    return-object v1

    .line 248
    :cond_6
    iget-object v1, p2, Lmiui/drm/DrmManager$RightObject;->imeis:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_7

    .line 249
    const-string v1, "drm"

    const-string v2, "right object does not have any imeis"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    sget-object v1, Lmiui/drm/DrmManager$DrmResult;->DRM_SUCCESS:Lmiui/drm/DrmManager$DrmResult;

    return-object v1

    .line 252
    :cond_7
    invoke-static {p0}, Lmiui/drm/DrmManager;->getOriginImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "targetOriginImei":Ljava/lang/String;
    invoke-static {p0}, Lmiui/drm/DrmManager;->getEncodedImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, "targetEncodedImei":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 255
    const-string v3, "drm"

    const-string v4, "the imei retrieved is empty"

    invoke-static {v3, v4}, Lmiui/drm/DrmManager;->exportFatalLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 256
    :cond_8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 257
    const-string v3, "drm"

    const-string v4, "the imei encoded is empty"

    invoke-static {v3, v4}, Lmiui/drm/DrmManager;->exportFatalLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_9
    :goto_2
    iget-object v3, p2, Lmiui/drm/DrmManager$RightObject;->imeis:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 260
    .local v4, "imei":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "-1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_4

    .line 264
    .end local v4    # "imei":Ljava/lang/String;
    :cond_a
    goto :goto_3

    .line 261
    .restart local v4    # "imei":Ljava/lang/String;
    :cond_b
    :goto_4
    const-string v3, "drm"

    const-string v5, "right object has matched imei"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    sget-object v3, Lmiui/drm/DrmManager$DrmResult;->DRM_SUCCESS:Lmiui/drm/DrmManager$DrmResult;

    return-object v3

    .line 265
    .end local v4    # "imei":Ljava/lang/String;
    :cond_c
    const-string v3, "drm"

    const-string v4, "right object does not have matched imei"

    invoke-static {v3, v4}, Lmiui/drm/DrmManager;->exportFatalLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    sget-object v3, Lmiui/drm/DrmManager$DrmResult;->DRM_ERROR_IMEI_NOT_MATCH:Lmiui/drm/DrmManager$DrmResult;

    return-object v3

    .line 229
    .end local v0    # "match":Z
    .end local v1    # "targetOriginImei":Ljava/lang/String;
    .end local v2    # "targetEncodedImei":Ljava/lang/String;
    :cond_d
    :goto_5
    sget-object v0, Lmiui/drm/DrmManager$DrmResult;->DRM_ERROR_TIME_NOT_MATCH:Lmiui/drm/DrmManager$DrmResult;

    return-object v0
.end method

.method public static isPermanentRights(Ljava/io/File;)Z
    .locals 1
    .param p0, "rightsFile"    # Ljava/io/File;

    .line 270
    invoke-static {p0}, Lmiui/drm/DrmManager;->parseRightsFile(Ljava/io/File;)Lmiui/drm/DrmManager$RightObject;

    move-result-object v0

    invoke-static {v0}, Lmiui/drm/DrmManager;->isPermanentRights(Lmiui/drm/DrmManager$RightObject;)Z

    move-result v0

    return v0
.end method

.method private static isPermanentRights(Lmiui/drm/DrmManager$RightObject;)Z
    .locals 4
    .param p0, "ro"    # Lmiui/drm/DrmManager$RightObject;

    .line 274
    if-eqz p0, :cond_0

    iget-wide v0, p0, Lmiui/drm/DrmManager$RightObject;->startTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lmiui/drm/DrmManager$RightObject;->endTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isRightsFileLegal(Ljava/io/File;)Z
    .locals 14
    .param p0, "file"    # Ljava/io/File;

    .line 373
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 374
    .local v1, "domfac":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 375
    .local v2, "dombuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v2, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 376
    .local v3, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v4

    .line 377
    .local v4, "root":Lorg/w3c/dom/Element;
    const-string v5, "o-ex:id"

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 378
    .local v5, "signaturePart":Ljava/lang/String;
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 379
    .local v6, "nodes":Lorg/w3c/dom/NodeList;
    const-string v7, ""

    .line 380
    .local v7, "contentPart":Ljava/lang/String;
    move-object v8, v7

    move v7, v0

    .local v7, "i":I
    .local v8, "contentPart":Ljava/lang/String;
    :goto_0
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v7, v9, :cond_0

    .line 381
    invoke-interface {v6, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 382
    .local v9, "node":Lorg/w3c/dom/Node;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lmiui/drm/DrmManager;->nodeToString(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 380
    .end local v9    # "node":Lorg/w3c/dom/Node;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 385
    .end local v7    # "i":I
    :cond_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 386
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 387
    .local v7, "contentBytes":[B
    invoke-static {v5}, Lmiui/drm/DrmManager;->convertHexStringToBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 388
    .local v9, "signatureBytes":[B
    const-string v10, "a2ebd07cfae9a72345fc3c95d80cf5a21a55bf553fbab3025c82747ba4d53d1f9b02f46c20b5520585a910732698b165f0ecf7bd9ce5402e27c646cd0c5d34cff92b184d6a477e156a7d3503b756cc3e8531fb26c0da0ca051ab531c7f9f2a040a06642cadb698882c048630030b73edbbd62da73f7027065443c6e2558edfbd"

    const-string v11, "10001"

    invoke-static {v10, v11}, Lmiui/util/RSAUtils;->getPublicKey(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v10

    invoke-static {v7, v10, v9}, Lmiui/util/RSAUtils;->verify([BLjava/security/PublicKey;[B)Z

    move-result v10

    .line 389
    .local v10, "isLegal":Z
    if-eqz v10, :cond_1

    .line 390
    const-string v11, "drm"

    const-string v12, "standard format rights file verify is legal"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v0, 0x1

    return v0

    .line 394
    :cond_1
    const-string v11, "/>"

    const-string v12, " />"

    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    move-object v7, v11

    .line 395
    const-string v11, "a2ebd07cfae9a72345fc3c95d80cf5a21a55bf553fbab3025c82747ba4d53d1f9b02f46c20b5520585a910732698b165f0ecf7bd9ce5402e27c646cd0c5d34cff92b184d6a477e156a7d3503b756cc3e8531fb26c0da0ca051ab531c7f9f2a040a06642cadb698882c048630030b73edbbd62da73f7027065443c6e2558edfbd"

    const-string v12, "10001"

    invoke-static {v11, v12}, Lmiui/util/RSAUtils;->getPublicKey(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v11

    invoke-static {v7, v11, v9}, Lmiui/util/RSAUtils;->verify([BLjava/security/PublicKey;[B)Z

    move-result v11

    move v10, v11

    .line 396
    const-string v11, "drm"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "old format rights file verify result : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    return v10

    .line 409
    .end local v1    # "domfac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2    # "dombuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v4    # "root":Lorg/w3c/dom/Element;
    .end local v5    # "signaturePart":Ljava/lang/String;
    .end local v6    # "nodes":Lorg/w3c/dom/NodeList;
    .end local v7    # "contentBytes":[B
    .end local v8    # "contentPart":Ljava/lang/String;
    .end local v9    # "signatureBytes":[B
    .end local v10    # "isLegal":Z
    :catch_0
    move-exception v1

    .line 410
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 407
    :catch_1
    move-exception v1

    .line 408
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 405
    :catch_2
    move-exception v1

    .line 406
    .local v1, "e":Ljavax/xml/xpath/XPathExpressionException;
    invoke-virtual {v1}, Ljavax/xml/xpath/XPathExpressionException;->printStackTrace()V

    .end local v1    # "e":Ljavax/xml/xpath/XPathExpressionException;
    goto :goto_1

    .line 403
    :catch_3
    move-exception v1

    .line 404
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 401
    :catch_4
    move-exception v1

    .line 402
    .local v1, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .end local v1    # "e":Lorg/xml/sax/SAXException;
    goto :goto_1

    .line 399
    :catch_5
    move-exception v1

    .line 400
    .local v1, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 411
    .end local v1    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :cond_2
    :goto_1
    nop

    .line 412
    :goto_2
    return v0
.end method

.method public static isSupportAd(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "support_ad"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method public static isSupportAd(Ljava/io/File;)Z
    .locals 2
    .param p0, "rightsFile"    # Ljava/io/File;

    .line 189
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-static {p0}, Lmiui/drm/DrmManager;->parseRightsFile(Ljava/io/File;)Lmiui/drm/DrmManager$RightObject;

    move-result-object v0

    .line 191
    .local v0, "ro":Lmiui/drm/DrmManager$RightObject;
    iget-boolean v1, v0, Lmiui/drm/DrmManager$RightObject;->adSupport:Z

    return v1

    .line 193
    .end local v0    # "ro":Lmiui/drm/DrmManager$RightObject;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static nodeToString(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 4
    .param p0, "node"    # Lorg/w3c/dom/Node;

    .line 416
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 418
    .local v0, "sw":Ljava/io/StringWriter;
    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v1

    .line 419
    .local v1, "t":Ljavax/xml/transform/Transformer;
    const-string v2, "omit-xml-declaration"

    const-string v3, "yes"

    invoke-virtual {v1, v2, v3}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    new-instance v2, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v2, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v3, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v3, v0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, v2, v3}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    .end local v1    # "t":Ljavax/xml/transform/Transformer;
    goto :goto_0

    .line 421
    :catch_0
    move-exception v1

    .line 422
    .local v1, "e":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v1}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    .line 424
    .end local v1    # "e":Ljavax/xml/transform/TransformerException;
    :goto_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static parseRightsFile(Ljava/io/File;)Lmiui/drm/DrmManager$RightObject;
    .locals 17
    .param p0, "file"    # Ljava/io/File;

    .line 278
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, "path":Ljava/lang/String;
    sget-object v0, Lmiui/drm/DrmManager;->mRightsCache:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/drm/DrmManager$RightObjectCache;

    .line 280
    .local v0, "cache":Lmiui/drm/DrmManager$RightObjectCache;
    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iget-wide v4, v0, Lmiui/drm/DrmManager$RightObjectCache;->lastModified:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 281
    iget-object v2, v0, Lmiui/drm/DrmManager$RightObjectCache;->ro:Lmiui/drm/DrmManager$RightObject;

    return-object v2

    .line 283
    :cond_0
    invoke-static/range {p0 .. p0}, Lmiui/drm/DrmManager;->isRightsFileLegal(Ljava/io/File;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 284
    return-object v3

    .line 286
    :cond_1
    new-instance v2, Lmiui/drm/DrmManager$RightObject;

    invoke-direct {v2, v3}, Lmiui/drm/DrmManager$RightObject;-><init>(Lmiui/drm/DrmManager$1;)V

    .line 287
    .local v2, "ro":Lmiui/drm/DrmManager$RightObject;
    new-instance v4, Lmiui/drm/DrmManager$RightObjectCache;

    invoke-direct {v4, v3}, Lmiui/drm/DrmManager$RightObjectCache;-><init>(Lmiui/drm/DrmManager$1;)V

    .line 288
    .end local v0    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    .local v4, "cache":Lmiui/drm/DrmManager$RightObjectCache;
    iput-object v2, v4, Lmiui/drm/DrmManager$RightObjectCache;->ro:Lmiui/drm/DrmManager$RightObject;

    .line 289
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    iput-wide v5, v4, Lmiui/drm/DrmManager$RightObjectCache;->lastModified:J

    .line 290
    sget-object v0, Lmiui/drm/DrmManager;->mRightsCache:Ljava/util/Map;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 293
    .local v0, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 294
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v6
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_5

    .line 295
    .local v6, "builder":Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v7, p0

    :try_start_1
    invoke-virtual {v6, v7}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v8

    .line 296
    .local v8, "document":Lorg/w3c/dom/Document;
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v9

    .line 297
    .local v9, "xpathFactory":Ljavax/xml/xpath/XPathFactory;
    invoke-virtual {v9}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v10

    .line 298
    .local v10, "xPath":Ljavax/xml/xpath/XPath;
    new-instance v11, Lmiui/drm/DrmManager$DrmNSContext;

    invoke-direct {v11, v3}, Lmiui/drm/DrmManager$DrmNSContext;-><init>(Lmiui/drm/DrmManager$1;)V

    invoke-interface {v10, v11}, Ljavax/xml/xpath/XPath;->setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V

    .line 299
    const-string v3, "/o-ex:rights/o-ex:agreement/o-ex:asset/o-ex:context/o-dd:uid"

    sget-object v11, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v10, v3, v8, v11}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/NodeList;

    .line 300
    .local v3, "assetList":Lorg/w3c/dom/NodeList;
    const/4 v11, 0x0

    if-eqz v3, :cond_4

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-lez v12, :cond_4

    .line 301
    move v12, v11

    .local v12, "i":I
    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    if-ge v12, v13, :cond_4

    .line 302
    invoke-interface {v3, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/Element;

    invoke-interface {v13}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v13

    .line 303
    .local v13, "content":Ljava/lang/String;
    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 304
    .local v14, "pair":[Ljava/lang/String;
    array-length v15, v14

    if-ne v15, v5, :cond_2

    .line 305
    iget-object v15, v2, Lmiui/drm/DrmManager$RightObject;->assets:Ljava/util/List;

    aget-object v5, v14, v11

    const-string v11, ","

    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v15, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 306
    :cond_2
    array-length v5, v14

    const/4 v11, 0x2

    if-ne v5, v11, :cond_3

    .line 307
    iget-object v5, v2, Lmiui/drm/DrmManager$RightObject;->assets:Ljava/util/List;

    const/4 v11, 0x0

    aget-object v15, v14, v11

    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    iget-object v5, v2, Lmiui/drm/DrmManager$RightObject;->assets:Ljava/util/List;

    const/4 v11, 0x1

    aget-object v15, v14, v11

    const-string v11, ","

    invoke-virtual {v15, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 301
    .end local v13    # "content":Ljava/lang/String;
    .end local v14    # "pair":[Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x1

    const/4 v11, 0x0

    goto :goto_0

    .line 312
    .end local v12    # "i":I
    :cond_4
    const-string v5, "/o-ex:rights/o-ex:agreement/o-ex:permission/o-dd:execute/o-ex:constraint/oma-dd:individual/o-ex:context/o-dd:uid"

    sget-object v11, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v10, v5, v8, v11}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/NodeList;

    .line 313
    .local v5, "individualList":Lorg/w3c/dom/NodeList;
    if-eqz v5, :cond_7

    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lez v11, :cond_7

    .line 314
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-ge v11, v12, :cond_7

    .line 315
    invoke-interface {v5, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/Element;

    invoke-interface {v12}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v12

    .line 316
    .local v12, "content":Ljava/lang/String;
    const-string v13, "d"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 317
    iget-object v13, v2, Lmiui/drm/DrmManager$RightObject;->imeis:Ljava/util/List;

    const-string v14, "d"

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 318
    :cond_5
    const-string v13, "m"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 319
    iget-object v13, v2, Lmiui/drm/DrmManager$RightObject;->users:Ljava/util/List;

    const-string v14, "m"

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    .end local v12    # "content":Ljava/lang/String;
    :cond_6
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 323
    .end local v11    # "i":I
    :cond_7
    const-string v11, "/o-ex:rights/o-ex:agreement/o-ex:permission/o-dd:execute/o-ex:constraint/o-dd:datetime/o-dd:start"

    sget-object v12, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v10, v11, v8, v12}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/NodeList;

    .line 324
    .local v11, "timeStartList":Lorg/w3c/dom/NodeList;
    if-eqz v11, :cond_8

    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-lez v12, :cond_8

    .line 325
    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/Element;

    invoke-interface {v13}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v12

    .line 326
    .restart local v12    # "content":Ljava/lang/String;
    invoke-static {v12}, Lmiui/drm/DrmManager;->getTime(Ljava/lang/String;)J

    move-result-wide v13

    iput-wide v13, v2, Lmiui/drm/DrmManager$RightObject;->startTime:J

    .line 328
    .end local v12    # "content":Ljava/lang/String;
    :cond_8
    const-string v12, "/o-ex:rights/o-ex:agreement/o-ex:permission/o-dd:execute/o-ex:constraint/o-dd:datetime/o-dd:end"

    sget-object v13, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v10, v12, v8, v13}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/NodeList;

    .line 329
    .local v12, "timeEndList":Lorg/w3c/dom/NodeList;
    if-eqz v12, :cond_9

    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    if-lez v13, :cond_9

    .line 330
    const/4 v13, 0x0

    invoke-interface {v12, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;

    invoke-interface {v14}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v13

    .line 331
    .restart local v13    # "content":Ljava/lang/String;
    invoke-static {v13}, Lmiui/drm/DrmManager;->getTime(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v2, Lmiui/drm/DrmManager$RightObject;->endTime:J

    .line 333
    .end local v13    # "content":Ljava/lang/String;
    :cond_9
    const-string v13, "/o-ex:rights/o-ex:agreement/o-ex:permission/o-dd:display/o-ex:constraint/o-dd:count"

    sget-object v14, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v10, v13, v8, v14}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/NodeList;

    .line 334
    .local v13, "displayCountList":Lorg/w3c/dom/NodeList;
    if-eqz v13, :cond_b

    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    if-lez v14, :cond_b

    .line 335
    const/4 v14, 0x0

    invoke-interface {v13, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    check-cast v15, Lorg/w3c/dom/Element;

    invoke-interface {v15}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v15

    .line 336
    .local v15, "content":Ljava/lang/String;
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-lez v14, :cond_a

    const/4 v14, 0x1

    goto :goto_4

    :cond_a
    const/4 v14, 0x0

    :goto_4
    iput-boolean v14, v2, Lmiui/drm/DrmManager$RightObject;->adSupport:Z
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v0    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v3    # "assetList":Lorg/w3c/dom/NodeList;
    .end local v5    # "individualList":Lorg/w3c/dom/NodeList;
    .end local v6    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v8    # "document":Lorg/w3c/dom/Document;
    .end local v9    # "xpathFactory":Ljavax/xml/xpath/XPathFactory;
    .end local v10    # "xPath":Ljavax/xml/xpath/XPath;
    .end local v11    # "timeStartList":Lorg/w3c/dom/NodeList;
    .end local v12    # "timeEndList":Lorg/w3c/dom/NodeList;
    .end local v13    # "displayCountList":Lorg/w3c/dom/NodeList;
    .end local v15    # "content":Ljava/lang/String;
    goto :goto_a

    .line 346
    :catch_0
    move-exception v0

    goto :goto_5

    .line 344
    :catch_1
    move-exception v0

    goto :goto_6

    .line 342
    :catch_2
    move-exception v0

    goto :goto_7

    .line 340
    :catch_3
    move-exception v0

    goto :goto_8

    .line 338
    :catch_4
    move-exception v0

    goto :goto_9

    .line 346
    :catch_5
    move-exception v0

    move-object/from16 v7, p0

    .line 347
    .local v0, "e":Ljava/lang/NumberFormatException;
    :goto_5
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    goto :goto_b

    .line 344
    :catch_6
    move-exception v0

    move-object/from16 v7, p0

    .line 345
    .local v0, "e":Ljavax/xml/xpath/XPathExpressionException;
    :goto_6
    invoke-virtual {v0}, Ljavax/xml/xpath/XPathExpressionException;->printStackTrace()V

    .end local v0    # "e":Ljavax/xml/xpath/XPathExpressionException;
    goto :goto_a

    .line 342
    :catch_7
    move-exception v0

    move-object/from16 v7, p0

    .line 343
    .local v0, "e":Ljava/io/IOException;
    :goto_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_a

    .line 340
    :catch_8
    move-exception v0

    move-object/from16 v7, p0

    .line 341
    .local v0, "e":Lorg/xml/sax/SAXException;
    :goto_8
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .end local v0    # "e":Lorg/xml/sax/SAXException;
    goto :goto_a

    .line 338
    :catch_9
    move-exception v0

    move-object/from16 v7, p0

    .line 339
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_9
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 348
    .end local v0    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :cond_b
    :goto_a
    nop

    .line 349
    :goto_b
    return-object v2
.end method

.method public static setSupportAd(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "support"    # Z

    .line 185
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "support_ad"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 186
    return-void
.end method
