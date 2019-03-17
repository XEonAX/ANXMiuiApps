.class public Lcom/miui/gallery/util/StreamUtils;
.super Ljava/lang/Object;
.source "StreamUtils.java"


# direct methods
.method public static toByteArrayOutputStream(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 33
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x200

    new-array v1, v3, [B

    .line 34
    .local v1, "buffer":[B
    const/4 v2, 0x0

    .line 35
    .local v2, "length":I
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 36
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 39
    :cond_0
    return-object v0
.end method

.method public static toString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-static {p0}, Lcom/miui/gallery/util/StreamUtils;->toByteArrayOutputStream(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 22
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
