.class public Lcom/xiaomi/channel/commonutils/android/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field private static sCachedDeviceId:Ljava/lang/String;

.field private static sCachedIMEI:Ljava/lang/String;

.field private static sCachedSimpleDeviceId:Ljava/lang/String;

.field private static sCachedSubIMEIS:Ljava/lang/String;

.field private static volatile sVirtDevIDChecked:Z

.field private static sVirtDevId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    sput-object v1, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->sCachedIMEI:Ljava/lang/String;

    .line 29
    const-string v0, ""

    sput-object v0, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->sCachedSubIMEIS:Ljava/lang/String;

    .line 30
    sput-object v1, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->sCachedDeviceId:Ljava/lang/String;

    .line 31
    sput-object v1, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->sCachedSimpleDeviceId:Ljava/lang/String;

    .line 120
    sput-object v1, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->sVirtDevId:Ljava/lang/String;

    .line 166
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->sVirtDevIDChecked:Z

    return-void
.end method

.method public static blockingGetIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 300
    const/16 v0, 0xa

    .line 301
    .local v0, "cnt":I
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->quicklyGetIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .local v2, "deviceId":Ljava/lang/String;
    move v1, v0

    .line 302
    .end local v0    # "cnt":I
    .local v1, "cnt":I
    :goto_0
    if-nez v2, :cond_0

    add-int/lit8 v0, v1, -0x1

    .end local v1    # "cnt":I
    .restart local v0    # "cnt":I
    if-lez v1, :cond_1

    .line 304
    const-wide/16 v4, 0x1f4

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :goto_1
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->quicklyGetIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move v1, v0

    .end local v0    # "cnt":I
    .restart local v1    # "cnt":I
    goto :goto_0

    .line 305
    .end local v1    # "cnt":I
    .restart local v0    # "cnt":I
    :catch_0
    move-exception v3

    goto :goto_1

    .end local v0    # "cnt":I
    .restart local v1    # "cnt":I
    :cond_0
    move v0, v1

    .line 310
    .end local v1    # "cnt":I
    .restart local v0    # "cnt":I
    :cond_1
    return-object v2
.end method

