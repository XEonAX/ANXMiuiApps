.class public abstract Lmtopsdk/network/domain/ResponseBody;
.super Ljava/lang/Object;
.source "ResponseBody.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.ResponseBody"


# instance fields
.field private bodyBytes:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lmtopsdk/network/domain/ResponseBody;->bodyBytes:[B

    return-void
.end method

.method private readBytes()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0}, Lmtopsdk/network/domain/ResponseBody;->contentLength()J

    move-result-wide v4

    .line 42
    const-wide/32 v2, 0x7fffffff

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    .line 43
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot buffer entire body for content length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    invoke-virtual {p0}, Lmtopsdk/network/domain/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v1

    .line 52
    :try_start_0
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 56
    const/16 v1, 0x400

    :try_start_2
    new-array v1, v1, [B

    .line 57
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/DataInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 58
    const/4 v7, 0x0

    invoke-virtual {v2, v1, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 62
    :catch_0
    move-exception v1

    .line 63
    :goto_1
    :try_start_3
    const-string v6, "mtopsdk.ResponseBody"

    const-string v7, "[readBytes] read bytes from byteStream error."

    invoke-static {v6, v7, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 65
    invoke-static {v3}, Lmtopsdk/network/util/NetworkUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 66
    invoke-static {v2}, Lmtopsdk/network/util/NetworkUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v1, v0

    .line 69
    :goto_2
    if-nez v1, :cond_2

    .line 76
    :goto_3
    return-object v0

    .line 60
    :cond_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 61
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v1

    .line 65
    invoke-static {v3}, Lmtopsdk/network/util/NetworkUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 66
    invoke-static {v2}, Lmtopsdk/network/util/NetworkUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    .line 65
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_4
    invoke-static {v3}, Lmtopsdk/network/util/NetworkUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 66
    invoke-static {v2}, Lmtopsdk/network/util/NetworkUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    .line 73
    :cond_2
    const-wide/16 v2, -0x1

    cmp-long v0, v4, v2

    if-eqz v0, :cond_3

    array-length v0, v1

    int-to-long v2, v0

    cmp-long v0, v4, v2

    if-eqz v0, :cond_3

    .line 74
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Content-Length and stream length disagree"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object v0, v1

    .line 76
    goto :goto_3

    .line 65
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    .line 62
    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v2, v0

    goto :goto_1
.end method


# virtual methods
.method public abstract byteStream()Ljava/io/InputStream;
.end method

.method public abstract contentLength()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract contentType()Ljava/lang/String;
.end method

.method public getBytes()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lmtopsdk/network/domain/ResponseBody;->bodyBytes:[B

    if-nez v0, :cond_0

    .line 35
    invoke-direct {p0}, Lmtopsdk/network/domain/ResponseBody;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lmtopsdk/network/domain/ResponseBody;->bodyBytes:[B

    .line 37
    :cond_0
    iget-object v0, p0, Lmtopsdk/network/domain/ResponseBody;->bodyBytes:[B

    return-object v0
.end method
