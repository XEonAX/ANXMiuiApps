.class public Lorg/jcodec/containers/mp4/boxes/Box$LeafBox;
.super Lorg/jcodec/containers/mp4/boxes/Box;
.source "Box.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jcodec/containers/mp4/boxes/Box;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LeafBox"
.end annotation


# instance fields
.field data:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Lorg/jcodec/containers/mp4/boxes/Header;)V
    .locals 0
    .param p1, "atom"    # Lorg/jcodec/containers/mp4/boxes/Header;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lorg/jcodec/containers/mp4/boxes/Box;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    .line 104
    return-void
.end method


# virtual methods
.method protected doWrite(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "out"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 116
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/Box$LeafBox;->data:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0}, Lorg/jcodec/common/io/NIOUtils;->write(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 117
    return-void
.end method

.method public estimateSize()I
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/Box$LeafBox;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v1, p0, Lorg/jcodec/containers/mp4/boxes/Box$LeafBox;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v1}, Lorg/jcodec/containers/mp4/boxes/Header;->estimateHeaderSize(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public parse(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/Box$LeafBox;->header:Lorg/jcodec/containers/mp4/boxes/Header;

    invoke-virtual {v0}, Lorg/jcodec/containers/mp4/boxes/Header;->getBodySize()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {p1, v0}, Lorg/jcodec/common/io/NIOUtils;->read(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/jcodec/containers/mp4/boxes/Box$LeafBox;->data:Ljava/nio/ByteBuffer;

    .line 108
    return-void
.end method
