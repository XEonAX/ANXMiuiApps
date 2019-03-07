.class final Lcom/nostra13/universalimageloader/cache/disc/impl/ext/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field static final US_ASCII:Ljava/nio/charset/Charset;

.field static final UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/Util;->US_ASCII:Ljava/nio/charset/Charset;

    .line 28
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/Util;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method static closeQuietly(Ljava/io/Closeable;)V
    .locals 2
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 67
    if-eqz p0, :cond_0

    .line 69
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 72
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static deleteContents(Ljava/io/File;)V
    .locals 8
    .param p0, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 53
    .local v2, "files":[Ljava/io/File;
    if-nez v2, :cond_0

    .line 54
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not a readable directory: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 56
    :cond_0
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    .line 57
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 58
    invoke-static {v1}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/Util;->deleteContents(Ljava/io/File;)V

    .line 60
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_2

    .line 61
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to delete file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 56
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 64
    .end local v1    # "file":Ljava/io/File;
    :cond_3
    return-void
.end method

.method static readFully(Ljava/io/Reader;)Ljava/lang/String;
    .locals 4
    .param p0, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    :try_start_0
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 36
    .local v2, "writer":Ljava/io/StringWriter;
    const/16 v3, 0x400

    new-array v0, v3, [C

    .line 38
    .local v0, "buffer":[C
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    .local v1, "count":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 39
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/StringWriter;->write([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 43
    .end local v0    # "buffer":[C
    .end local v1    # "count":I
    .end local v2    # "writer":Ljava/io/StringWriter;
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    throw v3

    .line 41
    .restart local v0    # "buffer":[C
    .restart local v1    # "count":I
    .restart local v2    # "writer":Ljava/io/StringWriter;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 43
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    return-object v3
.end method
