.class Lmiui/net/http/DiskBasedCache$DiskCacheEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/net/http/DiskBasedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DiskCacheEntry"
.end annotation


# instance fields
.field private volatile Dl:Z

.field private volatile Dm:I

.field public contentEncoding:Ljava/lang/String;

.field public contentType:Ljava/lang/String;

.field public etag:Ljava/lang/String;

.field public file:Ljava/io/File;

.field public key:Ljava/lang/String;

.field public offset:J

.field public responseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public serverDate:J

.field public size:J

.field public softTtl:J

.field public ttl:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    return-void
.end method

.method public static a(Ljava/io/File;)Lmiui/net/http/DiskBasedCache$DiskCacheEntry;
    .locals 5

    .line 393
    nop

    .line 396
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 397
    :try_start_1
    invoke-static {v1}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->b(Ljava/io/InputStream;)I

    move-result v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const v3, 0x20140228

    if-eq v2, v3, :cond_0

    .line 398
    nop

    .line 426
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 398
    return-object v0

    .line 401
    :cond_0
    :try_start_2
    new-instance v2, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;

    invoke-direct {v2}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;-><init>()V

    .line 402
    invoke-static {v1}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->d(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->key:Ljava/lang/String;

    .line 403
    invoke-static {v1}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->d(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->etag:Ljava/lang/String;

    .line 404
    const-string v3, ""

    iget-object v4, v2, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->etag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 405
    iput-object v0, v2, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->etag:Ljava/lang/String;

    .line 407
    :cond_1
    invoke-static {v1}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->d(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->contentType:Ljava/lang/String;

    .line 408
    const-string v3, ""

    iget-object v4, v2, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->contentType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 409
    iput-object v0, v2, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->contentType:Ljava/lang/String;

    .line 411
    :cond_2
    invoke-static {v1}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->d(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->contentEncoding:Ljava/lang/String;

    .line 412
    const-string v3, ""

    iget-object v4, v2, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->contentEncoding:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 413
    iput-object v0, v2, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->contentEncoding:Ljava/lang/String;

    .line 415
    :cond_3
    invoke-static {v1}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->c(Ljava/io/InputStream;)J

    move-result-wide v3

    iput-wide v3, v2, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->serverDate:J

    .line 416
    invoke-static {v1}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->c(Ljava/io/InputStream;)J

    move-result-wide v3

    iput-wide v3, v2, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->ttl:J

    .line 417
    invoke-static {v1}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->c(Ljava/io/InputStream;)J

    move-result-wide v3

    iput-wide v3, v2, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->softTtl:J

    .line 418
    invoke-static {v1}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->e(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, v2, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->responseHeaders:Ljava/util/Map;

    .line 419
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v3

    iput-wide v3, v2, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->offset:J

    .line 420
    iput-object p0, v2, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->file:Ljava/io/File;

    .line 421
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    iput-wide v3, v2, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->size:J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 422
    nop

    .line 426
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 422
    return-object v2

    .line 426
    :catchall_0
    move-exception p0

    goto :goto_0

    .line 423
    :catch_0
    move-exception p0

    goto :goto_1

    .line 426
    :catchall_1
    move-exception p0

    move-object v1, v0

    :goto_0
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw p0

    .line 423
    :catch_1
    move-exception p0

    move-object v1, v0

    .line 424
    :goto_1
    nop

    .line 426
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 424
    return-object v0
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;Lmiui/net/http/Cache$Entry;)Lmiui/net/http/DiskBasedCache$DiskCacheEntry;
    .locals 10

    .line 439
    nop

    .line 440
    iget-object v0, p2, Lmiui/net/http/Cache$Entry;->data:Ljava/io/InputStream;

    .line 441
    nop

    .line 443
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p2, Lmiui/net/http/Cache$Entry;->data:Ljava/io/InputStream;

    .line 445
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    const v3, 0x20140228

    :try_start_1
    invoke-static {v2, v3}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->a(Ljava/io/OutputStream;I)V

    .line 447
    invoke-static {v2, p1}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 448
    iget-object v3, p2, Lmiui/net/http/Cache$Entry;->etag:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v3, ""

    goto :goto_0

    :cond_0
    iget-object v3, p2, Lmiui/net/http/Cache$Entry;->etag:Ljava/lang/String;

    :goto_0
    invoke-static {v2, v3}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 449
    iget-object v3, p2, Lmiui/net/http/Cache$Entry;->contentType:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v3, ""

    goto :goto_1

    :cond_1
    iget-object v3, p2, Lmiui/net/http/Cache$Entry;->contentType:Ljava/lang/String;

    :goto_1
    invoke-static {v2, v3}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 450
    iget-object v3, p2, Lmiui/net/http/Cache$Entry;->contentEncoding:Ljava/lang/String;

    if-nez v3, :cond_2

    const-string v3, ""

    goto :goto_2

    :cond_2
    iget-object v3, p2, Lmiui/net/http/Cache$Entry;->contentEncoding:Ljava/lang/String;

    :goto_2
    invoke-static {v2, v3}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 451
    iget-wide v3, p2, Lmiui/net/http/Cache$Entry;->serverDate:J

    invoke-static {v2, v3, v4}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->a(Ljava/io/OutputStream;J)V

    .line 452
    iget-wide v3, p2, Lmiui/net/http/Cache$Entry;->ttl:J

    invoke-static {v2, v3, v4}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->a(Ljava/io/OutputStream;J)V

    .line 453
    iget-wide v3, p2, Lmiui/net/http/Cache$Entry;->softTtl:J

    invoke-static {v2, v3, v4}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->a(Ljava/io/OutputStream;J)V

    .line 454
    iget-object v3, p2, Lmiui/net/http/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-static {v3, v2}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->a(Ljava/util/Map;Ljava/io/OutputStream;)V

    .line 455
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 457
    new-instance v3, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;

    invoke-direct {v3}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;-><init>()V

    .line 458
    iput-object p1, v3, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->key:Ljava/lang/String;

    .line 459
    iget-object p1, p2, Lmiui/net/http/Cache$Entry;->etag:Ljava/lang/String;

    iput-object p1, v3, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->etag:Ljava/lang/String;

    .line 460
    iget-object p1, p2, Lmiui/net/http/Cache$Entry;->contentType:Ljava/lang/String;

    iput-object p1, v3, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->contentType:Ljava/lang/String;

    .line 461
    iget-object p1, p2, Lmiui/net/http/Cache$Entry;->contentEncoding:Ljava/lang/String;

    iput-object p1, v3, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->contentEncoding:Ljava/lang/String;

    .line 462
    iget-wide v4, p2, Lmiui/net/http/Cache$Entry;->serverDate:J

    iput-wide v4, v3, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->serverDate:J

    .line 463
    iget-wide v4, p2, Lmiui/net/http/Cache$Entry;->ttl:J

    iput-wide v4, v3, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->ttl:J

    .line 464
    iget-wide v4, p2, Lmiui/net/http/Cache$Entry;->softTtl:J

    iput-wide v4, v3, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->softTtl:J

    .line 465
    iget-object p1, p2, Lmiui/net/http/Cache$Entry;->responseHeaders:Ljava/util/Map;

    iput-object p1, v3, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->responseHeaders:Ljava/util/Map;

    .line 466
    iput-object p0, v3, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->file:Ljava/io/File;

    .line 467
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    iput-wide v4, v3, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->offset:J

    .line 469
    invoke-static {v0, v2}, Lmiui/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 470
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 472
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    iput-wide v4, v3, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->size:J

    .line 473
    iget-wide v4, p2, Lmiui/net/http/Cache$Entry;->length:J

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-gtz p1, :cond_3

    .line 474
    iget-wide v4, v3, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->size:J

    iget-wide v6, v3, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->offset:J

    sub-long/2addr v4, v6

    iput-wide v4, p2, Lmiui/net/http/Cache$Entry;->length:J

    goto :goto_3

    .line 475
    :cond_3
    iget-wide v4, p2, Lmiui/net/http/Cache$Entry;->length:J

    iget-wide v6, v3, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->size:J

    iget-wide v8, v3, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->offset:J

    sub-long/2addr v6, v8

    cmp-long p1, v4, v6

    if-nez p1, :cond_4

    .line 478
    :goto_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 479
    nop

    .line 481
    :try_start_2
    new-instance p1, Lmiui/net/http/DiskBasedCache$CacheFileContentInputStream;

    invoke-direct {p1, v3}, Lmiui/net/http/DiskBasedCache$CacheFileContentInputStream;-><init>(Lmiui/net/http/DiskBasedCache$DiskCacheEntry;)V

    iput-object p1, p2, Lmiui/net/http/Cache$Entry;->data:Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 482
    nop

    .line 486
    invoke-static {v0}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 487
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 489
    nop

    .line 495
    move-object v1, v3

    goto :goto_5

    .line 476
    :cond_4
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "length not match "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p2, Lmiui/net/http/Cache$Entry;->length:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v3, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->size:J

    iget-wide v7, v3, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->offset:J

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 483
    :catch_0
    move-exception p1

    goto :goto_4

    .line 486
    :catchall_0
    move-exception p1

    move-object v2, v1

    goto :goto_6

    .line 483
    :catch_1
    move-exception p1

    move-object v2, v1

    .line 484
    :goto_4
    :try_start_4
    const-string p2, "DisBasedCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot save cache to disk file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 486
    invoke-static {v0}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 487
    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 489
    nop

    .line 490
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_5

    .line 491
    const-string p1, "DisBasedCache"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot delete file "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_5
    :goto_5
    return-object v1

    .line 486
    :catchall_1
    move-exception p1

    :goto_6
    invoke-static {v0}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 487
    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 489
    nop

    .line 490
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p2

    if-nez p2, :cond_6

    .line 491
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot delete file "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "DisBasedCache"

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    throw p1
.end method

.method static a(Ljava/io/OutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 573
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 574
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 575
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 576
    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 577
    return-void
.end method

.method static a(Ljava/io/OutputStream;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 589
    long-to-int v0, p1

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 590
    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 591
    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 592
    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 593
    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 594
    const/16 v0, 0x28

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 595
    const/16 v0, 0x30

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 596
    const/16 v0, 0x38

    ushr-long/2addr p1, v0

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 597
    return-void
.end method

.method static a(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 613
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 614
    const/4 v0, 0x0

    array-length v1, p1

    int-to-long v1, v1

    invoke-static {p0, v1, v2}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->a(Ljava/io/OutputStream;J)V

    .line 615
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 616
    return-void
.end method

.method static a(Ljava/util/Map;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 636
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {p1, v0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->a(Ljava/io/OutputStream;I)V

    .line 638
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 639
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 640
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 641
    goto :goto_0

    .line 643
    :cond_0
    const/4 p0, 0x0

    invoke-static {p1, p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->a(Ljava/io/OutputStream;I)V

    .line 645
    :cond_1
    return-void
.end method

.method static b(Ljava/io/InputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 580
    nop

    .line 581
    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->read(Ljava/io/InputStream;)I

    move-result v0

    const/4 v1, 0x0

    or-int/2addr v0, v1

    .line 582
    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->read(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 583
    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->read(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 584
    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->read(Ljava/io/InputStream;)I

    move-result p0

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    .line 585
    return p0
.end method

.method static c(Ljava/io/InputStream;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 600
    nop

    .line 601
    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->read(Ljava/io/InputStream;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    or-long/2addr v0, v4

    .line 602
    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->read(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 603
    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->read(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 604
    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->read(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 605
    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->read(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 606
    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->read(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 607
    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->read(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 608
    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->read(Ljava/io/InputStream;)I

    move-result p0

    int-to-long v4, p0

    and-long/2addr v2, v4

    const/16 p0, 0x38

    shl-long/2addr v2, p0

    or-long/2addr v0, v2

    .line 609
    return-wide v0
.end method

.method static d(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 619
    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->c(Ljava/io/InputStream;)J

    move-result-wide v0

    long-to-int v0, v0

    .line 620
    if-ltz v0, :cond_2

    const/16 v1, 0x2000

    if-gt v0, v1, :cond_2

    .line 623
    new-array v1, v0, [B

    .line 625
    const/4 v2, 0x0

    .line 626
    :goto_0
    if-ge v2, v0, :cond_0

    sub-int v3, v0, v2

    invoke-virtual {p0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 627
    add-int/2addr v2, v3

    goto :goto_0

    .line 629
    :cond_0
    if-ne v2, v0, :cond_1

    .line 632
    new-instance p0, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-direct {p0, v1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p0

    .line 630
    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes but read "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 621
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Malformed data structure encountered"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static e(Ljava/io/InputStream;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 648
    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->b(Ljava/io/InputStream;)I

    move-result v0

    .line 649
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 650
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 651
    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->d(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->d(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 653
    :cond_0
    return-object v1
.end method

.method private static read(Ljava/io/InputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 565
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    .line 566
    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    .line 569
    return p0

    .line 567
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method


# virtual methods
.method public declared-synchronized acquire()V
    .locals 1

    monitor-enter p0

    .line 526
    :try_start_0
    iget v0, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->Dm:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->Dm:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    monitor-exit p0

    return-void

    .line 525
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public cF()Lmiui/net/http/Cache$Entry;
    .locals 6

    .line 503
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lmiui/net/http/Cache$Entry;

    invoke-direct {v1}, Lmiui/net/http/Cache$Entry;-><init>()V

    .line 504
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->file:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v2, v1, Lmiui/net/http/Cache$Entry;->data:Ljava/io/InputStream;

    .line 505
    iget-object v2, v1, Lmiui/net/http/Cache$Entry;->data:Ljava/io/InputStream;

    iget-wide v3, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->offset:J

    invoke-virtual {v2, v3, v4}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    iget-wide v4, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->offset:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 506
    return-object v0

    .line 508
    :cond_0
    iget-wide v2, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->size:J

    iget-wide v4, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->offset:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lmiui/net/http/Cache$Entry;->length:J

    .line 509
    iget-object v2, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->etag:Ljava/lang/String;

    iput-object v2, v1, Lmiui/net/http/Cache$Entry;->etag:Ljava/lang/String;

    .line 510
    iget-object v2, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->contentType:Ljava/lang/String;

    iput-object v2, v1, Lmiui/net/http/Cache$Entry;->contentType:Ljava/lang/String;

    .line 511
    iget-object v2, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->contentEncoding:Ljava/lang/String;

    iput-object v2, v1, Lmiui/net/http/Cache$Entry;->contentEncoding:Ljava/lang/String;

    .line 512
    iget-wide v2, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->serverDate:J

    iput-wide v2, v1, Lmiui/net/http/Cache$Entry;->serverDate:J

    .line 513
    iget-wide v2, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->ttl:J

    iput-wide v2, v1, Lmiui/net/http/Cache$Entry;->ttl:J

    .line 514
    iget-wide v2, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->softTtl:J

    iput-wide v2, v1, Lmiui/net/http/Cache$Entry;->softTtl:J

    .line 515
    iget-object v2, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->responseHeaders:Ljava/util/Map;

    iput-object v2, v1, Lmiui/net/http/Cache$Entry;->responseHeaders:Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    return-object v1

    .line 517
    :catch_0
    move-exception v1

    .line 518
    return-object v0
.end method

.method public declared-synchronized cG()Z
    .locals 1

    monitor-enter p0

    .line 533
    :try_start_0
    iget v0, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->Dm:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized delete()V
    .locals 3

    monitor-enter p0

    .line 552
    :try_start_0
    iget v0, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->Dm:I

    if-lez v0, :cond_0

    .line 553
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->Dl:Z

    goto :goto_0

    .line 555
    :cond_0
    iget-object v0, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 556
    const-string v0, "DisBasedCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot delete file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 551
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .locals 3

    monitor-enter p0

    .line 540
    :try_start_0
    iget v0, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->Dm:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->Dm:I

    .line 541
    iget v0, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->Dm:I

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->Dl:Z

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 543
    const-string v0, "DisBasedCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot delete file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    :cond_0
    monitor-exit p0

    return-void

    .line 539
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
