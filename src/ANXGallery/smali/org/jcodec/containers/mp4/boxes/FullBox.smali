.class public abstract Lorg/jcodec/containers/mp4/boxes/FullBox;
.super Lorg/jcodec/containers/mp4/boxes/Box;
.source "FullBox.java"


# instance fields
.field protected flags:I

.field protected version:B


# direct methods
.method public constructor <init>(Lorg/jcodec/containers/mp4/boxes/Header;)V
    .locals 0
    .param p1, "atom"    # Lorg/jcodec/containers/mp4/boxes/Header;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lorg/jcodec/containers/mp4/boxes/Box;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected doWrite(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "out"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 26
    iget-byte v0, p0, Lorg/jcodec/containers/mp4/boxes/FullBox;->version:B

    shl-int/lit8 v0, v0, 0x18

    iget v1, p0, Lorg/jcodec/containers/mp4/boxes/FullBox;->flags:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 27
    return-void
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/FullBox;->flags:I

    return v0
.end method

.method public getVersion()B
    .locals 1

    .prologue
    .line 30
    iget-byte v0, p0, Lorg/jcodec/containers/mp4/boxes/FullBox;->version:B

    return v0
.end method

.method public parse(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 20
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 21
    .local v0, "vf":I
    shr-int/lit8 v1, v0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    iput-byte v1, p0, Lorg/jcodec/containers/mp4/boxes/FullBox;->version:B

    .line 22
    const v1, 0xffffff

    and-int/2addr v1, v0

    iput v1, p0, Lorg/jcodec/containers/mp4/boxes/FullBox;->flags:I

    .line 23
    return-void
.end method

.method public setFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 42
    iput p1, p0, Lorg/jcodec/containers/mp4/boxes/FullBox;->flags:I

    .line 43
    return-void
.end method

.method public setVersion(B)V
    .locals 0
    .param p1, "version"    # B

    .prologue
    .line 38
    iput-byte p1, p0, Lorg/jcodec/containers/mp4/boxes/FullBox;->version:B

    .line 39
    return-void
.end method
