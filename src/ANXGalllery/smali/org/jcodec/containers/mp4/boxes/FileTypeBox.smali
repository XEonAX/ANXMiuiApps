.class public Lorg/jcodec/containers/mp4/boxes/FileTypeBox;
.super Lorg/jcodec/containers/mp4/boxes/Box;
.source "FileTypeBox.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field private compBrands:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private majorBrand:Ljava/lang/String;

.field private minorVersion:I


# direct methods
.method public constructor <init>(Lorg/jcodec/containers/mp4/boxes/Header;)V
    .locals 1
    .param p1, "header"    # Lorg/jcodec/containers/mp4/boxes/Header;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lorg/jcodec/containers/mp4/boxes/Box;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    .line 22
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/jcodec/containers/mp4/boxes/FileTypeBox;->compBrands:Ljava/util/Collection;

    .line 23
    return-void
.end method

.method public static createFileTypeBox(Ljava/lang/String;ILjava/util/Collection;)Lorg/jcodec/containers/mp4/boxes/FileTypeBox;
    .locals 3
    .param p0, "majorBrand"    # Ljava/lang/String;
    .param p1, "minorVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/jcodec/containers/mp4/boxes/FileTypeBox;"
        }
    .end annotation

    .prologue
    .line 34
    .local p2, "compBrands":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Lorg/jcodec/containers/mp4/boxes/FileTypeBox;

    new-instance v1, Lorg/jcodec/containers/mp4/boxes/Header;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/FileTypeBox;->fourcc()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jcodec/containers/mp4/boxes/Header;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/jcodec/containers/mp4/boxes/FileTypeBox;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    .line 35
    .local v0, "ftyp":Lorg/jcodec/containers/mp4/boxes/FileTypeBox;
    iput-object p0, v0, Lorg/jcodec/containers/mp4/boxes/FileTypeBox;->majorBrand:Ljava/lang/String;

    .line 36
    iput p1, v0, Lorg/jcodec/containers/mp4/boxes/FileTypeBox;->minorVersion:I

    .line 37
    iput-object p2, v0, Lorg/jcodec/containers/mp4/boxes/FileTypeBox;->compBrands:Ljava/util/Collection;

    .line 38
    return-object v0
.end method

.method public static fourcc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "ftyp"

    return-object v0
.end method


# virtual methods
.method public doWrite(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "out"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 60
    iget-object v1, p0, Lorg/jcodec/containers/mp4/boxes/FileTypeBox;->majorBrand:Ljava/lang/String;

    invoke-static {v1}, Lorg/jcodec/common/JCodecUtil2;->asciiString(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 61
    iget v1, p0, Lorg/jcodec/containers/mp4/boxes/FileTypeBox;->minorVersion:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 63
    iget-object v1, p0, Lorg/jcodec/containers/mp4/boxes/FileTypeBox;->compBrands:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    .local v0, "string":Ljava/lang/String;
    invoke-static {v0}, Lorg/jcodec/common/JCodecUtil2;->asciiString(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 66
    .end local v0    # "string":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public estimateSize()I
    .locals 4

    .prologue
    .line 70
    const/16 v0, 0xd

    .line 72
    .local v0, "size":I
    iget-object v2, p0, Lorg/jcodec/containers/mp4/boxes/FileTypeBox;->compBrands:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 73
    .local v1, "string":Ljava/lang/String;
    invoke-static {v1}, Lorg/jcodec/common/JCodecUtil2;->asciiString(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    add-int/2addr v0, v3

    .line 74
    goto :goto_0

    .line 76
    .end local v1    # "string":Ljava/lang/String;
    :cond_0
    return v0
.end method

.method public getCompBrands()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/FileTypeBox;->compBrands:Ljava/util/Collection;

    return-object v0
.end method

.method public getMajorBrand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/FileTypeBox;->majorBrand:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v2, 0x4

    .line 42
    invoke-static {p1, v2}, Lorg/jcodec/common/io/NIOUtils;->readString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jcodec/containers/mp4/boxes/FileTypeBox;->majorBrand:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lorg/jcodec/containers/mp4/boxes/FileTypeBox;->minorVersion:I

    .line 46
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1, v2}, Lorg/jcodec/common/io/NIOUtils;->readString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v0

    .local v0, "brand":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 47
    iget-object v1, p0, Lorg/jcodec/containers/mp4/boxes/FileTypeBox;->compBrands:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 49
    .end local v0    # "brand":Ljava/lang/String;
    :cond_0
    return-void
.end method
