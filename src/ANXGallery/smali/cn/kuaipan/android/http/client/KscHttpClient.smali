.class public Lcn/kuaipan/android/http/client/KscHttpClient;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "KscHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/kuaipan/android/http/client/KscHttpClient$TimeMarker;,
        Lcn/kuaipan/android/http/client/KscHttpClient$CurlLogger;,
        Lcn/kuaipan/android/http/client/KscHttpClient$LoggingConfiguration;
    }
.end annotation


# static fields
.field private static sUserAgent:Ljava/lang/String;


# instance fields
.field private volatile curlConfiguration:Lcn/kuaipan/android/http/client/KscHttpClient$LoggingConfiguration;

.field private final mForKssTransmission:Z

.field private final mKeepAlive:Z

.field private mLeakedException:Ljava/lang/RuntimeException;

.field private final mRequestSentRetryEnabled:Z


# direct methods
.method private constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .locals 3
    .param p1, "ccm"    # Lorg/apache/http/conn/ClientConnectionManager;
    .param p2, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    const/4 v2, 0x1

    .line 200
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 187
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AndroidHttpClient created and never closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/kuaipan/android/http/client/KscHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    .line 202
    iput-boolean v2, p0, Lcn/kuaipan/android/http/client/KscHttpClient;->mForKssTransmission:Z

    .line 203
    iput-boolean v2, p0, Lcn/kuaipan/android/http/client/KscHttpClient;->mKeepAlive:Z

    .line 204
    iput-boolean v2, p0, Lcn/kuaipan/android/http/client/KscHttpClient;->mRequestSentRetryEnabled:Z

    .line 205
    return-void
.end method

.method private constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;ZZ)V
    .locals 2
    .param p1, "ccm"    # Lorg/apache/http/conn/ClientConnectionManager;
    .param p2, "params"    # Lorg/apache/http/params/HttpParams;
    .param p3, "keepAlive"    # Z
    .param p4, "requestSentRetryEnabled"    # Z

    .prologue
    .line 192
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 187
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AndroidHttpClient created and never closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/kuaipan/android/http/client/KscHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuaipan/android/http/client/KscHttpClient;->mForKssTransmission:Z

    .line 195
    iput-boolean p3, p0, Lcn/kuaipan/android/http/client/KscHttpClient;->mKeepAlive:Z

    .line 196
    iput-boolean p4, p0, Lcn/kuaipan/android/http/client/KscHttpClient;->mRequestSentRetryEnabled:Z

    .line 197
    return-void
.end method

