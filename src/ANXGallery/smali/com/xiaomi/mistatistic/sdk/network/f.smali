.class final Lcom/xiaomi/mistatistic/sdk/network/f;
.super Ljava/io/OutputStream;
.source "MIOutputStream.java"


# instance fields
.field private a:Ljava/io/OutputStream;

.field private b:Lcom/xiaomi/mistatistic/sdk/network/c;

.field private c:Lcom/xiaomi/mistatistic/sdk/network/d;

.field private d:I


# direct methods
.method public constructor <init>(Lcom/xiaomi/mistatistic/sdk/network/c;Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->d:I

    .line 14
    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->a:Ljava/io/OutputStream;

    .line 15
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->b:Lcom/xiaomi/mistatistic/sdk/network/c;

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/mistatistic/sdk/network/d;Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->d:I

    .line 19
    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->a:Ljava/io/OutputStream;

    .line 20
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->c:Lcom/xiaomi/mistatistic/sdk/network/d;

    .line 21
    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->b:Lcom/xiaomi/mistatistic/sdk/network/c;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->b:Lcom/xiaomi/mistatistic/sdk/network/c;

    invoke-virtual {v0, p1}, Lcom/xiaomi/mistatistic/sdk/network/c;->a(Ljava/lang/Exception;)V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->c:Lcom/xiaomi/mistatistic/sdk/network/d;

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->c:Lcom/xiaomi/mistatistic/sdk/network/d;

    invoke-virtual {v0, p1}, Lcom/xiaomi/mistatistic/sdk/network/d;->a(Ljava/lang/Exception;)V

    .line 83
    :cond_1
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->d:I

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/f;->a(Ljava/lang/Exception;)V

    .line 29
    throw v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/f;->a(Ljava/lang/Exception;)V

    .line 39
    throw v0
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 69
    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->d:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/f;->a(Ljava/lang/Exception;)V

    .line 72
    throw v0
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 47
    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->d:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->d:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/f;->a(Ljava/lang/Exception;)V

    .line 50
    throw v0
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 58
    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->d:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->d:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/f;->a(Ljava/lang/Exception;)V

    .line 61
    throw v0
.end method
