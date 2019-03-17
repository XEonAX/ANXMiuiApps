.class public abstract Lmtopsdk/network/domain/RequestBody;
.super Ljava/lang/Object;
.source "RequestBody.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/network/domain/RequestBody;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 37
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "content == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 40
    invoke-static {p0, v0}, Lmtopsdk/network/domain/RequestBody;->create(Ljava/lang/String;[B)Lmtopsdk/network/domain/RequestBody;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;[B)Lmtopsdk/network/domain/RequestBody;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 47
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "content == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    new-instance v0, Lmtopsdk/network/domain/RequestBody$1;

    invoke-direct {v0, p0, p1}, Lmtopsdk/network/domain/RequestBody$1;-><init>(Ljava/lang/String;[B)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;[BII)Lmtopsdk/network/domain/RequestBody;
    .locals 6

    .prologue
    .line 71
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "content == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lmtopsdk/network/util/NetworkUtils;->checkOffsetAndCount(JJJ)V

    .line 73
    new-instance v0, Lmtopsdk/network/domain/RequestBody$2;

    invoke-direct {v0, p0, p3, p1, p2}, Lmtopsdk/network/domain/RequestBody$2;-><init>(Ljava/lang/String;I[BI)V

    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public abstract contentType()Ljava/lang/String;
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
