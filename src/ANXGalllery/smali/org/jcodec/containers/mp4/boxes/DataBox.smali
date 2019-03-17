.class public Lorg/jcodec/containers/mp4/boxes/DataBox;
.super Lorg/jcodec/containers/mp4/boxes/Box;
.source "DataBox.java"


# instance fields
.field private data:[B

.field private locale:I

.field private type:I


# direct methods
.method public constructor <init>(Lorg/jcodec/containers/mp4/boxes/Header;)V
    .locals 0
    .param p1, "header"    # Lorg/jcodec/containers/mp4/boxes/Header;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lorg/jcodec/containers/mp4/boxes/Box;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    .line 20
    return-void
.end method

.method public static createDataBox(II[B)Lorg/jcodec/containers/mp4/boxes/DataBox;
    .locals 4
    .param p0, "type"    # I
    .param p1, "locale"    # I
    .param p2, "data"    # [B

    .prologue
    .line 23
    new-instance v0, Lorg/jcodec/containers/mp4/boxes/DataBox;

    const-string v1, "data"

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lorg/jcodec/containers/mp4/boxes/Header;->createHeader(Ljava/lang/String;J)Lorg/jcodec/containers/mp4/boxes/Header;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jcodec/containers/mp4/boxes/DataBox;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    .line 24
    .local v0, "box":Lorg/jcodec/containers/mp4/boxes/DataBox;
    iput p0, v0, Lorg/jcodec/containers/mp4/boxes/DataBox;->type:I

    .line 25
    iput p1, v0, Lorg/jcodec/containers/mp4/boxes/DataBox;->locale:I

    .line 26
    iput-object p2, v0, Lorg/jcodec/containers/mp4/boxes/DataBox;->data:[B

    .line 27
    return-object v0
.end method

.method public static fourcc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string v0, "data"

    return-object v0
.end method


# virtual methods
.method protected doWrite(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "out"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 51
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/DataBox;->type:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 52
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/DataBox;->locale:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 53
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/DataBox;->data:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 54
    return-void
.end method

.method public estimateSize()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/DataBox;->data:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/DataBox;->data:[B

    return-object v0
.end method

.method public getLocale()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/DataBox;->locale:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/DataBox;->type:I

    return v0
.end method

.method public parse(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 32
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lorg/jcodec/containers/mp4/boxes/DataBox;->type:I

    .line 33
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lorg/jcodec/containers/mp4/boxes/DataBox;->locale:I

    .line 34
    invoke-static {p1}, Lorg/jcodec/common/io/NIOUtils;->readBuf(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lorg/jcodec/common/io/NIOUtils;->toArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/jcodec/containers/mp4/boxes/DataBox;->data:[B

    .line 35
    return-void
.end method
