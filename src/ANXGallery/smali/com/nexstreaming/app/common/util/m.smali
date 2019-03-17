.class public Lcom/nexstreaming/app/common/util/m;
.super Ljava/lang/Object;
.source "StreamUtil.java"


# direct methods
.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12
    const/16 v0, 0x1000

    new-array v2, v0, [B

    .line 13
    const-wide/16 v0, 0x0

    .line 15
    :goto_0
    const/4 v3, -0x1

    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 16
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 17
    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_0

    .line 19
    :cond_0
    return-wide v0
.end method
