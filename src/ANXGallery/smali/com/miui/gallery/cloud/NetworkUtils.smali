.class public Lcom/miui/gallery/cloud/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloud/NetworkUtils$RequestType;
    }
.end annotation


# static fields
.field private static DBG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/gallery/cloud/NetworkUtils;->DBG:Z

    return-void
.end method

.method public static closeHttpClient(Lorg/apache/http/client/HttpClient;)V
    .locals 3
    .param p0, "client"    # Lorg/apache/http/client/HttpClient;

    .prologue
    .line 102
    if-eqz p0, :cond_0

    .line 103
    :try_start_0
    invoke-interface {p0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    .line 104
    .local v0, "connectionManager":Lorg/apache/http/conn/ClientConnectionManager;
    if-eqz v0, :cond_0

    .line 105
    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v0    # "connectionManager":Lorg/apache/http/conn/ClientConnectionManager;
    :cond_0
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string v2, "NetworkUtils"

    invoke-static {v2, v1}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static decodeGZip(Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;
    .locals 3
    .param p0, "resp"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    const-string v1, "Content-Encoding"

    invoke-interface {p0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 210
    .local v0, "contentEncoding":Lorg/apache/http/Header;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gzip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 213
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0
.end method

.method public static excuteInternal(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;
    .locals 12
    .param p0, "client"    # Lorg/apache/http/client/HttpClient;
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    const/4 v7, 0x0

    .line 255
    .local v7, "resp":Lorg/apache/http/HttpResponse;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 256
    .local v8, "execStartTime":J
    invoke-interface {p0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v2, v10, v8

    .line 258
    .local v2, "timeCost":J
    const-wide/16 v4, 0x0

    .line 259
    .local v4, "size":J
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 260
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    .line 262
    :cond_0
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 263
    .local v6, "statusCode":I
    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static/range {v1 .. v6}, Lcom/miui/gallery/util/GalleryStatHelper;->addHttpEvent(Ljava/lang/String;JJI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    return-object v7

    .line 264
    .end local v2    # "timeCost":J
    .end local v4    # "size":J
    .end local v6    # "statusCode":I
    .end local v8    # "execStartTime":J
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/miui/gallery/util/GalleryStatHelper;->addHttpEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    throw v0
.end method

.method public static getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 3

    .prologue
    .line 247
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    .line 248
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 249
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public static getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 4

    .prologue
    const/16 v3, 0x7530

    .line 80
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->getMiCloudProvider()Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/gallery/util/deviceprovider/MiCloudProviderInterface;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 81
    .local v0, "httpClient":Lorg/apache/http/client/HttpClient;
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 82
    .local v1, "params":Lorg/apache/http/params/HttpParams;
    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 83
    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 84
    const-wide/16 v2, 0x7530

    invoke-static {v1, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 85
    return-object v0
.end method

.method public static getHttpConn(Ljava/lang/String;Lcom/miui/gallery/cloud/NetworkUtils$RequestType;)Ljava/net/HttpURLConnection;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "method"    # Lcom/miui/gallery/cloud/NetworkUtils$RequestType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x7530

    .line 65
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 67
    .local v1, "req":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 72
    .local v0, "conn":Ljava/net/HttpURLConnection;
    :goto_0
    invoke-static {p1}, Lcom/miui/gallery/cloud/NetworkUtils;->getHttpMethod(Lcom/miui/gallery/cloud/NetworkUtils$RequestType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 74
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 75
    return-object v0

    .line 70
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    :cond_0
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    goto :goto_0
.end method

.method private static getHttpMethod(Lcom/miui/gallery/cloud/NetworkUtils$RequestType;)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # Lcom/miui/gallery/cloud/NetworkUtils$RequestType;

    .prologue
    .line 54
    sget-object v0, Lcom/miui/gallery/cloud/NetworkUtils$1;->$SwitchMap$com$miui$gallery$cloud$NetworkUtils$RequestType:[I

    invoke-virtual {p0}, Lcom/miui/gallery/cloud/NetworkUtils$RequestType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 60
    const-string v0, ""

    :goto_0
    return-object v0

    .line 56
    :pswitch_0
    const-string v0, "GET"

    goto :goto_0

    .line 58
    :pswitch_1
    const-string v0, "POST"

    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static handleResult(Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/HttpResponse;Ljava/lang/String;Z)Ljava/io/InputStream;
    .locals 4
    .param p0, "httpRequest"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .param p1, "resp"    # Lorg/apache/http/HttpResponse;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "canRetry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 92
    .local v0, "statusCode":I
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 93
    invoke-static {p1}, Lcom/miui/gallery/cloud/NetworkUtils;->decodeGZip(Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1

    .line 95
    :cond_0
    const-string v1, "NetworkUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Server error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
.end method

.method public static httpGetRequest(Lorg/apache/http/client/HttpClient;Ljava/lang/String;Lorg/apache/http/Header;)Ljava/io/InputStream;
    .locals 3
    .param p0, "client"    # Lorg/apache/http/client/HttpClient;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "cookies"    # Lorg/apache/http/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;,
            Lcom/miui/gallery/cloud/GalleryMiCloudServerException;
        }
    .end annotation

    .prologue
    .line 164
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 166
    .local v0, "request":Lorg/apache/http/client/methods/HttpGet;
    invoke-static {p0, v0, p2}, Lcom/miui/gallery/cloud/NetworkUtils;->httpGetRequest(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpGet;Lorg/apache/http/Header;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 168
    .local v1, "resp":Lorg/apache/http/HttpResponse;
    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/miui/gallery/cloud/NetworkUtils;->handleResult(Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/HttpResponse;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v2

    return-object v2
.end method

.method public static httpGetRequest(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpGet;Lorg/apache/http/Header;)Lorg/apache/http/HttpResponse;
    .locals 3
    .param p0, "client"    # Lorg/apache/http/client/HttpClient;
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpGet;
    .param p2, "cookies"    # Lorg/apache/http/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    invoke-virtual {p1, p2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Lorg/apache/http/Header;)V

    .line 177
    const-string v0, "Accept-Encoding"

    invoke-virtual {p1, v0}, Lorg/apache/http/client/methods/HttpGet;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_0
    sget-boolean v0, Lcom/miui/gallery/cloud/NetworkUtils;->DBG:Z

    if-eqz v0, :cond_1

    .line 182
    const-string v0, "NetworkUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http get url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpGet;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v0, "NetworkUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http get cookies : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_1
    invoke-static {p0, p1}, Lcom/miui/gallery/cloud/NetworkUtils;->excuteInternal(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public static httpGetRequestForString(Ljava/lang/String;Lorg/apache/http/Header;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "cookies"    # Lorg/apache/http/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;,
            Lcom/miui/gallery/cloud/GalleryMiCloudServerException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 193
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    invoke-static {v0, p0, p1}, Lcom/miui/gallery/cloud/NetworkUtils;->httpGetRequest(Lorg/apache/http/client/HttpClient;Ljava/lang/String;Lorg/apache/http/Header;)Ljava/io/InputStream;

    move-result-object v1

    .line 195
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_1

    .line 196
    :try_start_0
    invoke-static {v1}, Lcom/miui/gallery/util/StreamUtils;->toString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 199
    if-eqz v1, :cond_0

    .line 200
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 202
    :cond_0
    invoke-static {v0}, Lcom/miui/gallery/cloud/NetworkUtils;->closeHttpClient(Lorg/apache/http/client/HttpClient;)V

    .line 204
    :goto_0
    return-object v2

    .line 199
    :cond_1
    if-eqz v1, :cond_2

    .line 200
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 202
    :cond_2
    invoke-static {v0}, Lcom/miui/gallery/cloud/NetworkUtils;->closeHttpClient(Lorg/apache/http/client/HttpClient;)V

    .line 204
    const/4 v2, 0x0

    goto :goto_0

    .line 199
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    .line 200
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 202
    :cond_3
    invoke-static {v0}, Lcom/miui/gallery/cloud/NetworkUtils;->closeHttpClient(Lorg/apache/http/client/HttpClient;)V

    throw v2
.end method

.method public static httpPostRequest(Lorg/apache/http/client/HttpClient;Ljava/lang/String;Lorg/apache/http/HttpEntity;Lorg/apache/http/Header;)Ljava/io/InputStream;
    .locals 4
    .param p0, "client"    # Lorg/apache/http/client/HttpClient;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "entity"    # Lorg/apache/http/HttpEntity;
    .param p3, "cookies"    # Lorg/apache/http/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;,
            Lcom/miui/gallery/cloud/GalleryMiCloudServerException;
        }
    .end annotation

    .prologue
    .line 117
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, "post":Lorg/apache/http/client/methods/HttpPost;
    if-eqz p2, :cond_0

    .line 120
    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Lorg/apache/http/Header;)V

    .line 121
    invoke-virtual {v0, p2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 125
    :cond_0
    if-eqz p3, :cond_1

    .line 126
    invoke-virtual {v0, p3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Lorg/apache/http/Header;)V

    .line 129
    :cond_1
    const-string v2, "Accept-Encoding"

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpPost;->containsHeader(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 130
    const-string v2, "Accept-Encoding"

    const-string v3, "gzip"

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_2
    sget-boolean v2, Lcom/miui/gallery/cloud/NetworkUtils;->DBG:Z

    if-eqz v2, :cond_3

    .line 134
    const-string v2, "NetworkUtils"

    const-string v3, "http post url: %s"

    invoke-static {v2, v3, p1}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    const-string v2, "NetworkUtils"

    const-string v3, "http post cookies: %s"

    invoke-static {v2, v3, p3}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    :cond_3
    invoke-static {p0, v0}, Lcom/miui/gallery/cloud/NetworkUtils;->excuteInternal(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 140
    .local v1, "resp":Lorg/apache/http/HttpResponse;
    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/miui/gallery/cloud/NetworkUtils;->handleResult(Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/HttpResponse;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v2

    return-object v2
.end method

.method public static httpPostRequestForString(Ljava/lang/String;Lorg/apache/http/HttpEntity;Lorg/apache/http/Header;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .param p2, "cookies"    # Lorg/apache/http/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;,
            Lcom/miui/gallery/cloud/GalleryMiCloudServerException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 146
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    invoke-static {v0, p0, p1, p2}, Lcom/miui/gallery/cloud/NetworkUtils;->httpPostRequest(Lorg/apache/http/client/HttpClient;Ljava/lang/String;Lorg/apache/http/HttpEntity;Lorg/apache/http/Header;)Ljava/io/InputStream;

    move-result-object v1

    .line 148
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_1

    .line 149
    :try_start_0
    invoke-static {v1}, Lcom/miui/gallery/util/StreamUtils;->toString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 152
    if-eqz v1, :cond_0

    .line 153
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 155
    :cond_0
    invoke-static {v0}, Lcom/miui/gallery/cloud/NetworkUtils;->closeHttpClient(Lorg/apache/http/client/HttpClient;)V

    .line 157
    :goto_0
    return-object v2

    .line 152
    :cond_1
    if-eqz v1, :cond_2

    .line 153
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 155
    :cond_2
    invoke-static {v0}, Lcom/miui/gallery/cloud/NetworkUtils;->closeHttpClient(Lorg/apache/http/client/HttpClient;)V

    .line 157
    const/4 v2, 0x0

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    .line 153
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 155
    :cond_3
    invoke-static {v0}, Lcom/miui/gallery/cloud/NetworkUtils;->closeHttpClient(Lorg/apache/http/client/HttpClient;)V

    throw v2
.end method

.method public static isActiveNetworkMetered()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 238
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    .line 239
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 240
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 243
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isNetworkConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isNetworkConnected()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 218
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    .line 219
    .local v1, "context":Landroid/content/Context;
    const-string v4, "connectivity"

    .line 220
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 222
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 233
    :cond_0
    :goto_0
    return v3

    .line 228
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 229
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 233
    const/4 v3, 0x1

    goto :goto_0
.end method
