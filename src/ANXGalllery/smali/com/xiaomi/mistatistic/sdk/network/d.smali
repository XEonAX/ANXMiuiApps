.class public Lcom/xiaomi/mistatistic/sdk/network/d;
.super Ljavax/net/ssl/HttpsURLConnection;
.source "MIHttpsConnection.java"


# instance fields
.field private a:I

.field private b:J

.field private c:J

.field private d:J

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljavax/net/ssl/HttpsURLConnection;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 417
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;-><init>(Ljava/net/URL;)V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->a:I

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->e:Z

    .line 36
    iput-object v1, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->f:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->g:Ljava/lang/String;

    .line 418
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    .line 419
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->b:J

    .line 420
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/network/d;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/d;->d()V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 522
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/network/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/network/b;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 523
    :cond_0
    const/4 v0, 0x1

    .line 525
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 495
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->g:Ljava/lang/String;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 496
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/network/a;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    .line 497
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/network/d$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/network/d$1;-><init>(Lcom/xiaomi/mistatistic/sdk/network/d;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 504
    :cond_0
    return-void
.end method

.method private declared-synchronized d()V
    .locals 2

    .prologue
    .line 507
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 519
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 510
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 511
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->g:Ljava/lang/String;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/d;->a(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 513
    :try_start_2
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 514
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->g:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 515
    :catch_0
    move-exception v0

    .line 516
    :try_start_3
    const-string v1, "can not get mIp exception:"

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 507
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private e()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 529
    iget v1, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->a:I

    if-eq v1, v0, :cond_0

    .line 530
    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->a:I

    .line 536
    :goto_0
    return v0

    .line 534
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 535
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private declared-synchronized f()V
    .locals 4

    .prologue
    .line 541
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 542
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->c:J

    .line 543
    iget-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->c:J

    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    :cond_0
    monitor-exit p0

    return-void

    .line 541
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized g()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 548
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->d:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->c:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 549
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->c:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    :cond_0
    monitor-exit p0

    return-void

    .line 548
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/network/d;->b()V

    .line 469
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 423
    iput-wide p1, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->b:J

    .line 424
    return-void
.end method

.method a(Ljava/lang/Exception;)V
    .locals 6

    .prologue
    .line 484
    iget-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->e:Z

    if-nez v0, :cond_0

    .line 485
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->e:Z

    .line 486
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/network/d;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/d;->e()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;-><init>(Ljava/lang/String;JILjava/lang/String;)V

    .line 487
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->setIp(Ljava/lang/String;)V

    .line 488
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->setRequestId(Ljava/lang/String;)V

    .line 489
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a()Lcom/xiaomi/mistatistic/sdk/controller/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;)V

    .line 491
    :cond_0
    return-void
.end method

.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method public b()V
    .locals 7

    .prologue
    .line 472
    iget-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->e:Z

    if-nez v0, :cond_0

    .line 473
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->e:Z

    .line 474
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/network/d;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->b:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    .line 475
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/d;->e()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;-><init>(Ljava/lang/String;JJI)V

    .line 476
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->setIp(Ljava/lang/String;)V

    .line 477
    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->d:J

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->setFirstPacketCost(J)V

    .line 478
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->setRequestId(Ljava/lang/String;)V

    .line 479
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a()Lcom/xiaomi/mistatistic/sdk/controller/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;)V

    .line 481
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
    .line 440
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    return-void

    .line 441
    :catch_0
    move-exception v0

    .line 442
    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/d;->a(Ljava/lang/Exception;)V

    .line 443
    throw v0
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 429
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/network/d;->b()V

    .line 430
    return-void
.end method

.method public getAllowUserInteraction()Z
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getConnectTimeout()I

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
    .line 187
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/d;->a(Ljava/lang/Exception;)V

    .line 196
    throw v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getContentLength()I

    move-result v0

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultUseCaches()Z
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public getDoInput()Z
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public getDoOutput()Z
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getExpiration()J
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

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
    .line 251
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    return-object v0
.end method

.method public getIfModifiedSince()J
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getIfModifiedSince()J

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
    .line 291
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/d;->f()V

    .line 292
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/network/e;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/mistatistic/sdk/network/e;-><init>(Lcom/xiaomi/mistatistic/sdk/network/d;Ljava/io/InputStream;)V

    .line 293
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/d;->g()V

    .line 294
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/d;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    return-object v0

    .line 296
    :catch_0
    move-exception v0

    .line 297
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/d;->d()V

    .line 298
    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/d;->a(Ljava/lang/Exception;)V

    .line 299
    throw v0
.end method

.method public getInstanceFollowRedirects()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public getLastModified()J
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/d;->f()V

    .line 312
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/network/f;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/mistatistic/sdk/network/f;-><init>(Lcom/xiaomi/mistatistic/sdk/network/d;Ljava/io/OutputStream;)V

    .line 313
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/d;->g()V

    .line 314
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/d;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    return-object v0

    .line 316
    :catch_0
    move-exception v0

    .line 317
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/d;->d()V

    .line 318
    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/d;->a(Ljava/lang/Exception;)V

    .line 319
    throw v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getPeerPrincipal()Ljava/security/Principal;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/d;->a(Ljava/lang/Exception;)V

    .line 45
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
    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getPermission()Ljava/security/Permission;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/d;->a(Ljava/lang/Exception;)V

    .line 91
    throw v0
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getRequestMethod()Ljava/lang/String;

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
    .line 257
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

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
    .line 104
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/d;->f()V

    .line 105
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->a:I

    .line 106
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/d;->g()V

    .line 107
    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->a:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/d;->a(Ljava/lang/Exception;)V

    .line 110
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
    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseMessage()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/d;->a(Ljava/lang/Exception;)V

    .line 120
    throw v0
.end method

.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public getServerCertificates()[Ljava/security/cert/Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 460
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 461
    :catch_0
    move-exception v0

    .line 462
    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/d;->a(Ljava/lang/Exception;)V

    .line 463
    throw v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getUseCaches()Z
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setAllowUserInteraction(Z)V

    .line 345
    return-void
.end method

.method public setChunkedStreamingMode(I)V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setChunkedStreamingMode(I)V

    .line 176
    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 388
    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultUseCaches(Z)V

    .line 351
    return-void
.end method

.method public setDoInput(Z)V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 357
    return-void
.end method

.method public setDoOutput(Z)V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 362
    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setFixedLengthStreamingMode(I)V

    .line 170
    return-void
.end method

.method public setFixedLengthStreamingMode(J)V
    .locals 5

    .prologue
    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setFixedLengthStreamingMode"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 59
    return-void
.end method

.method public setIfModifiedSince(J)V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setIfModifiedSince(J)V

    .line 368
    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setInstanceFollowRedirects(Z)V

    .line 149
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 400
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
    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/d;->a(Ljava/lang/Exception;)V

    .line 130
    throw v0
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 372
    const-string/jumbo v0, "x-mistats-header"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->f:Ljava/lang/String;

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    return-void
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 71
    return-void
.end method

.method public setUseCaches(Z)V
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 382
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usingProxy()Z
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/d;->h:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->usingProxy()Z

    move-result v0

    return v0
.end method