.method private static blockingGetIMEIWhenDeviceRegister(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 281
    const/16 v0, 0xa

    .line 282
    .local v0, "cnt":I
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->quicklyGetIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 283
    .local v2, "deviceId":Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v1, v0, -0x1

    .end local v0    # "cnt":I
    .local v1, "cnt":I
    if-lez v0, :cond_0

    .line 285
    const-wide/16 v4, 0x1f4

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_1
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->quicklyGetIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .end local v1    # "cnt":I
    .restart local v0    # "cnt":I
    goto :goto_0

    .line 286
    .end local v0    # "cnt":I
    .restart local v1    # "cnt":I
    :catch_0
    move-exception v3

    goto :goto_1

    :cond_0
    move v0, v1

    .line 291
    .end local v1    # "cnt":I
    .restart local v0    # "cnt":I
    :cond_1
    return-object v2
.end method

.method public static blockingGetSubIMEISMd5(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 381
    const/16 v0, 0xa

    .line 382
    .local v0, "cnt":I
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->quicklyGetSubIMEISMd5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .local v2, "subImeisMd5":Ljava/lang/String;
    move v1, v0

    .line 383
    .end local v0    # "cnt":I
    .local v1, "cnt":I
    :goto_0
    if-nez v2, :cond_0

    add-int/lit8 v0, v1, -0x1

    .end local v1    # "cnt":I
    .restart local v0    # "cnt":I
    if-lez v1, :cond_1

    .line 385
    const-wide/16 v4, 0x1f4

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    :goto_1
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->quicklyGetSubIMEISMd5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move v1, v0

    .end local v0    # "cnt":I
    .restart local v1    # "cnt":I
    goto :goto_0

    .line 386
    .end local v1    # "cnt":I
    .restart local v0    # "cnt":I
    :catch_0
    move-exception v3

    goto :goto_1

    .end local v0    # "cnt":I
    .restart local v1    # "cnt":I
    :cond_0
    move v0, v1

    .line 391
    .end local v1    # "cnt":I
    .restart local v0    # "cnt":I
    :cond_1
    return-object v2
.end method

.method private static canReadPhoneState(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 528
    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 529
    .local v1, "permissionName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 530
    .local v2, "pkgName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 531
    .local v0, "checkResult":I
    if-nez v0, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static checkVirtDevId(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 174
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->isSupportVDevid(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-boolean v7, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->sVirtDevIDChecked:Z

    if-eqz v7, :cond_1

    :cond_0
    move-object v1, v6

    .line 214
    :goto_0
    return-object v1

    .line 178
    :cond_1
    const/4 v7, 0x1

    sput-boolean v7, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->sVirtDevIDChecked:Z

    .line 180
    const/4 v1, 0x0

    .line 181
    .local v1, "deviceid":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    const-string v9, ".vdevid"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->fileToStr(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 183
    .local v4, "localID":Ljava/lang/String;
    const/4 v5, 0x0

    .line 185
    .local v5, "lock":Lcom/xiaomi/channel/commonutils/file/FileLocker;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    const-string v8, "/Xiaomi/"

    invoke-direct {v2, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 186
    .local v2, "dir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v7, ".vdevid"

    invoke-direct {v0, v2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 187
    .local v0, "deviceFile":Ljava/io/File;
    invoke-static {p0, v0}, Lcom/xiaomi/channel/commonutils/file/FileLocker;->lock(Landroid/content/Context;Ljava/io/File;)Lcom/xiaomi/channel/commonutils/file/FileLocker;

    move-result-object v5

    .line 189
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->fileToStr(Ljava/io/File;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 193
    if-eqz v5, :cond_2

    .line 194
    invoke-virtual {v5}, Lcom/xiaomi/channel/commonutils/file/FileLocker;->unlock()V

    .line 198
    .end local v0    # "deviceFile":Ljava/io/File;
    .end local v2    # "dir":Ljava/io/File;
    :cond_2
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 199
    sput-object v4, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->sVirtDevId:Ljava/lang/String;

    .line 200
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x80

    if-le v7, v8, :cond_6

    .line 201
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "recover vid :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 202
    invoke-static {p0, v4}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->updateVirtDevId(Landroid/content/Context;Ljava/lang/String;)V

    .line 213
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "vdevid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->sVirtDevId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    move-object v1, v6

    .line 214
    goto/16 :goto_0

    .line 190
    :catch_0
    move-exception v3

    .line 191
    .local v3, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "check id failure :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    if-eqz v5, :cond_2

    .line 194
    invoke-virtual {v5}, Lcom/xiaomi/channel/commonutils/file/FileLocker;->unlock()V

    goto :goto_1

    .line 193
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_5

    .line 194
    invoke-virtual {v5}, Lcom/xiaomi/channel/commonutils/file/FileLocker;->unlock()V

    :cond_5
    throw v6

    .line 203
    :cond_6
    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 204
    const-string/jumbo v6, "vid changed, need sync"

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 208
    :cond_7
    const-string v6, "empty local vid"

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 210
    const-string v1, "F*"

    goto/16 :goto_0
.end method

.method public static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 265
    const/4 v0, 0x0

    .line 267
    .local v0, "androidId":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 272
    :goto_0
    return-object v0

    .line 269
    :catch_0
    move-exception v1

    .line 270
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getDeviceId(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "acceptEmpty"    # Z

    .prologue
    .line 46
    sget-object v3, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->sCachedDeviceId:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 49
    const-string v1, ""

    .line 50
    .local v1, "deviceId":Ljava/lang/String;
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isGDPREnable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 51
    if-eqz p1, :cond_2

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->blockingGetIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 53
    :cond_0
    :goto_0
    const-string v0, ""

    .line 54
    .local v0, "androidId":Ljava/lang/String;
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->getSerialNum()Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "serialNum":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "a-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 58
    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/string/XMStringUtils;->getSHA1Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->sCachedDeviceId:Ljava/lang/String;

    .line 61
    .end local v0    # "androidId":Ljava/lang/String;
    .end local v1    # "deviceId":Ljava/lang/String;
    .end local v2    # "serialNum":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->sCachedDeviceId:Ljava/lang/String;

    return-object v3

    .line 51
    .restart local v1    # "deviceId":Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->blockingGetIMEIWhenDeviceRegister(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getDeviceId1(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const/4 v1, 0x0

    .line 68
    .local v1, "deviceId":Ljava/lang/String;
    const-string v0, ""

    .line 69
    .local v0, "androidId":Ljava/lang/String;
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 70
    const/4 v2, 0x0

    .line 71
    .local v2, "serialNum":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "a-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/string/XMStringUtils;->getSHA1Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getGaid(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/android/GoogleAdvertisingClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/xiaomi/channel/commonutils/android/GoogleAdvertisingClient$AdInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/channel/commonutils/android/GoogleAdvertisingClient$AdInfo;->getId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 79
    :goto_0
    return-object v1

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failure to get gaid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 79
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getIMEIList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 489
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->quicklyGetIMEI(Landroid/content/Context;)Ljava/lang/String;

    .line 490
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->quicklyGetSubIMEIS(Landroid/content/Context;)Ljava/lang/String;

    .line 491
    sget-object v3, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->sCachedIMEI:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 492
    const/4 v0, 0x0

    .line 503
    :cond_0
    return-object v0

    .line 494
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 495
    .local v0, "imeiList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v3, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->sCachedIMEI:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    sget-object v3, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->sCachedSubIMEIS:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 499
    sget-object v3, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->sCachedSubIMEIS:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 500
    .local v2, "subImeis":[Ljava/lang/String;
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v2, v3

    .line 501
    .local v1, "subImei":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 571
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isGDPREnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 572
    const-string v4, ""

    .line 585
    :goto_0
    return-object v4

    .line 575
    :cond_0
    :try_start_0
    const-string/jumbo v4, "wifi"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 576
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 577
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    .line 578
    .local v2, "macString":Ljava/lang/String;
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->verifyMac(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 579
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/string/XMStringUtils;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 581
    :cond_1
    const-string v4, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 582
    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    .end local v2    # "macString":Ljava/lang/String;
    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v0

    .line 583
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 585
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static getSerialNum()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x1a

    .line 254
    const/4 v0, 0x0

    .line 255
    .local v0, "serialNum":Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-le v1, v2, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v3, :cond_1

    .line 256
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 261
    :cond_0
    :goto_0
    return-object v0

    .line 257
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_0

    .line 259
    const-string v2, "android.os.Build"

    const-string v3, "getSerial"

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "serialNum":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "serialNum":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getSimOperatorName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 547
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 548
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized getSimpleDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 535
    const-class v3, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->sCachedSimpleDeviceId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 536
    sget-object v2, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->sCachedSimpleDeviceId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    :goto_0
    monitor-exit v3

    return-object v2

    .line 539
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 541
    .local v0, "androidId":Ljava/lang/String;
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->getSerialNum()Ljava/lang/String;

    move-result-object v1

    .line 542
    .local v1, "serialNum":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/string/XMStringUtils;->getSHA1Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->sCachedSimpleDeviceId:Ljava/lang/String;

    .line 543
    sget-object v2, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->sCachedSimpleDeviceId:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 535
    .end local v0    # "androidId":Ljava/lang/String;
    .end local v1    # "serialNum":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getSpaceId()I
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 558
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-ge v2, v3, :cond_1

    .line 565
    .local v0, "myUserId":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .line 561
    .end local v0    # "myUserId":Ljava/lang/Object;
    :cond_1
    const-string v2, "android.os.UserHandle"

    const-string v3, "myUserId"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 562
    .restart local v0    # "myUserId":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 565
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public static getVirtDevId(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->isSupportVDevid(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 130
    const/4 v6, 0x0

    .line 163
    :cond_0
    :goto_0
    return-object v6

    .line 133
    :cond_1
    sget-object v6, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->sVirtDevId:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 134
    sget-object v6, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->sVirtDevId:Ljava/lang/String;

    goto :goto_0

    .line 138
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string v7, ".vdevid"

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 139
    .local v0, "cache":Ljava/io/File;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->fileToStr(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->sVirtDevId:Ljava/lang/String;

    .line 140
    sget-object v6, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->sVirtDevId:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 141
    sget-object v6, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->sVirtDevId:Ljava/lang/String;

    goto :goto_0

    .line 144
    :cond_3
    const/4 v5, 0x0

    .line 146
    .local v5, "lock":Lcom/xiaomi/channel/commonutils/file/FileLocker;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    const-string v7, "/Xiaomi/"

    invoke-direct {v2, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 147
    .local v2, "dir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v6, ".vdevid"

    invoke-direct {v1, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 148
    .local v1, "deviceFile":Ljava/io/File;
    invoke-static {p0, v1}, Lcom/xiaomi/channel/commonutils/file/FileLocker;->lock(Landroid/content/Context;Ljava/io/File;)Lcom/xiaomi/channel/commonutils/file/FileLocker;

    move-result-object v5

    .line 149
    const-string v6, ""

    sput-object v6, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->sVirtDevId:Ljava/lang/String;

    .line 151
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->fileToStr(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 152
    .local v4, "id":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 153
    sput-object v4, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->sVirtDevId:Ljava/lang/String;

    .line 155
    :cond_4
    sget-object v6, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->sVirtDevId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    if-eqz v5, :cond_0

    .line 160
    invoke-virtual {v5}, Lcom/xiaomi/channel/commonutils/file/FileLocker;->unlock()V

    goto :goto_0

    .line 156
    .end local v1    # "deviceFile":Ljava/io/File;
    .end local v2    # "dir":Ljava/io/File;
    .end local v4    # "id":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 157
    .local v3, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getVDevID failure :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    if-eqz v5, :cond_5

    .line 160
    invoke-virtual {v5}, Lcom/xiaomi/channel/commonutils/file/FileLocker;->unlock()V

    .line 163
    :cond_5
    sget-object v6, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->sVirtDevId:Ljava/lang/String;

    goto :goto_0

    .line 159
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_6

    .line 160
    invoke-virtual {v5}, Lcom/xiaomi/channel/commonutils/file/FileLocker;->unlock()V

    :cond_6
    throw v6
.end method

.method private static isSupportVDevid(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 104
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v1}, Lcom/xiaomi/channel/commonutils/android/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v0

    .line 108
    :cond_1
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isMIUI()Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    .line 113
    .local v0, "isSupoort":Z
    :cond_2
    if-nez v0, :cond_0

    .line 114
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/android/SystemUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method public static quicklyGetIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 315
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isGDPREnable()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 316
    const-string v2, ""

    .line 363
    :goto_0
    return-object v2

    .line 318
    :cond_0
    sget-object v7, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->sCachedIMEI:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 319
    sget-object v2, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->sCachedIMEI:Ljava/lang/String;

    goto :goto_0

    .line 322
    :cond_1
    const/4 v2, 0x0

    .line 323
    .local v2, "deviceId":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isMIUI()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 327
    const-string v1, "miui.telephony.TelephonyManager"

    .line 328
    .local v1, "className":Ljava/lang/String;
    const-string v7, "miui.telephony.TelephonyManager"

    const-string v9, "getDefault"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v9, v10}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 329
    .local v5, "miuiTelephonyManager":Ljava/lang/Object;
    if-eqz v5, :cond_2

    .line 330
    const-string v7, "getMiuiDeviceId"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5, v7, v9}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 331
    .local v3, "deviceIdObj":Ljava/lang/Object;
    if-eqz v3, :cond_2

    instance-of v7, v3, Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 332
    const-class v7, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 337
    .end local v1    # "className":Ljava/lang/String;
    .end local v3    # "deviceIdObj":Ljava/lang/Object;
    .end local v5    # "miuiTelephonyManager":Ljava/lang/Object;
    :cond_2
    if-nez v2, :cond_3

    .line 339
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->canReadPhoneState(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 340
    const-string v7, "phone"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 341
    .local v6, "tm":Landroid/telephony/TelephonyManager;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1a

    if-ge v7, v9, :cond_4

    .line 342
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 355
    .end local v6    # "tm":Landroid/telephony/TelephonyManager;
    :cond_3
    :goto_1
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->verifyImei(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 356
    sput-object v2, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->sCachedIMEI:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 360
    :catch_0
    move-exception v4

    .line 361
    .local v4, "e":Ljava/lang/Throwable;
    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    move-object v2, v8

    .line 363
    goto :goto_0

    .line 345
    .end local v4    # "e":Ljava/lang/Throwable;
    .restart local v6    # "tm":Landroid/telephony/TelephonyManager;
    :cond_4
    const/4 v7, 0x1

    :try_start_1
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v9

    if-ne v7, v9, :cond_5

    .line 346
    const-string v9, "getImei"

    const/4 v7, 0x0

    check-cast v7, [Ljava/lang/Object;

    invoke-static {v6, v9, v7}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    goto :goto_1

    .line 348
    :cond_5
    const/4 v7, 0x2

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v9

    if-ne v7, v9, :cond_3

    .line 349
    const-string v9, "getMeid"

    const/4 v7, 0x0

    check-cast v7, [Ljava/lang/Object;

    invoke-static {v6, v9, v7}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    goto :goto_1

    .line 359
    .end local v6    # "tm":Landroid/telephony/TelephonyManager;
    :cond_6
    const-string v2, ""
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static quicklyGetSubIMEIS(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    .line 402
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isGDPREnable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 403
    const-string v6, ""

    .line 452
    :goto_0
    return-object v6

    .line 405
    :cond_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x16

    if-ge v6, v7, :cond_1

    .line 406
    const-string v6, ""

    goto :goto_0

    .line 408
    :cond_1
    sget-object v6, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->sCachedSubIMEIS:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 409
    sget-object v6, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->sCachedSubIMEIS:Ljava/lang/String;

    goto :goto_0

    .line 411
    :cond_2
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->canReadPhoneState(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 412
    const-string v6, ""

    goto :goto_0

    .line 415
    :cond_3
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->quicklyGetIMEI(Landroid/content/Context;)Ljava/lang/String;

    .line 416
    sget-object v6, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->sCachedIMEI:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 417
    const-string v6, ""

    goto :goto_0

    .line 421
    :cond_4
    :try_start_0
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 422
    .local v5, "tm":Landroid/telephony/TelephonyManager;
    const-string v6, "getPhoneCount"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 423
    .local v0, "count":Ljava/lang/Integer;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v6, v10, :cond_b

    .line 424
    const/4 v4, 0x0

    .line 425
    .local v4, "subImei":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v2, v6, :cond_9

    .line 426
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-ge v6, v7, :cond_7

    .line 428
    const-string v6, "getDeviceId"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "subImei":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 436
    .restart local v4    # "subImei":Ljava/lang/String;
    :cond_5
    :goto_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    sget-object v6, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->sCachedIMEI:Ljava/lang/String;

    .line 437
    invoke-static {v6, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->verifyImei(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 438
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->sCachedSubIMEIS:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->sCachedSubIMEIS:Ljava/lang/String;

    .line 425
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 430
    :cond_7
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v6

    if-ne v10, v6, :cond_8

    .line 431
    const-string v6, "getImei"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "subImei":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4    # "subImei":Ljava/lang/String;
    goto :goto_2

    .line 432
    :cond_8
    const/4 v6, 0x2

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v7

    if-ne v6, v7, :cond_5

    .line 433
    const-string v6, "getMeid"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "subImei":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4    # "subImei":Ljava/lang/String;
    goto :goto_2

    .line 442
    :cond_9
    sget-object v6, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->sCachedSubIMEIS:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    .line 443
    .local v3, "length":I
    if-lez v3, :cond_a

    .line 444
    sget-object v6, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->sCachedSubIMEIS:Ljava/lang/String;

    const/4 v7, 0x0

    add-int/lit8 v8, v3, -0x1

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->sCachedSubIMEIS:Ljava/lang/String;

    .line 446
    :cond_a
    sget-object v6, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->sCachedSubIMEIS:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 448
    .end local v0    # "count":Ljava/lang/Integer;
    .end local v2    # "i":I
    .end local v3    # "length":I
    .end local v4    # "subImei":Ljava/lang/String;
    .end local v5    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v1

    .line 449
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    .line 450
    const-string v6, ""

    goto/16 :goto_0

    .line 452
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "count":Ljava/lang/Integer;
    .restart local v5    # "tm":Landroid/telephony/TelephonyManager;
    :cond_b
    const-string v6, ""

    goto/16 :goto_0
.end method

.method public static quicklyGetSubIMEISMd5(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 463
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->quicklyGetSubIMEIS(Landroid/content/Context;)Ljava/lang/String;

    .line 464
    sget-object v4, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->sCachedSubIMEIS:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 465
    const-string v1, ""

    .line 480
    :cond_0
    :goto_0
    return-object v1

    .line 467
    :cond_1
    sget-object v4, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->sCachedSubIMEIS:Ljava/lang/String;

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 468
    .local v3, "subImeis":[Ljava/lang/String;
    const-string v1, ""

    .line 469
    .local v1, "result":Ljava/lang/String;
    array-length v6, v3

    move v4, v5

    :goto_1
    if-ge v4, v6, :cond_3

    aget-object v2, v3, v4

    .line 470
    .local v2, "subImei":Ljava/lang/String;
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->verifyImei(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 469
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 473
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/string/XMStringUtils;->getMd5Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 476
    .end local v2    # "subImei":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 477
    .local v0, "length":I
    if-lez v0, :cond_0

    .line 478
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static updateVirtDevId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vdevid"    # Ljava/lang/String;

    .prologue
    .line 223
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "update vdevid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 224
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    sput-object p1, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->sVirtDevId:Ljava/lang/String;

    .line 228
    const/4 v4, 0x0

    .line 230
    .local v4, "lock":Lcom/xiaomi/channel/commonutils/file/FileLocker;
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->isSupportVDevid(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 231
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    const-string v6, "/Xiaomi/"

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 232
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 233
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 235
    :cond_2
    new-instance v0, Ljava/io/File;

    const-string v5, ".vdevid"

    invoke-direct {v0, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 236
    .local v0, "deviceFile":Ljava/io/File;
    invoke-static {p0, v0}, Lcom/xiaomi/channel/commonutils/file/FileLocker;->lock(Landroid/content/Context;Ljava/io/File;)Lcom/xiaomi/channel/commonutils/file/FileLocker;

    move-result-object v4

    .line 239
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->remove(Ljava/io/File;)V

    .line 240
    sget-object v5, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->sVirtDevId:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->strToFile(Ljava/io/File;Ljava/lang/String;)V

    .line 242
    .end local v0    # "deviceFile":Ljava/io/File;
    .end local v1    # "dir":Ljava/io/File;
    :cond_3
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, ".vdevid"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 243
    .local v3, "localFile":Ljava/io/File;
    sget-object v5, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->sVirtDevId:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->strToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    if-eqz v4, :cond_0

    .line 248
    invoke-virtual {v4}, Lcom/xiaomi/channel/commonutils/file/FileLocker;->unlock()V

    goto :goto_0

    .line 244
    .end local v3    # "localFile":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 245
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "update vdevid failure :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    if-eqz v4, :cond_0

    .line 248
    invoke-virtual {v4}, Lcom/xiaomi/channel/commonutils/file/FileLocker;->unlock()V

    goto :goto_0

    .line 247
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_4

    .line 248
    invoke-virtual {v4}, Lcom/xiaomi/channel/commonutils/file/FileLocker;->unlock()V

    :cond_4
    throw v5
.end method

.method private static verifyImei(Ljava/lang/String;)Z
    .locals 3
    .param p0, "imeiString"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 589
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 605
    :cond_0
    :goto_0
    return v0

    .line 593
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf

    if-gt v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 597
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/string/XMStringUtils;->isNumberAndLetter(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 602
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/string/XMStringUtils;->isTheSameChars(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 605
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static verifyMac(Ljava/lang/String;)Z
    .locals 8
    .param p0, "macStr"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 609
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 640
    :cond_0
    :goto_0
    return v5

    .line 612
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x11

    if-ne v6, v7, :cond_0

    .line 617
    const-string v6, "^([A-Fa-f0-9]{2}[-,:]){5}[A-Fa-f0-9]{2}$"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 618
    .local v4, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 619
    .local v3, "isMac":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 624
    const/4 v2, 0x1

    .line 625
    .local v2, "isInvalid":Z
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 626
    .local v0, "char0":C
    const/16 v6, 0x30

    if-eq v0, v6, :cond_2

    const/16 v6, 0x66

    if-eq v0, v6, :cond_2

    const/16 v6, 0x46

    if-ne v0, v6, :cond_3

    .line 627
    :cond_2
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 628
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v0, :cond_4

    .line 629
    const/4 v2, 0x0

    .line 637
    .end local v1    # "i":I
    :cond_3
    if-nez v2, :cond_0

    .line 640
    const/4 v5, 0x1

    goto :goto_0

    .line 632
    .restart local v1    # "i":I
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_6

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-eq v6, v7, :cond_5

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3a

    if-ne v6, v7, :cond_6

    .line 633
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 627
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
