.class public Lmiui/content/res/ThemeRuntimeManager;
.super Ljava/lang/Object;
.source "ThemeRuntimeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;
    }
.end annotation


# static fields
.field public static final BUILTIN_ALARM_PATH:Ljava/lang/String; = "/system/media/audio/alarms/"

.field public static final BUILTIN_LOCKSCREEN_PATH:Ljava/lang/String; = "/system/media/lockscreen/"

.field public static final BUILTIN_NOTIFICATION_PATH:Ljava/lang/String; = "/system/media/audio/notifications/"

.field public static final BUILTIN_RINGTONE_PATH:Ljava/lang/String; = "/system/media/audio/ringtones/"

.field public static final BUILTIN_ROOT_PATH:Ljava/lang/String; = "/system/media/"

.field public static final BUILTIN_WALLPAPER_PATH:Ljava/lang/String; = "/system/media/wallpaper/"

.field public static final DEFAULT_ALARM_FILE_PATH_RES_ID:I

.field public static final DEFAULT_NOTIFICATION_FILE_PATH_RES_ID:I

.field public static final DEFAULT_RINGTONE_FILE_PATH_RES_ID:I

.field public static final DEFAULT_SMS_DELIVERED_SOUND_FILE_PATH_RES_ID:I

.field public static final DEFAULT_SMS_RECEIVED_SOUND_FILE_PATH_RES_ID:I

.field public static final RUNTIME_PATH_BOOT_ANIMATION:Ljava/lang/String;

.field public static final RUNTIME_PATH_LOCKSCREEN:Ljava/lang/String; = "/data/system/theme/lock_wallpaper"

.field public static final RUNTIME_PATH_WALLPAPER:Ljava/lang/String; = "/data/system/theme/wallpaper"

.field public static final RUNTIME_PIC_FOLDER:Ljava/lang/String; = "/data/system/theme/"

.field private static final SAVE_ICON_MAX_SIZE:I = 0x28000

.field private static final TAG:Ljava/lang/String; = "ThemeRuntimeManager"

.field private static final TEMP_ICON_FOLDER:Ljava/lang/String;

.field private static final THEME_PACKAGE_NAME:Ljava/lang/String; = "com.android.thememanager"

