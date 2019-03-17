.class public abstract Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;
.super Ljava/lang/Object;
.source "MiCloudFileRequestor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    .local p0, "this":Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;, "Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/request/utils/Request;->init(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method private getHttpResopnse(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "isUsePost"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/exception/UnretriableException;,
            Lcom/xiaomi/opensdk/exception/RetriableException;,
            Lcom/xiaomi/opensdk/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;, "Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor<TT;>;"
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/32 v6, 0x493e0

    .line 219
    :try_start_0
    const-string v2, "MiCloudFileRequestor"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    const-string v2, "MiCloudFileRequestor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nparmas:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    if-eqz p3, :cond_2

    invoke-static {p1, p2}, Lcom/xiaomi/micloudsdk/request/utils/Request;->securePost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "resultString":Ljava/lang/String;
    :goto_0
    const-string v2, "MiCloudFileRequestor"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    const-string v2, "MiCloudFileRequestor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resultString:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_1
    return-object v1

    .line 223
    .end local v1    # "resultString":Ljava/lang/String;
    :cond_2
    invoke-static {p1, p2}, Lcom/xiaomi/micloudsdk/request/utils/Request;->secureGet(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/micloudsdk/exception/CloudServerException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v1

    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, "MiCloudFileRequestor"

    const-string v3, "requestServer error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    new-instance v2, Lcom/xiaomi/opensdk/exception/UnretriableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestServer error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 231
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 232
    .local v0, "e":Ljavax/crypto/IllegalBlockSizeException;
    const-string v2, "MiCloudFileRequestor"

    const-string v3, "requestServer error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    new-instance v2, Lcom/xiaomi/opensdk/exception/UnretriableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestServer error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 234
    .end local v0    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_2
    move-exception v0

    .line 235
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    const-string v2, "MiCloudFileRequestor"

    const-string v3, "requestServer error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    new-instance v2, Lcom/xiaomi/opensdk/exception/UnretriableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestServer error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 237
    .end local v0    # "e":Ljavax/crypto/BadPaddingException;
    :catch_3
    move-exception v0

    .line 238
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    const-string v2, "MiCloudFileRequestor"

    const-string v3, "requestServer error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    new-instance v2, Lcom/xiaomi/opensdk/exception/UnretriableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestServer error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 240
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_4
    move-exception v0

    .line 241
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "MiCloudFileRequestor"

    const-string v3, "requestServer error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    invoke-static {v0}, Lcom/xiaomi/opensdk/exception/RetriableException;->isRetriableException(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 243
    new-instance v2, Lcom/xiaomi/opensdk/exception/RetriableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v6, v7}, Lcom/xiaomi/opensdk/exception/RetriableException;-><init>(Ljava/lang/String;J)V

    throw v2

    .line 245
    :cond_3
    new-instance v2, Lcom/xiaomi/opensdk/exception/UnretriableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestServer error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 246
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 247
    .local v0, "e":Lcom/xiaomi/micloudsdk/exception/CloudServerException;
    invoke-virtual {v0}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->getStatusCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 256
    new-instance v2, Lcom/xiaomi/opensdk/exception/UnretriableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestServer error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 250
    :sswitch_0
    new-instance v2, Lcom/xiaomi/opensdk/exception/AuthenticationException;

    invoke-direct {v2}, Lcom/xiaomi/opensdk/exception/AuthenticationException;-><init>()V

    throw v2

    .line 252
    :sswitch_1
    new-instance v2, Lcom/xiaomi/opensdk/exception/RetriableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v6, v7}, Lcom/xiaomi/opensdk/exception/RetriableException;-><init>(Ljava/lang/String;J)V

    throw v2

    .line 254
    :sswitch_2
    new-instance v2, Lcom/xiaomi/opensdk/exception/RetriableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->retryTime:I

    int-to-long v4, v4

    invoke-direct {v2, v3, v4, v5}, Lcom/xiaomi/opensdk/exception/RetriableException;-><init>(Ljava/lang/String;J)V

    throw v2

    .line 247
    :sswitch_data_0
    .sparse-switch
        0x191 -> :sswitch_0
        0x193 -> :sswitch_0
        0x1f4 -> :sswitch_1
        0x1f7 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public commitUpload(Ljava/lang/Object;Lcom/xiaomi/opensdk/file/model/CommitParameter;)Lorg/json/JSONObject;
    .locals 8
    .param p2, "commitParameter"    # Lcom/xiaomi/opensdk/file/model/CommitParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/xiaomi/opensdk/file/model/CommitParameter;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/exception/RetriableException;,
            Lcom/xiaomi/opensdk/exception/UnretriableException;,
            Lcom/xiaomi/opensdk/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;, "Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor<TT;>;"
    .local p1, "remoteInfo":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;->getCommitUploadURL(Ljava/lang/Object;Lcom/xiaomi/opensdk/file/model/CommitParameter;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "commitUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 109
    new-instance v5, Lcom/xiaomi/opensdk/exception/UnretriableException;

    const-string v6, "commitUploadUrl is null or empty."

    invoke-direct {v5, v6}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 112
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;->getCommitUploadParams(Ljava/lang/Object;Lcom/xiaomi/opensdk/file/model/CommitParameter;)Ljava/util/Map;

    move-result-object v2

    .line 113
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v2, :cond_1

    .line 114
    new-instance v5, Lcom/xiaomi/opensdk/exception/UnretriableException;

    const-string v6, "getCommitUploadParams() can\'t return null."

    invoke-direct {v5, v6}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 125
    .local v1, "e":Lorg/json/JSONException;
    new-instance v5, Lcom/xiaomi/opensdk/exception/UnretriableException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error in getCommitUploadParams():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 116
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const/4 v5, 0x1

    :try_start_1
    invoke-direct {p0, v0, v2, v5}, Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;->getHttpResopnse(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 119
    .local v3, "responseString":Ljava/lang/String;
    :try_start_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 120
    .local v4, "result":Lorg/json/JSONObject;
    return-object v4

    .line 121
    .end local v4    # "result":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    .line 122
    .restart local v1    # "e":Lorg/json/JSONException;
    :try_start_3
    new-instance v5, Lcom/xiaomi/opensdk/exception/UnretriableException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Http 200 \u8fd4\u56de\u7684\u4e0d\u662fJSON\u683c\u5f0f:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method protected abstract getCommitUploadParams(Ljava/lang/Object;Lcom/xiaomi/opensdk/file/model/CommitParameter;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/xiaomi/opensdk/file/model/CommitParameter;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method protected abstract getCommitUploadURL(Ljava/lang/Object;Lcom/xiaomi/opensdk/file/model/CommitParameter;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/xiaomi/opensdk/file/model/CommitParameter;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method protected abstract getRequestDownloadParams(Ljava/lang/Object;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method protected abstract getRequestDownloadURL(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method protected abstract getRequestUploadParams(Ljava/lang/Object;Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method protected abstract getRequestUploadURL(Ljava/lang/Object;Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method protected abstract handleCommitUploadResult(Ljava/lang/Object;Lorg/json/JSONObject;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/exception/UnretriableException;,
            Lcom/xiaomi/opensdk/exception/RetriableException;,
            Lcom/xiaomi/opensdk/exception/AuthenticationException;
        }
    .end annotation
.end method

.method protected abstract handleRequestDownloadResultJson(Ljava/lang/Object;Lorg/json/JSONObject;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/json/JSONObject;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/exception/UnretriableException;,
            Lcom/xiaomi/opensdk/exception/RetriableException;,
            Lcom/xiaomi/opensdk/exception/AuthenticationException;
        }
    .end annotation
.end method

.method protected abstract handleRequestUploadResultJson(Ljava/lang/Object;Lorg/json/JSONObject;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/exception/UnretriableException;,
            Lcom/xiaomi/opensdk/exception/RetriableException;,
            Lcom/xiaomi/opensdk/exception/AuthenticationException;
        }
    .end annotation
.end method

.method public requestDownload(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/exception/RetriableException;,
            Lcom/xiaomi/opensdk/exception/UnretriableException;,
            Lcom/xiaomi/opensdk/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "this":Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;, "Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor<TT;>;"
    .local p1, "remoteInfo":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;->getRequestDownloadURL(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, "requestDownloadUrl":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 164
    new-instance v5, Lcom/xiaomi/opensdk/exception/UnretriableException;

    const-string v6, "requestDownloadUrl is null or empty."

    invoke-direct {v5, v6}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 168
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;->getRequestDownloadParams(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 169
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 170
    new-instance v5, Lcom/xiaomi/opensdk/exception/UnretriableException;

    const-string v6, "getRequestDownloadParams() can\'t return null."

    invoke-direct {v5, v6}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Lorg/json/JSONException;
    new-instance v5, Lcom/xiaomi/opensdk/exception/UnretriableException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error in getRequestDownloadParams():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 172
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const/4 v5, 0x0

    :try_start_1
    invoke-direct {p0, v2, v1, v5}, Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;->getHttpResopnse(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 175
    .local v3, "responseString":Ljava/lang/String;
    :try_start_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 176
    .local v4, "result":Lorg/json/JSONObject;
    return-object v4

    .line 177
    .end local v4    # "result":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 178
    .restart local v0    # "e":Lorg/json/JSONException;
    :try_start_3
    new-instance v5, Lcom/xiaomi/opensdk/exception/UnretriableException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Http 200 \u8fd4\u56de\u7684\u4e0d\u662fJSON\u683c\u5f0f:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public requestUpload(Ljava/lang/Object;Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;)Lorg/json/JSONObject;
    .locals 8
    .param p2, "requestUploadParameter"    # Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/exception/RetriableException;,
            Lcom/xiaomi/opensdk/exception/UnretriableException;,
            Lcom/xiaomi/opensdk/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;, "Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor<TT;>;"
    .local p1, "remoteInfo":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;->getRequestUploadURL(Ljava/lang/Object;Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;)Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "requestUploadUrl":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 50
    new-instance v5, Lcom/xiaomi/opensdk/exception/UnretriableException;

    const-string v6, "requestUploadUrl is null or empty."

    invoke-direct {v5, v6}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 54
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;->getRequestUploadParams(Ljava/lang/Object;Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;)Ljava/util/Map;

    move-result-object v1

    .line 55
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 56
    new-instance v5, Lcom/xiaomi/opensdk/exception/UnretriableException;

    const-string v6, "getRequestUploadParams() can\'t return null."

    invoke-direct {v5, v6}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Lorg/json/JSONException;
    new-instance v5, Lcom/xiaomi/opensdk/exception/UnretriableException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error in getRequestUploadParams():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 58
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const/4 v5, 0x1

    :try_start_1
    invoke-direct {p0, v2, v1, v5}, Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;->getHttpResopnse(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 61
    .local v3, "responseString":Ljava/lang/String;
    :try_start_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 62
    .local v4, "result":Lorg/json/JSONObject;
    return-object v4

    .line 63
    .end local v4    # "result":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 64
    .restart local v0    # "e":Lorg/json/JSONException;
    :try_start_3
    new-instance v5, Lcom/xiaomi/opensdk/exception/UnretriableException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Http 200 \u8fd4\u56de\u7684\u4e0d\u662fJSON\u683c\u5f0f:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
.end method
