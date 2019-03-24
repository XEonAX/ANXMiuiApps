.class public Lcom/miui/internal/log/util/Config;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LOG_NAME:Ljava/lang/String;

.field public static final PACKAGE_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "Config"

.field private static final hv:Ljava/lang/String; = "/cache"

.field private static final hw:Ljava/lang/String; = "/debug_log/"

.field private static final hx:Ljava/lang/String; = "/dump"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    invoke-static {}, Lcom/miui/internal/log/util/Config;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Lmiui/os/ProcessUtils;->getProcessNameByPid(I)Ljava/lang/String;

    move-result-object v1

    .line 32
    if-nez v0, :cond_1

    .line 33
    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 34
    if-gez v0, :cond_0

    .line 35
    nop

    .line 40
    move-object v0, v1

    goto :goto_0

    .line 37
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 40
    :cond_1
    :goto_0
    sput-object v0, Lcom/miui/internal/log/util/Config;->PACKAGE_NAME:Ljava/lang/String;

    .line 41
    sput-object v1, Lcom/miui/internal/log/util/Config;->LOG_NAME:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultCacheLogDir()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lcom/miui/internal/log/util/Config;->PACKAGE_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/internal/log/util/Config;->getDefaultCacheLogDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultCacheLogDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 49
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    .line 50
    if-nez v0, :cond_0

    .line 51
    invoke-static {p0}, Lcom/miui/internal/log/util/Config;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 53
    :cond_0
    invoke-static {v0}, Lcom/miui/internal/log/util/Config;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultSdcardLogDir()Ljava/lang/String;
    .locals 1

    .line 58
    sget-object v0, Lcom/miui/internal/log/util/Config;->PACKAGE_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/internal/log/util/Config;->getDefaultSdcardLogDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultSdcardLogDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 62
    invoke-static {}, Lmiui/os/Environment;->getExternalStorageMiuiDirectory()Ljava/io/File;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/debug_log/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/dump"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 66
    :cond_0
    const-string p0, "Config"

    const-string v0, "Fail to getExternalStorageMiuiDirectory"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getPackageName()Ljava/lang/String;
    .locals 1

    .line 72
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    .line 73
    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    .line 93
    if-eqz p0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/debug_log/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 96
    :cond_0
    const-string p0, "Config"

    const-string v0, "Fail to getCacheDir"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 p0, 0x0

    return-object p0
.end method

.method private static n(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/cache/debug_log/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 78
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 81
    if-nez v1, :cond_0

    .line 82
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    const-string p0, "Config"

    const-string v0, "Fail to getSystemCacheLogDir"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 p0, 0x0

    return-object p0

    .line 88
    :cond_0
    return-object p0
.end method
