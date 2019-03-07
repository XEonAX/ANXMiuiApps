.class Lcom/xiaomi/analytics/internal/UpdateManager$2;
.super Ljava/lang/Object;
.source "UpdateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/analytics/internal/UpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/analytics/internal/UpdateManager;


# direct methods
.method constructor <init>(Lcom/xiaomi/analytics/internal/UpdateManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/analytics/internal/UpdateManager;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/xiaomi/analytics/internal/UpdateManager$2;->this$0:Lcom/xiaomi/analytics/internal/UpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 229
    :try_start_0
    new-instance v9, Ljava/net/URL;

    iget-object v10, p0, Lcom/xiaomi/analytics/internal/UpdateManager$2;->this$0:Lcom/xiaomi/analytics/internal/UpdateManager;

    invoke-static {v10}, Lcom/xiaomi/analytics/internal/UpdateManager;->access$400(Lcom/xiaomi/analytics/internal/UpdateManager;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 230
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const-string v9, "GET"

    invoke-virtual {v0, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 232
    sget v9, Lcom/xiaomi/analytics/internal/Constants;->CONNECT_TIME_OUT_MILLIS:I

    invoke-virtual {v0, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 233
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 234
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 235
    .local v5, "statusCode":I
    const/16 v9, 0xc8

    if-ne v5, v9, :cond_1

    .line 236
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-static {v9}, Lcom/xiaomi/analytics/internal/util/IOUtil;->inputStream2ByteArray(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 237
    .local v1, "data":[B
    iget-object v9, p0, Lcom/xiaomi/analytics/internal/UpdateManager$2;->this$0:Lcom/xiaomi/analytics/internal/UpdateManager;

    invoke-static {v9}, Lcom/xiaomi/analytics/internal/UpdateManager;->access$300(Lcom/xiaomi/analytics/internal/UpdateManager;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 239
    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/Utils;->getMd5([B)Ljava/lang/String;

    move-result-object v4

    .line 240
    .local v4, "md5":Ljava/lang/String;
    iget-object v9, p0, Lcom/xiaomi/analytics/internal/UpdateManager$2;->this$0:Lcom/xiaomi/analytics/internal/UpdateManager;

    invoke-static {v9}, Lcom/xiaomi/analytics/internal/UpdateManager;->access$300(Lcom/xiaomi/analytics/internal/UpdateManager;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 241
    const/4 v1, 0x0

    .line 244
    .end local v4    # "md5":Ljava/lang/String;
    :cond_0
    if-eqz v1, :cond_1

    .line 245
    const-string v9, "UpdateManager"

    invoke-static {v9}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "download apk success."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/xiaomi/analytics/internal/UpdateManager$2;->this$0:Lcom/xiaomi/analytics/internal/UpdateManager;

    invoke-static {v10}, Lcom/xiaomi/analytics/internal/UpdateManager;->access$800(Lcom/xiaomi/analytics/internal/UpdateManager;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".tmp"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 247
    .local v8, "tmpFile":Ljava/io/File;
    const/4 v6, 0x0

    .line 249
    .local v6, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    .end local v6    # "stream":Ljava/io/FileOutputStream;
    .local v7, "stream":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v7, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 251
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    .line 252
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 253
    const/4 v6, 0x0

    .line 254
    .end local v7    # "stream":Ljava/io/FileOutputStream;
    .restart local v6    # "stream":Ljava/io/FileOutputStream;
    :try_start_3
    iget-object v9, p0, Lcom/xiaomi/analytics/internal/UpdateManager$2;->this$0:Lcom/xiaomi/analytics/internal/UpdateManager;

    invoke-static {v9}, Lcom/xiaomi/analytics/internal/UpdateManager;->access$000(Lcom/xiaomi/analytics/internal/UpdateManager;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v8}, Lcom/xiaomi/analytics/internal/util/AndroidUtils;->getSignature(Landroid/content/Context;Ljava/io/File;)[Landroid/content/pm/Signature;

    move-result-object v9

    invoke-static {v9}, Lcom/xiaomi/analytics/internal/util/CertificateUtils;->isXiaomiPlatformCertificate([Landroid/content/pm/Signature;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 255
    const-string v9, "UpdateManager"

    invoke-static {v9}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "verify signature success"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    new-instance v3, Ljava/io/File;

    iget-object v9, p0, Lcom/xiaomi/analytics/internal/UpdateManager$2;->this$0:Lcom/xiaomi/analytics/internal/UpdateManager;

    invoke-static {v9}, Lcom/xiaomi/analytics/internal/UpdateManager;->access$800(Lcom/xiaomi/analytics/internal/UpdateManager;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v8, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 258
    iget-object v9, p0, Lcom/xiaomi/analytics/internal/UpdateManager$2;->this$0:Lcom/xiaomi/analytics/internal/UpdateManager;

    invoke-static {v9}, Lcom/xiaomi/analytics/internal/UpdateManager;->access$900(Lcom/xiaomi/analytics/internal/UpdateManager;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 266
    .end local v3    # "file":Ljava/io/File;
    :goto_0
    :try_start_4
    invoke-static {v6}, Lcom/xiaomi/analytics/internal/util/IOUtil;->closeSafely(Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 273
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v1    # "data":[B
    .end local v5    # "statusCode":I
    .end local v6    # "stream":Ljava/io/FileOutputStream;
    .end local v8    # "tmpFile":Ljava/io/File;
    :cond_1
    :goto_1
    return-void

    .line 260
    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    .restart local v1    # "data":[B
    .restart local v5    # "statusCode":I
    .restart local v6    # "stream":Ljava/io/FileOutputStream;
    .restart local v8    # "tmpFile":Ljava/io/File;
    :cond_2
    :try_start_5
    const-string v9, "UpdateManager"

    invoke-static {v9}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "verify signature failed"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 263
    :catch_0
    move-exception v2

    .line 264
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_6
    const-string v9, "UpdateManager"

    invoke-static {v9}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "mDownloader e"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 266
    :try_start_7
    invoke-static {v6}, Lcom/xiaomi/analytics/internal/util/IOUtil;->closeSafely(Ljava/io/Closeable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 270
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v1    # "data":[B
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "statusCode":I
    .end local v6    # "stream":Ljava/io/FileOutputStream;
    .end local v8    # "tmpFile":Ljava/io/File;
    :catch_1
    move-exception v2

    .line 271
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v9, "UpdateManager"

    invoke-static {v9}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "mDownloader exception"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 266
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    .restart local v1    # "data":[B
    .restart local v5    # "statusCode":I
    .restart local v6    # "stream":Ljava/io/FileOutputStream;
    .restart local v8    # "tmpFile":Ljava/io/File;
    :catchall_0
    move-exception v9

    :goto_3
    :try_start_8
    invoke-static {v6}, Lcom/xiaomi/analytics/internal/util/IOUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v9
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .end local v6    # "stream":Ljava/io/FileOutputStream;
    .restart local v7    # "stream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileOutputStream;
    .restart local v6    # "stream":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 263
    .end local v6    # "stream":Ljava/io/FileOutputStream;
    .restart local v7    # "stream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v2

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileOutputStream;
    .restart local v6    # "stream":Ljava/io/FileOutputStream;
    goto :goto_2
.end method
