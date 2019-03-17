.class public Lcom/nexstreaming/app/common/localprotocol/b;
.super Ljava/lang/Object;
.source "nexClient.java"


# instance fields
.field a:Landroid/net/LocalSocket;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/nexstreaming/app/common/localprotocol/b;->b:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public a(SIZ)Lcom/nexstreaming/app/common/localprotocol/c$a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/nexstreaming/app/common/localprotocol/b;->a:Landroid/net/LocalSocket;

    .line 120
    if-nez v0, :cond_0

    .line 121
    const-string v0, "nexClient"

    const-string v1, "\'receive\' request on closed Socket "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    .line 124
    :cond_0
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 125
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v0, v2, v3}, Lcom/nexstreaming/app/common/localprotocol/c;->a(Landroid/net/LocalSocket;[BI)V

    .line 126
    invoke-static {v1, p2, p3}, Lcom/nexstreaming/app/common/localprotocol/c;->a(Ljava/nio/ByteBuffer;IZ)Lcom/nexstreaming/app/common/localprotocol/c$b;

    move-result-object v1

    .line 127
    iget-boolean v2, v1, Lcom/nexstreaming/app/common/localprotocol/c$b;->b:Z

    if-nez v2, :cond_1

    .line 128
    const-string v0, "nexClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'receive\' Header is invalid. error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Lcom/nexstreaming/app/common/localprotocol/c$b;->f:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    .line 132
    :cond_1
    iget v2, v1, Lcom/nexstreaming/app/common/localprotocol/c$b;->d:I

    if-eq p1, v2, :cond_2

    .line 133
    const-string v0, "nexClient"

    const-string v1, "\'receive\' command is invalid. "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    .line 137
    :cond_2
    new-instance v2, Lcom/nexstreaming/app/common/localprotocol/c$a;

    invoke-direct {v2, v1}, Lcom/nexstreaming/app/common/localprotocol/c$a;-><init>(Lcom/nexstreaming/app/common/localprotocol/c$b;)V

    .line 138
    iget v1, v1, Lcom/nexstreaming/app/common/localprotocol/c$b;->g:I

    new-array v1, v1, [B

    iput-object v1, v2, Lcom/nexstreaming/app/common/localprotocol/c$a;->a:[B

    .line 139
    iget-object v1, v2, Lcom/nexstreaming/app/common/localprotocol/c$a;->a:[B

    iget-object v3, v2, Lcom/nexstreaming/app/common/localprotocol/c$a;->a:[B

    array-length v3, v3

    invoke-static {v0, v1, v3}, Lcom/nexstreaming/app/common/localprotocol/c;->a(Landroid/net/LocalSocket;[BI)V

    .line 140
    return-object v2
.end method

.method public a(SI[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nexstreaming/app/common/localprotocol/b;->a:Landroid/net/LocalSocket;

    .line 72
    if-nez v0, :cond_0

    .line 73
    const-string v0, "nexClient"

    const-string v1, "\'send\' request on closed Socket "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    .line 77
    :cond_0
    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    array-length v2, p3

    invoke-static {p1, p2, v2}, Lcom/nexstreaming/app/common/localprotocol/c;->a(SII)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 78
    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/io/OutputStream;->write([B)V

    .line 79
    return-void
.end method

.method public a()Z
    .locals 4

    .prologue
    .line 24
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/app/common/localprotocol/b;->a:Landroid/net/LocalSocket;

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/nexstreaming/app/common/localprotocol/b;->a:Landroid/net/LocalSocket;

    new-instance v1, Landroid/net/LocalSocketAddress;

    iget-object v2, p0, Lcom/nexstreaming/app/common/localprotocol/b;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    const-string v1, "nexClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " while connect Socket"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 4

    .prologue
    .line 36
    monitor-enter p0

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/nexstreaming/app/common/localprotocol/b;->a:Landroid/net/LocalSocket;

    .line 38
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nexstreaming/app/common/localprotocol/b;->a:Landroid/net/LocalSocket;

    .line 39
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    if-eqz v0, :cond_0

    .line 43
    :try_start_1
    invoke-virtual {v0}, Landroid/net/LocalSocket;->shutdownInput()V

    .line 44
    invoke-virtual {v0}, Landroid/net/LocalSocket;->shutdownOutput()V

    .line 45
    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V

    .line 46
    const-string v0, "nexClient"

    const-string v1, "Socket is closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 47
    const/4 v0, 0x1

    .line 52
    :goto_0
    return v0

    .line 39
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    const-string v1, "nexClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " while closing Socket"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
