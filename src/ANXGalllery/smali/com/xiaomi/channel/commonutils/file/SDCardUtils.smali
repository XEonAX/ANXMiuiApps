.class public Lcom/xiaomi/channel/commonutils/file/SDCardUtils;
.super Ljava/lang/Object;
.source "SDCardUtils.java"


# direct methods
.method public static getSDCardAvailableBytes()J
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 59
    invoke-static {}, Lcom/xiaomi/channel/commonutils/file/SDCardUtils;->isSDCardBusy()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 74
    .local v5, "path":Ljava/io/File;
    :cond_0
    :goto_0
    return-wide v8

    .line 63
    .end local v5    # "path":Ljava/io/File;
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    .line 64
    .restart local v5    # "path":Ljava/io/File;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 69
    :try_start_0
    new-instance v6, Landroid/os/StatFs;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 70
    .local v6, "stat":Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v2, v7

    .line 71
    .local v2, "blockSize":J
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    int-to-long v0, v7

    .line 72
    .local v0, "availableBlocks":J
    const-wide/16 v8, 0x4

    sub-long v8, v0, v8

    mul-long/2addr v8, v2

    goto :goto_0

    .line 73
    .end local v0    # "availableBlocks":J
    .end local v2    # "blockSize":J
    .end local v6    # "stat":Landroid/os/StatFs;
    :catch_0
    move-exception v4

    .line 74
    .local v4, "ignored":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method public static isSDCardBusy()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 31
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 34
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return v1

    .line 31
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static isSDCardFull()Z
    .locals 4

    .prologue
    .line 45
    invoke-static {}, Lcom/xiaomi/channel/commonutils/file/SDCardUtils;->getSDCardAvailableBytes()J

    move-result-wide v0

    const-wide/32 v2, 0x19000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSDCardUnavailable()Z
    .locals 3

    .prologue
    .line 19
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "removed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 22
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return v1

    .line 20
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 21
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 22
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isSDCardUseful()Z
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lcom/xiaomi/channel/commonutils/file/SDCardUtils;->isSDCardBusy()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/channel/commonutils/file/SDCardUtils;->isSDCardFull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    invoke-static {}, Lcom/xiaomi/channel/commonutils/file/SDCardUtils;->isSDCardUnavailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 49
    :goto_0
    return v0

    .line 50
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
