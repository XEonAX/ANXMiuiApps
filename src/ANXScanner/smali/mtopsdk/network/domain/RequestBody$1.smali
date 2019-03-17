.class final Lmtopsdk/network/domain/RequestBody$1;
.super Lmtopsdk/network/domain/RequestBody;
.source "RequestBody.java"


# instance fields
.field final synthetic val$content:[B

.field final synthetic val$contentType:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lmtopsdk/network/domain/RequestBody$1;->val$contentType:Ljava/lang/String;

    iput-object p2, p0, Lmtopsdk/network/domain/RequestBody$1;->val$content:[B

    invoke-direct {p0}, Lmtopsdk/network/domain/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public final contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lmtopsdk/network/domain/RequestBody$1;->val$content:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final contentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lmtopsdk/network/domain/RequestBody$1;->val$contentType:Ljava/lang/String;

    return-object v0
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lmtopsdk/network/domain/RequestBody$1;->val$content:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 62
    return-void
.end method
