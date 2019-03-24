.class public Lmiui/net/http/HttpSession;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/net/http/HttpSession$CountingInputStream;,
        Lmiui/net/http/HttpSession$ProgressListener;
    }
.end annotation


# static fields
.field private static final Ds:I = 0x2710

.field private static final Dt:I = 0x2000

.field private static final Du:Ljava/lang/String; = "Accept-Encoding"

.field private static final Dv:Ljava/lang/String; = "gzip"

.field private static final TAG:Ljava/lang/String; = "HttpSession"


# instance fields
.field private DA:I

.field private final Dw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Dx:Ljava/lang/String;

.field private Dy:Lmiui/net/http/Cache;

.field private Dz:Lmiui/net/http/RetryStrategy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/net/http/HttpSession;->Dw:Ljava/util/Map;

    .line 98
    invoke-static {}, Lmiui/net/http/DiskBasedCache;->getDefault()Lmiui/net/http/DiskBasedCache;

    move-result-object v0

    iput-object v0, p0, Lmiui/net/http/HttpSession;->Dy:Lmiui/net/http/Cache;

    .line 99
    new-instance v0, Lmiui/net/http/BaseRetryStrategy;

    invoke-direct {v0}, Lmiui/net/http/BaseRetryStrategy;-><init>()V

    iput-object v0, p0, Lmiui/net/http/HttpSession;->Dz:Lmiui/net/http/RetryStrategy;

    .line 100
    return-void
.end method

.method private F(Ljava/lang/String;)Lmiui/net/http/Cache$Entry;
    .locals 1

    .line 430
    iget-object v0, p0, Lmiui/net/http/HttpSession;->Dy:Lmiui/net/http/Cache;

    .line 431
    if-nez v0, :cond_0

    .line 432
    const/4 p1, 0x0

    return-object p1

    .line 434
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    .line 435
    invoke-interface {v0, p1}, Lmiui/net/http/Cache;->get(Ljava/lang/String;)Lmiui/net/http/Cache$Entry;

    move-result-object p1

    return-object p1
.end method

.method private static a(Ljava/lang/String;Lmiui/net/http/HttpRequestParams;)Ljava/lang/String;
    .locals 1

    .line 494
    if-eqz p1, :cond_1

    .line 495
    invoke-virtual {p1}, Lmiui/net/http/HttpRequestParams;->getParamString()Ljava/lang/String;

    move-result-object p1

    .line 496
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 497
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 500
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 504
    :cond_1
    :goto_0
    return-object p0
.end method

