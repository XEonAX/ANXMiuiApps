.class public Lcom/xiaomi/analytics/internal/util/IOUtil;
.super Ljava/lang/Object;
.source "IOUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IOUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeSafely(Ljava/io/Closeable;)V
    .locals 3
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 52
    if-eqz p0, :cond_0

    instance-of v1, p0, Ljava/io/Closeable;

    if-eqz v1, :cond_0

    .line 54
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IOUtil"

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "closeSafely e"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static inputStream2ByteArray(Ljava/io/InputStream;)[B
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    const/16 v0, 0x400

    invoke-static {p0, v0}, Lcom/xiaomi/analytics/internal/util/IOUtil;->inputStream2ByteArray(Ljava/io/InputStream;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static inputStream2ByteArray(Ljava/io/InputStream;I)[B
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v3, 0x0

    .line 48
    :goto_0
    return-object v3

    .line 29
    :cond_0
    const/4 v3, 0x1

    if-ge p1, v3, :cond_1

    .line 30
    const/4 p1, 0x1

    .line 32
    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 35
    .local v1, "byteBuffer":Ljava/io/ByteArrayOutputStream;
    new-array v0, p1, [B

    .line 39
    .local v0, "buffer":[B
    const/4 v2, 0x0

    .line 40
    .local v2, "len":I
    :goto_1
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 41
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 44
    :cond_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 45
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 48
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    goto :goto_0
.end method
