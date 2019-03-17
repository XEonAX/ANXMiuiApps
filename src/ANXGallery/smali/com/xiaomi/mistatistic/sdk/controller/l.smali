.class public abstract Lcom/xiaomi/mistatistic/sdk/controller/l;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mistatistic/sdk/controller/l$b;,
        Lcom/xiaomi/mistatistic/sdk/controller/l$a;
    }
.end annotation


# static fields
.field private static a:Z


# direct methods
.method public static a(Ljava/net/URL;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "10.0.0.172"

    .line 317
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {p0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 319
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    const-string v0, "http"

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 310
    :goto_0
    return-object v0

    .line 296
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/l;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    const-string v3, "10.0.0.200"

    const/16 v4, 0x50

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 299
    invoke-virtual {p1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_0

    .line 301
    :cond_1
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/l;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 302
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_0

    .line 304
    :cond_2
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 305
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/l;->a(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    .line 306
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 309
    const-string v2, "X-Online-Host"

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a()V
    .locals 3

    .prologue
    .line 66
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "enable_network_connection"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/l;->a:Z

    .line 68
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/mistatistic/sdk/controller/l$b;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/xiaomi/mistatistic/sdk/controller/l$b;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/l;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 154
    const-string v0, "NET"

    const-string v1, "Network connection is disabled."

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The url is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_2
    :try_start_0
    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/t;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcom/xiaomi/mistatistic/sdk/controller/l;->a(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 169
    const/16 v2, 0x2710

    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 170
    const/16 v2, 0x3a98

    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 171
    const-string v2, "POST"

    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 172
    const-string v2, "Connection"

    const-string v4, "close"

    invoke-virtual {v3, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v2, "NET"

    const-string v4, "paramsMap:%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {p2}, Lcom/xiaomi/mistatistic/sdk/controller/l;->a(Ljava/util/Map;)V

    .line 175
    invoke-static {p2}, Lcom/xiaomi/mistatistic/sdk/controller/l;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "The content being uploaded is empty."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 202
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 203
    :goto_1
    :try_start_1
    const-string v3, "NET"

    const-string v4, "IOException:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    :catchall_0
    move-exception v0

    .line 210
    :goto_2
    if-eqz v2, :cond_3

    .line 211
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 213
    :cond_3
    if-eqz v1, :cond_4

    .line 214
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 219
    :cond_4
    :goto_3
    throw v0

    .line 179
    :cond_5
    const/4 v4, 0x1

    :try_start_3
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 180
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 181
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v2

    .line 182
    const/4 v5, 0x0

    :try_start_4
    array-length v6, v4

    invoke-virtual {v2, v4, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 183
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 184
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 185
    const/4 v4, 0x0

    .line 186
    :try_start_5
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 187
    const-string v5, "NET"

    const-string/jumbo v6, "url:%s, responseCode:%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v0

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v5, Lcom/xiaomi/mistatistic/sdk/controller/l$a;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v5, v3}, Lcom/xiaomi/mistatistic/sdk/controller/l$a;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 189
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 190
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 191
    const-string v5, "line.separator"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 192
    :goto_4
    if-eqz v0, :cond_6

    .line 193
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 197
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-interface {p3, v0}, Lcom/xiaomi/mistatistic/sdk/controller/l$b;->a(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 201
    const/4 v0, 0x0

    .line 210
    if-eqz v1, :cond_7

    .line 211
    :try_start_7
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 213
    :cond_7
    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 216
    :catch_1
    move-exception v0

    .line 217
    const-string v1, "NET"

    const-string v2, "doHttpPost final exception"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 205
    :catch_2
    move-exception v0

    move-object v2, v1

    .line 206
    :goto_5
    :try_start_8
    const-string v3, "NET"

    const-string v4, "Throwable:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 216
    :catch_3
    move-exception v1

    .line 217
    const-string v2, "NET"

    const-string v3, "doHttpPost final exception"

    invoke-static {v2, v3, v1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 209
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto/16 :goto_2

    .line 205
    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto :goto_5

    .line 202
    :catch_6
    move-exception v0

    goto/16 :goto_1

    :catch_7
    move-exception v0

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto/16 :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/mistatistic/sdk/controller/l$b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/xiaomi/mistatistic/sdk/controller/l$b;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 397
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Landroid/content/Context;

    move-result-object v0

    .line 398
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->isDataUploadingEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 399
    const-string v0, "NET"

    const-string/jumbo v1, "upload is disabled."

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string v0, ""

    invoke-interface {p2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/l$b;->a(Ljava/lang/String;)V

    .line 423
    :goto_0
    return-void

    .line 404
    :cond_0
    if-eqz p1, :cond_1

    .line 405
    const-string v1, "bc"

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->getMiuiBuildCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    :cond_1
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->isUseSystemUploadingService()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 408
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/l;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 411
    :try_start_0
    invoke-static {v0, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/mistatistic/sdk/controller/l$b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 412
    :catch_0
    move-exception v0

    .line 413
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception thrown from IPC."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 416
    :cond_2
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/l$b;->a(Ljava/lang/String;)V

    .line 417
    const-string v0, "NET"

    const-string v1, "Uploading via sys service, metered network connected, skip"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 421
    :cond_3
    invoke-static {v0, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/mistatistic/sdk/controller/l$b;)V

    goto :goto_0
.end method

.method protected static a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 224
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 226
    if-eqz p0, :cond_0

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 228
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 229
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 230
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 231
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 237
    :catch_0
    move-exception v0

    .line 238
    const-string v1, "NET"

    const-string/jumbo v2, "sign exception:"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 241
    :goto_1
    return-void

    .line 235
    :cond_0
    :try_start_1
    const-string v0, "mistats_sdkconfig_jafej!@#)(*e@!#"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    const-string/jumbo v0, "sign"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/t;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static a(I)Z
    .locals 1

    .prologue
    .line 724
    const/16 v0, 0x1324

    if-le p0, v0, :cond_0

    const/16 v0, 0x170c

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 83
    if-eqz p0, :cond_0

    .line 84
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 85
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 92
    :goto_0
    return v0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    const-string v1, "isNetworkConnected"

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 244
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 245
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 246
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 247
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 251
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v1, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    const-string v1, "="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 254
    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 255
    :catch_0
    move-exception v0

    move-object v0, v3

    .line 264
    :goto_1
    return-object v0

    .line 259
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 260
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 262
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v3

    .line 264
    goto :goto_1

    :cond_3
    move-object v0, v2

    goto :goto_2
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/mistatistic/sdk/controller/l$b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/xiaomi/mistatistic/sdk/controller/l$b;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 554
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 555
    const-string v1, "com.xiaomi.xmsf"

    const-string v2, "com.xiaomi.xmsf.push.service.HttpService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/l$1;

    invoke-direct {v1, p3, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/l$1;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/l$b;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 593
    if-nez v0, :cond_0

    .line 594
    const-string v0, "NET"

    const-string v1, "Failed to bind IHttpService."

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lcom/xiaomi/mistatistic/sdk/controller/l$b;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    :cond_0
    :goto_0
    return-void

    .line 597
    :catch_0
    move-exception v0

    .line 598
    const-string v1, "NET"

    const-string/jumbo v2, "uploadDataThroughSystemService"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 599
    invoke-interface {p3, v3}, Lcom/xiaomi/mistatistic/sdk/controller/l$b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 71
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/l;->a:Z

    return v0
.end method

.method private static b(I)Z
    .locals 1

    .prologue
    .line 728
    const/16 v0, 0x960

    if-le p0, v0, :cond_0

    const/16 v0, 0x9c4

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 96
    .line 98
    :try_start_0
    const-string v0, "connectivity"

    .line 99
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 104
    if-nez v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v2

    .line 110
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 115
    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v1, v0, :cond_2

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    .line 111
    :catch_0
    move-exception v0

    goto :goto_0

    .line 100
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 123
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/l;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const-string v0, "WIFI"

    .line 147
    :goto_0
    return-object v0

    .line 128
    :cond_0
    :try_start_0
    const-string v0, "connectivity"

    .line 129
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    if-nez v0, :cond_1

    .line 134
    const-string v0, ""

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    const-string v0, ""

    goto :goto_0

    .line 139
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 144
    if-nez v0, :cond_2

    .line 145
    const-string v0, ""

    goto :goto_0

    .line 140
    :catch_1
    move-exception v0

    .line 142
    const-string v0, ""

    goto :goto_0

    .line 147
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 148
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static c()Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 433
    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Landroid/content/Context;

    move-result-object v0

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 434
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 435
    if-eqz v3, :cond_0

    .line 436
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v1, :cond_1

    move v2, v1

    .line 447
    :cond_0
    :goto_0
    return v2

    .line 439
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    .line 440
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    .line 443
    :catch_0
    move-exception v0

    .line 444
    const-string v1, "NET"

    const-string v3, "isUnmeteredNetworkConnected exception"

    invoke-static {v1, v3, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 326
    const-string v0, "phone"

    .line 327
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 328
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 329
    const-string v1, "CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 356
    :cond_0
    :goto_0
    return v4

    .line 334
    :cond_1
    :try_start_0
    const-string v0, "connectivity"

    .line 335
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 339
    if-eqz v0, :cond_0

    .line 343
    :try_start_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 348
    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v5, :cond_0

    .line 353
    const-string v1, "ctwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 356
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    const-string/jumbo v3, "wap"

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v4

    goto :goto_0

    .line 344
    :catch_0
    move-exception v0

    goto :goto_0

    .line 336
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 362
    const-string v0, "phone"

    .line 363
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 364
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 365
    const-string v2, "CN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 393
    :goto_0
    return v0

    .line 370
    :cond_0
    :try_start_0
    const-string v0, "connectivity"

    .line 371
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    if-nez v0, :cond_1

    move v0, v1

    .line 376
    goto :goto_0

    .line 372
    :catch_0
    move-exception v0

    move v0, v1

    .line 373
    goto :goto_0

    .line 379
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 384
    if-nez v0, :cond_2

    move v0, v1

    .line 385
    goto :goto_0

    .line 380
    :catch_1
    move-exception v0

    move v0, v1

    .line 382
    goto :goto_0

    .line 386
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 387
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_4

    :cond_3
    move v0, v1

    .line 388
    goto :goto_0

    .line 389
    :cond_4
    const-string v2, "ctwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 390
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 393
    goto :goto_0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 605
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/t;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/l;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 648
    :goto_0
    return-object v0

    .line 608
    :cond_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 609
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 610
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 611
    :cond_1
    const-string/jumbo v0, "unknown"

    goto :goto_0

    .line 613
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 614
    const-string v0, "WIFI"

    goto :goto_0

    .line 616
    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_4

    .line 617
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    .line 618
    packed-switch v0, :pswitch_data_0

    .line 642
    const-string/jumbo v0, "unknown"

    goto :goto_0

    .line 625
    :pswitch_0
    const-string v0, "2G"

    goto :goto_0

    .line 636
    :pswitch_1
    const-string v0, "3G"

    goto :goto_0

    .line 640
    :pswitch_2
    const-string v0, "4G"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 645
    :catch_0
    move-exception v0

    .line 646
    const-string v1, "NET"

    const-string v2, "getNetworkType exception"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 648
    :cond_4
    const-string/jumbo v0, "unknown"

    goto :goto_0

    .line 618
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 655
    const-string v1, ""

    .line 657
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 658
    if-eqz v0, :cond_1

    .line 659
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 660
    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 661
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WIFI"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/l;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 670
    :goto_0
    return-object v0

    .line 663
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 664
    const-string v0, "ETHERNET"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 667
    :catch_0
    move-exception v0

    .line 668
    const-string v2, "NET"

    const-string v3, "getNetworkType exception"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 674
    const-string v1, ""

    .line 675
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x16

    if-lt v0, v4, :cond_2

    .line 677
    :try_start_0
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 678
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 679
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v0

    .line 680
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/l;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 681
    const-string v0, "5G"

    :goto_0
    move-object v1, v0

    .line 720
    :cond_0
    :goto_1
    return-object v1

    .line 682
    :cond_1
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/l;->b(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 683
    const-string v0, "2G"
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 685
    :catch_0
    move-exception v0

    .line 686
    const-string v2, "NET"

    const-string v3, "getWififreband NoSuchMethodError"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 687
    :catch_1
    move-exception v0

    .line 688
    const-string v2, "NET"

    const-string v3, "getWififreband exception"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 692
    :cond_2
    const/4 v4, -0x1

    .line 693
    :try_start_1
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 694
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    .line 695
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    .line 696
    const/4 v6, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 697
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v2, :cond_6

    .line 698
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 699
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 700
    iget-object v7, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 701
    iget v5, v0, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v5}, Lcom/xiaomi/mistatistic/sdk/controller/l;->a(I)Z

    move-result v5

    if-eqz v5, :cond_4

    move v0, v2

    .line 710
    :goto_2
    if-ne v0, v2, :cond_5

    .line 711
    const-string v1, "5G"

    goto :goto_1

    .line 703
    :cond_4
    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/l;->b(I)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v3

    .line 704
    goto :goto_2

    .line 712
    :cond_5
    if-ne v0, v3, :cond_0

    .line 713
    const-string v1, "2G"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 715
    :catch_2
    move-exception v0

    .line 716
    const-string v2, "NET"

    const-string v3, "getWififreband exception"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_6
    move v0, v4

    goto :goto_2

    :cond_7
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public static i(Landroid/content/Context;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 732
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/l;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 733
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 746
    :cond_0
    :goto_0
    return v0

    .line 735
    :cond_1
    const-string v2, "2G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 736
    const/4 v0, 0x1

    goto :goto_0

    .line 737
    :cond_2
    const-string v2, "3G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 738
    const/4 v0, 0x2

    goto :goto_0

    .line 739
    :cond_3
    const-string v2, "4G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 740
    const/4 v0, 0x4

    goto :goto_0

    .line 741
    :cond_4
    const-string v2, "WIFI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 742
    const/16 v0, 0x8

    goto :goto_0

    .line 743
    :cond_5
    const-string v2, "ETHERNET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 744
    const/16 v0, 0x10

    goto :goto_0
.end method
