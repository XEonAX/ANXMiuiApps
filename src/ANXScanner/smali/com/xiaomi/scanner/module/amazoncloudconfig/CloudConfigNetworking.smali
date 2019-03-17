.class public Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;
.super Ljava/lang/Object;
.source "CloudConfigNetworking.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$CustomSSLSocketFactory;,
        Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;,
        Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$HttpListener;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final ENCODING_ERROR_TAG:Ljava/lang/String; = "ENCODING_ERROR_TAG:"

.field public static final LOCATION:Ljava/lang/String; = "Location"

.field private static final MAX_REDIRECTS:I = 0xa

.field private static final PROTOCOL:Ljava/lang/String; = "https"

.field private static final PROTOCOL_ERROR_TAG:Ljava/lang/String; = "PROTOCOL_ERROR_TAG:"

.field private static final REDIRECT_ERROR_TAG:Ljava/lang/String; = "REDIRECT_ERROR_TAG:"

.field private static final REQUEST_METHOD:Ljava/lang/String; = "GET"

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

.field private static final TASK_QUEUE_MAX_COUNT:I = 0x80

.field private static final THREAD_KEEP_LIVE_TIME:I = 0x1e

.field private static mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "CloudConfigNetworking"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    .line 43
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;->CPU_COUNT:I

    .line 44
    sget v0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;->CPU_COUNT:I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;->CORE_POOL_SIZE:I

    .line 49
    invoke-static {}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;->initExecute()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;

    .prologue
    .line 35
    invoke-static {p0}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;->doRequest(Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;)V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaomi/scanner/debug/Log$Tag;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-object v0
.end method

