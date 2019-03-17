.class public Lcn/kuaipan/android/http/KscHttpRequest;
.super Ljava/lang/Object;
.source "KscHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;
    }
.end annotation


# instance fields
.field private final mDecoder:Lcn/kuaipan/android/http/IKscDecoder;

.field private final mListener:Lcn/kuaipan/android/http/IKscTransferListener;

.field private final mMethod:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

.field private mPostEntity:Lorg/apache/http/entity/AbstractHttpEntity;

.field private final mPostForm:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

.field private mTryGzip:Z

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    check-cast v0, Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcn/kuaipan/android/http/KscHttpRequest;-><init>(Landroid/net/Uri;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, v0, p1, v0, v0}, Lcn/kuaipan/android/http/KscHttpRequest;-><init>(Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Landroid/net/Uri;Lcn/kuaipan/android/http/IKscDecoder;Lcn/kuaipan/android/http/IKscTransferListener;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Landroid/net/Uri;Lcn/kuaipan/android/http/IKscDecoder;Lcn/kuaipan/android/http/IKscTransferListener;)V
    .locals 6
    .param p1, "method"    # Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "decoder"    # Lcn/kuaipan/android/http/IKscDecoder;
    .param p4, "listener"    # Lcn/kuaipan/android/http/IKscTransferListener;

    .prologue
    .line 86
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/kuaipan/android/http/KscHttpRequest;-><init>(Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Landroid/net/Uri;Lorg/apache/http/entity/AbstractHttpEntity;Lcn/kuaipan/android/http/IKscDecoder;Lcn/kuaipan/android/http/IKscTransferListener;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Landroid/net/Uri;Lorg/apache/http/entity/AbstractHttpEntity;Lcn/kuaipan/android/http/IKscDecoder;Lcn/kuaipan/android/http/IKscTransferListener;)V
    .locals 1
    .param p1, "method"    # Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "postEntity"    # Lorg/apache/http/entity/AbstractHttpEntity;
    .param p4, "decoder"    # Lcn/kuaipan/android/http/IKscDecoder;
    .param p5, "listener"    # Lcn/kuaipan/android/http/IKscTransferListener;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->mPostForm:Ljava/util/ArrayList;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->mTryGzip:Z

    .line 91
    iput-object p1, p0, Lcn/kuaipan/android/http/KscHttpRequest;->mMethod:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    .line 92
    iput-object p2, p0, Lcn/kuaipan/android/http/KscHttpRequest;->mUri:Landroid/net/Uri;

    .line 93
    iput-object p3, p0, Lcn/kuaipan/android/http/KscHttpRequest;->mPostEntity:Lorg/apache/http/entity/AbstractHttpEntity;

    .line 94
    iput-object p4, p0, Lcn/kuaipan/android/http/KscHttpRequest;->mDecoder:Lcn/kuaipan/android/http/IKscDecoder;

    .line 95
    iput-object p5, p0, Lcn/kuaipan/android/http/KscHttpRequest;->mListener:Lcn/kuaipan/android/http/IKscTransferListener;

    .line 96
    return-void
.end method

.method public constructor <init>(Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Ljava/lang/String;Lcn/kuaipan/android/http/IKscDecoder;Lcn/kuaipan/android/http/IKscTransferListener;)V
    .locals 6
    .param p1, "method"    # Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;
    .param p2, "uriString"    # Ljava/lang/String;
    .param p3, "decoder"    # Lcn/kuaipan/android/http/IKscDecoder;
    .param p4, "listener"    # Lcn/kuaipan/android/http/IKscTransferListener;

    .prologue
    .line 81
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/kuaipan/android/http/KscHttpRequest;-><init>(Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Landroid/net/Uri;Lorg/apache/http/entity/AbstractHttpEntity;Lcn/kuaipan/android/http/IKscDecoder;Lcn/kuaipan/android/http/IKscTransferListener;)V

    .line 82
    return-void
.end method

.method private checkRequest()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "HttpRequest has been created. All input can\'t be changed."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    return-void
.end method

