.class public Lorg/jcodec/containers/mp4/MP4Util;
.super Ljava/lang/Object;
.source "MP4Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jcodec/containers/mp4/MP4Util$Atom;,
        Lorg/jcodec/containers/mp4/MP4Util$Movie;
    }
.end annotation


# direct methods
.method public static getRootAtoms(Lorg/jcodec/common/io/SeekableByteChannel;)Ljava/util/List;
    .locals 6
    .param p0, "input"    # Lorg/jcodec/common/io/SeekableByteChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jcodec/common/io/SeekableByteChannel;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/jcodec/containers/mp4/MP4Util$Atom;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    const-wide/16 v4, 0x0

    invoke-interface {p0, v4, v5}, Lorg/jcodec/common/io/SeekableByteChannel;->setPosition(J)Lorg/jcodec/common/io/SeekableByteChannel;

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lorg/jcodec/containers/mp4/MP4Util$Atom;>;"
    const-wide/16 v2, 0x0

    .line 76
    .local v2, "off":J
    :goto_0
    invoke-interface {p0}, Lorg/jcodec/common/io/SeekableByteChannel;->size()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 77
    invoke-interface {p0, v2, v3}, Lorg/jcodec/common/io/SeekableByteChannel;->setPosition(J)Lorg/jcodec/common/io/SeekableByteChannel;

    .line 78
    const/16 v4, 0x10

    invoke-static {p0, v4}, Lorg/jcodec/common/io/NIOUtils;->fetchFromChannel(Ljava/nio/channels/ReadableByteChannel;I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v4}, Lorg/jcodec/containers/mp4/boxes/Header;->read(Ljava/nio/ByteBuffer;)Lorg/jcodec/containers/mp4/boxes/Header;

    move-result-object v0

    .line 79
    .local v0, "atom":Lorg/jcodec/containers/mp4/boxes/Header;
    if-nez v0, :cond_1

    .line 85
    .end local v0    # "atom":Lorg/jcodec/containers/mp4/boxes/Header;
    :cond_0
    return-object v1

    .line 81
    .restart local v0    # "atom":Lorg/jcodec/containers/mp4/boxes/Header;
    :cond_1
    new-instance v4, Lorg/jcodec/containers/mp4/MP4Util$Atom;

    invoke-direct {v4, v0, v2, v3}, Lorg/jcodec/containers/mp4/MP4Util$Atom;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;J)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-virtual {v0}, Lorg/jcodec/containers/mp4/boxes/Header;->getSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0
.end method

.method public static parseFullMovie(Ljava/io/File;)Lorg/jcodec/containers/mp4/MP4Util$Movie;
    .locals 2
    .param p0, "source"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    const/4 v0, 0x0

    .line 119
    .local v0, "input":Lorg/jcodec/common/io/SeekableByteChannel;
    :try_start_0
    invoke-static {p0}, Lorg/jcodec/common/io/NIOUtils;->readableChannel(Ljava/io/File;)Lorg/jcodec/common/io/FileChannelWrapper;

    move-result-object v0

    .line 120
    invoke-static {v0}, Lorg/jcodec/containers/mp4/MP4Util;->parseFullMovieChannel(Lorg/jcodec/common/io/SeekableByteChannel;)Lorg/jcodec/containers/mp4/MP4Util$Movie;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 122
    if-eqz v0, :cond_0

    .line 123
    invoke-interface {v0}, Lorg/jcodec/common/io/SeekableByteChannel;->close()V

    :cond_0
    return-object v1

    .line 122
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 123
    invoke-interface {v0}, Lorg/jcodec/common/io/SeekableByteChannel;->close()V

    :cond_1
    throw v1
.end method

