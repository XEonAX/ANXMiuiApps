.class public final Lcom/miui/gallery/editor/photo/utils/IoUtils;
.super Ljava/lang/Object;
.source "IoUtils.java"


# direct methods
.method public static final close(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closable"    # Ljava/io/Closeable;

    .prologue
    .line 121
    const-string v0, "IoUtils"

    invoke-static {v0, p0}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 122
    return-void
.end method

.method public static final close(Ljava/lang/String;Ljava/io/Closeable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "closable"    # Ljava/io/Closeable;

    .prologue
    .line 126
    if-eqz p1, :cond_0

    .line 127
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V

    .line 134
    :goto_0
    return-void

    .line 129
    :cond_0
    const-string v1, "res is null"

    invoke-static {p0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/io/IOException;
    invoke-static {p0, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static loadAssetFileString(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "assetManager"    # Landroid/content/res/AssetManager;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 137
    const/4 v2, 0x0

    .line 138
    .local v2, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .line 140
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 141
    const-string v3, "IoUtils"

    invoke-static {v3, v1}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->readInputStreamToString(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 145
    invoke-static {v1}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/io/Closeable;)V

    .line 147
    :goto_0
    return-object v2

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v3, "IoUtils"

    invoke-static {v3, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    invoke-static {v1}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/io/Closeable;)V

    throw v3
.end method

.method public static openInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 46
    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 49
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public static openInputStream(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 55
    :try_start_0
    invoke-static {p1, p2}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->openInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 58
    :goto_0
    return-object v1

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-static {p0, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static openOutputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/OutputStream;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 63
    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 66
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public static openOutputStream(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Ljava/io/OutputStream;
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 72
    :try_start_0
    invoke-static {p1, p2}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->openOutputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 75
    :goto_0
    return-object v1

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-static {p0, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static openReader(Ljava/io/File;)Ljava/io/Reader;
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 113
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-object v1

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v1, "IoUtils"

    invoke-static {v1, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static openWriter(Ljava/io/File;)Ljava/io/Writer;
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 104
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-object v1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "IoUtils"

    invoke-static {v1, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static readInputStreamToString(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 80
    const-string v0, "UTF-8"

    invoke-static {p0, p1, v0}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->readInputStreamToString(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readInputStreamToString(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "charsetName"    # Ljava/lang/String;

    .prologue
    .line 84
    const/4 v4, 0x0

    .line 85
    .local v4, "s":Ljava/lang/String;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 86
    .local v3, "result":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 89
    .local v0, "buffer":[B
    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "length":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    .line 90
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 93
    .end local v2    # "length":I
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    invoke-static {p0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    invoke-static {p0, p1}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 97
    invoke-static {p0, v3}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 99
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return-object v4

    .line 92
    .restart local v2    # "length":I
    :cond_0
    :try_start_2
    invoke-virtual {v3, p2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 96
    invoke-static {p0, p1}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 97
    invoke-static {p0, v3}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    goto :goto_1

    .line 96
    .end local v2    # "length":I
    :catchall_0
    move-exception v5

    invoke-static {p0, p1}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 97
    invoke-static {p0, v3}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    throw v5
.end method