.method static synthetic access$300(Lcn/kuaipan/android/http/client/KscHttpClient;)Lcn/kuaipan/android/http/client/KscHttpClient$LoggingConfiguration;
    .locals 1
    .param p0, "x0"    # Lcn/kuaipan/android/http/client/KscHttpClient;

    .prologue
    .line 54
    iget-object v0, p0, Lcn/kuaipan/android/http/client/KscHttpClient;->curlConfiguration:Lcn/kuaipan/android/http/client/KscHttpClient$LoggingConfiguration;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p1, "x1"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {p0, p1}, Lcn/kuaipan/android/http/client/KscHttpClient;->toCurl(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultUserAgent()Ljava/lang/String;
    .locals 5

    .prologue
    .line 176
    sget-object v1, Lcn/kuaipan/android/http/client/KscHttpClient;->sUserAgent:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 177
    const-string v0, "KscClient/1.0 (Linux; U; Android %s)"

    .line 178
    .local v0, "base":Ljava/lang/String;
    const-string v1, "KscClient/1.0 (Linux; U; Android %s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcn/kuaipan/android/utils/ContextUtils;->getFrameworkVersion()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcn/kuaipan/android/http/client/KscHttpClient;->sUserAgent:Ljava/lang/String;

    .line 180
    :cond_0
    sget-object v1, Lcn/kuaipan/android/http/client/KscHttpClient;->sUserAgent:Ljava/lang/String;

    return-object v1
.end method

.method private static getHttpParams(Ljava/lang/String;)Lorg/apache/http/params/HttpParams;
    .locals 5
    .param p0, "userAgent"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 134
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 138
    .local v0, "params":Lorg/apache/http/params/HttpParams;
    invoke-static {v0, v4}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 141
    const/16 v1, 0x3a98

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 142
    const/16 v1, 0x7530

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 143
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 145
    const-wide/16 v2, 0x7530

    invoke-static {v0, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 146
    const/16 v1, 0x1e

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 147
    new-instance v1, Lcn/kuaipan/android/http/client/KscHttpClient$1;

    invoke-direct {v1}, Lcn/kuaipan/android/http/client/KscHttpClient$1;-><init>()V

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 156
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 160
    invoke-static {v0, v4}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 162
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 163
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setHttpElementCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 166
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    invoke-static {}, Lcn/kuaipan/android/http/client/KscHttpClient;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object p0

    .line 169
    :cond_0
    invoke-static {v0, p0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 170
    return-object v0
.end method

.method private static ignoreAllCertificate()Lorg/apache/http/conn/scheme/Scheme;
    .locals 9

    .prologue
    .line 97
    const/4 v1, 0x0

    .line 98
    .local v1, "scheme":Lorg/apache/http/conn/scheme/Scheme;
    const/4 v6, 0x1

    new-array v5, v6, [Ljavax/net/ssl/TrustManager;

    const/4 v6, 0x0

    new-instance v7, Lcn/kuaipan/android/http/client/IgnoreCertificationTrustManger;

    invoke-direct {v7}, Lcn/kuaipan/android/http/client/IgnoreCertificationTrustManger;-><init>()V

    aput-object v7, v5, v6

    .line 103
    .local v5, "tm":[Ljavax/net/ssl/TrustManager;
    :try_start_0
    const-string v6, "TLS"

    invoke-static {v6}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v4

    .line 104
    .local v4, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v5, v7}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 105
    new-instance v3, Lcn/kuaipan/android/http/client/SSLSocketFactory;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v6

    invoke-direct {v3, v6}, Lcn/kuaipan/android/http/client/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 111
    .local v3, "socketFactory":Lcn/kuaipan/android/http/client/SSLSocketFactory;
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "https"

    const/16 v7, 0x1bb

    invoke-direct {v2, v6, v3, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "scheme":Lorg/apache/http/conn/scheme/Scheme;
    .local v2, "scheme":Lorg/apache/http/conn/scheme/Scheme;
    move-object v1, v2

    .line 116
    .end local v2    # "scheme":Lorg/apache/http/conn/scheme/Scheme;
    .end local v3    # "socketFactory":Lcn/kuaipan/android/http/client/SSLSocketFactory;
    .end local v4    # "sslContext":Ljavax/net/ssl/SSLContext;
    .restart local v1    # "scheme":Lorg/apache/http/conn/scheme/Scheme;
    :goto_0
    return-object v1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    const/4 v6, 0x7

    const-string v7, "KscHttpClient"

    const-string v8, "System can\'t support TLS."

    invoke-static {v6, v7, v8}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;ZZ)Lcn/kuaipan/android/http/client/KscHttpClient;
    .locals 7
    .param p0, "userAgent"    # Ljava/lang/String;
    .param p1, "keepAlive"    # Z
    .param p2, "requestSentRetryEnabled"    # Z

    .prologue
    .line 81
    invoke-static {p0}, Lcn/kuaipan/android/http/client/KscHttpClient;->getHttpParams(Ljava/lang/String;)Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 83
    .local v1, "params":Lorg/apache/http/params/HttpParams;
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 84
    .local v2, "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 87
    invoke-static {}, Lcn/kuaipan/android/http/client/KscHttpClient;->ignoreAllCertificate()Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 89
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 93
    .local v0, "manager":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v3, Lcn/kuaipan/android/http/client/KscHttpClient;

    invoke-direct {v3, v0, v1, p1, p2}, Lcn/kuaipan/android/http/client/KscHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;ZZ)V

    return-object v3
.end method

.method public static newKssInstance(Ljava/lang/String;)Lcn/kuaipan/android/http/client/KscHttpClient;
    .locals 7
    .param p0, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-static {p0}, Lcn/kuaipan/android/http/client/KscHttpClient;->getHttpParams(Ljava/lang/String;)Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 122
    .local v1, "params":Lorg/apache/http/params/HttpParams;
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 123
    .local v2, "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 124
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    invoke-static {}, Lcn/kuaipan/android/http/client/SSLSocketFactory;->getSocketFactory()Lcn/kuaipan/android/http/client/SSLSocketFactory;

    move-result-object v5

    const/16 v6, 0x1bb

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 126
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 130
    .local v0, "manager":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v3, Lcn/kuaipan/android/http/client/KscHttpClient;

    invoke-direct {v3, v0, v1}, Lcn/kuaipan/android/http/client/KscHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object v3
.end method

.method private static toCurl(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;
    .locals 13
    .param p0, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p1, "logAuthToken"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 382
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v8, "curl "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v9

    array-length v10, v9

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v10, :cond_2

    aget-object v4, v9, v8

    .line 385
    .local v4, "header":Lorg/apache/http/Header;
    if-nez p1, :cond_1

    .line 386
    invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Authorization"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Cookie"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 384
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 390
    :cond_1
    const-string v11, "--header \""

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    const-string v11, "\" "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 395
    .end local v4    # "header":Lorg/apache/http/Header;
    :cond_2
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v7

    .line 400
    .local v7, "uri":Ljava/net/URI;
    instance-of v8, p0, Lorg/apache/http/impl/client/RequestWrapper;

    if-eqz v8, :cond_3

    move-object v8, p0

    .line 401
    check-cast v8, Lorg/apache/http/impl/client/RequestWrapper;

    invoke-virtual {v8}, Lorg/apache/http/impl/client/RequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    move-result-object v5

    .line 402
    .local v5, "original":Lorg/apache/http/HttpRequest;
    instance-of v8, v5, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v8, :cond_3

    .line 403
    check-cast v5, Lorg/apache/http/client/methods/HttpUriRequest;

    .end local v5    # "original":Lorg/apache/http/HttpRequest;
    invoke-interface {v5}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v7

    .line 407
    :cond_3
    const-string v8, "\""

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 409
    const-string v8, "\""

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    instance-of v8, p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v8, :cond_4

    move-object v2, p0

    .line 412
    check-cast v2, Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 413
    .local v2, "entityRequest":Lorg/apache/http/HttpEntityEnclosingRequest;
    invoke-interface {v2}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 414
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_4

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 415
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v8

    const-wide/16 v10, 0x400

    cmp-long v8, v8, v10

    if-gez v8, :cond_5

    .line 416
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 417
    .local v6, "stream":Ljava/io/ByteArrayOutputStream;
    invoke-interface {v1, v6}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 418
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    .line 421
    .local v3, "entityString":Ljava/lang/String;
    const-string v8, " --data-ascii \""

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .end local v2    # "entityRequest":Lorg/apache/http/HttpEntityEnclosingRequest;
    .end local v3    # "entityString":Ljava/lang/String;
    .end local v6    # "stream":Ljava/io/ByteArrayOutputStream;
    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 423
    .restart local v1    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v2    # "entityRequest":Lorg/apache/http/HttpEntityEnclosingRequest;
    :cond_5
    const-string v8, " [TOO MUCH DATA TO INCLUDE]"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method


# virtual methods
.method protected createConnectionReuseStrategy()Lorg/apache/http/ConnectionReuseStrategy;
    .locals 2

    .prologue
    .line 252
    iget-boolean v1, p0, Lcn/kuaipan/android/http/client/KscHttpClient;->mKeepAlive:Z

    if-eqz v1, :cond_0

    .line 253
    new-instance v0, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;

    invoke-direct {v0}, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;-><init>()V

    .line 257
    .local v0, "strategy":Lorg/apache/http/ConnectionReuseStrategy;
    :goto_0
    return-object v0

    .line 255
    .end local v0    # "strategy":Lorg/apache/http/ConnectionReuseStrategy;
    :cond_0
    new-instance v0, Lorg/apache/http/impl/NoConnectionReuseStrategy;

    invoke-direct {v0}, Lorg/apache/http/impl/NoConnectionReuseStrategy;-><init>()V

    .restart local v0    # "strategy":Lorg/apache/http/ConnectionReuseStrategy;
    goto :goto_0
.end method

.method protected createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 210
    iget-boolean v1, p0, Lcn/kuaipan/android/http/client/KscHttpClient;->mForKssTransmission:Z

    if-eqz v1, :cond_0

    .line 211
    new-instance v0, Lorg/apache/http/protocol/BasicHttpProcessor;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpProcessor;-><init>()V

    .line 212
    .local v0, "result":Lorg/apache/http/protocol/BasicHttpProcessor;
    new-instance v1, Lorg/apache/http/client/protocol/RequestDefaultHeaders;

    invoke-direct {v1}, Lorg/apache/http/client/protocol/RequestDefaultHeaders;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 214
    new-instance v1, Lorg/apache/http/protocol/RequestContent;

    invoke-direct {v1}, Lorg/apache/http/protocol/RequestContent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 215
    new-instance v1, Lorg/apache/http/protocol/RequestTargetHost;

    invoke-direct {v1}, Lorg/apache/http/protocol/RequestTargetHost;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 217
    new-instance v1, Lorg/apache/http/protocol/RequestConnControl;

    invoke-direct {v1}, Lorg/apache/http/protocol/RequestConnControl;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 218
    new-instance v1, Lorg/apache/http/protocol/RequestUserAgent;

    invoke-direct {v1}, Lorg/apache/http/protocol/RequestUserAgent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 229
    :goto_0
    new-instance v1, Lcn/kuaipan/android/http/client/KscHttpClient$TimeMarker;

    invoke-direct {v1, p0, v2}, Lcn/kuaipan/android/http/client/KscHttpClient$TimeMarker;-><init>(Lcn/kuaipan/android/http/client/KscHttpClient;Lcn/kuaipan/android/http/client/KscHttpClient$1;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 230
    new-instance v1, Lcn/kuaipan/android/http/client/KscHttpClient$CurlLogger;

    invoke-direct {v1, p0, v2}, Lcn/kuaipan/android/http/client/KscHttpClient$CurlLogger;-><init>(Lcn/kuaipan/android/http/client/KscHttpClient;Lcn/kuaipan/android/http/client/KscHttpClient$1;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 231
    return-object v0

    .line 227
    .end local v0    # "result":Lorg/apache/http/protocol/BasicHttpProcessor;
    :cond_0
    invoke-super {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    .restart local v0    # "result":Lorg/apache/http/protocol/BasicHttpProcessor;
    goto :goto_0
.end method

.method protected createHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;
    .locals 4

    .prologue
    .line 236
    new-instance v0, Lcn/kuaipan/android/http/client/KscHttpRequestRetryHandler;

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcn/kuaipan/android/http/client/KscHttpClient;->mRequestSentRetryEnabled:Z

    const/16 v3, 0x2710

    invoke-direct {v0, v1, v2, v3}, Lcn/kuaipan/android/http/client/KscHttpRequestRetryHandler;-><init>(IZI)V

    return-object v0
.end method

.method protected createHttpRoutePlanner()Lorg/apache/http/conn/routing/HttpRoutePlanner;
    .locals 2

    .prologue
    .line 241
    new-instance v0, Lcn/kuaipan/android/http/client/KscHttpRoutePlanner;

    invoke-virtual {p0}, Lcn/kuaipan/android/http/client/KscHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/kuaipan/android/http/client/KscHttpRoutePlanner;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    return-object v0
.end method

.method protected createRedirectHandler()Lorg/apache/http/client/RedirectHandler;
    .locals 1

    .prologue
    .line 246
    new-instance v0, Lcn/kuaipan/android/http/client/KscRedirectHandler;

    invoke-direct {v0}, Lcn/kuaipan/android/http/client/KscRedirectHandler;-><init>()V

    return-object v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 262
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 267
    return-void
.end method
