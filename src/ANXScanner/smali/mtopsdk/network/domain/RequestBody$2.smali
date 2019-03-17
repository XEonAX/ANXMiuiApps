.class final Lmtopsdk/network/domain/RequestBody$2;
.super Lmtopsdk/network/domain/RequestBody;
.source "RequestBody.java"


# instance fields
.field final synthetic val$byteCount:I

.field final synthetic val$content:[B

.field final synthetic val$contentType:Ljava/lang/String;

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Ljava/lang/String;I[BI)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lmtopsdk/network/domain/RequestBody$2;->val$contentType:Ljava/lang/String;

    iput p2, p0, Lmtopsdk/network/domain/RequestBody$2;->val$byteCount:I

    iput-object p3, p0, Lmtopsdk/network/domain/RequestBody$2;->val$content:[B

    iput p4, p0, Lmtopsdk/network/domain/RequestBody$2;->val$offset:I

    invoke-direct {p0}, Lmtopsdk/network/domain/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public final contentLength()J
    .locals 2

    .prologue
    .line 81
    iget v0, p0, Lmtopsdk/network/domain/RequestBody$2;->val$byteCount:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final contentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lmtopsdk/network/domain/RequestBody$2;->val$contentType:Ljava/lang/String;

    return-object v0
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lmtopsdk/network/domain/RequestBody$2;->val$content:[B

    iget v1, p0, Lmtopsdk/network/domain/RequestBody$2;->val$offset:I

    iget v2, p0, Lmtopsdk/network/domain/RequestBody$2;->val$byteCount:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 87
    return-void
.end method
