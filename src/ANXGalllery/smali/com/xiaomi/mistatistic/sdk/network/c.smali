.class public Lcom/xiaomi/mistatistic/sdk/network/c;
.super Ljava/net/HttpURLConnection;
.source "MIHttpConnection.java"


# instance fields
.field private a:I

.field private b:J

.field private c:J

.field private d:J

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/xiaomi/mistatistic/sdk/network/f;

.field private i:Lcom/xiaomi/mistatistic/sdk/network/e;

.field private j:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 380
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->a:I

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->e:Z

    .line 33
    iput-object v1, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->f:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->g:Ljava/lang/String;

    .line 381
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->b:J

    .line 382
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    .line 384
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/network/c;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/c;->e()V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 478
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/network/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/network/b;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 479
    :cond_0
    const/4 v0, 0x1

    .line 481
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 427
    .line 428
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->i:Lcom/xiaomi/mistatistic/sdk/network/e;

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->i:Lcom/xiaomi/mistatistic/sdk/network/e;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/network/e;->a()I

    move-result v0

    .line 432
    :goto_0
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->h:Lcom/xiaomi/mistatistic/sdk/network/f;

    if-eqz v2, :cond_0

    .line 433
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->h:Lcom/xiaomi/mistatistic/sdk/network/f;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/network/f;->a()I

    move-result v1

    .line 436
    :cond_0
    add-int/lit16 v0, v0, 0x44c

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/network/c;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 451
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->f:Ljava/lang/String;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 452
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/network/a;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    .line 453
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/network/c$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/network/c$1;-><init>(Lcom/xiaomi/mistatistic/sdk/network/c;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 460
    :cond_0
    return-void
.end method

.method private declared-synchronized e()V
    .locals 4

    .prologue
    .line 463
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 475
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 466
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 467
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->f:Ljava/lang/String;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/c;->a(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 469
    :try_start_2
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 470
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->f:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 471
    :catch_0
    move-exception v0

    .line 472
    :try_start_3
    const-string v1, "MHC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not get Ip exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 463
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private f()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 485
    iget v1, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->a:I

    if-eq v1, v0, :cond_0

    .line 486
    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->a:I

    .line 492
    :goto_0
    return v0

    .line 490
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 491
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private declared-synchronized g()V
    .locals 4

    .prologue
    .line 497
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 498
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->c:J

    .line 499
    iget-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->c:J

    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    :cond_0
    monitor-exit p0

    return-void

    .line 497
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized h()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 504
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->d:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->c:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 505
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->c:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    :cond_0
    monitor-exit p0

    return-void

    .line 504
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/network/c;->b()V

    .line 413
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 387
    iput-wide p1, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->b:J

    .line 388
    return-void
.end method

.method a(Ljava/lang/Exception;)V
    .locals 6

    .prologue
    .line 440
    iget-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->e:Z

    if-nez v0, :cond_0

    .line 441
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->e:Z

    .line 442
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/network/c;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/c;->f()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;-><init>(Ljava/lang/String;JILjava/lang/String;)V

    .line 443
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->setIp(Ljava/lang/String;)V

    .line 444
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->setRequestId(Ljava/lang/String;)V

    .line 445
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a()Lcom/xiaomi/mistatistic/sdk/controller/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;)V

    .line 447
    :cond_0
    return-void
.end method

.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method b()V
    .locals 7

    .prologue
    .line 416
    iget-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->e:Z

    if-nez v0, :cond_0

    .line 417
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->e:Z

    .line 418
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/network/c;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->b:J

    sub-long/2addr v2, v4

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/c;->c()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/c;->f()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;-><init>(Ljava/lang/String;JJI)V

    .line 419
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->setIp(Ljava/lang/String;)V

    .line 420
    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->d:J

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->setFirstPacketCost(J)V

    .line 421
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->setRequestId(Ljava/lang/String;)V

    .line 422
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a()Lcom/xiaomi/mistatistic/sdk/controller/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;)V

    .line 424
    :cond_0
    return-void
.end method

.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    return-void

    .line 405
    :catch_0
    move-exception v0

    .line 406
    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/c;->a(Ljava/lang/Exception;)V

    .line 407
    throw v0
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 393
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/network/c;->b()V

    .line 394
    return-void
.end method

.method public getAllowUserInteraction()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContent()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/c;->a(Ljava/lang/Exception;)V

    .line 145
    throw v0
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/c;->a(Ljava/lang/Exception;)V

    .line 155
    throw v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultUseCaches()Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public getDoInput()Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public getDoOutput()Z
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getExpiration()J
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getIfModifiedSince()J
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/c;->g()V

    .line 253
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/network/e;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/mistatistic/sdk/network/e;-><init>(Lcom/xiaomi/mistatistic/sdk/network/c;Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->i:Lcom/xiaomi/mistatistic/sdk/network/e;

    .line 254
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/c;->h()V

    .line 255
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/c;->d()V

    .line 256
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->i:Lcom/xiaomi/mistatistic/sdk/network/e;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/c;->e()V

    .line 259
    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/c;->a(Ljava/lang/Exception;)V

    .line 260
    throw v0
.end method

.method public getInstanceFollowRedirects()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public getLastModified()J
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/c;->g()V

    .line 274
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/network/f;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/mistatistic/sdk/network/f;-><init>(Lcom/xiaomi/mistatistic/sdk/network/c;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->h:Lcom/xiaomi/mistatistic/sdk/network/f;

    .line 275
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/c;->h()V

    .line 276
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/c;->d()V

    .line 277
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->h:Lcom/xiaomi/mistatistic/sdk/network/f;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/c;->e()V

    .line 280
    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/c;->a(Ljava/lang/Exception;)V

    .line 281
    throw v0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getPermission()Ljava/security/Permission;
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/c;->a(Ljava/lang/Exception;)V

    .line 49
    throw v0
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/c;->g()V

    .line 62
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->a:I

    .line 63
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/c;->h()V

    .line 64
    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->a:I
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/c;->a(Ljava/lang/Exception;)V

    .line 67
    throw v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/c;->a(Ljava/lang/Exception;)V

    .line 77
    throw v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getUseCaches()Z
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 307
    return-void
.end method

.method public setChunkedStreamingMode(I)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 131
    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 351
    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    .line 313
    return-void
.end method

.method public setDoInput(Z)V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 319
    return-void
.end method

.method public setDoOutput(Z)V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 325
    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 125
    return-void
.end method

.method public setFixedLengthStreamingMode(J)V
    .locals 5

    .prologue
    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setFixedLengthStreamingMode"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setIfModifiedSince(J)V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    .line 331
    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 104
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 363
    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/c;->a(Ljava/lang/Exception;)V

    .line 87
    throw v0
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 335
    const-string/jumbo v0, "x-mistats-header"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->g:Ljava/lang/String;

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method public setUseCaches(Z)V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 345
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usingProxy()Z
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->usingProxy()Z

    move-result v0

    return v0
.end method
