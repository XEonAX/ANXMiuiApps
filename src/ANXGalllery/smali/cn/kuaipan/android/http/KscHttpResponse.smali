.class public Lcn/kuaipan/android/http/KscHttpResponse;
.super Ljava/lang/Object;
.source "KscHttpResponse.java"


# instance fields
.field private final mCache:Lcn/kuaipan/android/http/NetCacheManager;

.field private mError:Ljava/lang/Throwable;

.field private mMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/HttpMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mOrigRequest:Lorg/apache/http/client/methods/HttpUriRequest;

.field private mResponse:Lorg/apache/http/HttpResponse;


# direct methods
.method public constructor <init>(Lcn/kuaipan/android/http/NetCacheManager;)V
    .locals 0
    .param p1, "cache"    # Lcn/kuaipan/android/http/NetCacheManager;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcn/kuaipan/android/http/KscHttpResponse;->mCache:Lcn/kuaipan/android/http/NetCacheManager;

    .line 31
    return-void
.end method


# virtual methods
.method public dump()Ljava/lang/String;
    .locals 10

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 112
    .local v1, "i":I
    const/4 v3, 0x0

    .line 114
    .local v3, "j":I
    iget-object v7, p0, Lcn/kuaipan/android/http/KscHttpResponse;->mMessages:Ljava/util/List;

    if-eqz v7, :cond_2

    .line 115
    iget-object v7, p0, Lcn/kuaipan/android/http/KscHttpResponse;->mMessages:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/http/HttpMessage;

    .line 116
    .local v5, "message":Lorg/apache/http/HttpMessage;
    instance-of v8, v5, Lorg/apache/http/HttpRequest;

    if-eqz v8, :cond_1

    .line 117
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[Request "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    check-cast v5, Lorg/apache/http/HttpRequest;

    .end local v5    # "message":Lorg/apache/http/HttpMessage;
    invoke-static {v5}, Lcn/kuaipan/android/utils/HttpUtils;->toString(Lorg/apache/http/HttpRequest;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 119
    .restart local v5    # "message":Lorg/apache/http/HttpMessage;
    :cond_1
    instance-of v8, v5, Lorg/apache/http/HttpResponse;

    if-eqz v8, :cond_0

    .line 120
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[Response "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .local v4, "j":I
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    check-cast v5, Lorg/apache/http/HttpResponse;

    .end local v5    # "message":Lorg/apache/http/HttpMessage;
    invoke-static {v5}, Lcn/kuaipan/android/utils/HttpUtils;->toString(Lorg/apache/http/HttpResponse;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_0

    .line 126
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-gtz v7, :cond_3

    .line 127
    const-string v7, "[Origin Request]\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget-object v7, p0, Lcn/kuaipan/android/http/KscHttpResponse;->mOrigRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-static {v7}, Lcn/kuaipan/android/utils/HttpUtils;->toString(Lorg/apache/http/HttpRequest;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    .line 131
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\n[Response "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget-object v7, p0, Lcn/kuaipan/android/http/KscHttpResponse;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-static {v7}, Lcn/kuaipan/android/utils/HttpUtils;->toString(Lorg/apache/http/HttpResponse;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    .line 134
    iget-object v7, p0, Lcn/kuaipan/android/http/KscHttpResponse;->mError:Ljava/lang/Throwable;

    if-eqz v7, :cond_4

    .line 135
    const-string v7, "\n[Error]\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-object v7, p0, Lcn/kuaipan/android/http/KscHttpResponse;->mError:Ljava/lang/Throwable;

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 140
    .local v6, "resurt":Ljava/lang/String;
    const-string v7, "password=.*&"

    const-string v8, "password=[secData]&"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 141
    return-object v6
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 69
    iget-object v6, p0, Lcn/kuaipan/android/http/KscHttpResponse;->mResponse:Lorg/apache/http/HttpResponse;

    if-nez v6, :cond_1

    move-object v1, v5

    .line 70
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    :goto_0
    if-nez v1, :cond_2

    move-object v3, v5

    .line 81
    :cond_0
    :goto_1
    return-object v3

    .line 69
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    :cond_1
    iget-object v6, p0, Lcn/kuaipan/android/http/KscHttpResponse;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    goto :goto_0

    .line 74
    .restart local v1    # "entity":Lorg/apache/http/HttpEntity;
    :cond_2
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 75
    .local v3, "result":Ljava/io/InputStream;
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v2

    .line 76
    .local v2, "header":Lorg/apache/http/Header;
    if-nez v2, :cond_3

    move-object v0, v5

    .line 77
    .local v0, "encoding":Ljava/lang/String;
    :goto_2
    if-eqz v0, :cond_0

    const-string v5, "gzip"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 78
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v3    # "result":Ljava/io/InputStream;
    .local v4, "result":Ljava/io/InputStream;
    move-object v3, v4

    .end local v4    # "result":Ljava/io/InputStream;
    .restart local v3    # "result":Ljava/io/InputStream;
    goto :goto_1

    .line 76
    .end local v0    # "encoding":Ljava/lang/String;
    :cond_3
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public getError()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpResponse;->mError:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getResponse()Lorg/apache/http/HttpResponse;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpResponse;->mResponse:Lorg/apache/http/HttpResponse;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 3

    .prologue
    .line 85
    const/4 v1, -0x1

    .line 86
    .local v1, "statusCode":I
    iget-object v2, p0, Lcn/kuaipan/android/http/KscHttpResponse;->mResponse:Lorg/apache/http/HttpResponse;

    if-eqz v2, :cond_0

    .line 87
    iget-object v2, p0, Lcn/kuaipan/android/http/KscHttpResponse;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    .line 88
    .local v0, "line":Lorg/apache/http/StatusLine;
    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 92
    .end local v0    # "line":Lorg/apache/http/StatusLine;
    :cond_0
    return v1
.end method

.method handleResponse(Lcn/kuaipan/android/http/KscHttpRequest;Lorg/apache/http/HttpResponse;Z)V
    .locals 3
    .param p1, "request"    # Lcn/kuaipan/android/http/KscHttpRequest;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;
    .param p3, "toRepeatable"    # Z

    .prologue
    .line 42
    invoke-virtual {p1}, Lcn/kuaipan/android/http/KscHttpRequest;->getRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    iput-object v2, p0, Lcn/kuaipan/android/http/KscHttpResponse;->mOrigRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 43
    iput-object p2, p0, Lcn/kuaipan/android/http/KscHttpResponse;->mResponse:Lorg/apache/http/HttpResponse;

    .line 45
    invoke-virtual {p1}, Lcn/kuaipan/android/http/KscHttpRequest;->getDecoder()Lcn/kuaipan/android/http/IKscDecoder;

    move-result-object v0

    .line 46
    .local v0, "decoder":Lcn/kuaipan/android/http/IKscDecoder;
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 47
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_0

    .line 48
    if-eqz p3, :cond_1

    .line 49
    iget-object v2, p0, Lcn/kuaipan/android/http/KscHttpResponse;->mCache:Lcn/kuaipan/android/http/NetCacheManager;

    invoke-static {v1, v0, v2}, Lcn/kuaipan/android/http/KscHttpEntity;->getRepeatableEntity(Lorg/apache/http/HttpEntity;Lcn/kuaipan/android/http/IKscDecoder;Lcn/kuaipan/android/http/NetCacheManager;)Lcn/kuaipan/android/http/KscHttpEntity;

    move-result-object v2

    invoke-interface {p2, v2}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    if-eqz v0, :cond_0

    .line 51
    new-instance v2, Lcn/kuaipan/android/http/KscHttpEntity;

    invoke-direct {v2, v1, v0}, Lcn/kuaipan/android/http/KscHttpEntity;-><init>(Lorg/apache/http/HttpEntity;Lcn/kuaipan/android/http/IKscDecoder;)V

    invoke-interface {p2, v2}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_0
.end method

.method public release()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 96
    iget-object v1, p0, Lcn/kuaipan/android/http/KscHttpResponse;->mResponse:Lorg/apache/http/HttpResponse;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/kuaipan/android/http/KscHttpResponse;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 98
    :try_start_0
    iget-object v1, p0, Lcn/kuaipan/android/http/KscHttpResponse;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    iput-object v3, p0, Lcn/kuaipan/android/http/KscHttpResponse;->mResponse:Lorg/apache/http/HttpResponse;

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    iput-object v3, p0, Lcn/kuaipan/android/http/KscHttpResponse;->mResponse:Lorg/apache/http/HttpResponse;

    throw v1

    .line 101
    :catch_1
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "KscHttpResponse"

    const-string v2, "Meet exception when release a KscHttpResponse."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    iput-object v3, p0, Lcn/kuaipan/android/http/KscHttpResponse;->mResponse:Lorg/apache/http/HttpResponse;

    goto :goto_0
.end method

.method setError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 57
    iput-object p1, p0, Lcn/kuaipan/android/http/KscHttpResponse;->mError:Ljava/lang/Throwable;

    .line 58
    return-void
.end method

.method setMessage(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/HttpMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/HttpMessage;>;"
    iput-object p1, p0, Lcn/kuaipan/android/http/KscHttpResponse;->mMessages:Ljava/util/List;

    .line 39
    return-void
.end method

.method setOrigRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 0
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;

    .prologue
    .line 34
    iput-object p1, p0, Lcn/kuaipan/android/http/KscHttpResponse;->mOrigRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 35
    return-void
.end method
