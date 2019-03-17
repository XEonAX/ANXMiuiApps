.class public Lmtopsdk/network/DefaultCallImpl;
.super Ljava/lang/Object;
.source "DefaultCallImpl.java"

# interfaces
.implements Lmtopsdk/network/Call;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmtopsdk/network/DefaultCallImpl$AsyncCallTask;
    }
.end annotation


# static fields
.field private static final CONNECT_TIMEOUT_MILLIS:I = 0x3a98

.field private static final READ_TIMEOUT_MILLIS:I = 0x3a98

.field private static final TAG:Ljava/lang/String; = "mtopsdk.DefaultCallImpl"


# instance fields
.field volatile canceled:Z

.field executorService:Ljava/util/concurrent/ExecutorService;

.field future:Ljava/util/concurrent/Future;

.field mRequest:Lmtopsdk/network/domain/Request;


# direct methods
.method public constructor <init>(Lmtopsdk/network/domain/Request;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lmtopsdk/network/DefaultCallImpl;->mRequest:Lmtopsdk/network/domain/Request;

    .line 51
    iput-object p2, p0, Lmtopsdk/network/DefaultCallImpl;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 52
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 118
    const-string v0, "mtopsdk.DefaultCallImpl"

    const-string v1, "try to cancel call"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iput-boolean v2, p0, Lmtopsdk/network/DefaultCallImpl;->canceled:Z

    .line 120
    iget-object v0, p0, Lmtopsdk/network/DefaultCallImpl;->future:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lmtopsdk/network/DefaultCallImpl;->future:Ljava/util/concurrent/Future;

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 123
    :cond_0
    return-void
.end method

.method public enqueue(Lmtopsdk/network/NetworkCallback;)V
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lmtopsdk/network/DefaultCallImpl;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 107
    :try_start_0
    iget-object v0, p0, Lmtopsdk/network/DefaultCallImpl;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lmtopsdk/network/DefaultCallImpl$AsyncCallTask;

    invoke-virtual {p0}, Lmtopsdk/network/DefaultCallImpl;->request()Lmtopsdk/network/domain/Request;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lmtopsdk/network/DefaultCallImpl$AsyncCallTask;-><init>(Lmtopsdk/network/DefaultCallImpl;Lmtopsdk/network/domain/Request;Lmtopsdk/network/NetworkCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lmtopsdk/network/DefaultCallImpl;->future:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    invoke-interface {p1, p0, v0}, Lmtopsdk/network/NetworkCallback;->onFailure(Lmtopsdk/network/Call;Ljava/lang/Exception;)V

    goto :goto_0

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "miss executorService in CallImpl "

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0, v0}, Lmtopsdk/network/NetworkCallback;->onFailure(Lmtopsdk/network/Call;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public execute()Lmtopsdk/network/domain/Response;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0}, Lmtopsdk/network/DefaultCallImpl;->request()Lmtopsdk/network/domain/Request;

    move-result-object v5

    move-object v2, v3

    move v4, v0

    .line 67
    :goto_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v5}, Lmtopsdk/network/domain/Request;->retryTimes()I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 69
    :try_start_0
    invoke-virtual {p0, v5}, Lmtopsdk/network/DefaultCallImpl;->openConnection(Lmtopsdk/network/domain/Request;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 70
    invoke-virtual {p0, v0, v5}, Lmtopsdk/network/DefaultCallImpl;->prepareRequest(Ljava/net/HttpURLConnection;Lmtopsdk/network/domain/Request;)V

    .line 71
    invoke-virtual {p0, v0, v5}, Lmtopsdk/network/DefaultCallImpl;->readResponse(Ljava/net/HttpURLConnection;Lmtopsdk/network/domain/Request;)Lmtopsdk/network/domain/Response;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v0

    .line 97
    :goto_1
    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lmtopsdk/network/domain/Response$Builder;

    invoke-direct {v0}, Lmtopsdk/network/domain/Response$Builder;-><init>()V

    invoke-virtual {v0, v5}, Lmtopsdk/network/domain/Response$Builder;->request(Lmtopsdk/network/domain/Request;)Lmtopsdk/network/domain/Response$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lmtopsdk/network/domain/Response$Builder;->code(I)Lmtopsdk/network/domain/Response$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmtopsdk/network/domain/Response$Builder;->message(Ljava/lang/String;)Lmtopsdk/network/domain/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/network/domain/Response$Builder;->build()Lmtopsdk/network/domain/Response;

    move-result-object v0

    .line 100
    :cond_0
    return-object v0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    const/4 v2, -0x1

    .line 75
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v0

    move v4, v2

    move-object v2, v0

    move v0, v1

    .line 94
    goto :goto_0

    .line 76
    :catch_1
    move-exception v0

    .line 77
    const/4 v2, -0x2

    .line 78
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v0

    move v4, v2

    move-object v2, v0

    move v0, v1

    .line 94
    goto :goto_0

    .line 79
    :catch_2
    move-exception v0

    .line 80
    const/4 v2, -0x3

    .line 81
    invoke-virtual {v0}, Lorg/apache/http/conn/ConnectTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v0

    move v4, v2

    move-object v2, v0

    move v0, v1

    .line 94
    goto :goto_0

    .line 82
    :catch_3
    move-exception v0

    .line 83
    const/4 v2, -0x4

    .line 84
    invoke-virtual {v0}, Ljavax/net/ssl/SSLHandshakeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    move v4, v2

    move-object v2, v0

    move v0, v1

    .line 94
    goto :goto_0

    .line 85
    :catch_4
    move-exception v0

    .line 86
    const/4 v2, -0x5

    .line 87
    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    move v4, v2

    move-object v2, v0

    move v0, v1

    .line 94
    goto :goto_0

    .line 88
    :catch_5
    move-exception v0

    .line 89
    const/4 v2, -0x6

    .line 90
    invoke-virtual {v0}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v0

    move v4, v2

    move-object v2, v0

    move v0, v1

    .line 94
    goto :goto_0

    .line 91
    :catch_6
    move-exception v0

    .line 92
    const/4 v2, -0x7

    .line 93
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    move v4, v2

    move-object v2, v0

    move v0, v1

    .line 94
    goto :goto_0

    :cond_1
    move-object v0, v3

    goto :goto_1
.end method

.method openConnection(Lmtopsdk/network/domain/Request;)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Lmtopsdk/network/domain/Request;->url()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 133
    invoke-virtual {p1}, Lmtopsdk/network/domain/Request;->connectTimeoutMills()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 134
    invoke-virtual {p1}, Lmtopsdk/network/domain/Request;->readTimeoutMills()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 135
    return-object v0
.end method

.method prepareRequest(Ljava/net/HttpURLConnection;Lmtopsdk/network/domain/Request;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 145
    invoke-virtual {p2}, Lmtopsdk/network/domain/Request;->method()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Lmtopsdk/network/domain/Request;->headers()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 147
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "Cookie"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_1
    invoke-virtual {p2}, Lmtopsdk/network/domain/Request;->url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/network/cookie/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 155
    const-string v0, "Cookie"

    invoke-virtual {p2}, Lmtopsdk/network/domain/Request;->url()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmtopsdk/network/cookie/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_2
    const-string v0, "POST"

    invoke-virtual {p2}, Lmtopsdk/network/domain/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 159
    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 162
    :cond_3
    invoke-virtual {p2}, Lmtopsdk/network/domain/Request;->body()Lmtopsdk/network/domain/RequestBody;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_5

    .line 164
    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 165
    const-string v1, "Content-Type"

    invoke-virtual {v0}, Lmtopsdk/network/domain/RequestBody;->contentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0}, Lmtopsdk/network/domain/RequestBody;->contentLength()J

    move-result-wide v2

    .line 167
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    .line 168
    long-to-int v1, v2

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 169
    const-string v1, "Content-Length"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_4
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 173
    :try_start_0
    invoke-virtual {v0, v1}, Lmtopsdk/network/domain/RequestBody;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    invoke-static {v1}, Lmtopsdk/network/util/NetworkUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 180
    :cond_5
    :goto_1
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    :try_start_1
    const-string v2, "mtopsdk.DefaultCallImpl"

    const-string v3, "write outputstream error."

    invoke-static {v2, v3, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    invoke-static {v1}, Lmtopsdk/network/util/NetworkUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lmtopsdk/network/util/NetworkUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method readResponse(Ljava/net/HttpURLConnection;Lmtopsdk/network/domain/Request;)Lmtopsdk/network/domain/Response;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    const-string v0, "mtopsdk.DefaultCallImpl"

    const-string v1, "[readResponse]call task is canceled."

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "call canceled"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 195
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    .line 196
    if-nez v0, :cond_1

    .line 197
    const-string v0, ""

    .line 200
    :cond_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    .line 201
    invoke-virtual {p2}, Lmtopsdk/network/domain/Request;->url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lmtopsdk/network/DefaultCallImpl;->storeCookies(Ljava/lang/String;Ljava/util/Map;)V

    .line 203
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v4

    .line 204
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v5

    .line 206
    invoke-static {v3}, Lmtopsdk/network/util/NetworkUtils;->checkContentEncodingGZip(Ljava/util/Map;)Z

    move-result v1

    .line 209
    const/16 v6, 0x190

    if-lt v2, v6, :cond_2

    .line 210
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .line 218
    :goto_0
    new-instance v6, Lmtopsdk/network/DefaultCallImpl$1;

    invoke-direct {v6, p0, v4, v5, v1}, Lmtopsdk/network/DefaultCallImpl$1;-><init>(Lmtopsdk/network/DefaultCallImpl;Ljava/lang/String;ILjava/io/InputStream;)V

    .line 236
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 237
    const-string v0, "mtopsdk.DefaultCallImpl"

    const-string v1, "[readResponse]call task is canceled."

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "call canceled"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_2
    if-eqz v1, :cond_3

    .line 213
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 215
    :cond_3
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    .line 242
    :cond_4
    invoke-virtual {v6}, Lmtopsdk/network/domain/ResponseBody;->getBytes()[B

    .line 244
    new-instance v1, Lmtopsdk/network/domain/Response$Builder;

    invoke-direct {v1}, Lmtopsdk/network/domain/Response$Builder;-><init>()V

    invoke-virtual {v1, p2}, Lmtopsdk/network/domain/Response$Builder;->request(Lmtopsdk/network/domain/Request;)Lmtopsdk/network/domain/Response$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lmtopsdk/network/domain/Response$Builder;->code(I)Lmtopsdk/network/domain/Response$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmtopsdk/network/domain/Response$Builder;->message(Ljava/lang/String;)Lmtopsdk/network/domain/Response$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lmtopsdk/network/domain/Response$Builder;->headers(Ljava/util/Map;)Lmtopsdk/network/domain/Response$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lmtopsdk/network/domain/Response$Builder;->body(Lmtopsdk/network/domain/ResponseBody;)Lmtopsdk/network/domain/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/network/domain/Response$Builder;->build()Lmtopsdk/network/domain/Response;

    move-result-object v0

    .line 246
    return-object v0
.end method

.method public request()Lmtopsdk/network/domain/Request;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lmtopsdk/network/DefaultCallImpl;->mRequest:Lmtopsdk/network/domain/Request;

    return-object v0
.end method

.method public storeCookies(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 250
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 255
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 256
    if-eqz v1, :cond_2

    const-string v3, "Set-Cookie"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "Set-Cookie2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 258
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 259
    invoke-static {p1, v0}, Lmtopsdk/network/cookie/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 263
    :catch_0
    move-exception v0

    goto :goto_0
.end method
