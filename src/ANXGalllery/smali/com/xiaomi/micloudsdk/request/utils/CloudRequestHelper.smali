.class public Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;
.super Ljava/lang/Object;
.source "CloudRequestHelper.java"


# direct methods
.method static decodeGZip(Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;
    .locals 3
    .param p0, "resp"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    const-string v1, "Content-Encoding"

    invoke-interface {p0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 265
    .local v0, "contentEncoding":Lorg/apache/http/Header;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gzip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 268
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0
.end method

.method static decodeGZipToString(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 2
    .param p0, "resp"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->decodeGZip(Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;

    move-result-object v0

    .line 276
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v0}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 278
    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object v1

    .line 278
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 279
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v1
.end method

.method public static encodeData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "security"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 314
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "security is empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 318
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 319
    const-string v2, ""

    .line 327
    :goto_0
    return-object v2

    .line 322
    :cond_1
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->getCryptCoder(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/utils/CryptCoder;

    move-result-object v0

    .line 324
    .local v0, "coder":Lcom/xiaomi/micloudsdk/utils/CryptCoder;
    :try_start_0
    invoke-interface {v0, p2}, Lcom/xiaomi/micloudsdk/utils/CryptCoder;->encrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/xiaomi/micloudsdk/exception/CipherException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 325
    :catch_0
    move-exception v1

    .line 326
    .local v1, "e":Lcom/xiaomi/micloudsdk/exception/CipherException;
    const-string v2, "CloudRequestHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encodeData failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    const-string v2, ""

    goto :goto_0
.end method

.method private static excuteInternal(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;
    .locals 22
    .param p0, "request"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    const/16 v19, 0x0

    .line 200
    .local v19, "resp":Lorg/apache/http/HttpResponse;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 201
    .local v20, "execStartTime":J
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v19

    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v4, v2, v20

    .line 203
    .local v4, "timeCost":J
    const-wide/16 v6, 0x0

    .line 204
    .local v6, "size":J
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 205
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    .line 207
    :cond_0
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    .line 208
    .local v8, "statusCode":I
    invoke-static {}, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->getInstance()Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->addHttpEvent(Ljava/lang/String;JJILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    return-object v19

    .line 209
    .end local v4    # "timeCost":J
    .end local v6    # "size":J
    .end local v8    # "statusCode":I
    .end local v20    # "execStartTime":J
    :catch_0
    move-exception v18

    .line 210
    .local v18, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->getInstance()Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v11

    const-wide/16 v12, -0x1

    const-wide/16 v14, 0x0

    const/16 v16, -0x1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v10 .. v17}, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->addHttpEvent(Ljava/lang/String;JJILjava/lang/String;)V

    .line 211
    throw v18
.end method

.method public static getCryptCoder(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/utils/CryptCoder;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "security"    # Ljava/lang/String;

    .prologue
    .line 305
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->isV4Url(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/xiaomi/micloudsdk/request/utils/CloudAESWithIVCoder;

    invoke-direct {v0, p1}, Lcom/xiaomi/micloudsdk/request/utils/CloudAESWithIVCoder;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/xiaomi/micloudsdk/utils/AESCoder;

    invoke-direct {v0, p1}, Lcom/xiaomi/micloudsdk/utils/AESCoder;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static httpGetRequest(Ljava/lang/String;Lorg/apache/http/Header;Lcom/xiaomi/micloudsdk/utils/CryptCoder;I)Ljava/lang/String;
    .locals 9
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "cookies"    # Lorg/apache/http/Header;
    .param p2, "coder"    # Lcom/xiaomi/micloudsdk/utils/CryptCoder;
    .param p3, "redirectCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/micloudsdk/exception/CloudServerException;
        }
    .end annotation

    .prologue
    .line 152
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 155
    .local v2, "request":Lorg/apache/http/client/methods/HttpGet;
    if-eqz p1, :cond_0

    .line 156
    invoke-virtual {v2, p1}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Lorg/apache/http/Header;)V

    .line 159
    :cond_0
    const-string v6, "Accept"

    const-string v7, "application/json"

    invoke-virtual {v2, v6, v7}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v6, "Accept-Encoding"

    const-string v7, "gzip"

    invoke-virtual {v2, v6, v7}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    if-lez p3, :cond_1

    .line 163
    const-string v6, "X-XIAOMI-REDIRECT-COUNT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_1
    const-string v6, "X-XIAOMI-SUPPORT-REDIRECT"

    const-string/jumbo v7, "true, https"

    invoke-virtual {v2, v6, v7}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v6, "CloudRequestHelper"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 168
    const-string v6, "CloudRequestHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "http get url : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string v6, "CloudRequestHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "http get cookies : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_2
    invoke-static {v2}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->excuteInternal(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 172
    .local v3, "resp":Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 173
    .local v5, "statusCode":I
    const/16 v6, 0xc8

    if-ne v5, v6, :cond_4

    .line 174
    const/4 v4, 0x0

    .line 176
    .local v4, "response":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->decodeGZipToString(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6}, Lcom/xiaomi/micloudsdk/utils/CryptCoder;->decrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/xiaomi/micloudsdk/exception/CipherException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 181
    invoke-static {v4, p3}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->checkRedirect(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "redirectUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 183
    add-int/lit8 p3, p3, 0x1

    .line 184
    invoke-static {v1, p1, p2, p3}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->httpGetRequest(Ljava/lang/String;Lorg/apache/http/Header;Lcom/xiaomi/micloudsdk/utils/CryptCoder;I)Ljava/lang/String;

    move-result-object v4

    .line 186
    .end local v4    # "response":Ljava/lang/String;
    :cond_3
    return-object v4

    .line 177
    .end local v1    # "redirectUrl":Ljava/lang/String;
    .restart local v4    # "response":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Lcom/xiaomi/micloudsdk/exception/CipherException;
    const-string v6, "CloudRequestHelper"

    const-string v7, "MiCloudServerException"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    new-instance v6, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v3}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILorg/apache/http/HttpResponse;)V

    throw v6

    .line 188
    .end local v0    # "e":Lcom/xiaomi/micloudsdk/exception/CipherException;
    .end local v4    # "response":Ljava/lang/String;
    :cond_4
    invoke-static {v5}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->isMiCloudServerException(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 189
    const-string v6, "CloudRequestHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MiCloudServerException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v6, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    invoke-direct {v6, v5, v3}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILorg/apache/http/HttpResponse;)V

    throw v6

    .line 192
    :cond_5
    const-string v6, "CloudRequestHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Server error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Server error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static httpGetRequestWithDecodeData(Ljava/lang/String;Lorg/apache/http/Header;Lcom/xiaomi/micloudsdk/utils/CryptCoder;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "cookies"    # Lorg/apache/http/Header;
    .param p2, "coder"    # Lcom/xiaomi/micloudsdk/utils/CryptCoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/exception/CloudServerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->httpGetRequest(Ljava/lang/String;Lorg/apache/http/Header;Lcom/xiaomi/micloudsdk/utils/CryptCoder;I)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "response":Ljava/lang/String;
    const-string v1, "CloudRequestHelper"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    const-string v1, "CloudRequestHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    return-object v0
.end method

.method public static httpPostJSONRequestWithDecodeData(Ljava/lang/String;Lorg/apache/http/entity/StringEntity;Lorg/apache/http/Header;Lcom/xiaomi/micloudsdk/utils/CryptCoder;)Ljava/lang/String;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "entity"    # Lorg/apache/http/entity/StringEntity;
    .param p2, "cookies"    # Lorg/apache/http/Header;
    .param p3, "coder"    # Lcom/xiaomi/micloudsdk/utils/CryptCoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/exception/CloudServerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    const-string v2, "application/json"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->httpPostRequest(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lorg/apache/http/Header;Lcom/xiaomi/micloudsdk/utils/CryptCoder;I)Ljava/lang/String;

    move-result-object v6

    .line 68
    .local v6, "response":Ljava/lang/String;
    const-string v0, "CloudRequestHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const-string v0, "CloudRequestHelper"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    return-object v6
.end method

.method private static httpPostRequest(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lorg/apache/http/Header;Lcom/xiaomi/micloudsdk/utils/CryptCoder;I)Ljava/lang/String;
    .locals 12
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "cookies"    # Lorg/apache/http/Header;
    .param p4, "coder"    # Lcom/xiaomi/micloudsdk/utils/CryptCoder;
    .param p5, "redirectCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/micloudsdk/exception/CloudServerException;
        }
    .end annotation

    .prologue
    .line 78
    new-instance v8, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v8, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 80
    .local v8, "post":Lorg/apache/http/client/methods/HttpPost;
    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {v8, p1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 84
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 85
    const-string v2, "Content-Type"

    invoke-virtual {v8, v2, p2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_1
    if-eqz p3, :cond_2

    .line 90
    invoke-virtual {v8, p3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Lorg/apache/http/Header;)V

    .line 93
    :cond_2
    const-string v2, "Accept"

    const-string v3, "application/json"

    invoke-virtual {v8, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v2, "Accept-Encoding"

    const-string v3, "gzip"

    invoke-virtual {v8, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    if-lez p5, :cond_3

    .line 97
    const-string v2, "X-XIAOMI-REDIRECT-COUNT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_3
    const-string v2, "X-XIAOMI-SUPPORT-REDIRECT"

    const-string/jumbo v3, "true, https"

    invoke-virtual {v8, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v2, "CloudRequestHelper"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 102
    const-string v2, "CloudRequestHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http post url : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-string v2, "CloudRequestHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http post cookies : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_4
    invoke-static {v8}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->excuteInternal(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 107
    .local v9, "resp":Lorg/apache/http/HttpResponse;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    .line 108
    .local v11, "statusCode":I
    const/16 v2, 0xc8

    if-ne v11, v2, :cond_6

    .line 109
    const/4 v10, 0x0

    .line 111
    .local v10, "response":Ljava/lang/String;
    :try_start_0
    invoke-static {v9}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->decodeGZipToString(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Lcom/xiaomi/micloudsdk/utils/CryptCoder;->decrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/xiaomi/micloudsdk/exception/CipherException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 116
    move/from16 v0, p5

    invoke-static {v10, v0}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->checkRedirect(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "redirectUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 118
    add-int/lit8 p5, p5, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    .line 119
    invoke-static/range {v1 .. v6}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->httpPostRequest(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lorg/apache/http/Header;Lcom/xiaomi/micloudsdk/utils/CryptCoder;I)Ljava/lang/String;

    move-result-object v10

    .line 121
    .end local v10    # "response":Ljava/lang/String;
    :cond_5
    return-object v10

    .line 112
    .end local v1    # "redirectUrl":Ljava/lang/String;
    .restart local v10    # "response":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 113
    .local v7, "e":Lcom/xiaomi/micloudsdk/exception/CipherException;
    const-string v2, "CloudRequestHelper"

    const-string v3, "MiCloudServerException"

    invoke-static {v2, v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    new-instance v2, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v9}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILorg/apache/http/HttpResponse;)V

    throw v2

    .line 122
    .end local v7    # "e":Lcom/xiaomi/micloudsdk/exception/CipherException;
    .end local v10    # "response":Ljava/lang/String;
    :cond_6
    invoke-static {v11}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->isMiCloudServerException(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 123
    const-string v2, "CloudRequestHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MiCloudServerException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v2, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    invoke-direct {v2, v11, v9}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILorg/apache/http/HttpResponse;)V

    throw v2

    .line 126
    :cond_7
    const-string v2, "CloudRequestHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Server error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Server error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static httpPostRequestWithDecodeData(Ljava/lang/String;Lorg/apache/http/client/entity/UrlEncodedFormEntity;Lorg/apache/http/Header;Lcom/xiaomi/micloudsdk/utils/CryptCoder;)Ljava/lang/String;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "entity"    # Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .param p2, "cookies"    # Lorg/apache/http/Header;
    .param p3, "coder"    # Lcom/xiaomi/micloudsdk/utils/CryptCoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/exception/CloudServerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->httpPostRequest(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lorg/apache/http/Header;Lcom/xiaomi/micloudsdk/utils/CryptCoder;I)Ljava/lang/String;

    move-result-object v6

    .line 58
    .local v6, "response":Ljava/lang/String;
    const-string v0, "CloudRequestHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "CloudRequestHelper"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    return-object v6
.end method

.method public static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 9
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x800

    const/4 v7, 0x0

    .line 285
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 286
    .local v1, "buffer":Ljava/lang/StringBuffer;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    const-string v6, "UTF-8"

    invoke-direct {v5, p0, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 287
    .local v4, "reader":Ljava/io/BufferedReader;
    const/16 v0, 0x800

    .line 288
    .local v0, "BUFFER_SIZE":I
    new-array v3, v8, [C

    .line 291
    .local v3, "data":[C
    :goto_0
    invoke-virtual {v4, v3, v7, v8}, Ljava/io/BufferedReader;->read([CII)I

    move-result v2

    .local v2, "count":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    .line 292
    invoke-virtual {v1, v3, v7, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 294
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static isV4Url(Ljava/lang/String;)Z
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 298
    const-string v0, "/v4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
