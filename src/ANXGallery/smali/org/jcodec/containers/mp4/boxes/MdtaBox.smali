.class public Lorg/jcodec/containers/mp4/boxes/MdtaBox;
.super Lorg/jcodec/containers/mp4/boxes/Box;
.source "MdtaBox.java"


# instance fields
.field private key:Ljava/lang/String;


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

.method public static createMdtaBox(Ljava/lang/String;)Lorg/jcodec/containers/mp4/boxes/MdtaBox;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 23
    new-instance v0, Lorg/jcodec/containers/mp4/boxes/MdtaBox;

    const-string v1, "mdta"

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lorg/jcodec/containers/mp4/boxes/Header;->createHeader(Ljava/lang/String;J)Lorg/jcodec/containers/mp4/boxes/Header;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jcodec/containers/mp4/boxes/MdtaBox;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    .line 24
    .local v0, "box":Lorg/jcodec/containers/mp4/boxes/MdtaBox;
    iput-object p0, v0, Lorg/jcodec/containers/mp4/boxes/MdtaBox;->key:Ljava/lang/String;

    .line 25
    return-object v0
.end method

.method public static fourcc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "mdta"

    return-object v0
.end method


# virtual methods
.method protected doWrite(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "out"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/MdtaBox;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 40
    return-void
.end method

.method public estimateSize()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/MdtaBox;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/MdtaBox;->key:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 30
    invoke-static {p1}, Lorg/jcodec/common/io/NIOUtils;->readBuf(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lorg/jcodec/common/io/NIOUtils;->toArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jcodec/platform/Platform;->stringFromBytes([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jcodec/containers/mp4/boxes/MdtaBox;->key:Ljava/lang/String;

    .line 31
    return-void
.end method
