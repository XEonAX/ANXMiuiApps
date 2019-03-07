.class public Lcom/xiaomi/stat/d/j;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = -0x1

.field private static final b:I = 0x1000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    const/16 v0, 0x1000

    invoke-static {p0, p1, v0}, Lcom/xiaomi/stat/d/j;->a(Ljava/io/InputStream;Ljava/io/OutputStream;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    const-wide/16 v0, 0x0

    .line 87
    new-array v2, p2, [B

    .line 88
    :goto_0
    const/4 v3, -0x1

    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 89
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 90
    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_0

    .line 92
    :cond_0
    return-wide v0
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 65
    if-eqz p0, :cond_0

    .line 66
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 56
    invoke-static {p0}, Lcom/xiaomi/stat/d/j;->a(Ljava/io/Closeable;)V

    .line 57
    return-void
.end method

.method public static a(Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 60
    invoke-static {p0}, Lcom/xiaomi/stat/d/j;->a(Ljava/io/Closeable;)V

    .line 61
    return-void
.end method

.method public static a(Ljava/io/Reader;)V
    .locals 0

    .prologue
    .line 48
    invoke-static {p0}, Lcom/xiaomi/stat/d/j;->a(Ljava/io/Closeable;)V

    .line 49
    return-void
.end method

.method public static a(Ljava/io/Writer;)V
    .locals 0

    .prologue
    .line 52
    invoke-static {p0}, Lcom/xiaomi/stat/d/j;->a(Ljava/io/Closeable;)V

    .line 53
    return-void
.end method

.method public static a(Ljava/net/HttpURLConnection;)V
    .locals 0

    .prologue
    .line 42
    if-eqz p0, :cond_0

    .line 43
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 45
    :cond_0
    return-void
.end method

.method public static b(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 75
    invoke-static {p0, v0}, Lcom/xiaomi/stat/d/j;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 76
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
