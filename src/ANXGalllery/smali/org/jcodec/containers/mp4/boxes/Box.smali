.class public abstract Lorg/jcodec/containers/mp4/boxes/Box;
.super Ljava/lang/Object;
.source "Box.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jcodec/containers/mp4/boxes/Box$LeafBox;
    }
.end annotation


# static fields
.field public static final MAX_BOX_SIZE:I = 0x8000000


# instance fields
.field public header:Lorg/jcodec/containers/mp4/boxes/Header;


# direct methods
.method public constructor <init>(Lorg/jcodec/containers/mp4/boxes/Header;)V
    .locals 0
    .param p1, "header"    # Lorg/jcodec/containers/mp4/boxes/Header;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/jcodec/containers/mp4/boxes/Box;->header:Lorg/jcodec/containers/mp4/boxes/Header;

    .line 24
    return-void
.end method

.method public static asBox(Ljava/lang/Class;Lorg/jcodec/containers/mp4/boxes/Box;)Lorg/jcodec/containers/mp4/boxes/Box;
    .locals 6
    .param p1, "box"    # Lorg/jcodec/containers/mp4/boxes/Box;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/jcodec/containers/mp4/boxes/Box;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lorg/jcodec/containers/mp4/boxes/Box;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "class1":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lorg/jcodec/containers/mp4/boxes/Box;->getHeader()Lorg/jcodec/containers/mp4/boxes/Header;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p0, v3}, Lorg/jcodec/platform/Platform;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jcodec/containers/mp4/boxes/Box;

    .line 89
    .local v2, "res":Lorg/jcodec/containers/mp4/boxes/Box;, "TT;"
    invoke-virtual {p1}, Lorg/jcodec/containers/mp4/boxes/Box;->getHeader()Lorg/jcodec/containers/mp4/boxes/Header;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jcodec/containers/mp4/boxes/Header;->getBodySize()J

    move-result-wide v4

    long-to-int v3, v4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 90
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p1, v0}, Lorg/jcodec/containers/mp4/boxes/Box;->doWrite(Ljava/nio/ByteBuffer;)V

    .line 91
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 92
    invoke-virtual {v2, v0}, Lorg/jcodec/containers/mp4/boxes/Box;->parse(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    return-object v2

    .line 94
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "res":Lorg/jcodec/containers/mp4/boxes/Box;, "TT;"
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static createLeafBox(Lorg/jcodec/containers/mp4/boxes/Header;Ljava/nio/ByteBuffer;)Lorg/jcodec/containers/mp4/boxes/Box$LeafBox;
    .locals 1
    .param p0, "atom"    # Lorg/jcodec/containers/mp4/boxes/Header;
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 70
    new-instance v0, Lorg/jcodec/containers/mp4/boxes/Box$LeafBox;

    invoke-direct {v0, p0}, Lorg/jcodec/containers/mp4/boxes/Box$LeafBox;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    .line 71
    .local v0, "leaf":Lorg/jcodec/containers/mp4/boxes/Box$LeafBox;
    iput-object p1, v0, Lorg/jcodec/containers/mp4/boxes/Box$LeafBox;->data:Ljava/nio/ByteBuffer;

    .line 72
    return-object v0
.end method

.method public static parseBox(Ljava/nio/ByteBuffer;Lorg/jcodec/containers/mp4/boxes/Header;Lorg/jcodec/containers/mp4/IBoxFactory;)Lorg/jcodec/containers/mp4/boxes/Box;
    .locals 6
    .param p0, "input"    # Ljava/nio/ByteBuffer;
    .param p1, "childAtom"    # Lorg/jcodec/containers/mp4/boxes/Header;
    .param p2, "factory"    # Lorg/jcodec/containers/mp4/IBoxFactory;

    .prologue
    .line 76
    invoke-interface {p2, p1}, Lorg/jcodec/containers/mp4/IBoxFactory;->newBox(Lorg/jcodec/containers/mp4/boxes/Header;)Lorg/jcodec/containers/mp4/boxes/Box;

    move-result-object v0

    .line 78
    .local v0, "box":Lorg/jcodec/containers/mp4/boxes/Box;
    invoke-virtual {p1}, Lorg/jcodec/containers/mp4/boxes/Header;->getBodySize()J

    move-result-wide v2

    const-wide/32 v4, 0x8000000

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 79
    invoke-virtual {v0, p0}, Lorg/jcodec/containers/mp4/boxes/Box;->parse(Ljava/nio/ByteBuffer;)V

    .line 82
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

.method public static path(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 66
    const/16 v0, 0x2e

    invoke-static {p0, v0}, Lorg/jcodec/common/StringUtils;->splitC(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static terminatorAtom()Lorg/jcodec/containers/mp4/boxes/Box;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lorg/jcodec/containers/mp4/boxes/Header;

    const/4 v1, 0x4

    new-array v1, v1, [B

    invoke-static {v1}, Lorg/jcodec/platform/Platform;->stringFromBytes([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jcodec/containers/mp4/boxes/Header;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jcodec/containers/mp4/boxes/Box;->createLeafBox(Lorg/jcodec/containers/mp4/boxes/Header;Ljava/nio/ByteBuffer;)Lorg/jcodec/containers/mp4/boxes/Box$LeafBox;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected abstract doWrite(Ljava/nio/ByteBuffer;)V
.end method

.method protected dump(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{\"tag\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jcodec/containers/mp4/boxes/Box;->header:Lorg/jcodec/containers/mp4/boxes/Header;

    invoke-virtual {v1}, Lorg/jcodec/containers/mp4/boxes/Header;->getFourcc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    return-void
.end method

.method public abstract estimateSize()I
.end method

.method public getFourcc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/Box;->header:Lorg/jcodec/containers/mp4/boxes/Header;

    invoke-virtual {v0}, Lorg/jcodec/containers/mp4/boxes/Header;->getFourcc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeader()Lorg/jcodec/containers/mp4/boxes/Header;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/Box;->header:Lorg/jcodec/containers/mp4/boxes/Header;

    return-object v0
.end method

.method public abstract parse(Ljava/nio/ByteBuffer;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lorg/jcodec/containers/mp4/boxes/Box;->dump(Ljava/lang/StringBuilder;)V

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public write(Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 33
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 34
    .local v0, "dup":Ljava/nio/ByteBuffer;
    const/16 v1, 0x8

    invoke-static {p1, v1}, Lorg/jcodec/common/io/NIOUtils;->skip(Ljava/nio/ByteBuffer;I)I

    .line 35
    invoke-virtual {p0, p1}, Lorg/jcodec/containers/mp4/boxes/Box;->doWrite(Ljava/nio/ByteBuffer;)V

    .line 37
    iget-object v1, p0, Lorg/jcodec/containers/mp4/boxes/Box;->header:Lorg/jcodec/containers/mp4/boxes/Header;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x8

    invoke-virtual {v1, v2}, Lorg/jcodec/containers/mp4/boxes/Header;->setBodySize(I)V

    .line 38
    iget-object v1, p0, Lorg/jcodec/containers/mp4/boxes/Box;->header:Lorg/jcodec/containers/mp4/boxes/Header;

    invoke-virtual {v1}, Lorg/jcodec/containers/mp4/boxes/Header;->headerSize()J

    move-result-wide v2

    const-wide/16 v4, 0x8

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lorg/jcodec/common/Preconditions;->checkState(Z)V

    .line 39
    iget-object v1, p0, Lorg/jcodec/containers/mp4/boxes/Box;->header:Lorg/jcodec/containers/mp4/boxes/Header;

    invoke-virtual {v1, v0}, Lorg/jcodec/containers/mp4/boxes/Header;->write(Ljava/nio/ByteBuffer;)V

    .line 40
    return-void

    .line 38
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
