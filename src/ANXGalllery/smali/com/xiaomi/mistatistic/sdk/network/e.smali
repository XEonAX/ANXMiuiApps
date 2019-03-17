.class final Lcom/xiaomi/mistatistic/sdk/network/e;
.super Ljava/io/InputStream;
.source "MIInputStream.java"


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:Lcom/xiaomi/mistatistic/sdk/network/c;

.field private c:Lcom/xiaomi/mistatistic/sdk/network/d;

.field private d:I


# direct methods
.method public constructor <init>(Lcom/xiaomi/mistatistic/sdk/network/c;Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->d:I

    .line 14
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->b:Lcom/xiaomi/mistatistic/sdk/network/c;

    .line 15
    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->a:Ljava/io/InputStream;

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/mistatistic/sdk/network/d;Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->d:I

    .line 19
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->c:Lcom/xiaomi/mistatistic/sdk/network/d;

    .line 20
    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->a:Ljava/io/InputStream;

    .line 21
    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->b:Lcom/xiaomi/mistatistic/sdk/network/c;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->b:Lcom/xiaomi/mistatistic/sdk/network/c;

    invoke-virtual {v0, p1}, Lcom/xiaomi/mistatistic/sdk/network/c;->a(Ljava/lang/Exception;)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->c:Lcom/xiaomi/mistatistic/sdk/network/d;

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->c:Lcom/xiaomi/mistatistic/sdk/network/d;

    invoke-virtual {v0, p1}, Lcom/xiaomi/mistatistic/sdk/network/d;->a(Ljava/lang/Exception;)V

    .line 128
    :cond_1
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->d:I

    return v0
.end method

.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/e;->a(Ljava/lang/Exception;)V

    .line 29
    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->b:Lcom/xiaomi/mistatistic/sdk/network/c;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->b:Lcom/xiaomi/mistatistic/sdk/network/c;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/network/c;->a()V

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->c:Lcom/xiaomi/mistatistic/sdk/network/d;

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->c:Lcom/xiaomi/mistatistic/sdk/network/d;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/network/d;->a()V

    .line 42
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/e;->a(Ljava/lang/Exception;)V

    .line 45
    throw v0
.end method

.method public mark(I)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 52
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 63
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 64
    iget v1, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->d:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_0
    return v0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/e;->a(Ljava/lang/Exception;)V

    .line 69
    throw v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 77
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 78
    iget v1, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->d:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->d:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :cond_0
    return v0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/e;->a(Ljava/lang/Exception;)V

    .line 83
    throw v0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 91
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 92
    iget v1, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->d:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->d:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :cond_0
    return v0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/e;->a(Ljava/lang/Exception;)V

    .line 97
    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    :try_start_1
    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/e;->a(Ljava/lang/Exception;)V

    .line 107
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/e;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/e;->a(Ljava/lang/Exception;)V

    .line 117
    throw v0
.end method
