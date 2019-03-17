.class Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
.super Ljava/io/FilterInputStream;
.source "DiskBasedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/DiskBasedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CountingInputStream"
.end annotation


# instance fields
.field private bytesRead:J

.field private final length:J


# direct methods
.method constructor <init>(Ljava/io/InputStream;J)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "length"    # J

    .prologue
    .line 486
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 487
    iput-wide p2, p0, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->length:J

    .line 488
    return-void
.end method


# virtual methods
.method bytesRemaining()J
    .locals 4

    .prologue
    .line 514
    iget-wide v0, p0, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->length:J

    iget-wide v2, p0, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->bytesRead:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 492
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 493
    .local v0, "result":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 494
    iget-wide v2, p0, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->bytesRead:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->bytesRead:J

    .line 496
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 501
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 502
    .local v0, "result":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 503
    iget-wide v2, p0, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->bytesRead:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->bytesRead:J

    .line 505
    :cond_0
    return v0
.end method
