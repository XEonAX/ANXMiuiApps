.class final Lmtopsdk/mtop/c/a/c;
.super Lmtopsdk/network/domain/RequestBody;
.source "Api4NetworkConverter.java"


# instance fields
.field private synthetic a:[B


# direct methods
.method constructor <init>(Lmtopsdk/mtop/c/a/b;[B)V
    .locals 0

    .prologue
    .line 72
    iput-object p2, p0, Lmtopsdk/mtop/c/a/c;->a:[B

    invoke-direct {p0}, Lmtopsdk/network/domain/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public final contentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "application/x-www-form-urlencoded;charset=UTF-8"

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
    .line 80
    if-eqz p1, :cond_0

    iget-object v0, p0, Lmtopsdk/mtop/c/a/c;->a:[B

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lmtopsdk/mtop/c/a/c;->a:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 83
    :cond_0
    return-void
.end method
