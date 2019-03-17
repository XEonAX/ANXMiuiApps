.class public Lcom/miui/gallery/error/util/ErrorParseUtil;
.super Ljava/lang/Object;
.source "ErrorParseUtil.java"


# direct methods
.method private static isHostConnectException(Ljava/lang/Throwable;)Z
    .locals 3
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x1

    .line 139
    instance-of v2, p0, Lorg/apache/http/conn/HttpHostConnectException;

    if-eqz v2, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v1

    .line 142
    :cond_1
    instance-of v2, p0, Ljava/net/UnknownHostException;

    if-nez v2, :cond_0

    .line 145
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "HttpHostConnectException"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 149
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseError(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/miui/gallery/error/core/ErrorCode;
    .locals 7
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 34
    instance-of v5, p0, Lorg/apache/http/conn/ConnectTimeoutException;

    if-eqz v5, :cond_0

    .line 35
    sget-object v5, Lcom/miui/gallery/error/core/ErrorCode;->CONNECT_TIMEOUT:Lcom/miui/gallery/error/core/ErrorCode;

    .line 119
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-object v5

    .line 37
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    instance-of v5, p0, Ljava/net/SocketTimeoutException;

    if-eqz v5, :cond_1

    .line 38
    sget-object v5, Lcom/miui/gallery/error/core/ErrorCode;->SOCKET_TIMEOUT:Lcom/miui/gallery/error/core/ErrorCode;

    goto :goto_0

    .line 42
    :cond_1
    invoke-static {p0}, Lcom/miui/gallery/error/util/ErrorParseUtil;->isHostConnectException(Ljava/lang/Throwable;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 43
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 44
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isActiveNetworkMetered()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 45
    const-string v5, "com.miui.gallery"

    invoke-static {v0, v5}, Lcom/miui/security/net/NetworkRestrict;->isMobileRestrict(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 46
    const-string v5, "ErrorParseUtil"

    const-string v6, "mobile net is restrict"

    invoke-static {v5, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    sget-object v5, Lcom/miui/gallery/error/core/ErrorCode;->NETWORK_RESTRICT:Lcom/miui/gallery/error/core/ErrorCode;

    goto :goto_0

    .line 50
    :cond_2
    const-string v5, "com.miui.gallery"

    invoke-static {v0, v5}, Lcom/miui/security/net/NetworkRestrict;->isWifiRestrict(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 51
    const-string v5, "ErrorParseUtil"

    const-string/jumbo v6, "wifi is restrict"

    invoke-static {v5, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    sget-object v5, Lcom/miui/gallery/error/core/ErrorCode;->NETWORK_RESTRICT:Lcom/miui/gallery/error/core/ErrorCode;

    goto :goto_0

    .line 63
    .end local v0    # "context":Landroid/content/Context;
    :cond_3
    instance-of v5, p0, Ljava/io/IOException;

    if-eqz v5, :cond_7

    .line 64
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "msg":Ljava/lang/String;
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 66
    const-string v5, "EROFS"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "Read-only file system"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "EPERM"

    .line 67
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "ENOTCONN"

    .line 68
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "EBUSY"

    .line 69
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "ENOSPC"

    .line 70
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "Permission denied"

    .line 71
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 73
    :cond_4
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getSecondaryStoragePath()Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "secondaryStoragePath":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Lcom/miui/gallery/error/core/ErrorCode;->SECONDARY_STORAGE_WRITE_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    goto/16 :goto_0

    .line 64
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "secondaryStoragePath":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 74
    .restart local v2    # "msg":Ljava/lang/String;
    .restart local v3    # "secondaryStoragePath":Ljava/lang/String;
    :cond_6
    sget-object v5, Lcom/miui/gallery/error/core/ErrorCode;->PRIMARY_STORAGE_WRITE_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    goto/16 :goto_0

    .line 81
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "secondaryStoragePath":Ljava/lang/String;
    :cond_7
    instance-of v5, p0, Ljava/io/FileNotFoundException;

    if-eqz v5, :cond_9

    .line 82
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 83
    .restart local v2    # "msg":Ljava/lang/String;
    :goto_2
    const-string v5, "No space left on device"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 85
    sget-object v5, Lcom/miui/gallery/error/core/ErrorCode;->STORAGE_FULL:Lcom/miui/gallery/error/core/ErrorCode;

    goto/16 :goto_0

    .line 82
    .end local v2    # "msg":Ljava/lang/String;
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 90
    :cond_9
    instance-of v5, p0, Lcom/miui/gallery/cloud/GalleryMiCloudServerException;

    if-eqz v5, :cond_b

    .line 91
    check-cast p0, Lcom/miui/gallery/cloud/GalleryMiCloudServerException;

    .end local p0    # "t":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/GalleryMiCloudServerException;->getCloudServerException()Ljava/lang/Exception;

    move-result-object v4

    .line 92
    .local v4, "serverException":Ljava/lang/Exception;
    instance-of v5, v4, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    if-eqz v5, :cond_a

    check-cast v4, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    .end local v4    # "serverException":Ljava/lang/Exception;
    invoke-virtual {v4}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->is5xxServerException()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 93
    sget-object v5, Lcom/miui/gallery/error/core/ErrorCode;->OVER_QUOTA:Lcom/miui/gallery/error/core/ErrorCode;

    goto/16 :goto_0

    .line 95
    :cond_a
    sget-object v5, Lcom/miui/gallery/error/core/ErrorCode;->SERVER_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    goto/16 :goto_0

    .line 100
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_b
    instance-of v5, p0, Lcom/xiaomi/opensdk/exception/RetriableException;

    if-eqz v5, :cond_c

    .line 101
    sget-object v5, Lcom/miui/gallery/error/core/ErrorCode;->RETRIABLE_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    goto/16 :goto_0

    .line 105
    :cond_c
    instance-of v5, p0, Lcom/xiaomi/opensdk/exception/UnretriableException;

    if-eqz v5, :cond_d

    .line 106
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 107
    .restart local v2    # "msg":Ljava/lang/String;
    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 108
    const-string v5, "Local IO error"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 110
    :try_start_0
    invoke-static {p1}, Lcom/miui/gallery/error/util/ErrorParseUtil;->testWriteStorage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v2    # "msg":Ljava/lang/String;
    :cond_d
    sget-object v5, Lcom/miui/gallery/error/core/ErrorCode;->UNKNOWN:Lcom/miui/gallery/error/core/ErrorCode;

    goto/16 :goto_0

    .line 106
    :cond_e
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 111
    .restart local v2    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Ljava/io/IOException;
    const/4 v5, 0x0

    invoke-static {v1, v5}, Lcom/miui/gallery/error/util/ErrorParseUtil;->parseError(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/miui/gallery/error/core/ErrorCode;

    move-result-object v5

    goto/16 :goto_0
.end method

.method private static testWriteStorage(Ljava/lang/String;)V
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/miui/gallery/util/StorageUtils;->getVolumePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 124
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getPriorStoragePath()Ljava/lang/String;

    move-result-object p0

    .line 127
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v3, ".test"

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .local v2, "testFile":Ljava/io/File;
    const/4 v0, 0x0

    .line 130
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    const-string/jumbo v3, "test"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 133
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 134
    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 136
    return-void

    .line 133
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v3

    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 134
    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v3

    .line 133
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0
.end method
