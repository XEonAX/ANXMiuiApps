.class public Lcom/xiaomi/push/service/NotificationIconHelper;
.super Ljava/lang/Object;
.source "NotificationIconHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/service/NotificationIconHelper$GetDataResult;,
        Lcom/xiaomi/push/service/NotificationIconHelper$GetIconResult;
    }
.end annotation


# static fields
.field private static currentPicFileSize:J


# direct methods
.method private static cleanCachedPic(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v8, 0x0

    .line 281
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mipush_icon"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 282
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    sget-wide v4, Lcom/xiaomi/push/service/NotificationIconHelper;->currentPicFileSize:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_2

    .line 286
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/file/FileUtils;->getFolderSize(Ljava/io/File;)J

    move-result-wide v4

    sput-wide v4, Lcom/xiaomi/push/service/NotificationIconHelper;->currentPicFileSize:J

    .line 288
    :cond_2
    sget-wide v4, Lcom/xiaomi/push/service/NotificationIconHelper;->currentPicFileSize:J

    const-wide/32 v6, 0xf00000

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 290
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 291
    .local v2, "fileList":[Ljava/io/File;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_4

    .line 292
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_3

    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    aget-object v6, v2, v3

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0x127500

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 294
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 297
    .end local v2    # "fileList":[Ljava/io/File;
    .end local v3    # "i":I
    :catch_0
    move-exception v1

    .line 298
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 300
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    sput-wide v8, Lcom/xiaomi/push/service/NotificationIconHelper;->currentPicFileSize:J

    goto :goto_0
.end method

.method private static getBitmapFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "picUrl"    # Ljava/lang/String;

    .prologue
    .line 216
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mipush_icon"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 217
    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/string/XMStringUtils;->getMd5Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 219
    const/4 v4, 0x0

    .line 233
    :goto_0
    return-object v4

    .line 222
    :cond_0
    const/4 v4, 0x0

    .line 223
    .local v4, "result":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 225
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/io/File;->setLastModified(J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 231
    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v2, v3

    .line 232
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 231
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_2
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v5

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 228
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private static getDataFromUrl(Ljava/lang/String;Z)Lcom/xiaomi/push/service/NotificationIconHelper$GetDataResult;
    .locals 15
    .param p0, "urlStr"    # Ljava/lang/String;
    .param p1, "isSizeLimited"    # Z

    .prologue
    .line 108
    const/4 v7, 0x0

    .line 109
    .local v7, "inputStream":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 112
    .local v2, "conn":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v11, Ljava/net/URL;

    invoke-direct {v11, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 113
    .local v11, "url":Ljava/net/URL;
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 114
    const/16 v12, 0x1f40

    invoke-virtual {v2, v12}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 115
    const/16 v12, 0x4e20

    invoke-virtual {v2, v12}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 116
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 118
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    .line 119
    .local v3, "contentLen":I
    if-eqz p1, :cond_1

    const v12, 0x19000

    if-le v3, v12, :cond_1

    .line 120
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Bitmap size is too big, max size is 102400  contentLen size is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " from url "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    const/4 v12, 0x0

    .line 159
    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 160
    if-eqz v2, :cond_0

    .line 161
    :goto_0
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 164
    .end local v3    # "contentLen":I
    .end local v11    # "url":Ljava/net/URL;
    :cond_0
    :goto_1
    return-object v12

    .line 125
    .restart local v3    # "contentLen":I
    .restart local v11    # "url":Ljava/net/URL;
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    .line 126
    .local v9, "responseCode":I
    const/16 v12, 0xc8

    if-eq v9, v12, :cond_2

    .line 127
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid Http Response Code "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " received"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    const/4 v12, 0x0

    .line 159
    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 160
    if-eqz v2, :cond_0

    goto :goto_0

    .line 131
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 134
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 135
    .local v10, "tempOutStream":Ljava/io/ByteArrayOutputStream;
    if-eqz p1, :cond_4

    const v1, 0x19000

    .line 136
    .local v1, "availableSpace":I
    :goto_2
    const/16 v12, 0x400

    new-array v5, v12, [B

    .line 138
    .local v5, "dataUnit":[B
    :goto_3
    if-lez v1, :cond_3

    .line 139
    const/4 v12, 0x0

    const/16 v13, 0x400

    invoke-virtual {v7, v5, v12, v13}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    .line 140
    .local v8, "readCount":I
    const/4 v12, -0x1

    if-ne v8, v12, :cond_5

    .line 147
    .end local v8    # "readCount":I
    :cond_3
    if-gtz v1, :cond_7

    .line 148
    const-string v12, "length 102400 exhausted."

    invoke-static {v12}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 149
    new-instance v12, Lcom/xiaomi/push/service/NotificationIconHelper$GetDataResult;

    const/4 v13, 0x0

    const v14, 0x19000

    invoke-direct {v12, v13, v14}, Lcom/xiaomi/push/service/NotificationIconHelper$GetDataResult;-><init>([BI)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 160
    if-eqz v2, :cond_0

    goto :goto_0

    .line 135
    .end local v1    # "availableSpace":I
    .end local v5    # "dataUnit":[B
    :cond_4
    const v1, 0x1f4000

    goto :goto_2

    .line 143
    .restart local v1    # "availableSpace":I
    .restart local v5    # "dataUnit":[B
    .restart local v8    # "readCount":I
    :cond_5
    sub-int/2addr v1, v8

    .line 144
    const/4 v12, 0x0

    :try_start_3
    invoke-virtual {v10, v5, v12, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 154
    .end local v1    # "availableSpace":I
    .end local v3    # "contentLen":I
    .end local v5    # "dataUnit":[B
    .end local v8    # "readCount":I
    .end local v9    # "responseCode":I
    .end local v10    # "tempOutStream":Ljava/io/ByteArrayOutputStream;
    .end local v11    # "url":Ljava/net/URL;
    :catch_0
    move-exception v6

    .line 155
    .local v6, "e":Ljava/net/SocketTimeoutException;
    :try_start_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Connect timeout to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 159
    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 160
    if-eqz v2, :cond_6

    .line 161
    .end local v6    # "e":Ljava/net/SocketTimeoutException;
    :goto_4
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 164
    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 152
    .restart local v1    # "availableSpace":I
    .restart local v3    # "contentLen":I
    .restart local v5    # "dataUnit":[B
    .restart local v9    # "responseCode":I
    .restart local v10    # "tempOutStream":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "url":Ljava/net/URL;
    :cond_7
    :try_start_5
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 153
    .local v4, "data":[B
    new-instance v12, Lcom/xiaomi/push/service/NotificationIconHelper$GetDataResult;

    array-length v13, v4

    invoke-direct {v12, v4, v13}, Lcom/xiaomi/push/service/NotificationIconHelper$GetDataResult;-><init>([BI)V
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 159
    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 160
    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 156
    .end local v1    # "availableSpace":I
    .end local v3    # "contentLen":I
    .end local v4    # "data":[B
    .end local v5    # "dataUnit":[B
    .end local v9    # "responseCode":I
    .end local v10    # "tempOutStream":Ljava/io/ByteArrayOutputStream;
    .end local v11    # "url":Ljava/net/URL;
    :catch_1
    move-exception v6

    .line 157
    .local v6, "e":Ljava/io/IOException;
    :try_start_6
    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 159
    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 160
    if-eqz v2, :cond_6

    goto :goto_4

    .line 159
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 160
    if-eqz v2, :cond_8

    .line 161
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 159
    :cond_8
    throw v12
.end method

.method public static getIconFromUri(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uriStr"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 168
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 169
    .local v5, "uri":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 170
    .local v1, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 173
    .local v2, "isForBitmapSize":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 174
    invoke-static {p0, v2}, Lcom/xiaomi/push/service/NotificationIconHelper;->getSampleSize(Landroid/content/Context;Ljava/io/InputStream;)I

    move-result v4

    .line 177
    .local v4, "sampleSize":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 178
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 179
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 180
    const/4 v7, 0x0

    invoke-static {v1, v7, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 184
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 185
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "sampleSize":I
    :goto_0
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 188
    return-object v6

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 185
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 184
    throw v6
.end method

.method public static getIconFromUrl(Landroid/content/Context;Ljava/lang/String;Z)Lcom/xiaomi/push/service/NotificationIconHelper$GetIconResult;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "urlStr"    # Ljava/lang/String;
    .param p2, "isSizeLimited"    # Z

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "bitmapStream":Ljava/io/InputStream;
    new-instance v7, Lcom/xiaomi/push/service/NotificationIconHelper$GetIconResult;

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    invoke-direct {v7, v9, v10, v11}, Lcom/xiaomi/push/service/NotificationIconHelper$GetIconResult;-><init>(Landroid/graphics/Bitmap;J)V

    .line 65
    .local v7, "result":Lcom/xiaomi/push/service/NotificationIconHelper$GetIconResult;
    invoke-static {p0, p1}, Lcom/xiaomi/push/service/NotificationIconHelper;->getBitmapFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 66
    .local v6, "pic":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_0

    .line 67
    iput-object v6, v7, Lcom/xiaomi/push/service/NotificationIconHelper$GetIconResult;->bitmap:Landroid/graphics/Bitmap;

    .line 95
    :goto_0
    return-object v7

    .line 71
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lcom/xiaomi/push/service/NotificationIconHelper;->getDataFromUrl(Ljava/lang/String;Z)Lcom/xiaomi/push/service/NotificationIconHelper$GetDataResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 72
    .local v4, "getDataResult":Lcom/xiaomi/push/service/NotificationIconHelper$GetDataResult;
    if-nez v4, :cond_1

    .line 93
    .end local v4    # "getDataResult":Lcom/xiaomi/push/service/NotificationIconHelper$GetDataResult;
    :goto_1
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 75
    .restart local v4    # "getDataResult":Lcom/xiaomi/push/service/NotificationIconHelper$GetDataResult;
    :cond_1
    :try_start_1
    iget v9, v4, Lcom/xiaomi/push/service/NotificationIconHelper$GetDataResult;->downloadSize:I

    int-to-long v10, v9

    iput-wide v10, v7, Lcom/xiaomi/push/service/NotificationIconHelper$GetIconResult;->downloadSize:J

    .line 76
    iget-object v2, v4, Lcom/xiaomi/push/service/NotificationIconHelper$GetDataResult;->data:[B

    .line 77
    .local v2, "data":[B
    if-eqz v2, :cond_2

    .line 78
    if-eqz p2, :cond_3

    .line 79
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .end local v0    # "bitmapStream":Ljava/io/InputStream;
    .local v1, "bitmapStream":Ljava/io/InputStream;
    :try_start_2
    invoke-static {p0, v1}, Lcom/xiaomi/push/service/NotificationIconHelper;->getSampleSize(Landroid/content/Context;Ljava/io/InputStream;)I

    move-result v8

    .line 82
    .local v8, "sampleSize":I
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 83
    .local v5, "options":Landroid/graphics/BitmapFactory$Options;
    iput v8, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 84
    const/4 v9, 0x0

    array-length v10, v2

    invoke-static {v2, v9, v10, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, v7, Lcom/xiaomi/push/service/NotificationIconHelper$GetIconResult;->bitmap:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    .line 89
    .end local v1    # "bitmapStream":Ljava/io/InputStream;
    .end local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v8    # "sampleSize":I
    .restart local v0    # "bitmapStream":Ljava/io/InputStream;
    :cond_2
    :goto_2
    :try_start_3
    iget-object v9, v4, Lcom/xiaomi/push/service/NotificationIconHelper$GetDataResult;->data:[B

    invoke-static {p0, v9, p1}, Lcom/xiaomi/push/service/NotificationIconHelper;->savePic2File(Landroid/content/Context;[BLjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 90
    .end local v2    # "data":[B
    .end local v4    # "getDataResult":Lcom/xiaomi/push/service/NotificationIconHelper$GetDataResult;
    :catch_0
    move-exception v3

    .line 91
    .local v3, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 93
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_4
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v9

    .line 86
    .restart local v2    # "data":[B
    .restart local v4    # "getDataResult":Lcom/xiaomi/push/service/NotificationIconHelper$GetDataResult;
    :cond_3
    const/4 v9, 0x0

    :try_start_5
    array-length v10, v2

    invoke-static {v2, v9, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, v7, Lcom/xiaomi/push/service/NotificationIconHelper$GetIconResult;->bitmap:Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 93
    .end local v0    # "bitmapStream":Ljava/io/InputStream;
    .restart local v1    # "bitmapStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v9

    move-object v0, v1

    .end local v1    # "bitmapStream":Ljava/io/InputStream;
    .restart local v0    # "bitmapStream":Ljava/io/InputStream;
    goto :goto_4

    .line 90
    .end local v0    # "bitmapStream":Ljava/io/InputStream;
    .restart local v1    # "bitmapStream":Ljava/io/InputStream;
    :catch_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "bitmapStream":Ljava/io/InputStream;
    .restart local v0    # "bitmapStream":Ljava/io/InputStream;
    goto :goto_3
.end method

.method private static getSampleSize(Landroid/content/Context;Ljava/io/InputStream;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x1

    .line 192
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 195
    .local v0, "opt":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 196
    const/4 v5, 0x0

    invoke-static {p1, v5, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 198
    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v5, v6, :cond_0

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v5, v6, :cond_2

    .line 199
    :cond_0
    const-string v5, "decode dimension failed for bitmap."

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 211
    :cond_1
    :goto_0
    return v4

    .line 204
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v1, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 205
    .local v1, "screenDensity":I
    int-to-float v5, v1

    const/high16 v6, 0x43200000    # 160.0f

    div-float/2addr v5, v6

    const/high16 v6, 0x42400000    # 48.0f

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 206
    .local v3, "targetWidth":I
    move v2, v3

    .line 208
    .local v2, "targetHeight":I
    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v5, v3, :cond_1

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v5, v2, :cond_1

    .line 209
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v4, v3

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_0
.end method

.method private static savePic2File(Landroid/content/Context;[BLjava/lang/String;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # [B
    .param p2, "picUrl"    # Ljava/lang/String;

    .prologue
    .line 237
    if-nez p1, :cond_1

    .line 238
    const-string v7, "cannot save small icon cause bitmap is null"

    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    invoke-static {p0}, Lcom/xiaomi/push/service/NotificationIconHelper;->cleanCachedPic(Landroid/content/Context;)V

    .line 243
    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mipush_icon"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 245
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 248
    :cond_2
    const/4 v0, 0x0

    .line 249
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    const/4 v5, 0x0

    .line 250
    .local v5, "fos":Ljava/io/FileOutputStream;
    new-instance v4, Ljava/io/File;

    invoke-static {p2}, Lcom/xiaomi/channel/commonutils/string/XMStringUtils;->getMd5Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 252
    .local v4, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    .line 253
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 255
    :cond_3
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v6, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 257
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    :try_start_2
    invoke-virtual {v1, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 258
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 262
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 263
    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    move-object v0, v1

    .line 265
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    :goto_1
    sget-wide v8, Lcom/xiaomi/push/service/NotificationIconHelper;->currentPicFileSize:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_0

    .line 266
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mipush_icon"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/file/FileUtils;->getFolderSize(Ljava/io/File;)J

    move-result-wide v8

    .line 268
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v10

    add-long/2addr v8, v10

    sput-wide v8, Lcom/xiaomi/push/service/NotificationIconHelper;->currentPicFileSize:J

    goto/16 :goto_0

    .line 259
    :catch_0
    move-exception v3

    .line 260
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 262
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 263
    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    .line 262
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_3
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 263
    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 262
    throw v7

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v7

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_3

    .line 259
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v3

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v3

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_2
.end method