.method public static parseFullMovieChannel(Lorg/jcodec/common/io/SeekableByteChannel;)Lorg/jcodec/containers/mp4/MP4Util$Movie;
    .locals 8
    .param p0, "input"    # Lorg/jcodec/common/io/SeekableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 50
    const/4 v1, 0x0

    .line 51
    .local v1, "ftyp":Lorg/jcodec/containers/mp4/boxes/FileTypeBox;
    invoke-static {p0}, Lorg/jcodec/containers/mp4/MP4Util;->getRootAtoms(Lorg/jcodec/common/io/SeekableByteChannel;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jcodec/containers/mp4/MP4Util$Atom;

    .line 52
    .local v0, "atom":Lorg/jcodec/containers/mp4/MP4Util$Atom;
    const-string v6, "ftyp"

    invoke-virtual {v0}, Lorg/jcodec/containers/mp4/MP4Util$Atom;->getHeader()Lorg/jcodec/containers/mp4/boxes/Header;

    move-result-object v7

    invoke-virtual {v7}, Lorg/jcodec/containers/mp4/boxes/Header;->getFourcc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 53
    invoke-virtual {v0}, Lorg/jcodec/containers/mp4/MP4Util$Atom;->getHeader()Lorg/jcodec/containers/mp4/boxes/Header;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jcodec/containers/mp4/boxes/Header;->getBodySize()J

    move-result-wide v2

    .line 54
    .local v2, "size":J
    const-wide/16 v6, 0x400

    cmp-long v6, v2, v6

    if-ltz v6, :cond_2

    .line 55
    const-string v5, "jcodec"

    const-string v6, "Ftyp body size %d is too large."

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    .end local v0    # "atom":Lorg/jcodec/containers/mp4/MP4Util$Atom;
    .end local v2    # "size":J
    :cond_1
    :goto_1
    return-object v4

    .line 58
    .restart local v0    # "atom":Lorg/jcodec/containers/mp4/MP4Util$Atom;
    .restart local v2    # "size":J
    :cond_2
    invoke-virtual {v0, p0}, Lorg/jcodec/containers/mp4/MP4Util$Atom;->parseBox(Lorg/jcodec/common/io/SeekableByteChannel;)Lorg/jcodec/containers/mp4/boxes/Box;

    move-result-object v1

    .end local v1    # "ftyp":Lorg/jcodec/containers/mp4/boxes/FileTypeBox;
    check-cast v1, Lorg/jcodec/containers/mp4/boxes/FileTypeBox;

    .line 59
    .restart local v1    # "ftyp":Lorg/jcodec/containers/mp4/boxes/FileTypeBox;
    goto :goto_0

    .end local v2    # "size":J
    :cond_3
    const-string v6, "moov"

    invoke-virtual {v0}, Lorg/jcodec/containers/mp4/MP4Util$Atom;->getHeader()Lorg/jcodec/containers/mp4/boxes/Header;

    move-result-object v7

    invoke-virtual {v7}, Lorg/jcodec/containers/mp4/boxes/Header;->getFourcc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 60
    invoke-virtual {v0}, Lorg/jcodec/containers/mp4/MP4Util$Atom;->getHeader()Lorg/jcodec/containers/mp4/boxes/Header;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jcodec/containers/mp4/boxes/Header;->getBodySize()J

    move-result-wide v2

    .line 61
    .restart local v2    # "size":J
    const-wide/32 v6, 0x20000

    cmp-long v5, v2, v6

    if-ltz v5, :cond_4

    .line 62
    const-string v5, "jcodec"

    const-string v6, "Moov body size %d is too large."

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 65
    :cond_4
    new-instance v5, Lorg/jcodec/containers/mp4/MP4Util$Movie;

    invoke-virtual {v0, p0}, Lorg/jcodec/containers/mp4/MP4Util$Atom;->parseBox(Lorg/jcodec/common/io/SeekableByteChannel;)Lorg/jcodec/containers/mp4/boxes/Box;

    move-result-object v4

    check-cast v4, Lorg/jcodec/containers/mp4/boxes/MovieBox;

    invoke-direct {v5, v1, v4}, Lorg/jcodec/containers/mp4/MP4Util$Movie;-><init>(Lorg/jcodec/containers/mp4/boxes/FileTypeBox;Lorg/jcodec/containers/mp4/boxes/MovieBox;)V

    move-object v4, v5

    goto :goto_1
.end method
