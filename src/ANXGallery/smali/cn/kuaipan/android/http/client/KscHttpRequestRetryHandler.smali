.class public Lcn/kuaipan/android/http/client/KscHttpRequestRetryHandler;
.super Ljava/lang/Object;
.source "KscHttpRequestRetryHandler.java"

# interfaces
.implements Lorg/apache/http/client/HttpRequestRetryHandler;


# instance fields
.field private final errorTimeOut:I

.field private final requestSentRetryEnabled:Z

.field private final retryCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    const/4 v0, 0x3

    invoke-direct {p0, v0, v1, v1}, Lcn/kuaipan/android/http/client/KscHttpRequestRetryHandler;-><init>(IZI)V

    .line 45
    return-void
.end method

.method public constructor <init>(IZI)V
    .locals 0
    .param p1, "retryCount"    # I
    .param p2, "requestSentRetryEnabled"    # Z
    .param p3, "errorTimeOut"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcn/kuaipan/android/http/client/KscHttpRequestRetryHandler;->retryCount:I

    .line 36
    iput-boolean p2, p0, Lcn/kuaipan/android/http/client/KscHttpRequestRetryHandler;->requestSentRetryEnabled:Z

    .line 37
    iput p3, p0, Lcn/kuaipan/android/http/client/KscHttpRequestRetryHandler;->errorTimeOut:I

    .line 38
    return-void
.end method


# virtual methods
.method public retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .locals 16
    .param p1, "exception"    # Ljava/io/IOException;
    .param p2, "executionCount"    # I
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    .line 53
    if-nez p1, :cond_0

    .line 54
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Exception parameter may not be null"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 57
    :cond_0
    if-nez p3, :cond_1

    .line 58
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "HTTP context may not be null"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 61
    :cond_1
    move-object/from16 v0, p0

    iget v11, v0, Lcn/kuaipan/android/http/client/KscHttpRequestRetryHandler;->retryCount:I

    move/from16 v0, p2

    if-le v0, v11, :cond_2

    .line 63
    const/4 v11, 0x0

    .line 102
    :goto_0
    return v11

    .line 65
    :cond_2
    move-object/from16 v0, p1

    instance-of v11, v0, Lorg/apache/http/NoHttpResponseException;

    if-eqz v11, :cond_3

    .line 67
    const/4 v11, 0x1

    goto :goto_0

    .line 69
    :cond_3
    move-object/from16 v0, p1

    instance-of v11, v0, Ljava/io/InterruptedIOException;

    if-eqz v11, :cond_4

    .line 71
    const/4 v11, 0x0

    goto :goto_0

    .line 73
    :cond_4
    move-object/from16 v0, p1

    instance-of v11, v0, Ljava/net/UnknownHostException;

    if-eqz v11, :cond_5

    .line 75
    const/4 v11, 0x0

    goto :goto_0

    .line 77
    :cond_5
    move-object/from16 v0, p1

    instance-of v11, v0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v11, :cond_6

    .line 79
    const/4 v11, 0x0

    goto :goto_0

    .line 82
    :cond_6
    const-string v11, "http.request_sent"

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 83
    .local v2, "b":Ljava/lang/Boolean;
    const-string v11, "ksc.connect_start"

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 84
    .local v3, "l":Ljava/lang/Long;
    const-string v11, "http.request"

    .line 85
    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/http/impl/client/RequestWrapper;

    .line 86
    .local v10, "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    const-string v11, "ksc.connect_redirector"

    .line 87
    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/kuaipan/android/http/client/URIRedirector;

    .line 88
    .local v6, "redirector":Lcn/kuaipan/android/http/client/URIRedirector;
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_9

    const/4 v7, 0x1

    .line 89
    .local v7, "sent":Z
    :goto_1
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 90
    .local v8, "start":J
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 91
    .local v4, "current":J
    if-eqz v7, :cond_8

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcn/kuaipan/android/http/client/KscHttpRequestRetryHandler;->requestSentRetryEnabled:Z

    if-eqz v11, :cond_7

    invoke-virtual {v10}, Lorg/apache/http/impl/client/RequestWrapper;->isRepeatable()Z

    move-result v11

    if-nez v11, :cond_8

    :cond_7
    move-object/from16 v0, p1

    instance-of v11, v0, Ljava/net/SocketException;

    if-eqz v11, :cond_c

    sub-long v12, v4, v8

    move-object/from16 v0, p0

    iget v11, v0, Lcn/kuaipan/android/http/client/KscHttpRequestRetryHandler;->errorTimeOut:I

    int-to-long v14, v11

    cmp-long v11, v12, v14

    if-gtz v11, :cond_c

    .line 96
    :cond_8
    if-eqz v6, :cond_b

    .line 97
    move-object/from16 v0, p3

    invoke-interface {v6, v0}, Lcn/kuaipan/android/http/client/URIRedirector;->redirect(Lorg/apache/http/protocol/HttpContext;)Z

    move-result v11

    goto/16 :goto_0

    .line 88
    .end local v4    # "current":J
    .end local v7    # "sent":Z
    .end local v8    # "start":J
    :cond_9
    const/4 v7, 0x0

    goto :goto_1

    .line 89
    .restart local v7    # "sent":Z
    :cond_a
    const-wide/16 v8, 0x0

    goto :goto_2

    .line 99
    .restart local v4    # "current":J
    .restart local v8    # "start":J
    :cond_b
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 102
    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_0
.end method