.method public static concatUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "baseUrl"    # Ljava/lang/String;
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 158
    :cond_0
    :goto_0
    return-object p0

    .line 155
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static doRequest(Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;)V
    .locals 15
    .param p0, "request"    # Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 163
    invoke-static {p0}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;->access$200(Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;)Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$HttpListener;

    move-result-object v0

    .line 164
    .local v0, "listener":Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$HttpListener;
    const/4 v1, -0x1

    .line 165
    .local v1, "responseCode":I
    invoke-static {p0}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;->access$300(Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 166
    sget-object v5, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;->URL_ERROR:Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;

    invoke-static {v0, v1, v5}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;->notifyHttpError(Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$HttpListener;ILcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;)V

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    const/4 v6, 0x0

    .line 171
    .local v6, "connection":Ljava/net/HttpURLConnection;
    const/4 v3, 0x0

    .line 173
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;->makeConnection(Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;)Ljava/net/HttpURLConnection;

    move-result-object v6

    .line 174
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 176
    const/16 v5, 0xc8

    if-ne v1, v5, :cond_6

    .line 177
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 179
    .local v2, "respHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x1

    .local v9, "i":I
    move v10, v9

    .line 180
    .end local v9    # "i":I
    .local v10, "i":I
    :goto_1
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "i":I
    .restart local v9    # "i":I
    invoke-virtual {v6, v10}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v11

    .local v11, "key":Ljava/lang/String;
    if-eqz v11, :cond_2

    .line 181
    invoke-virtual {v6, v11}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 182
    .local v12, "value":Ljava/lang/String;
    invoke-virtual {v2, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v10, v9

    .line 183
    .end local v9    # "i":I
    .restart local v10    # "i":I
    goto :goto_1

    .line 185
    .end local v10    # "i":I
    .end local v12    # "value":Ljava/lang/String;
    .restart local v9    # "i":I
    :cond_2
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 186
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;->parseCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, "encode":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 189
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v5

    invoke-interface/range {v0 .. v5}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$HttpListener;->onResponse(ILjava/util/HashMap;Ljava/io/InputStream;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    .end local v2    # "respHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "encode":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v11    # "key":Ljava/lang/String;
    :goto_2
    if-eqz v3, :cond_3

    .line 217
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 222
    :cond_3
    :goto_3
    if-eqz v6, :cond_0

    .line 223
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 191
    .restart local v2    # "respHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "encode":Ljava/lang/String;
    .restart local v9    # "i":I
    .restart local v11    # "key":Ljava/lang/String;
    :cond_4
    :try_start_2
    invoke-static {v3, v4}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;->readString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    .line 192
    sget-object v5, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v13, "Discarded response data: doRequest"

    invoke-static {v5, v13}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 197
    .end local v2    # "respHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "encode":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v11    # "key":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 198
    .local v7, "e":Ljava/net/SocketTimeoutException;
    :try_start_3
    sget-object v5, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;->TIMEOUT_ERROR:Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;

    invoke-static {v0, v1, v5}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;->notifyHttpError(Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$HttpListener;ILcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 215
    if-eqz v3, :cond_5

    .line 217
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 222
    .end local v7    # "e":Ljava/net/SocketTimeoutException;
    :cond_5
    :goto_4
    if-eqz v6, :cond_0

    .line 223
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 195
    :cond_6
    :try_start_5
    sget-object v5, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;->RESPONSE_ERROR:Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;

    invoke-static {v0, v1, v5}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;->notifyHttpError(Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$HttpListener;ILcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;)V
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 199
    :catch_1
    move-exception v7

    .line 200
    .local v7, "e":Ljava/lang/Throwable;
    :try_start_6
    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    .line 201
    .local v8, "errorMsg":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 202
    const-string v5, "ENCODING_ERROR_TAG:"

    invoke-virtual {v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 203
    sget-object v5, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;->ENCODING_ERROR:Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;

    invoke-static {v0, v1, v5}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;->notifyHttpError(Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$HttpListener;ILcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 215
    :goto_5
    if-eqz v3, :cond_7

    .line 217
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 222
    .end local v7    # "e":Ljava/lang/Throwable;
    :cond_7
    :goto_6
    if-eqz v6, :cond_0

    .line 223
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 218
    .end local v8    # "errorMsg":Ljava/lang/String;
    :catch_2
    move-exception v7

    .line 219
    .local v7, "e":Ljava/io/IOException;
    sget-object v5, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v13, "stack_error:"

    invoke-static {v5, v13, v7}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 218
    .local v7, "e":Ljava/net/SocketTimeoutException;
    :catch_3
    move-exception v7

    .line 219
    .local v7, "e":Ljava/io/IOException;
    sget-object v5, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v13, "stack_error:"

    invoke-static {v5, v13, v7}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 204
    .local v7, "e":Ljava/lang/Throwable;
    .restart local v8    # "errorMsg":Ljava/lang/String;
    :cond_8
    :try_start_8
    const-string v5, "PROTOCOL_ERROR_TAG:"

    invoke-virtual {v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 205
    sget-object v5, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;->PROTOCOL_ERROR:Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;

    invoke-static {v0, v1, v5}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;->notifyHttpError(Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$HttpListener;ILcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_5

    .line 215
    .end local v7    # "e":Ljava/lang/Throwable;
    .end local v8    # "errorMsg":Ljava/lang/String;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_9

    .line 217
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 222
    :cond_9
    :goto_7
    if-eqz v6, :cond_a

    .line 223
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    throw v5

    .line 206
    .restart local v7    # "e":Ljava/lang/Throwable;
    .restart local v8    # "errorMsg":Ljava/lang/String;
    :cond_b
    :try_start_a
    const-string v5, "REDIRECT_ERROR_TAG:"

    invoke-virtual {v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 207
    sget-object v5, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;->REDIRECT_ERROR:Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;

    invoke-static {v0, v1, v5}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;->notifyHttpError(Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$HttpListener;ILcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;)V

    goto :goto_5

    .line 209
    :cond_c
    sget-object v5, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;->OTHER_ERROR:Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;

    invoke-virtual {v5, v8}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;->withMessage(Ljava/lang/String;)Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;

    move-result-object v5

    invoke-static {v0, v1, v5}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;->notifyHttpError(Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$HttpListener;ILcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;)V

    goto :goto_5

    .line 212
    :cond_d
    sget-object v5, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;->OTHER_ERROR:Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;

    invoke-static {v0, v1, v5}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;->notifyHttpError(Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$HttpListener;ILcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_5

    .line 218
    :catch_4
    move-exception v7

    .line 219
    .local v7, "e":Ljava/io/IOException;
    sget-object v5, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v13, "stack_error:"

    invoke-static {v5, v13, v7}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 218
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "errorMsg":Ljava/lang/String;
    :catch_5
    move-exception v7

    .line 219
    .restart local v7    # "e":Ljava/io/IOException;
    sget-object v13, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v14, "stack_error:"

    invoke-static {v13, v14, v7}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method public static get(Ljava/lang/String;)Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;->get(Ljava/lang/String;Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$HttpListener;)Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$HttpListener;)Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "listener"    # Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$HttpListener;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;->get(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$HttpListener;)Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$HttpListener;)Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "withParams"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$HttpListener;

    .prologue
    .line 75
    new-instance v1, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;

    invoke-direct {v1}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;-><init>()V

    .line 76
    .local v1, "request":Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;
    invoke-static {p0, p1}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;->concatUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "getUrl":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;->setUrl(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1, p2}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;->setListener(Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$HttpListener;)V

    .line 79
    sget-object v3, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-static {v3, v1}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;->safeExecuteDoRequest(Ljava/util/concurrent/Executor;Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;)Z

    move-result v2

    .line 81
    .local v2, "success":Z
    if-eqz v2, :cond_0

    .end local v1    # "request":Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;
    :goto_0
    return-object v1

    .restart local v1    # "request":Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static initExecute()Ljava/util/concurrent/Executor;
    .locals 9

    .prologue
    .line 52
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;->CORE_POOL_SIZE:I

    sget v3, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;->CORE_POOL_SIZE:I

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v8, 0x80

    invoke-direct {v7, v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 55
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 57
    .local v1, "executor":Ljava/util/concurrent/ThreadPoolExecutor;
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    .line 63
    :goto_0
    return-object v1

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v3, "stack_error:"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 60
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    sget-object v2, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v3, "stack_error:"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static makeConnection(Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;)Ljava/net/HttpURLConnection;
    .locals 11
    .param p0, "request"    # Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 251
    new-instance v6, Ljava/net/URL;

    invoke-static {p0}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;->access$300(Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 252
    .local v6, "url":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, "protocolCur":Ljava/lang/String;
    const/4 v3, 0x0

    .line 254
    .local v3, "redirectCount":I
    sget-object v8, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " makeConnection - redirectCount : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    move v4, v3

    .end local v3    # "redirectCount":I
    .local v4, "redirectCount":I
    move-object v7, v6

    .line 256
    .end local v6    # "url":Ljava/net/URL;
    .local v7, "url":Ljava/net/URL;
    :goto_0
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "redirectCount":I
    .restart local v3    # "redirectCount":I
    const/16 v8, 0xa

    if-gt v4, v8, :cond_2

    invoke-static {p0}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;->access$400(Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 257
    const-string v8, "https"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "http"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 258
    sget-object v8, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v9, " makeConnection - : inside checks"

    invoke-static {v8, v9}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 260
    new-instance v8, Ljava/lang/Exception;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PROTOCOL_ERROR_TAG:url = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p0}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;->access$300(Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8

    .line 263
    :cond_0
    invoke-static {v7, p0}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;->openConnection(Ljava/net/URL;Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 264
    .local v0, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 265
    .local v5, "responseCode":I
    sget-object v8, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " makeConnection - connection responseCode - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 266
    const/16 v8, 0x12d

    if-eq v5, v8, :cond_1

    const/16 v8, 0x12e

    if-ne v5, v8, :cond_3

    .line 268
    :cond_1
    const-string v8, "Location"

    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "location":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 271
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v7, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 272
    .end local v7    # "url":Ljava/net/URL;
    .restart local v6    # "url":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    move v4, v3

    .end local v3    # "redirectCount":I
    .restart local v4    # "redirectCount":I
    move-object v7, v6

    .line 276
    .end local v6    # "url":Ljava/net/URL;
    .restart local v7    # "url":Ljava/net/URL;
    goto :goto_0

    .line 277
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v1    # "location":Ljava/lang/String;
    .end local v4    # "redirectCount":I
    .end local v5    # "responseCode":I
    .restart local v3    # "redirectCount":I
    :cond_2
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "REDIRECT_ERROR_TAG:max count = 10"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8

    .line 274
    .restart local v0    # "connection":Ljava/net/HttpURLConnection;
    .restart local v5    # "responseCode":I
    :cond_3
    return-object v0
.end method

.method private static notifyHttpError(Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$HttpListener;ILcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;)V
    .locals 0
    .param p0, "listener"    # Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$HttpListener;
    .param p1, "responseCode"    # I
    .param p2, "error"    # Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;

    .prologue
    .line 229
    if-eqz p0, :cond_0

    .line 230
    invoke-interface {p0, p1, p2}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$HttpListener;->onError(ILcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworkError;)V

    .line 232
    :cond_0
    return-void
.end method

.method private static openConnection(Ljava/net/URL;Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;)Ljava/net/HttpURLConnection;
    .locals 5
    .param p0, "url"    # Ljava/net/URL;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "request"    # Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/16 v4, 0x2710

    .line 288
    const/16 v0, 0x2710

    .line 289
    .local v0, "TIMEOUT_MILLIS":I
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 290
    .local v1, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 291
    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 292
    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 293
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 294
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 295
    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 298
    const-string v2, "https"

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 299
    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {v4}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$CustomSSLSocketFactory;->getDefault(I)Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$CustomSSLSocketFactory;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 301
    :cond_0
    return-object v1
.end method

.method public static parseCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "contentType"    # Ljava/lang/String;

    .prologue
    .line 235
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 236
    const-string v3, ";"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, "params":[Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 238
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "pair":[Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 240
    const/4 v3, 0x0

    aget-object v3, v1, v3

    const-string v4, "charset"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 241
    const/4 v3, 0x1

    aget-object v3, v1, v3

    .line 247
    .end local v0    # "i":I
    .end local v1    # "pair":[Ljava/lang/String;
    .end local v2    # "params":[Ljava/lang/String;
    :goto_1
    return-object v3

    .line 237
    .restart local v0    # "i":I
    .restart local v1    # "pair":[Ljava/lang/String;
    .restart local v2    # "params":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    .end local v0    # "i":I
    .end local v1    # "pair":[Ljava/lang/String;
    .end local v2    # "params":[Ljava/lang/String;
    :cond_1
    const-string v3, "UTF-8"

    goto :goto_1
.end method

.method public static post(Ljava/lang/String;[BLcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$HttpListener;)Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "bodyByte"    # [B
    .param p2, "listener"    # Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$HttpListener;

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;->post(Ljava/lang/String;[BLjava/util/Map;Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$HttpListener;)Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;

    move-result-object v0

    return-object v0
.end method

.method public static post(Ljava/lang/String;[BLjava/util/Map;Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$HttpListener;)Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "bodyByte"    # [B
    .param p3, "listener"    # Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$HttpListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$HttpListener;",
            ")",
            "Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;"
        }
    .end annotation

    .prologue
    .line 89
    .local p2, "headersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;

    invoke-direct {v0}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;-><init>()V

    .line 90
    .local v0, "request":Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;
    if-eqz p1, :cond_0

    array-length v2, p1

    if-eqz v2, :cond_0

    .line 91
    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;->setBody([B)V

    .line 93
    :cond_0
    invoke-virtual {v0, p0}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;->setUrl(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, p3}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;->setListener(Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$HttpListener;)V

    .line 95
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 96
    invoke-virtual {v0, p2}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;->putHeader(Ljava/util/Map;)V

    .line 98
    :cond_1
    sget-object v2, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-static {v2, v0}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;->safeExecuteDoRequest(Ljava/util/concurrent/Executor;Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;)Z

    move-result v1

    .line 100
    .local v1, "success":Z
    if-eqz v1, :cond_2

    .end local v0    # "request":Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;
    :goto_0
    return-object v0

    .restart local v0    # "request":Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readBytes(Ljava/io/InputStream;)[B
    .locals 6
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 136
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 137
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x400

    new-array v1, v4, [B

    .line 139
    .local v1, "buf":[B
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "n":I
    if-ltz v3, :cond_0

    .line 140
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buf":[B
    .end local v3    # "n":I
    :catch_0
    move-exception v2

    .line 145
    .local v2, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v5, "stack_error:"

    invoke-static {v4, v5, v2}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    const/4 v4, 0x0

    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v4

    .line 142
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "buf":[B
    .restart local v3    # "n":I
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 143
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_1
.end method

.method public static readString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "encode"    # Ljava/lang/String;

    .prologue
    .line 124
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 125
    .local v0, "data":[B
    if-eqz v0, :cond_0

    .line 126
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v0    # "data":[B
    :goto_0
    return-object v2

    .line 128
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v3, "stack_error:"

    invoke-static {v2, v3, v1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static safeExecuteDoRequest(Ljava/util/concurrent/Executor;Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;)Z
    .locals 3
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "request"    # Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;

    .prologue
    .line 105
    :try_start_0
    new-instance v1, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$1;

    invoke-direct {v1, p1}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$1;-><init>(Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    const/4 v1, 0x1

    .line 118
    :goto_0
    return v1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "stack_error:"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    const/4 v1, 0x0

    goto :goto_0
.end method
