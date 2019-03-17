.class public Lcom/xiaomi/mipush/sdk/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static sDisablePushLog:Z

.field private static sUserLogger:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/mipush/sdk/Logger;->sDisablePushLog:Z

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/mipush/sdk/Logger;->sUserLogger:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    return-void
.end method

.method public static getLogFile(Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .param p0, "dirPath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 122
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1

    .line 136
    .end local v0    # "dir":Ljava/io/File;
    :cond_0
    :goto_0
    return-object v4

    .line 126
    .restart local v0    # "dir":Ljava/io/File;
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 127
    .local v2, "files":[Ljava/io/File;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v5, v2

    if-ge v3, v5, :cond_0

    .line 128
    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "lock"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    aget-object v5, v2, v3

    .line 129
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "log"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 130
    aget-object v4, v2, v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 133
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "i":I
    :catch_0
    move-exception v1

    .line 134
    .local v1, "exception":Ljava/lang/NullPointerException;
    const-string v5, "null pointer exception while retrieve file."

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static getUserLogger()Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/xiaomi/mipush/sdk/Logger;->sUserLogger:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    return-object v0
.end method

.method private static hasWritePermission(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 65
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1000

    .line 65
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 67
    .local v0, "info":Landroid/content/pm/PackageInfo;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 68
    .local v2, "permissionList":[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 69
    array-length v5, v2

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v2, v4

    .line 70
    .local v1, "permission":Ljava/lang/String;
    const-string v6, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_1

    .line 71
    const/4 v3, 0x1

    .line 77
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    .end local v1    # "permission":Ljava/lang/String;
    .end local v2    # "permissionList":[Ljava/lang/String;
    :cond_0
    :goto_1
    return v3

    .line 69
    .restart local v0    # "info":Landroid/content/pm/PackageInfo;
    .restart local v1    # "permission":Ljava/lang/String;
    .restart local v2    # "permissionList":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 74
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    .end local v1    # "permission":Ljava/lang/String;
    .end local v2    # "permissionList":[Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public static setLogger(Landroid/content/Context;Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "newLogger"    # Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    .prologue
    .line 31
    sput-object p1, Lcom/xiaomi/mipush/sdk/Logger;->sUserLogger:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    .line 32
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/Logger;->setPushLog(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public static setPushLog(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 50
    sget-object v2, Lcom/xiaomi/mipush/sdk/Logger;->sUserLogger:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 51
    .local v1, "shouldOpenUserLogger":Z
    :goto_0
    new-instance v0, Lcom/xiaomi/push/log/MIPushLog2File;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/log/MIPushLog2File;-><init>(Landroid/content/Context;)V

    .line 52
    .local v0, "pushLog2File":Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;
    sget-boolean v2, Lcom/xiaomi/mipush/sdk/Logger;->sDisablePushLog:Z

    if-nez v2, :cond_1

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/Logger;->hasWritePermission(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 53
    new-instance v2, Lcom/xiaomi/push/log/MIPushDebugLog;

    sget-object v3, Lcom/xiaomi/mipush/sdk/Logger;->sUserLogger:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    invoke-direct {v2, v3, v0}, Lcom/xiaomi/push/log/MIPushDebugLog;-><init>(Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;)V

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->setLogger(Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;)V

    .line 61
    :goto_1
    return-void

    .line 50
    .end local v0    # "pushLog2File":Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;
    .end local v1    # "shouldOpenUserLogger":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 54
    .restart local v0    # "pushLog2File":Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;
    .restart local v1    # "shouldOpenUserLogger":Z
    :cond_1
    sget-boolean v2, Lcom/xiaomi/mipush/sdk/Logger;->sDisablePushLog:Z

    if-nez v2, :cond_2

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/Logger;->hasWritePermission(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 55
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->setLogger(Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;)V

    goto :goto_1

    .line 56
    :cond_2
    if-eqz v1, :cond_3

    .line 57
    sget-object v2, Lcom/xiaomi/mipush/sdk/Logger;->sUserLogger:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->setLogger(Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;)V

    goto :goto_1

    .line 59
    :cond_3
    new-instance v2, Lcom/xiaomi/push/log/MIPushDebugLog;

    invoke-direct {v2, v3, v3}, Lcom/xiaomi/push/log/MIPushDebugLog;-><init>(Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;)V

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->setLogger(Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;)V

    goto :goto_1
.end method

.method public static uploadLogFile(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isXMSF"    # Z

    .prologue
    .line 81
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mipush/sdk/Logger$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/mipush/sdk/Logger$1;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->addOneShootJob(Ljava/lang/Runnable;)V

    .line 113
    return-void
.end method
