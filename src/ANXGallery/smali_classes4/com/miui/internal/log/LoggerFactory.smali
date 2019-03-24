.class public Lcom/miui/internal/log/LoggerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "LoggerFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static K()V
    .locals 2

    .line 69
    new-instance v0, Lcom/miui/internal/log/receiver/DynamicDumpReceiver;

    invoke-direct {v0}, Lcom/miui/internal/log/receiver/DynamicDumpReceiver;-><init>()V

    .line 70
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/log/receiver/DynamicDumpReceiver;->register(Landroid/content/Context;)Z

    .line 71
    return-void
.end method

.method public static getFileLogger()Lcom/miui/internal/log/Logger;
    .locals 2

    .line 37
    invoke-static {}, Lcom/miui/internal/log/util/Config;->getDefaultCacheLogDir()Ljava/lang/String;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_0

    .line 43
    invoke-static {}, Lcom/miui/internal/log/LoggerFactory;->K()V

    .line 44
    sget-object v1, Lcom/miui/internal/log/util/Config;->LOG_NAME:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/internal/log/LoggerFactory;->getFileLogger(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/internal/log/Logger;

    move-result-object v0

    return-object v0

    .line 39
    :cond_0
    const-string v0, "LoggerFactory"

    const-string v1, "Fail to create default logger, log dir is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t create default file logger"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getFileLogger(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/internal/log/Logger;
    .locals 4

    .line 48
    new-instance v0, Lcom/miui/internal/log/Logger;

    invoke-direct {v0, p1}, Lcom/miui/internal/log/Logger;-><init>(Ljava/lang/String;)V

    .line 49
    new-instance v1, Lcom/miui/internal/log/appender/FileAppender;

    invoke-direct {v1}, Lcom/miui/internal/log/appender/FileAppender;-><init>()V

    .line 50
    new-instance v2, Lcom/miui/internal/log/format/SimpleFormatter;

    invoke-direct {v2}, Lcom/miui/internal/log/format/SimpleFormatter;-><init>()V

    invoke-virtual {v1, v2}, Lcom/miui/internal/log/appender/FileAppender;->setFormatter(Lcom/miui/internal/log/format/Formatter;)V

    .line 51
    new-instance v2, Lcom/miui/internal/log/appender/rolling/FileRolloverStrategy;

    invoke-direct {v2}, Lcom/miui/internal/log/appender/rolling/FileRolloverStrategy;-><init>()V

    .line 52
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/miui/internal/log/appender/rolling/FileRolloverStrategy;->setMaxBackupIndex(I)V

    .line 53
    const/high16 v3, 0x100000

    invoke-virtual {v2, v3}, Lcom/miui/internal/log/appender/rolling/FileRolloverStrategy;->setMaxFileSize(I)V

    .line 54
    new-instance v3, Lcom/miui/internal/log/appender/rolling/RollingFileManager;

    invoke-direct {v3, p0, p1}, Lcom/miui/internal/log/appender/rolling/RollingFileManager;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v3, v2}, Lcom/miui/internal/log/appender/rolling/RollingFileManager;->setRolloverStrategy(Lcom/miui/internal/log/appender/rolling/RolloverStrategy;)V

    .line 56
    invoke-virtual {v1, v3}, Lcom/miui/internal/log/appender/FileAppender;->setFileManager(Lcom/miui/internal/log/appender/FileManager;)V

    .line 57
    invoke-virtual {v0, v1}, Lcom/miui/internal/log/Logger;->addAppender(Lcom/miui/internal/log/appender/Appender;)V

    .line 59
    sget-boolean p0, Lcom/miui/internal/util/DeviceHelper;->IS_DEBUGGABLE:Z

    if-eqz p0, :cond_0

    .line 60
    sget-object p0, Lcom/miui/internal/log/Level;->VERBOSE:Lcom/miui/internal/log/Level;

    invoke-virtual {v0, p0}, Lcom/miui/internal/log/Logger;->setLevel(Lcom/miui/internal/log/Level;)V

    goto :goto_0

    .line 62
    :cond_0
    sget-object p0, Lcom/miui/internal/log/Level;->INFO:Lcom/miui/internal/log/Level;

    invoke-virtual {v0, p0}, Lcom/miui/internal/log/Logger;->setLevel(Lcom/miui/internal/log/Level;)V

    .line 65
    :goto_0
    return-object v0
.end method

.method public static getLogcatLogger()Lcom/miui/internal/log/Logger;
    .locals 2

    .line 24
    new-instance v0, Lcom/miui/internal/log/Logger;

    sget-object v1, Lcom/miui/internal/log/util/Config;->LOG_NAME:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/miui/internal/log/Logger;-><init>(Ljava/lang/String;)V

    .line 25
    new-instance v1, Lcom/miui/internal/log/appender/LogcatAppender;

    invoke-direct {v1}, Lcom/miui/internal/log/appender/LogcatAppender;-><init>()V

    invoke-virtual {v0, v1}, Lcom/miui/internal/log/Logger;->addAppender(Lcom/miui/internal/log/appender/Appender;)V

    .line 27
    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_0

    .line 28
    sget-object v1, Lcom/miui/internal/log/Level;->VERBOSE:Lcom/miui/internal/log/Level;

    invoke-virtual {v0, v1}, Lcom/miui/internal/log/Logger;->setLevel(Lcom/miui/internal/log/Level;)V

    goto :goto_0

    .line 30
    :cond_0
    sget-object v1, Lcom/miui/internal/log/Level;->INFO:Lcom/miui/internal/log/Level;

    invoke-virtual {v0, v1}, Lcom/miui/internal/log/Logger;->setLevel(Lcom/miui/internal/log/Level;)V

    .line 33
    :goto_0
    return-object v0
.end method
