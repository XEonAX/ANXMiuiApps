.class public Lcom/nexstreaming/app/common/util/d;
.super Ljava/lang/Object;
.source "CopyUtil.java"


# direct methods
.method public static a(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 17
    const/4 v2, 0x0

    .line 19
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    :goto_0
    :try_start_1
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 22
    if-gtz v2, :cond_1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 33
    :cond_0
    return-void

    .line 24
    :cond_1
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v1, v0, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    :goto_1
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 29
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_2

    .line 30
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    throw v0

    .line 29
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 26
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method
