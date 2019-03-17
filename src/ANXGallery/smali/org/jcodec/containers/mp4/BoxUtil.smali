.class public Lorg/jcodec/containers/mp4/BoxUtil;
.super Ljava/lang/Object;
.source "BoxUtil.java"


# direct methods
.method public static parseBox(Ljava/nio/ByteBuffer;Lorg/jcodec/containers/mp4/boxes/Header;Lorg/jcodec/containers/mp4/IBoxFactory;)Lorg/jcodec/containers/mp4/boxes/Box;
    .locals 6
    .param p0, "input"    # Ljava/nio/ByteBuffer;
    .param p1, "childAtom"    # Lorg/jcodec/containers/mp4/boxes/Header;
    .param p2, "factory"    # Lorg/jcodec/containers/mp4/IBoxFactory;

    .prologue
    .line 11
    invoke-interface {p2, p1}, Lorg/jcodec/containers/mp4/IBoxFactory;->newBox(Lorg/jcodec/containers/mp4/boxes/Header;)Lorg/jcodec/containers/mp4/boxes/Box;

    move-result-object v0

    .line 13
    .local v0, "box":Lorg/jcodec/containers/mp4/boxes/Box;
    invoke-virtual {p1}, Lorg/jcodec/containers/mp4/boxes/Header;->getBodySize()J

    move-result-wide v2

    const-wide/32 v4, 0x8000000

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 14
    invoke-virtual {v0, p0}, Lorg/jcodec/containers/mp4/boxes/Box;->parse(Ljava/nio/ByteBuffer;)V

    .line 17
    .end local v0    # "box":Lorg/jcodec/containers/mp4/boxes/Box;
    :goto_0
    return-object v0

    .restart local v0    # "box":Lorg/jcodec/containers/mp4/boxes/Box;
    :cond_0
    new-instance v0, Lorg/jcodec/containers/mp4/boxes/Box$LeafBox;

    .end local v0    # "box":Lorg/jcodec/containers/mp4/boxes/Box;
    const-string v1, "free"

    const-wide/16 v2, 0x8

    invoke-static {v1, v2, v3}, Lorg/jcodec/containers/mp4/boxes/Header;->createHeader(Ljava/lang/String;J)Lorg/jcodec/containers/mp4/boxes/Header;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jcodec/containers/mp4/boxes/Box$LeafBox;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    goto :goto_0
.end method
