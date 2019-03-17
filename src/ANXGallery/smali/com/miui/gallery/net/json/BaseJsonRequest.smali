.class public abstract Lcom/miui/gallery/net/json/BaseJsonRequest;
.super Lcom/miui/gallery/net/base/VolleyRequest;
.source "BaseJsonRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/miui/gallery/net/base/VolleyRequest",
        "<",
        "Lorg/json/JSONObject;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMethod:I

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "method"    # I
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 33
    .local p0, "this":Lcom/miui/gallery/net/json/BaseJsonRequest;, "Lcom/miui/gallery/net/json/BaseJsonRequest<TT;>;"
    invoke-direct {p0}, Lcom/miui/gallery/net/base/VolleyRequest;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/net/json/BaseJsonRequest;->mUrl:Ljava/lang/String;

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gallery/net/json/BaseJsonRequest;->mMethod:I

    .line 34
    iput p1, p0, Lcom/miui/gallery/net/json/BaseJsonRequest;->mMethod:I

    .line 35
    iput-object p2, p0, Lcom/miui/gallery/net/json/BaseJsonRequest;->mUrl:Ljava/lang/String;

    .line 36
    return-void
.end method

.method private appendUrlParams()Ljava/lang/String;
    .locals 4

    .prologue
    .line 108
    .local p0, "this":Lcom/miui/gallery/net/json/BaseJsonRequest;, "Lcom/miui/gallery/net/json/BaseJsonRequest<TT;>;"
    iget-object v1, p0, Lcom/miui/gallery/net/json/BaseJsonRequest;->mUrl:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/gallery/net/json/BaseJsonRequest;->mParams:Ljava/util/Map;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/gallery/net/json/BaseJsonRequest;->mParams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/gallery/net/json/BaseJsonRequest;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, "url":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/miui/gallery/net/json/BaseJsonRequest;->mUrl:Ljava/lang/String;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/miui/gallery/net/json/BaseJsonRequest;->mUrl:Ljava/lang/String;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/net/json/BaseJsonRequest;->mUrl:Ljava/lang/String;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/net/json/BaseJsonRequest;->mParams:Ljava/util/Map;

    const-string v2, "UTF-8"

    invoke-direct {p0, v1, v2}, Lcom/miui/gallery/net/json/BaseJsonRequest;->encodeParameters(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    .end local v0    # "url":Ljava/lang/StringBuilder;
    :goto_0
    return-object v1

    .line 116
    .restart local v0    # "url":Ljava/lang/StringBuilder;
    :cond_1
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/net/json/BaseJsonRequest;->mParams:Ljava/util/Map;

    const-string v3, "UTF-8"

    invoke-direct {p0, v2, v3}, Lcom/miui/gallery/net/json/BaseJsonRequest;->encodeParameters(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 119
    .end local v0    # "url":Ljava/lang/StringBuilder;
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/net/json/BaseJsonRequest;->mUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method private encodeParameters(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p2, "paramsEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "this":Lcom/miui/gallery/net/json/BaseJsonRequest;, "Lcom/miui/gallery/net/json/BaseJsonRequest<TT;>;"
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .local v0, "encodedParams":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 129
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const/16 v3, 0x26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 136
    .local v2, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Encoding not supported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 134
    .end local v2    # "uee":Ljava/io/UnsupportedEncodingException;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    return-object v3
.end method

.method protected static fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .param p0, "jsonStr"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private generateCacheKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "urlWithParam"    # Ljava/lang/String;

    .prologue
    .line 141
    .local p0, "this":Lcom/miui/gallery/net/json/BaseJsonRequest;, "Lcom/miui/gallery/net/json/BaseJsonRequest<TT;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/util/Encode;->SHA1Encode([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 148
    .end local p1    # "urlWithParam":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 144
    .restart local p1    # "urlWithParam":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected final createVolleyRequest(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 4
    .param p2, "errorListener"    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/miui/gallery/net/json/BaseJsonRequest;, "Lcom/miui/gallery/net/json/BaseJsonRequest<TT;>;"
    .local p1, "listener":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Lorg/json/JSONObject;>;"
    iget-object v1, p0, Lcom/miui/gallery/net/json/BaseJsonRequest;->mUrl:Ljava/lang/String;

    .line 66
    .local v1, "url":Ljava/lang/String;
    invoke-direct {p0}, Lcom/miui/gallery/net/json/BaseJsonRequest;->appendUrlParams()Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "urlWithParam":Ljava/lang/String;
    iget v3, p0, Lcom/miui/gallery/net/json/BaseJsonRequest;->mMethod:I

    if-nez v3, :cond_0

    .line 68
    move-object v1, v2

    .line 71
    :cond_0
    new-instance v0, Lcom/miui/gallery/net/json/JsonObjectRequest;

    iget v3, p0, Lcom/miui/gallery/net/json/BaseJsonRequest;->mMethod:I

    invoke-direct {v0, v3, v1, p1, p2}, Lcom/miui/gallery/net/json/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 72
    .local v0, "request":Lcom/miui/gallery/net/json/JsonObjectRequest;
    iget-object v3, p0, Lcom/miui/gallery/net/json/BaseJsonRequest;->mParams:Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 73
    iget-object v3, p0, Lcom/miui/gallery/net/json/BaseJsonRequest;->mParams:Ljava/util/Map;

    invoke-virtual {v0, v3}, Lcom/miui/gallery/net/json/JsonObjectRequest;->setParams(Ljava/util/Map;)V

    .line 75
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/net/json/BaseJsonRequest;->mHeaders:Ljava/util/Map;

    if-eqz v3, :cond_2

    .line 76
    iget-object v3, p0, Lcom/miui/gallery/net/json/BaseJsonRequest;->mHeaders:Ljava/util/Map;

    invoke-virtual {v0, v3}, Lcom/miui/gallery/net/json/JsonObjectRequest;->setHeaders(Ljava/util/Map;)V

    .line 78
    :cond_2
    invoke-direct {p0, v2}, Lcom/miui/gallery/net/json/BaseJsonRequest;->generateCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/gallery/net/json/JsonObjectRequest;->setCacheKey(Ljava/lang/String;)V

    .line 79
    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    .local p0, "this":Lcom/miui/gallery/net/json/BaseJsonRequest;, "Lcom/miui/gallery/net/json/BaseJsonRequest<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/net/json/BaseJsonRequest;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public onRequestError(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "errorCode"    # Lcom/miui/gallery/net/base/ErrorCode;
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "responseData"    # Ljava/lang/Object;

    .prologue
    .line 60
    .local p0, "this":Lcom/miui/gallery/net/json/BaseJsonRequest;, "Lcom/miui/gallery/net/json/BaseJsonRequest<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/gallery/net/json/BaseJsonRequest;->deliverError(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    return-void
.end method
