.class final Lcom/xiaomi/mipush/sdk/Logger$1;
.super Ljava/lang/Object;
.source "Logger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mipush/sdk/Logger;->uploadLogFile(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isXMSF:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/Logger$1;->val$context:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/xiaomi/mipush/sdk/Logger$1;->val$isXMSF:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 84
    const/4 v5, 0x0

    .line 86
    .local v5, "uploadingFile":Ljava/io/File;
    :try_start_0
    iget-object v8, p0, Lcom/xiaomi/mipush/sdk/Logger$1;->val$context:Landroid/content/Context;

    const-string v9, ""

    invoke-static {v8, v9}, Lcom/xiaomi/mipush/sdk/MiPushUtils;->collectDeviceInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 88
    .local v1, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v8, p0, Lcom/xiaomi/mipush/sdk/Logger$1;->val$isXMSF:Z

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/xiaomi/mipush/sdk/Logger$1;->val$context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "dirPath":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/Logger;->getLogFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 91
    .local v2, "logFile":Ljava/io/File;
    if-nez v2, :cond_2

    .line 92
    const-string v8, "log file null"

    invoke-static {v8}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 111
    .end local v0    # "dirPath":Ljava/lang/String;
    .end local v1    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "logFile":Ljava/io/File;
    :cond_0
    :goto_1
    return-void

    .line 88
    .restart local v1    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/xiaomi/mipush/sdk/Logger$1;->val$context:Landroid/content/Context;

    const/4 v10, 0x0

    .line 89
    invoke-virtual {v9, v10}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/xiaomi/push/log/MIPushLog2File;->MIPUSH_LOG_PATH:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 95
    .restart local v0    # "dirPath":Ljava/lang/String;
    .restart local v2    # "logFile":Ljava/io/File;
    :cond_2
    iget-object v8, p0, Lcom/xiaomi/mipush/sdk/Logger$1;->val$context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, "pkgName":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".zip"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 97
    .end local v5    # "uploadingFile":Ljava/io/File;
    .local v6, "uploadingFile":Ljava/io/File;
    :try_start_1
    invoke-static {v6, v2}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->zip(Ljava/io/File;Ljava/io/File;)V

    .line 98
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 99
    iget-boolean v8, p0, Lcom/xiaomi/mipush/sdk/Logger$1;->val$isXMSF:Z

    if-eqz v8, :cond_3

    const-string v7, "https://api.xmpush.xiaomi.com/upload/xmsf_log?file="

    .line 100
    .local v7, "url":Ljava/lang/String;
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "file"

    invoke-static {v8, v1, v6, v9}, Lcom/xiaomi/channel/commonutils/network/Network;->uploadFile(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .end local v7    # "url":Ljava/lang/String;
    :goto_3
    move-object v5, v6

    .line 108
    .end local v0    # "dirPath":Ljava/lang/String;
    .end local v1    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "logFile":Ljava/io/File;
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v6    # "uploadingFile":Ljava/io/File;
    .restart local v5    # "uploadingFile":Ljava/io/File;
    :goto_4
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 109
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 99
    .end local v5    # "uploadingFile":Ljava/io/File;
    .restart local v0    # "dirPath":Ljava/lang/String;
    .restart local v1    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "logFile":Ljava/io/File;
    .restart local v3    # "pkgName":Ljava/lang/String;
    .restart local v6    # "uploadingFile":Ljava/io/File;
    :cond_3
    :try_start_2
    const-string v7, "https://api.xmpush.xiaomi.com/upload/app_log?file="

    goto :goto_2

    .line 103
    :cond_4
    const-string/jumbo v8, "zip log file failed"

    invoke-static {v8}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 105
    :catch_0
    move-exception v4

    move-object v5, v6

    .line 106
    .end local v0    # "dirPath":Ljava/lang/String;
    .end local v1    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "logFile":Ljava/io/File;
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v6    # "uploadingFile":Ljava/io/File;
    .local v4, "throwable":Ljava/lang/Throwable;
    .restart local v5    # "uploadingFile":Ljava/io/File;
    :goto_5
    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 105
    .end local v4    # "throwable":Ljava/lang/Throwable;
    :catch_1
    move-exception v4

    goto :goto_5
.end method
