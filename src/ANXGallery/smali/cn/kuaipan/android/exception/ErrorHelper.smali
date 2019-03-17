.class public Lcn/kuaipan/android/exception/ErrorHelper;
.super Ljava/lang/Object;
.source "ErrorHelper.java"


# direct methods
.method public static handleInterruptException(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 64
    if-nez p0, :cond_1

    .line 81
    :cond_0
    return-void

    .line 68
    :cond_1
    instance-of v0, p0, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_2

    .line 69
    check-cast p0, Ljava/lang/InterruptedException;

    .end local p0    # "e":Ljava/lang/Throwable;
    throw p0

    .line 72
    .restart local p0    # "e":Ljava/lang/Throwable;
    :cond_2
    instance-of v0, p0, Ljava/nio/channels/ClosedByInterruptException;

    if-eqz v0, :cond_3

    .line 73
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/InterruptedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/InterruptedException;

    throw v0

    .line 76
    :cond_3
    instance-of v0, p0, Ljava/io/InterruptedIOException;

    if-eqz v0, :cond_0

    .line 77
    instance-of v0, p0, Lorg/apache/http/conn/ConnectTimeoutException;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/InterruptedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/InterruptedException;

    throw v0
.end method

.method public static isInterrupted(Ljava/lang/Throwable;)Ljava/lang/InterruptedException;
    .locals 2
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x0

    .line 42
    if-nez p0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-object v0

    .line 46
    :cond_1
    instance-of v1, p0, Ljava/lang/InterruptedException;

    if-eqz v1, :cond_2

    .line 47
    check-cast p0, Ljava/lang/InterruptedException;

    .end local p0    # "e":Ljava/lang/Throwable;
    move-object v0, p0

    goto :goto_0

    .line 50
    .restart local p0    # "e":Ljava/lang/Throwable;
    :cond_2
    instance-of v1, p0, Ljava/nio/channels/ClosedByInterruptException;

    if-eqz v1, :cond_3

    .line 51
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/InterruptedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/InterruptedException;

    goto :goto_0

    .line 54
    :cond_3
    instance-of v1, p0, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_0

    .line 55
    instance-of v1, p0, Lorg/apache/http/conn/ConnectTimeoutException;

    if-nez v1, :cond_0

    instance-of v1, p0, Ljava/net/SocketTimeoutException;

    if-nez v1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/InterruptedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/InterruptedException;

    goto :goto_0
.end method

.method public static isNetworkException(Ljava/lang/Throwable;)Z
    .locals 2
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x0

    .line 23
    if-nez p0, :cond_1

    .line 31
    :cond_0
    :goto_0
    return v0

    .line 27
    :cond_1
    instance-of v1, p0, Lcn/kuaipan/android/exception/IKscError;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 28
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 31
    :cond_2
    instance-of v1, p0, Ljava/net/SocketException;

    if-nez v1, :cond_3

    instance-of v1, p0, Lorg/apache/http/conn/ConnectTimeoutException;

    if-nez v1, :cond_3

    instance-of v1, p0, Ljava/nio/channels/ConnectionPendingException;

    if-nez v1, :cond_3

    instance-of v1, p0, Ljava/net/SocketTimeoutException;

    if-nez v1, :cond_3

    instance-of v1, p0, Lorg/apache/http/ConnectionClosedException;

    if-nez v1, :cond_3

    instance-of v1, p0, Ljava/net/HttpRetryException;

    if-nez v1, :cond_3

    instance-of v1, p0, Lorg/apache/http/NoHttpResponseException;

    if-nez v1, :cond_3

    instance-of v1, p0, Ljava/net/ProtocolException;

    if-nez v1, :cond_3

    instance-of v1, p0, Lorg/apache/http/client/ClientProtocolException;

    if-nez v1, :cond_3

    instance-of v1, p0, Ljavax/net/ssl/SSLException;

    if-nez v1, :cond_3

    instance-of v1, p0, Ljava/net/UnknownHostException;

    if-nez v1, :cond_3

    instance-of v1, p0, Ljava/net/UnknownServiceException;

    if-nez v1, :cond_3

    instance-of v1, p0, Lorg/apache/http/HttpException;

    if-nez v1, :cond_3

    instance-of v1, p0, Lcn/kuaipan/android/exception/NetworkException;

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static throwError(Lcn/kuaipan/android/http/KscHttpResponse;)V
    .locals 2
    .param p0, "response"    # Lcn/kuaipan/android/http/KscHttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/exception/KscException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 85
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 86
    .local v0, "t":Ljava/lang/Throwable;
    :goto_0
    if-eqz v0, :cond_3

    .line 87
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    .line 88
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "t":Ljava/lang/Throwable;
    throw v0

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcn/kuaipan/android/http/KscHttpResponse;->getError()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 90
    .restart local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    if-nez p0, :cond_2

    const-string v1, "No response."

    :goto_1
    invoke-static {v0, v1}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;)Lcn/kuaipan/android/exception/KscException;

    move-result-object v1

    throw v1

    .line 91
    :cond_2
    invoke-virtual {p0}, Lcn/kuaipan/android/http/KscHttpResponse;->dump()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 94
    :cond_3
    return-void
.end method