.method private createHttpRequest()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 7

    .prologue
    .line 318
    iget-object v4, p0, Lcn/kuaipan/android/http/KscHttpRequest;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v4}, Lcn/kuaipan/android/http/KscHttpRequest;->isValidUri(Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 319
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Request uri is not valid. uri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcn/kuaipan/android/http/KscHttpRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 322
    :cond_0
    iget-object v4, p0, Lcn/kuaipan/android/http/KscHttpRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 324
    .local v3, "uri":Ljava/lang/String;
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->mMethod:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    .line 325
    .local v0, "method":Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;
    if-nez v0, :cond_1

    .line 326
    iget-object v4, p0, Lcn/kuaipan/android/http/KscHttpRequest;->mPostEntity:Lorg/apache/http/entity/AbstractHttpEntity;

    if-nez v4, :cond_4

    iget-object v4, p0, Lcn/kuaipan/android/http/KscHttpRequest;->mPostForm:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v0, Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;->GET:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    .line 330
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 331
    .local v2, "result":Lorg/apache/http/client/methods/HttpUriRequest;
    sget-object v4, Lcn/kuaipan/android/http/KscHttpRequest$1;->$SwitchMap$cn$kuaipan$android$http$KscHttpRequest$HttpMethod:[I

    invoke-virtual {v0}, Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 349
    :cond_2
    :goto_1
    iget-boolean v4, p0, Lcn/kuaipan/android/http/KscHttpRequest;->mTryGzip:Z

    if-eqz v4, :cond_3

    .line 350
    const-string v4, "Accept-Encoding"

    const-string v5, "gzip"

    invoke-interface {v2, v4, v5}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :cond_3
    iput-object v2, p0, Lcn/kuaipan/android/http/KscHttpRequest;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 353
    return-object v2

    .line 326
    .end local v2    # "result":Lorg/apache/http/client/methods/HttpUriRequest;
    :cond_4
    sget-object v0, Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;->POST:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    goto :goto_0

    .line 333
    .restart local v2    # "result":Lorg/apache/http/client/methods/HttpUriRequest;
    :pswitch_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    .end local v2    # "result":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 334
    .restart local v2    # "result":Lorg/apache/http/client/methods/HttpUriRequest;
    iget-object v4, p0, Lcn/kuaipan/android/http/KscHttpRequest;->mPostEntity:Lorg/apache/http/entity/AbstractHttpEntity;

    if-nez v4, :cond_5

    iget-object v4, p0, Lcn/kuaipan/android/http/KscHttpRequest;->mPostForm:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 335
    :cond_5
    const-string v4, "KscHttpRequest"

    const-string v5, "Post data is not empty, but method is GET. All post data is lost."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 340
    :pswitch_1
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 341
    .local v1, "post":Lorg/apache/http/client/methods/HttpPost;
    iget-object v4, p0, Lcn/kuaipan/android/http/KscHttpRequest;->mPostForm:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 342
    invoke-direct {p0}, Lcn/kuaipan/android/http/KscHttpRequest;->makeFormEntity()Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v4

    iput-object v4, p0, Lcn/kuaipan/android/http/KscHttpRequest;->mPostEntity:Lorg/apache/http/entity/AbstractHttpEntity;

    .line 344
    :cond_6
    iget-object v4, p0, Lcn/kuaipan/android/http/KscHttpRequest;->mPostEntity:Lorg/apache/http/entity/AbstractHttpEntity;

    invoke-virtual {v1, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 345
    move-object v2, v1

    goto :goto_1

    .line 331
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getMergedPostValue(Lorg/apache/http/entity/AbstractHttpEntity;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "entity"    # Lorg/apache/http/entity/AbstractHttpEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/entity/AbstractHttpEntity;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    .local p1, "postForm":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v2, "pairs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    if-eqz p0, :cond_0

    .line 285
    :try_start_0
    invoke-static {p0}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Lorg/apache/http/HttpEntity;)Ljava/util/List;

    move-result-object v1

    .line 286
    .local v1, "oldPairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    .end local v1    # "oldPairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_0
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 295
    return-object v2

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "KscHttpRequest"

    const-string v4, "Failed parse an user entity."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 289
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Failed parse an user entity. The user entity should be parseable by URLEncodedUtils.parse(HttpEntity)"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static isFormEntity(Lorg/apache/http/entity/AbstractHttpEntity;)Z
    .locals 1
    .param p0, "entity"    # Lorg/apache/http/entity/AbstractHttpEntity;

    .prologue
    .line 410
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcn/kuaipan/android/http/multipart/MultipartEntity;

    if-nez v0, :cond_0

    .line 411
    invoke-static {p0}, Lorg/apache/http/client/utils/URLEncodedUtils;->isEncoded(Lorg/apache/http/HttpEntity;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidUri(Landroid/net/Uri;)Z
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 397
    if-nez p1, :cond_1

    .line 402
    :cond_0
    :goto_0
    return v1

    .line 401
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, "scheme":Ljava/lang/String;
    const-string v2, "http"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "https"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private makeFormEntity()Lorg/apache/http/entity/AbstractHttpEntity;
    .locals 10

    .prologue
    .line 357
    iget-object v7, p0, Lcn/kuaipan/android/http/KscHttpRequest;->mPostEntity:Lorg/apache/http/entity/AbstractHttpEntity;

    .line 358
    .local v7, "srcEntity":Lorg/apache/http/entity/AbstractHttpEntity;
    iget-object v5, p0, Lcn/kuaipan/android/http/KscHttpRequest;->mPostForm:Ljava/util/ArrayList;

    .line 359
    .local v5, "postForm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    iget-object v8, p0, Lcn/kuaipan/android/http/KscHttpRequest;->mPostForm:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 360
    iget-object v6, p0, Lcn/kuaipan/android/http/KscHttpRequest;->mPostEntity:Lorg/apache/http/entity/AbstractHttpEntity;

    .line 393
    :goto_0
    return-object v6

    .line 363
    :cond_0
    if-eqz v7, :cond_4

    instance-of v8, v7, Lcn/kuaipan/android/http/multipart/MultipartEntity;

    if-eqz v8, :cond_4

    const/4 v2, 0x1

    .line 364
    .local v2, "multipart":Z
    :goto_1
    if-nez v2, :cond_3

    .line 365
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/NameValuePair;

    .line 366
    .local v3, "pair":Lorg/apache/http/NameValuePair;
    instance-of v9, v3, Lcn/kuaipan/android/http/multipart/FileValuePair;

    if-nez v9, :cond_2

    instance-of v9, v3, Lcn/kuaipan/android/http/multipart/ByteArrayValuePair;

    if-eqz v9, :cond_1

    .line 367
    :cond_2
    const/4 v2, 0x1

    .line 374
    .end local v3    # "pair":Lorg/apache/http/NameValuePair;
    :cond_3
    if-eqz v2, :cond_6

    .line 376
    if-eqz v7, :cond_5

    instance-of v8, v7, Lcn/kuaipan/android/http/multipart/MultipartEntity;

    if-eqz v8, :cond_5

    move-object v1, v7

    .line 377
    check-cast v1, Lcn/kuaipan/android/http/multipart/MultipartEntity;

    .line 378
    .local v1, "entity":Lcn/kuaipan/android/http/multipart/MultipartEntity;
    invoke-static {v5}, Lcn/kuaipan/android/http/KscHttpRequest;->toPartArray(Ljava/util/List;)[Lcn/kuaipan/android/http/multipart/Part;

    move-result-object v4

    .line 379
    .local v4, "parts":[Lcn/kuaipan/android/http/multipart/Part;
    invoke-virtual {v1, v4}, Lcn/kuaipan/android/http/multipart/MultipartEntity;->appendPart([Lcn/kuaipan/android/http/multipart/Part;)V

    .line 384
    :goto_2
    move-object v6, v1

    .line 385
    .local v6, "result":Lorg/apache/http/entity/AbstractHttpEntity;
    goto :goto_0

    .line 363
    .end local v1    # "entity":Lcn/kuaipan/android/http/multipart/MultipartEntity;
    .end local v2    # "multipart":Z
    .end local v4    # "parts":[Lcn/kuaipan/android/http/multipart/Part;
    .end local v6    # "result":Lorg/apache/http/entity/AbstractHttpEntity;
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 381
    .restart local v2    # "multipart":Z
    :cond_5
    invoke-static {v7, v5}, Lcn/kuaipan/android/http/KscHttpRequest;->getMergedPostValue(Lorg/apache/http/entity/AbstractHttpEntity;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v8}, Lcn/kuaipan/android/http/KscHttpRequest;->toPartArray(Ljava/util/List;)[Lcn/kuaipan/android/http/multipart/Part;

    move-result-object v4

    .line 382
    .restart local v4    # "parts":[Lcn/kuaipan/android/http/multipart/Part;
    new-instance v1, Lcn/kuaipan/android/http/multipart/MultipartEntity;

    invoke-direct {v1, v4}, Lcn/kuaipan/android/http/multipart/MultipartEntity;-><init>([Lcn/kuaipan/android/http/multipart/Part;)V

    .restart local v1    # "entity":Lcn/kuaipan/android/http/multipart/MultipartEntity;
    goto :goto_2

    .line 387
    .end local v1    # "entity":Lcn/kuaipan/android/http/multipart/MultipartEntity;
    .end local v4    # "parts":[Lcn/kuaipan/android/http/multipart/Part;
    :cond_6
    :try_start_0
    new-instance v6, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    iget-object v8, p0, Lcn/kuaipan/android/http/KscHttpRequest;->mPostForm:Ljava/util/ArrayList;

    const-string v9, "UTF-8"

    invoke-direct {v6, v8, v9}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v6    # "result":Lorg/apache/http/entity/AbstractHttpEntity;
    goto :goto_0

    .line 388
    .end local v6    # "result":Lorg/apache/http/entity/AbstractHttpEntity;
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v8, "KscHttpRequest"

    const-string v9, "JVM not support UTF_8?"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 390
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "JVM not support UTF_8?"

    invoke-direct {v8, v9, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
.end method

.method private static toPartArray(Ljava/util/List;)[Lcn/kuaipan/android/http/multipart/Part;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)[",
            "Lcn/kuaipan/android/http/multipart/Part;"
        }
    .end annotation

    .prologue
    .line 415
    .local p0, "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 416
    :cond_0
    const/4 v4, 0x0

    .line 437
    :cond_1
    return-object v4

    .line 419
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 420
    .local v5, "size":I
    new-array v4, v5, [Lcn/kuaipan/android/http/multipart/Part;

    .line 421
    .local v4, "parts":[Lcn/kuaipan/android/http/multipart/Part;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 422
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/NameValuePair;

    .line 423
    .local v3, "pair":Lorg/apache/http/NameValuePair;
    instance-of v6, v3, Lcn/kuaipan/android/http/multipart/FileValuePair;

    if-eqz v6, :cond_3

    .line 425
    :try_start_0
    new-instance v7, Lcn/kuaipan/android/http/multipart/FilePart;

    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v0, v3

    check-cast v0, Lcn/kuaipan/android/http/multipart/FileValuePair;

    move-object v6, v0

    invoke-virtual {v6}, Lcn/kuaipan/android/http/multipart/FileValuePair;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-direct {v7, v8, v6}, Lcn/kuaipan/android/http/multipart/FilePart;-><init>(Ljava/lang/String;Ljava/io/File;)V

    aput-object v7, v4, v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    .end local v3    # "pair":Lorg/apache/http/NameValuePair;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 426
    .restart local v3    # "pair":Lorg/apache/http/NameValuePair;
    :catch_0
    move-exception v1

    .line 427
    .local v1, "e":Ljava/io/FileNotFoundException;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The file to be sent should be exist. file="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    check-cast v3, Lcn/kuaipan/android/http/multipart/FileValuePair;

    .line 428
    .end local v3    # "pair":Lorg/apache/http/NameValuePair;
    invoke-virtual {v3}, Lcn/kuaipan/android/http/multipart/FileValuePair;->getFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 430
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "pair":Lorg/apache/http/NameValuePair;
    :cond_3
    instance-of v6, v3, Lcn/kuaipan/android/http/multipart/ByteArrayValuePair;

    if-eqz v6, :cond_4

    .line 431
    new-instance v6, Lcn/kuaipan/android/http/multipart/FilePart;

    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v8

    check-cast v3, Lcn/kuaipan/android/http/multipart/ByteArrayValuePair;

    .line 432
    .end local v3    # "pair":Lorg/apache/http/NameValuePair;
    invoke-virtual {v3}, Lcn/kuaipan/android/http/multipart/ByteArrayValuePair;->getData()[B

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcn/kuaipan/android/http/multipart/FilePart;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    aput-object v6, v4, v2

    goto :goto_1

    .line 434
    .restart local v3    # "pair":Lorg/apache/http/NameValuePair;
    :cond_4
    new-instance v6, Lcn/kuaipan/android/http/multipart/StringPart;

    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-direct {v6, v7, v8, v9}, Lcn/kuaipan/android/http/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v2

    goto :goto_1
.end method


# virtual methods
.method public getDecoder()Lcn/kuaipan/android/http/IKscDecoder;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->mDecoder:Lcn/kuaipan/android/http/IKscDecoder;

    return-object v0
.end method

.method public getListener()Lcn/kuaipan/android/http/IKscTransferListener;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->mListener:Lcn/kuaipan/android/http/IKscTransferListener;

    return-object v0
.end method

.method public getRequest()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    if-nez v0, :cond_0

    .line 312
    invoke-direct {p0}, Lcn/kuaipan/android/http/KscHttpRequest;->createHttpRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    iput-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 314
    :cond_0
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    return-object v0
.end method

.method public setPostEntity(Lorg/apache/http/entity/AbstractHttpEntity;)V
    .locals 1
    .param p1, "entity"    # Lorg/apache/http/entity/AbstractHttpEntity;

    .prologue
    .line 303
    invoke-direct {p0}, Lcn/kuaipan/android/http/KscHttpRequest;->checkRequest()V

    .line 304
    iput-object p1, p0, Lcn/kuaipan/android/http/KscHttpRequest;->mPostEntity:Lorg/apache/http/entity/AbstractHttpEntity;

    .line 305
    invoke-static {p1}, Lcn/kuaipan/android/http/KscHttpRequest;->isFormEntity(Lorg/apache/http/entity/AbstractHttpEntity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcn/kuaipan/android/http/KscHttpRequest;->mPostForm:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 308
    :cond_0
    return-void
.end method