.field private static sWhiteList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mJobLocker:[B

.field private mPendingJobs:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSecurityManager:Ljava/lang/Object;

.field private mServiceLocker:[B

.field private mThreadFinished:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_0

    const-string v0, "/data/system/theme/boots/bootanimation.zip"

    goto :goto_0

    :cond_0
    const-string v0, "/data/local/bootanimation.zip"

    :goto_0
    sput-object v0, Lmiui/content/res/ThemeRuntimeManager;->RUNTIME_PATH_BOOT_ANIMATION:Ljava/lang/String;

    .line 50
    sget v0, Lmiui/system/R$string;->def_ringtone:I

    sput v0, Lmiui/content/res/ThemeRuntimeManager;->DEFAULT_RINGTONE_FILE_PATH_RES_ID:I

    .line 51
    sget v0, Lmiui/system/R$string;->def_notification_sound:I

    sput v0, Lmiui/content/res/ThemeRuntimeManager;->DEFAULT_NOTIFICATION_FILE_PATH_RES_ID:I

    .line 52
    sget v0, Lmiui/system/R$string;->def_alarm_alert:I

    sput v0, Lmiui/content/res/ThemeRuntimeManager;->DEFAULT_ALARM_FILE_PATH_RES_ID:I

    .line 53
    sget v0, Lmiui/system/R$string;->def_sms_delivered_sound:I

    sput v0, Lmiui/content/res/ThemeRuntimeManager;->DEFAULT_SMS_DELIVERED_SOUND_FILE_PATH_RES_ID:I

    .line 54
    sget v0, Lmiui/system/R$string;->def_sms_received_sound:I

    sput v0, Lmiui/content/res/ThemeRuntimeManager;->DEFAULT_SMS_RECEIVED_SOUND_FILE_PATH_RES_ID:I

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lmiui/content/res/ThemeResources;->THEME_MAGIC_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "tempIcon/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/content/res/ThemeRuntimeManager;->TEMP_ICON_FOLDER:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmiui/content/res/ThemeRuntimeManager;->sWhiteList:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    new-array v1, v0, [B

    iput-object v1, p0, Lmiui/content/res/ThemeRuntimeManager;->mServiceLocker:[B

    .line 143
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lmiui/content/res/ThemeRuntimeManager;->mPendingJobs:Ljava/util/Stack;

    .line 144
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/content/res/ThemeRuntimeManager;->mThreadFinished:Z

    .line 145
    new-array v0, v0, [B

    iput-object v0, p0, Lmiui/content/res/ThemeRuntimeManager;->mJobLocker:[B

    .line 70
    iput-object p1, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lmiui/content/res/ThemeRuntimeManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/content/res/ThemeRuntimeManager;

    .line 32
    invoke-direct {p0}, Lmiui/content/res/ThemeRuntimeManager;->bindService()V

    return-void
.end method

.method static synthetic access$100(Lmiui/content/res/ThemeRuntimeManager;)[B
    .locals 1
    .param p0, "x0"    # Lmiui/content/res/ThemeRuntimeManager;

    .line 32
    iget-object v0, p0, Lmiui/content/res/ThemeRuntimeManager;->mJobLocker:[B

    return-object v0
.end method

.method static synthetic access$200(Lmiui/content/res/ThemeRuntimeManager;)Ljava/util/Stack;
    .locals 1
    .param p0, "x0"    # Lmiui/content/res/ThemeRuntimeManager;

    .line 32
    iget-object v0, p0, Lmiui/content/res/ThemeRuntimeManager;->mPendingJobs:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/content/res/ThemeRuntimeManager;)[B
    .locals 1
    .param p0, "x0"    # Lmiui/content/res/ThemeRuntimeManager;

    .line 32
    iget-object v0, p0, Lmiui/content/res/ThemeRuntimeManager;->mServiceLocker:[B

    return-object v0
.end method

.method static synthetic access$400(Lmiui/content/res/ThemeRuntimeManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lmiui/content/res/ThemeRuntimeManager;

    .line 32
    iget-object v0, p0, Lmiui/content/res/ThemeRuntimeManager;->mSecurityManager:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lmiui/content/res/ThemeRuntimeManager;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lmiui/content/res/ThemeRuntimeManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/graphics/Bitmap;

    .line 32
    invoke-direct {p0, p1, p2}, Lmiui/content/res/ThemeRuntimeManager;->saveIconInner(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$600(Lmiui/content/res/ThemeRuntimeManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/content/res/ThemeRuntimeManager;

    .line 32
    invoke-direct {p0}, Lmiui/content/res/ThemeRuntimeManager;->unbindService()V

    return-void
.end method

.method static synthetic access$702(Lmiui/content/res/ThemeRuntimeManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lmiui/content/res/ThemeRuntimeManager;
    .param p1, "x1"    # Z

    .line 32
    iput-boolean p1, p0, Lmiui/content/res/ThemeRuntimeManager;->mThreadFinished:Z

    return p1
.end method

.method private bindService()V
    .locals 3

    .line 124
    iget-object v0, p0, Lmiui/content/res/ThemeRuntimeManager;->mServiceLocker:[B

    monitor-enter v0

    .line 125
    :try_start_0
    iget-object v1, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    const-string v2, "security"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lmiui/content/res/ThemeRuntimeManager;->mSecurityManager:Ljava/lang/Object;

    .line 126
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    iget-object v0, p0, Lmiui/content/res/ThemeRuntimeManager;->mSecurityManager:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 128
    const-string v0, "ThemeRuntimeManager"

    const-string v1, "can\'t bind SecurityManager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    return-void

    .line 126
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static createTempIconFile(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "path":Ljava/lang/String;
    const/4 v1, 0x0

    .line 81
    .local v1, "outputStream":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "android"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 83
    invoke-static {v0}, Lmiui/content/res/ThemeRuntimeManager;->getFileOutputStream(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v1, v3

    .line 88
    :cond_0
    if-nez v1, :cond_1

    .line 89
    new-instance v3, Ljava/io/File;

    sget-object v4, Lmiui/content/res/ThemeRuntimeManager;->TEMP_ICON_FOLDER:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lmiui/content/res/ThemeRuntimeManager;->TEMP_ICON_FOLDER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 91
    invoke-static {v0}, Lmiui/content/res/ThemeRuntimeManager;->getFileOutputStream(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v1, v3

    .line 94
    :cond_1
    if-nez v1, :cond_2

    .line 95
    const-string v3, "ThemeRuntimeManager"

    const-string v4, "can\'t get icon cache folder"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-object v2

    .line 100
    :cond_2
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p2, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 101
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 102
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 103
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_3

    move-object v2, v0

    nop

    :cond_3
    return-object v2

    .line 106
    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "outputStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 104
    :catch_1
    move-exception v0

    .line 105
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 108
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    nop

    .line 109
    :goto_0
    return-object v2
.end method

.method private existIntentService(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 133
    iget-object v0, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 134
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method

.method private static getFileOutputStream(Ljava/lang/String;)Ljava/io/FileOutputStream;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .line 113
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 116
    .local v1, "outputStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v2

    .line 117
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1b4

    invoke-static {v2, v3}, Lmiui/os/FileUtils;->chmod(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    goto :goto_0

    .line 118
    :catch_0
    move-exception v2

    .line 120
    :goto_0
    return-object v1
.end method

.method private isRestoreIndependentComponents()Z
    .locals 1

    .line 274
    const/4 v0, 0x0

    return v0
.end method

.method private saveIconInner(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    .line 178
    const-string v0, "ThemeRuntimeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saving icon for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lmiui/content/res/ThemeRuntimeManager;->mSecurityManager:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "saveIcon"

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/graphics/Bitmap;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-static {v0, v1, v2, v4}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Lmiui/reflect/Method;

    move-result-object v0

    .line 182
    .local v0, "method":Lmiui/reflect/Method;
    if-eqz v0, :cond_0

    .line 183
    iget-object v1, p0, Lmiui/content/res/ThemeRuntimeManager;->mSecurityManager:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lmiui/content/res/ThemeRuntimeManager;->mSecurityManager:Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    aput-object p2, v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 185
    :cond_0
    return-void
.end method

.method private unbindService()V
    .locals 2

    .line 138
    iget-object v0, p0, Lmiui/content/res/ThemeRuntimeManager;->mServiceLocker:[B

    monitor-enter v0

    .line 139
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lmiui/content/res/ThemeRuntimeManager;->mSecurityManager:Ljava/lang/Object;

    .line 140
    monitor-exit v0

    .line 141
    return-void

    .line 140
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public markGadgetUpdated()V
    .locals 6

    .line 219
    const-string v0, "clock_changed_time_"

    .line 220
    .local v0, "prefix":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 221
    .local v1, "time":J
    iget-object v3, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "1x2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 222
    iget-object v3, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "2x2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 223
    iget-object v3, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "2x4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 224
    iget-object v3, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "4x4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 225
    iget-object v3, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "3x4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 226
    return-void
.end method

.method public restoreDefault()V
    .locals 9

    .line 229
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/theme/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 230
    .local v0, "folder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 232
    .local v5, "file":Ljava/io/File;
    sget-object v6, Lmiui/content/res/ThemeRuntimeManager;->sWhiteList:Ljava/util/Set;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 233
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmiui/content/res/ThemeNativeUtils;->remove(Ljava/lang/String;)Z

    .line 231
    .end local v5    # "file":Ljava/io/File;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 238
    :cond_1
    sget-object v1, Lmiui/content/res/ThemeRuntimeManager;->RUNTIME_PATH_BOOT_ANIMATION:Ljava/lang/String;

    invoke-static {v1}, Lmiui/content/res/ThemeNativeUtils;->remove(Ljava/lang/String;)Z

    .line 240
    new-instance v1, Landroid/content/Intent;

    const-string v3, "miui.intent.action.CLEAR_THEME_RUNTIME_DATA"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 241
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 242
    iget-object v3, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    const-string v4, "wallpaper"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/WallpaperManager;

    .line 244
    .local v3, "ws":Landroid/app/WallpaperManager;
    :try_start_0
    invoke-virtual {v3}, Landroid/app/WallpaperManager;->clear()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    goto :goto_1

    .line 245
    :catch_0
    move-exception v4

    .line 246
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 249
    .end local v4    # "e":Ljava/io/IOException;
    :goto_1
    invoke-direct {p0}, Lmiui/content/res/ThemeRuntimeManager;->isRestoreIndependentComponents()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 250
    iget-object v4, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    sget v7, Lmiui/content/res/ThemeRuntimeManager;->DEFAULT_RINGTONE_FILE_PATH_RES_ID:I

    .line 251
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 250
    const/4 v6, 0x1

    invoke-static {v4, v6, v5}, Landroid/media/ExtraRingtoneManager;->saveDefaultSound(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 252
    iget-object v4, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x2

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    sget v8, Lmiui/content/res/ThemeRuntimeManager;->DEFAULT_NOTIFICATION_FILE_PATH_RES_ID:I

    .line 253
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 252
    invoke-static {v4, v5, v6}, Landroid/media/ExtraRingtoneManager;->saveDefaultSound(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 254
    iget-object v4, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x4

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    sget v8, Lmiui/content/res/ThemeRuntimeManager;->DEFAULT_ALARM_FILE_PATH_RES_ID:I

    .line 255
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 254
    invoke-static {v4, v5, v6}, Landroid/media/ExtraRingtoneManager;->saveDefaultSound(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 256
    iget-object v4, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    const/16 v5, 0x8

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    sget v8, Lmiui/content/res/ThemeRuntimeManager;->DEFAULT_SMS_DELIVERED_SOUND_FILE_PATH_RES_ID:I

    .line 257
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 256
    invoke-static {v4, v5, v6}, Landroid/media/ExtraRingtoneManager;->saveDefaultSound(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 258
    iget-object v4, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    const/16 v5, 0x10

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    sget v8, Lmiui/content/res/ThemeRuntimeManager;->DEFAULT_SMS_RECEIVED_SOUND_FILE_PATH_RES_ID:I

    .line 259
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 258
    invoke-static {v4, v5, v6}, Landroid/media/ExtraRingtoneManager;->saveDefaultSound(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 262
    :cond_2
    const/4 v4, 0x0

    invoke-static {v4}, Lmiui/content/res/IconCustomizer;->clearCustomizedIcons(Ljava/lang/String;)V

    .line 263
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/content/res/ThemeResourcesSystem;->resetIcons()V

    .line 265
    invoke-virtual {p0}, Lmiui/content/res/ThemeRuntimeManager;->markGadgetUpdated()V

    .line 268
    iget-object v4, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lmiui/drm/DrmManager;->setSupportAd(Landroid/content/Context;Z)V

    .line 270
    const-wide/32 v4, 0x10007899    # 1.3263999E-315

    invoke-static {v4, v5}, Landroid/content/res/MiuiConfiguration;->sendThemeConfigurationChangeMsg(J)V

    .line 271
    return-void
.end method

.method public saveIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    .line 193
    :try_start_0
    iget-object v0, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 194
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_3

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    and-int/2addr v1, v3

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 200
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    nop

    .line 203
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    const v1, 0x28000

    if-le v0, v1, :cond_1

    .line 204
    const-string v0, "ThemeRuntimeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveIcon fail because icon bitmap is too large "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return-void

    .line 207
    :cond_1
    iget-object v0, p0, Lmiui/content/res/ThemeRuntimeManager;->mJobLocker:[B

    monitor-enter v0

    .line 208
    :try_start_1
    const-string v1, "ThemeRuntimeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add pending job "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v1, p0, Lmiui/content/res/ThemeRuntimeManager;->mPendingJobs:Ljava/util/Stack;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v1, p0, Lmiui/content/res/ThemeRuntimeManager;->mJobLocker:[B

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 211
    iget-boolean v1, p0, Lmiui/content/res/ThemeRuntimeManager;->mThreadFinished:Z

    if-eqz v1, :cond_2

    .line 212
    iput-boolean v2, p0, Lmiui/content/res/ThemeRuntimeManager;->mThreadFinished:Z

    .line 213
    new-instance v1, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;-><init>(Lmiui/content/res/ThemeRuntimeManager;Lmiui/content/res/ThemeRuntimeManager$1;)V

    invoke-virtual {v1}, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;->start()V

    .line 215
    :cond_2
    monitor-exit v0

    .line 216
    return-void

    .line 215
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 195
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_3
    :goto_0
    return-void

    .line 197
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "ThemeRuntimeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to find package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmiui/content/res/ThemeRuntimeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    return-void
.end method
