.class public Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;
.super Ljava/lang/Object;
.source "ScreenRecorderUtils.java"


# static fields
.field private static final ACTION_SCREEN_RECORDER_ENABLE_KEYEVENT:Ljava/lang/String; = "miui.intent.SCREEN_RECORDER_ENABLE_KEYEVENT"

.field public static final ACTION_SCREEN_RECORDER_TRACK_KEYEVENT:Ljava/lang/String; = "miui.intent.SCREEN_RECORDER_TRACK_KEYEVENT"

.field private static final KEY_IS_RECORD_FIRST_TIME:Ljava/lang/String; = "key_is_first_show_record_window"

.field private static final MIME_TYPE:Ljava/lang/String; = "video/mp4"

.field public static final MIN_BATTERY_ALLOW:I = 0x3

.field public static final MIN_BATTERY_REQUIRED:I = 0x14

.field public static final MIN_MEMORY_ALLOW:J = 0x1f400000L

.field public static final MIN_MEMORY_REQUIRED:J = 0x3e800000L

.field private static final SCREEN_RECORDER_PREFERENCE:Ljava/lang/String; = "screen_recorder_preference"

.field private static final TAG:Ljava/lang/String; = "ScreenRecorderUtils"

.field public static isMonkeyMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->isMonkeyMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkBatteryEnough(II)Z
    .locals 1
    .param p0, "curBattery"    # I
    .param p1, "minBattery"    # I

    .prologue
    .line 89
    if-lez p0, :cond_0

    if-le p0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkMemoryEnough(J)Z
    .locals 10
    .param p0, "minMemory"    # J

    .prologue
    .line 98
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    .line 99
    .local v6, "path":Ljava/io/File;
    new-instance v7, Landroid/os/StatFs;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 100
    .local v7, "statFs":Landroid/os/StatFs;
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v4, v8

    .line 101
    .local v4, "blockSize":J
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v2, v8

    .line 102
    .local v2, "availableBlocks":J
    mul-long v0, v2, v4

    .line 103
    .local v0, "availSize":J
    cmp-long v8, v0, p0

    if-lez v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    return v8

    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public static collapseStatusBar(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 393
    :try_start_0
    const-string v3, "statusbar"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 394
    .local v2, "statusBarManager":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "collapsePanels"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 395
    .local v0, "collapse":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    .end local v0    # "collapse":Ljava/lang/reflect/Method;
    .end local v2    # "statusBarManager":Ljava/lang/Object;
    :goto_0
    return-void

    .line 396
    :catch_0
    move-exception v1

    .line 397
    .local v1, "localException":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 196
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 197
    const-string p0, ""

    .line 204
    .end local p0    # "fileName":Ljava/lang/String;
    .local v0, "leftpos":I
    .local v1, "rightpos":I
    :cond_0
    :goto_0
    return-object p0

    .line 199
    .end local v0    # "leftpos":I
    .end local v1    # "rightpos":I
    .restart local p0    # "fileName":Ljava/lang/String;
    :cond_1
    const-string v2, "_"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 200
    .restart local v0    # "leftpos":I
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 201
    .restart local v1    # "rightpos":I
    if-ltz v0, :cond_0

    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 202
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getCpuName()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x2

    .line 355
    const/4 v1, 0x0

    .line 357
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    const-string v6, "/proc/cpuinfo"

    invoke-direct {v4, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 358
    .local v4, "fr":Ljava/io/FileReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "text":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 362
    const-string v6, "Hardware"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 367
    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 368
    const-string v6, "ScreenRecorderUtils"

    const-string v7, "Fail get CPU Name"

    invoke-static {v6, v7}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v6, ""
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 380
    if-eqz v2, :cond_2

    .line 382
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 388
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .end local v5    # "text":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v6

    .line 383
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "text":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 384
    .local v3, "e":Ljava/io/IOException;
    const-string v7, "ScreenRecorderUtils"

    const-string v8, "Close IOException in getCpuName"

    invoke-static {v7, v8, v3}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 371
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_3
    const-string v6, ":\\s+"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "array":[Ljava/lang/String;
    array-length v6, v0

    if-ge v6, v8, :cond_4

    .line 373
    const-string v6, "ScreenRecorderUtils"

    const-string v7, "Fail get CPU Name"

    invoke-static {v6, v7}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v6, ""
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 380
    if-eqz v2, :cond_2

    .line 382
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 383
    :catch_1
    move-exception v3

    .line 384
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v7, "ScreenRecorderUtils"

    const-string v8, "Close IOException in getCpuName"

    invoke-static {v7, v8, v3}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 376
    .end local v3    # "e":Ljava/io/IOException;
    :cond_4
    const/4 v6, 0x1

    :try_start_5
    aget-object v6, v0, v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 380
    if-eqz v2, :cond_2

    .line 382
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 383
    :catch_2
    move-exception v3

    .line 384
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v7, "ScreenRecorderUtils"

    const-string v8, "Close IOException in getCpuName"

    invoke-static {v7, v8, v3}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 377
    .end local v0    # "array":[Ljava/lang/String;
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .end local v5    # "text":Ljava/lang/String;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_3
    move-exception v3

    .line 378
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_7
    const-string v6, "ScreenRecorderUtils"

    const-string v7, "IOException in getCpuName"

    invoke-static {v6, v7, v3}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 380
    if-eqz v1, :cond_5

    .line 382
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 388
    :cond_5
    :goto_2
    const-string v6, ""

    goto :goto_0

    .line 383
    :catch_4
    move-exception v3

    .line 384
    const-string v6, "ScreenRecorderUtils"

    const-string v7, "Close IOException in getCpuName"

    invoke-static {v6, v7, v3}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    .line 380
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v1, :cond_6

    .line 382
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 385
    :cond_6
    :goto_4
    throw v6

    .line 383
    :catch_5
    move-exception v3

    .line 384
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v7, "ScreenRecorderUtils"

    const-string v8, "Close IOException in getCpuName"

    invoke-static {v7, v8, v3}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_4

    .line 380
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 377
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catch_6
    move-exception v3

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private static getGalleryIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 222
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 223
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.camera.action.REVIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string v1, "com.miui.gallery"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "video/mp4"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    return-object v0
.end method

.method public static getLastPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    .line 299
    const-string v8, "activity"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 300
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v7

    .line 301
    .local v7, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v2, 0x0

    .line 302
    .local v2, "cinfo":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 303
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "cinfo":Landroid/app/ActivityManager$RunningTaskInfo;
    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 305
    .restart local v2    # "cinfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_0
    if-nez v2, :cond_1

    .line 306
    const-string v8, ""

    .line 320
    :goto_0
    return-object v8

    .line 308
    :cond_1
    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 309
    .local v3, "componentName":Landroid/content/ComponentName;
    if-nez v3, :cond_2

    .line 310
    const-string v8, ""

    goto :goto_0

    .line 312
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 314
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v6, v3, v8}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 315
    .local v5, "info":Landroid/content/pm/ActivityInfo;
    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 316
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v1, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_0

    .line 317
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "info":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v4

    .line 318
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 320
    const-string v8, ""

    goto :goto_0
.end method

.method public static getLocaleFromConfig(Landroid/content/res/Configuration;)Ljava/util/Locale;
    .locals 3
    .param p0, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    .line 403
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 404
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    .line 408
    .local v0, "locale":Ljava/util/Locale;
    :goto_0
    return-object v0

    .line 406
    .end local v0    # "locale":Ljava/util/Locale;
    :cond_0
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .restart local v0    # "locale":Ljava/util/Locale;
    goto :goto_0
.end method

.method public static getShowTouchesOptions(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v0, 0x0

    .line 248
    const-string v1, "show_touches"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isAndroid24AndLater()Z
    .locals 2

    .prologue
    .line 230
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBluetoothHeadsetConnected()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x2

    .line 417
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 418
    .local v1, "ba":Landroid/bluetooth/BluetoothAdapter;
    if-nez v1, :cond_1

    .line 438
    :cond_0
    :goto_0
    return v4

    .line 421
    :cond_1
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 423
    invoke-virtual {v1, v7}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v0

    .line 425
    .local v0, "a2dp":I
    invoke-virtual {v1, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v3

    .line 427
    .local v3, "headset":I
    const/4 v2, -0x1

    .line 428
    .local v2, "flag":I
    if-ne v0, v7, :cond_3

    .line 429
    move v2, v0

    .line 434
    :cond_2
    :goto_1
    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    move v4, v5

    .line 435
    goto :goto_0

    .line 430
    :cond_3
    if-ne v3, v7, :cond_2

    .line 431
    move v2, v3

    goto :goto_1
.end method

.method public static isGarbageCleanupAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 290
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.GARBAGE_CLEANUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 291
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method public static isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 295
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isShowInnerSoundEntrance()Z
    .locals 15

    .prologue
    const/4 v14, 0x1

    .line 253
    const/4 v8, 0x0

    .line 254
    .local v8, "isSupportInnerRecord":Z
    sget-object v10, Lcom/miui/screenrecorder/config/PhoneConfigInstance;->INSTANCE:Lcom/miui/screenrecorder/config/PhoneConfigInstance;

    invoke-virtual {v10}, Lcom/miui/screenrecorder/config/PhoneConfigInstance;->getInstance()Lcom/miui/screenrecorder/config/PhoneConfig;

    move-result-object v5

    .line 255
    .local v5, "config":Lcom/miui/screenrecorder/config/PhoneConfig;
    invoke-virtual {v5}, Lcom/miui/screenrecorder/config/PhoneConfig;->isSupportInner()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 256
    invoke-virtual {v5}, Lcom/miui/screenrecorder/config/PhoneConfig;->getInnerStreamType()I

    move-result v10

    if-nez v10, :cond_0

    .line 258
    :try_start_0
    const-string v10, "android.os.ServiceManager"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 259
    .local v9, "smClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v10, "getService"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 260
    .local v7, "getService":Ljava/lang/reflect/Method;
    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "audio"

    aput-object v13, v11, v12

    invoke-virtual {v7, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    .line 262
    .local v4, "binder":Landroid/os/IBinder;
    const-string v10, "android.media.IAudioService$Stub"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 263
    .local v3, "asStubClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v10, "asInterface"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Landroid/os/IBinder;

    aput-object v13, v11, v12

    invoke-virtual {v3, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 265
    .local v2, "asInterface":Ljava/lang/reflect/Method;
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    invoke-virtual {v2, v3, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 266
    .local v0, "as":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 267
    .local v1, "asClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v10, "createAudioRecordForLoopback"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Landroid/os/ParcelFileDescriptor;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    sget-object v13, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    invoke-virtual {v1, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    const/4 v8, 0x1

    .line 275
    .end local v0    # "as":Ljava/lang/Object;
    .end local v1    # "asClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "asInterface":Ljava/lang/reflect/Method;
    .end local v3    # "asStubClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "binder":Landroid/os/IBinder;
    .end local v7    # "getService":Ljava/lang/reflect/Method;
    .end local v9    # "smClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    invoke-virtual {v5}, Lcom/miui/screenrecorder/config/PhoneConfig;->getInnerStreamType()I

    move-result v10

    if-ne v10, v14, :cond_1

    .line 277
    :try_start_1
    const-string v10, "android.media.ANXAudioSystem"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 278
    .restart local v1    # "asClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v10, "FOR_LOOPBACK"

    invoke-virtual {v1, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 279
    const/4 v8, 0x1

    .line 286
    .end local v1    # "asClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :goto_1
    return v8

    .line 270
    :catch_0
    move-exception v6

    .line 271
    .local v6, "e":Ljava/lang/Exception;
    const-string v10, "ScreenRecorderUtils"

    const-string v11, "debug"

    invoke-static {v10, v11, v6}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 272
    const-string v10, "ScreenRecorderUtils"

    const-string v11, "This phone isn\'t support InnerPCMRecord"

    invoke-static {v10, v11}, Lcom/miui/screenrecorder/tools/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 280
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 281
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v10, "ScreenRecorderUtils"

    const-string v11, "debug"

    invoke-static {v10, v11, v6}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 282
    const-string v10, "ScreenRecorderUtils"

    const-string v11, "This phone isn\'t support InnerSUBMIXRecord"

    invoke-static {v10, v11}, Lcom/miui/screenrecorder/tools/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static isShowRecordHint()Z
    .locals 4

    .prologue
    .line 328
    invoke-static {}, Lcom/miui/screenrecorder/ScreenRecorderApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "screen_recorder_preference"

    const/4 v3, 0x0

    .line 329
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 330
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "key_is_first_show_record_window"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isSupportA2dpInner()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 443
    sget-object v3, Lcom/miui/screenrecorder/config/PhoneConfigInstance;->INSTANCE:Lcom/miui/screenrecorder/config/PhoneConfigInstance;

    invoke-virtual {v3}, Lcom/miui/screenrecorder/config/PhoneConfigInstance;->getInstance()Lcom/miui/screenrecorder/config/PhoneConfig;

    move-result-object v0

    .line 444
    .local v0, "config":Lcom/miui/screenrecorder/config/PhoneConfig;
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 445
    .local v1, "deviceName":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/miui/screenrecorder/config/PhoneConfig;->getInnerStreamType()I

    move-result v3

    if-ne v3, v2, :cond_1

    const-string v3, "riva"

    .line 446
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "rolex"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "gemini"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "rosy"

    .line 447
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "scorpio"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "capricorn"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "lithium"

    .line 448
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "natrium"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "oxygen"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "tiffany"

    .line 449
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ysl"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "vince"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "sakura"

    .line 450
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "lotus"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "onc"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 452
    :cond_0
    const/4 v2, 0x0

    .line 454
    :cond_1
    return v2
.end method

.method public static isSupportHighFrames()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 342
    invoke-static {}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->getCpuName()Ljava/lang/String;

    move-result-object v2

    .line 343
    .local v2, "cpuName":Ljava/lang/String;
    const-string v4, "ScreenRecorderUtils"

    invoke-static {v4, v2}, Lcom/miui/screenrecorder/tools/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-static {}, Lcom/miui/screenrecorder/ScreenRecorderApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060011

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "SupportCpuArray":[Ljava/lang/String;
    array-length v5, v0

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v0, v4

    .line 347
    .local v1, "cpu":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 348
    const/4 v3, 0x1

    .line 351
    .end local v1    # "cpu":Ljava/lang/String;
    :cond_0
    return v3

    .line 346
    .restart local v1    # "cpu":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static isTalkBackOn()Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 463
    invoke-static {}, Lcom/miui/screenrecorder/ScreenRecorderApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 464
    .local v2, "context":Landroid/content/Context;
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 467
    .local v4, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "enabled_accessibility_services"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 468
    .local v5, "enabledServicesSetting":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 482
    :cond_0
    :goto_0
    return v6

    .line 472
    :cond_1
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v7, 0x3a

    invoke-direct {v0, v7}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 473
    .local v0, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v0, v5}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 475
    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 476
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 477
    .local v1, "componentNameString":Ljava/lang/String;
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 478
    .local v3, "enabledService":Landroid/content/ComponentName;
    if-eqz v3, :cond_2

    .line 479
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 482
    .end local v1    # "componentNameString":Ljava/lang/String;
    .end local v3    # "enabledService":Landroid/content/ComponentName;
    :cond_3
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v6, 0x1

    goto :goto_0
.end method

.method public static isUseInnerSound()Z
    .locals 2

    .prologue
    .line 458
    invoke-static {}, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->getConfig()Lcom/miui/screenrecorder/config/ScreenRecorderConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->getSound()I

    move-result v0

    .line 459
    .local v0, "sound":I
    const-string v1, "2"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static millTurnToSeconds(J)J
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 324
    const-wide/16 v0, 0x3e8

    div-long v0, p0, v0

    return-wide v0
.end method

.method public static obtainLocalFloat(F)Ljava/lang/String;
    .locals 1
    .param p0, "number"    # F

    .prologue
    .line 512
    const-string v0, "%f"

    invoke-static {v0, p0}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->obtainLocalNumber(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static obtainLocalInteger(I)Ljava/lang/String;
    .locals 1
    .param p0, "number"    # I

    .prologue
    .line 508
    const-string v0, "%d"

    invoke-static {v0, p0}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->obtainLocalNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static obtainLocalInteger(II)Ljava/lang/String;
    .locals 2
    .param p0, "number"    # I
    .param p1, "quantityId"    # I

    .prologue
    .line 489
    invoke-static {}, Lcom/miui/screenrecorder/ScreenRecorderApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1, p0}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, "format":Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->obtainLocalNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static obtainLocalNumber(Ljava/lang/String;F)Ljava/lang/String;
    .locals 4
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "number"    # F

    .prologue
    .line 504
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static obtainLocalNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "number"    # I

    .prologue
    .line 497
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parserSecondsToYMD(Landroid/content/Context;J)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J

    .prologue
    .line 110
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 111
    .local v0, "calendar":Ljava/util/Calendar;
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 112
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 113
    .local v2, "nowYear":I
    new-instance v7, Ljava/util/Date;

    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, p1

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 114
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 116
    .local v1, "inputYear":I
    invoke-static {}, Lcom/miui/screenrecorder/tools/RegionUtils;->isInARLan()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {}, Lcom/miui/screenrecorder/tools/RegionUtils;->isInFaIRLan()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 117
    :cond_0
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 121
    .local v5, "sf":Ljava/text/SimpleDateFormat;
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .local v6, "str":Ljava/lang/StringBuilder;
    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, p1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 124
    .local v3, "p1":I
    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 125
    .local v4, "p2":I
    add-int/lit8 v7, v3, 0x1

    const v8, 0x7f080013

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v3, v7, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    add-int/lit8 v7, v4, 0x1

    const v8, 0x7f080012

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v4, v7, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const v7, 0x7f080011

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    if-ne v2, v1, :cond_2

    .line 129
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 131
    :goto_1
    return-object v7

    .line 119
    .end local v3    # "p1":I
    .end local v4    # "p2":I
    .end local v5    # "sf":Ljava/text/SimpleDateFormat;
    .end local v6    # "str":Ljava/lang/StringBuilder;
    :cond_1
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .restart local v5    # "sf":Ljava/text/SimpleDateFormat;
    goto :goto_0

    .line 131
    .restart local v3    # "p1":I
    .restart local v4    # "p2":I
    .restart local v6    # "str":Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method public static playVideo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 210
    invoke-static {p1}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->getGalleryIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 211
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 212
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 213
    return-void
.end method

.method public static playVideoInHome(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 216
    invoke-static {p1}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->getGalleryIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 217
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 218
    return-void
.end method

.method public static recorderKeyEvent(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isShowKeyEvent"    # Z

    .prologue
    .line 76
    const-string v1, "ScreenRecorderUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recorderKeyEvent sendBroadcastAsUser isShowKeyEvent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/screenrecorder/tools/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.SCREEN_RECORDER_ENABLE_KEYEVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "enable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 79
    sget-object v1, Lcom/miui/screenrecorder/compat/UserHandleCompat;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 80
    return-void
.end method

.method public static setIsShowRecordHint(Z)V
    .locals 5
    .param p0, "isShow"    # Z

    .prologue
    .line 334
    invoke-static {}, Lcom/miui/screenrecorder/ScreenRecorderApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "screen_recorder_preference"

    const/4 v4, 0x0

    .line 335
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 336
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 337
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "key_is_first_show_record_window"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 338
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 339
    return-void
.end method

.method public static turnMillSecondsToHour(J)Ljava/lang/String;
    .locals 12
    .param p0, "ms"    # J

    .prologue
    const-wide/32 v10, 0x36ee80

    const v5, 0xea60

    const/16 v9, 0xa

    const/4 v8, 0x0

    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .local v4, "stringBuilder":Ljava/lang/StringBuilder;
    div-long v6, p0, v10

    long-to-int v0, v6

    .line 171
    .local v0, "hour":I
    rem-long v6, p0, v10

    long-to-int v1, v6

    .line 172
    .local v1, "lastms":I
    div-int v2, v1, v5

    .line 173
    .local v2, "min":I
    rem-int/2addr v1, v5

    .line 174
    div-int/lit16 v3, v1, 0x3e8

    .line 175
    .local v3, "seconds":I
    if-lez v0, :cond_1

    .line 176
    if-ge v0, v9, :cond_0

    .line 177
    invoke-static {v8}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->obtainLocalInteger(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    :cond_0
    invoke-static {v0}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->obtainLocalInteger(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    :cond_1
    if-ge v2, v9, :cond_2

    .line 182
    invoke-static {v8}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->obtainLocalInteger(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :cond_2
    invoke-static {v2}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->obtainLocalInteger(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    if-ge v3, v9, :cond_3

    .line 186
    invoke-static {v8}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->obtainLocalInteger(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_3
    invoke-static {v3}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->obtainLocalInteger(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static turnSizeInt2Str(J)Ljava/lang/String;
    .locals 12
    .param p0, "intSize"    # J

    .prologue
    const v10, 0x7f08004a

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v3, p0, v4

    if-lez v3, :cond_0

    .line 141
    const-wide/16 v4, 0x3e8

    rem-long v4, p0, v4

    long-to-int v0, v4

    .line 142
    .local v0, "a":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    const-wide/16 v4, 0x3e8

    div-long/2addr p0, v4

    .line 144
    goto :goto_0

    .line 145
    .end local v0    # "a":I
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 146
    invoke-static {v6}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->obtainLocalInteger(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 147
    invoke-static {}, Lcom/miui/screenrecorder/ScreenRecorderApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 148
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v7, :cond_2

    .line 149
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->obtainLocalInteger(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 150
    invoke-static {}, Lcom/miui/screenrecorder/ScreenRecorderApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 151
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v8, :cond_3

    .line 152
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->obtainLocalInteger(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 153
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    div-int/lit8 v3, v3, 0x64

    invoke-static {v3}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->obtainLocalInteger(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 154
    invoke-static {}, Lcom/miui/screenrecorder/ScreenRecorderApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08004c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 155
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v9, :cond_4

    .line 156
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->obtainLocalInteger(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    div-int/lit8 v3, v3, 0x64

    invoke-static {v3}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->obtainLocalInteger(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 157
    invoke-static {}, Lcom/miui/screenrecorder/ScreenRecorderApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08004d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 159
    :cond_4
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->obtainLocalInteger(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    div-int/lit8 v3, v3, 0x64

    invoke-static {v3}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->obtainLocalInteger(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 160
    invoke-static {}, Lcom/miui/screenrecorder/ScreenRecorderApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08004b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method

.method public static writeShowTouchesOption(Landroid/content/ContentResolver;Z)V
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "isShowTouch"    # Z

    .prologue
    .line 241
    :try_start_0
    const-string v2, "show_touches"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {p0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_1
    return-void

    .line 241
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ScreenRecorderUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Write private settings failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