.method private a(Ljava/lang/String;Lmiui/net/http/Cache$Entry;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/a;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 357
    nop

    .line 358
    nop

    .line 359
    nop

    .line 360
    new-instance v2, Ljava/net/URL;

    move-object/from16 v3, p1

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 361
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 362
    iget v3, v0, Lmiui/net/http/HttpSession;->DA:I

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 363
    iget v3, v0, Lmiui/net/http/HttpSession;->DA:I

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 364
    iget-object v3, v0, Lmiui/net/http/HttpSession;->Dw:Ljava/util/Map;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lmiui/net/http/HttpSession;->Dw:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 365
    iget-object v3, v0, Lmiui/net/http/HttpSession;->Dw:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 366
    iget-object v5, v0, Lmiui/net/http/HttpSession;->Dw:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    goto :goto_0

    .line 369
    :cond_0
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 370
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 371
    const/16 v3, 0x130

    if-ne v7, v3, :cond_1

    .line 372
    new-instance v0, Lmiui/net/http/a;

    const/16 v9, 0xc8

    iget-object v10, v1, Lmiui/net/http/Cache$Entry;->responseHeaders:Ljava/util/Map;

    iget-object v11, v1, Lmiui/net/http/Cache$Entry;->data:Ljava/io/InputStream;

    iget-wide v12, v1, Lmiui/net/http/Cache$Entry;->length:J

    iget-object v14, v1, Lmiui/net/http/Cache$Entry;->contentType:Ljava/lang/String;

    iget-object v15, v1, Lmiui/net/http/Cache$Entry;->contentEncoding:Ljava/lang/String;

    move-object v8, v0

    invoke-direct/range {v8 .. v15}, Lmiui/net/http/a;-><init>(ILjava/util/Map;Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 374
    :cond_1
    const/16 v1, 0xc8

    if-lt v7, v1, :cond_5

    const/16 v1, 0x12b

    if-gt v7, v1, :cond_5

    .line 377
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    int-to-long v3, v1

    .line 378
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 379
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v5

    .line 380
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 381
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Lmiui/net/http/HttpSession;->c(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v14

    .line 382
    const-string v6, "content-range"

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 383
    new-instance v6, Lmiui/net/http/HttpSession$CountingInputStream;

    move-object v8, v6

    move-wide v10, v3

    move-object/from16 v13, p3

    invoke-direct/range {v8 .. v13}, Lmiui/net/http/HttpSession$CountingInputStream;-><init>(Ljava/io/InputStream;JLjava/lang/String;Lmiui/net/http/HttpSession$ProgressListener;)V

    .line 384
    if-eqz v1, :cond_2

    .line 385
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 387
    :cond_2
    move-object v12, v1

    if-eqz v5, :cond_4

    .line 388
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 389
    const-string v5, "gzip"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 390
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v6}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 391
    const-string v5, ""

    .line 394
    move-object v9, v1

    move-object v13, v5

    goto :goto_2

    :cond_3
    move-object v13, v1

    goto :goto_1

    :cond_4
    move-object v13, v5

    :goto_1
    move-object v9, v6

    :goto_2
    new-instance v1, Lmiui/net/http/a;

    move-object v6, v1

    move-object v8, v14

    move-wide v10, v3

    invoke-direct/range {v6 .. v13}, Lmiui/net/http/a;-><init>(ILjava/util/Map;Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V

    .line 396
    :try_start_0
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    .line 397
    invoke-direct {v0, v2, v1}, Lmiui/net/http/HttpSession;->a(Ljava/lang/String;Lmiui/net/http/a;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    goto :goto_3

    .line 398
    :catch_0
    move-exception v0

    .line 399
    const-string v2, "HttpSession"

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    :goto_3
    move-object v0, v1

    :goto_4
    return-object v0

    .line 375
    :cond_5
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/lang/String;Lmiui/net/http/HttpRequestParams;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/a;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    invoke-static {p1, p2}, Lmiui/net/http/HttpSession;->a(Ljava/lang/String;Lmiui/net/http/HttpRequestParams;)Ljava/lang/String;

    move-result-object p2

    .line 317
    invoke-direct {p0, p2}, Lmiui/net/http/HttpSession;->F(Ljava/lang/String;)Lmiui/net/http/Cache$Entry;

    move-result-object p2

    .line 318
    if-eqz p2, :cond_1

    iget-wide v0, p2, Lmiui/net/http/Cache$Entry;->softTtl:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 319
    new-instance p1, Lmiui/net/http/a;

    const/16 v2, 0xc8

    iget-object v3, p2, Lmiui/net/http/Cache$Entry;->responseHeaders:Ljava/util/Map;

    iget-object v4, p2, Lmiui/net/http/Cache$Entry;->data:Ljava/io/InputStream;

    iget-wide v5, p2, Lmiui/net/http/Cache$Entry;->length:J

    iget-object v7, p2, Lmiui/net/http/Cache$Entry;->contentType:Ljava/lang/String;

    iget-object v8, p2, Lmiui/net/http/Cache$Entry;->contentEncoding:Ljava/lang/String;

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lmiui/net/http/a;-><init>(ILjava/util/Map;Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V

    .line 321
    if-eqz p3, :cond_0

    .line 322
    iget-wide v0, p2, Lmiui/net/http/Cache$Entry;->length:J

    iget-wide v2, p2, Lmiui/net/http/Cache$Entry;->length:J

    invoke-interface {p3, v0, v1, v2, v3}, Lmiui/net/http/HttpSession$ProgressListener;->onProgress(JJ)V

    .line 324
    :cond_0
    return-object p1

    .line 326
    :cond_1
    if-eqz p3, :cond_2

    .line 327
    const-wide/16 v0, -0x1

    invoke-interface {p3, v0, v1, v0, v1}, Lmiui/net/http/HttpSession$ProgressListener;->onProgress(JJ)V

    .line 330
    :cond_2
    if-eqz p2, :cond_3

    .line 331
    invoke-direct {p0, p2}, Lmiui/net/http/HttpSession;->a(Lmiui/net/http/Cache$Entry;)V

    .line 333
    :cond_3
    iget-object v0, p0, Lmiui/net/http/HttpSession;->Dw:Ljava/util/Map;

    const-string v1, "Accept-Encoding"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 334
    iget-object v0, p0, Lmiui/net/http/HttpSession;->Dw:Ljava/util/Map;

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    :cond_4
    iget-object v0, p0, Lmiui/net/http/HttpSession;->Dz:Lmiui/net/http/RetryStrategy;

    .line 340
    :goto_0
    if-eqz v0, :cond_5

    .line 341
    :try_start_0
    invoke-interface {v0}, Lmiui/net/http/RetryStrategy;->getCurrentTimeout()I

    move-result v1

    invoke-virtual {p0, v1}, Lmiui/net/http/HttpSession;->setTimeout(I)V

    goto :goto_1

    .line 348
    :catch_0
    move-exception v1

    goto :goto_2

    .line 344
    :catch_1
    move-exception v1

    goto :goto_3

    .line 343
    :cond_5
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lmiui/net/http/HttpSession;->a(Ljava/lang/String;Lmiui/net/http/Cache$Entry;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/a;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 348
    :goto_2
    nop

    .line 349
    if-eqz v0, :cond_6

    invoke-interface {v0, v1}, Lmiui/net/http/RetryStrategy;->retry(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_4

    .line 350
    :cond_6
    throw v1

    .line 344
    :goto_3
    nop

    .line 345
    if-eqz v0, :cond_7

    invoke-interface {v0, v1}, Lmiui/net/http/RetryStrategy;->retry(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 352
    :goto_4
    goto :goto_0

    .line 346
    :cond_7
    throw v1
.end method

.method private a(Ljava/lang/String;Lmiui/net/http/a;)V
    .locals 2

    .line 413
    iget-object v0, p0, Lmiui/net/http/HttpSession;->Dy:Lmiui/net/http/Cache;

    .line 414
    if-nez v0, :cond_0

    .line 415
    return-void

    .line 417
    :cond_0
    invoke-static {p2}, Lmiui/net/http/b;->a(Lmiui/net/http/HttpResponse;)Lmiui/net/http/Cache$Entry;

    move-result-object v1

    .line 418
    if-eqz v1, :cond_1

    invoke-interface {v0, p1, v1}, Lmiui/net/http/Cache;->put(Ljava/lang/String;Lmiui/net/http/Cache$Entry;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 419
    iget-object p1, v1, Lmiui/net/http/Cache$Entry;->data:Ljava/io/InputStream;

    iget-wide v0, v1, Lmiui/net/http/Cache$Entry;->length:J

    invoke-virtual {p2, p1, v0, v1}, Lmiui/net/http/a;->a(Ljava/io/InputStream;J)V

    .line 421
    :cond_1
    return-void
.end method

.method private a(Lmiui/net/http/Cache$Entry;)V
    .locals 4

    .line 457
    iget-object v0, p1, Lmiui/net/http/Cache$Entry;->etag:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 458
    const-string v0, "If-None-Match"

    iget-object v1, p1, Lmiui/net/http/Cache$Entry;->etag:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lmiui/net/http/HttpSession;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    :cond_0
    iget-wide v0, p1, Lmiui/net/http/Cache$Entry;->serverDate:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 461
    const-string v0, "If-Modified-Since"

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p1, Lmiui/net/http/Cache$Entry;->serverDate:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1}, Lmiui/net/http/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lmiui/net/http/HttpSession;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    :cond_1
    return-void
.end method

.method private b(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 444
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 445
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 446
    iget-object v1, p0, Lmiui/net/http/HttpSession;->Dw:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    goto :goto_0

    .line 449
    :cond_0
    return-void
.end method

.method private static c(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 472
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 473
    if-eqz p0, :cond_1

    .line 474
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 475
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 476
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 477
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 478
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 479
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    :cond_0
    goto :goto_0

    .line 483
    :cond_1
    return-object v0
.end method

.method public static getDefault()Lmiui/net/http/HttpSession;
    .locals 1

    .line 107
    new-instance v0, Lmiui/net/http/HttpSession;

    invoke-direct {v0}, Lmiui/net/http/HttpSession;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lmiui/net/http/HttpSession;->Dw:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    return-void
.end method

.method public clearCacheContent()V
    .locals 1

    .line 188
    iget-object v0, p0, Lmiui/net/http/HttpSession;->Dy:Lmiui/net/http/Cache;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lmiui/net/http/HttpSession;->Dy:Lmiui/net/http/Cache;

    invoke-interface {v0}, Lmiui/net/http/Cache;->clear()V

    .line 191
    :cond_0
    return-void
.end method

.method public delete(Ljava/lang/String;Ljava/util/Map;Lmiui/net/http/HttpRequestParams;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/HttpResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lmiui/net/http/HttpRequestParams;",
            "Lmiui/net/http/HttpSession$ProgressListener;",
            ")",
            "Lmiui/net/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public download(Ljava/io/File;Ljava/lang/String;Ljava/util/Map;Lmiui/net/http/HttpRequestParams;Lmiui/net/http/HttpSession$ProgressListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lmiui/net/http/HttpRequestParams;",
            "Lmiui/net/http/HttpSession$ProgressListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    invoke-direct {p0, p3}, Lmiui/net/http/HttpSession;->b(Ljava/util/Map;)V

    .line 211
    if-eqz p4, :cond_0

    .line 212
    invoke-virtual {p4}, Lmiui/net/http/HttpRequestParams;->getParamString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lmiui/net/http/HttpSession;->Dx:Ljava/lang/String;

    .line 214
    :cond_0
    const-wide/16 v0, 0x0

    .line 215
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 216
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 218
    :cond_1
    const-string p3, "RANGE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p3, v2}, Lmiui/net/http/HttpSession;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-direct {p0, p2, p4, p5}, Lmiui/net/http/HttpSession;->a(Ljava/lang/String;Lmiui/net/http/HttpRequestParams;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/a;

    move-result-object p2

    .line 222
    nop

    .line 223
    nop

    .line 225
    const/4 p3, 0x0

    :try_start_0
    invoke-interface {p2}, Lmiui/net/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object p4

    const-string p5, "content-range"

    invoke-interface {p4, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 226
    if-eqz p4, :cond_3

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes "

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 227
    new-instance p4, Ljava/io/RandomAccessFile;

    const-string p5, "rw"

    invoke-direct {p4, p1, p5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 228
    :try_start_1
    invoke-virtual {p4, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 230
    const/16 p1, 0x1000

    new-array p1, p1, [B

    .line 232
    :goto_0
    invoke-interface {p2}, Lmiui/net/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object p5

    invoke-virtual {p5, p1}, Ljava/io/InputStream;->read([B)I

    move-result p5

    const/4 v0, -0x1

    if-eq p5, v0, :cond_2

    .line 233
    const/4 v0, 0x0

    invoke-virtual {p4, p1, v0, p5}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_0

    .line 235
    :cond_2
    invoke-virtual {p4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    nop

    .line 242
    move-object v4, p4

    move-object p4, p3

    move-object p3, v4

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v4, p4

    move-object p4, p3

    move-object p3, v4

    goto :goto_2

    .line 237
    :cond_3
    :try_start_2
    new-instance p4, Ljava/io/FileOutputStream;

    invoke-direct {p4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 238
    :try_start_3
    invoke-interface {p2}, Lmiui/net/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1, p4}, Lmiui/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 239
    invoke-virtual {p4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 242
    :goto_1
    invoke-static {p3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 243
    invoke-static {p4}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 244
    invoke-interface {p2}, Lmiui/net/http/HttpResponse;->release()V

    .line 245
    nop

    .line 246
    return-void

    .line 242
    :catchall_1
    move-exception p1

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object p4, p3

    :goto_2
    invoke-static {p3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 243
    invoke-static {p4}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 244
    invoke-interface {p2}, Lmiui/net/http/HttpResponse;->release()V

    throw p1
.end method

.method public get(Ljava/lang/String;Ljava/util/Map;Lmiui/net/http/HttpRequestParams;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/HttpResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lmiui/net/http/HttpRequestParams;",
            "Lmiui/net/http/HttpSession$ProgressListener;",
            ")",
            "Lmiui/net/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    invoke-direct {p0, p2}, Lmiui/net/http/HttpSession;->b(Ljava/util/Map;)V

    .line 261
    if-eqz p3, :cond_0

    .line 262
    invoke-virtual {p3}, Lmiui/net/http/HttpRequestParams;->getParamString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lmiui/net/http/HttpSession;->Dx:Ljava/lang/String;

    .line 264
    :cond_0
    invoke-direct {p0, p1, p3, p4}, Lmiui/net/http/HttpSession;->a(Ljava/lang/String;Lmiui/net/http/HttpRequestParams;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/a;

    move-result-object p1

    return-object p1
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;Lmiui/net/http/HttpRequestParams;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/HttpResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lmiui/net/http/HttpRequestParams;",
            "Lmiui/net/http/HttpSession$ProgressListener;",
            ")",
            "Lmiui/net/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public put(Ljava/lang/String;Ljava/util/Map;Lmiui/net/http/HttpRequestParams;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/HttpResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lmiui/net/http/HttpRequestParams;",
            "Lmiui/net/http/HttpSession$ProgressListener;",
            ")",
            "Lmiui/net/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeCacheContent(Ljava/lang/String;)V
    .locals 1

    .line 179
    iget-object v0, p0, Lmiui/net/http/HttpSession;->Dy:Lmiui/net/http/Cache;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lmiui/net/http/HttpSession;->Dy:Lmiui/net/http/Cache;

    invoke-interface {v0, p1}, Lmiui/net/http/Cache;->remove(Ljava/lang/String;)V

    .line 182
    :cond_0
    return-void
.end method

.method public setBasicAuth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 145
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setCache(Lmiui/net/http/Cache;)V
    .locals 1

    .line 168
    iget-object v0, p0, Lmiui/net/http/HttpSession;->Dy:Lmiui/net/http/Cache;

    if-eq v0, p1, :cond_0

    .line 169
    iput-object p1, p0, Lmiui/net/http/HttpSession;->Dy:Lmiui/net/http/Cache;

    .line 171
    :cond_0
    return-void
.end method

.method public setRetryStrategy(Lmiui/net/http/RetryStrategy;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lmiui/net/http/HttpSession;->Dz:Lmiui/net/http/RetryStrategy;

    .line 157
    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    .line 125
    iput p1, p0, Lmiui/net/http/HttpSession;->DA:I

    .line 126
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0

    .line 116
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
