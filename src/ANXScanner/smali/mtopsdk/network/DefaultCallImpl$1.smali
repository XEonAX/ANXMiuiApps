.class Lmtopsdk/network/DefaultCallImpl$1;
.super Lmtopsdk/network/domain/ResponseBody;
.source "DefaultCallImpl.java"


# instance fields
.field final synthetic this$0:Lmtopsdk/network/DefaultCallImpl;

.field final synthetic val$is:Ljava/io/InputStream;

.field final synthetic val$length:I

.field final synthetic val$mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmtopsdk/network/DefaultCallImpl;Ljava/lang/String;ILjava/io/InputStream;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lmtopsdk/network/DefaultCallImpl$1;->this$0:Lmtopsdk/network/DefaultCallImpl;

    iput-object p2, p0, Lmtopsdk/network/DefaultCallImpl$1;->val$mimeType:Ljava/lang/String;

    iput p3, p0, Lmtopsdk/network/DefaultCallImpl$1;->val$length:I

    iput-object p4, p0, Lmtopsdk/network/DefaultCallImpl$1;->val$is:Ljava/io/InputStream;

    invoke-direct {p0}, Lmtopsdk/network/domain/ResponseBody;-><init>()V

    return-void
.end method


# virtual methods
.method public byteStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lmtopsdk/network/DefaultCallImpl$1;->val$is:Ljava/io/InputStream;

    return-object v0
.end method

.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    iget v0, p0, Lmtopsdk/network/DefaultCallImpl$1;->val$length:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lmtopsdk/network/DefaultCallImpl$1;->val$mimeType:Ljava/lang/String;

    return-object v0
.end method
