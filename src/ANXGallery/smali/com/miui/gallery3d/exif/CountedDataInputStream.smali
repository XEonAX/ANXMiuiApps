.class Lcom/miui/gallery3d/exif/CountedDataInputStream;
.super Ljava/io/FilterInputStream;
.source "CountedDataInputStream.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mByteArray:[B

.field private final mByteBuffer:Ljava/nio/ByteBuffer;

.field private mCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/miui/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/miui/gallery3d/exif/CountedDataInputStream;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery3d/exif/CountedDataInputStream;->mCount:I

    .line 32
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/miui/gallery3d/exif/CountedDataInputStream;->mByteArray:[B

    .line 33
    iget-object v0, p0, Lcom/miui/gallery3d/exif/CountedDataInputStream;->mByteArray:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery3d/exif/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 37
    return-void
.end method


# virtual methods
.method public getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/miui/gallery3d/exif/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public getReadByteCount()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/miui/gallery3d/exif/CountedDataInputStream;->mCount:I

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v1, p0, Lcom/miui/gallery3d/exif/CountedDataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 60
    .local v0, "r":I
    iget v2, p0, Lcom/miui/gallery3d/exif/CountedDataInputStream;->mCount:I

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int/2addr v1, v2

    iput v1, p0, Lcom/miui/gallery3d/exif/CountedDataInputStream;->mCount:I

    .line 61
    return v0

    .line 60
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public read([B)I
    .locals 3
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v1, p0, Lcom/miui/gallery3d/exif/CountedDataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 46
    .local v0, "r":I
    iget v2, p0, Lcom/miui/gallery3d/exif/CountedDataInputStream;->mCount:I

    if-ltz v0, :cond_0

    move v1, v0

    :goto_0
    add-int/2addr v1, v2

    iput v1, p0, Lcom/miui/gallery3d/exif/CountedDataInputStream;->mCount:I

    .line 47
    return v0

    .line 46
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v1, p0, Lcom/miui/gallery3d/exif/CountedDataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 53
    .local v0, "r":I
    iget v2, p0, Lcom/miui/gallery3d/exif/CountedDataInputStream;->mCount:I

    if-ltz v0, :cond_0

    move v1, v0

    :goto_0
    add-int/2addr v1, v2

    iput v1, p0, Lcom/miui/gallery3d/exif/CountedDataInputStream;->mCount:I

    .line 54
    return v0

    .line 53
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public readInt()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/miui/gallery3d/exif/CountedDataInputStream;->mByteArray:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/gallery3d/exif/CountedDataInputStream;->readOrThrow([BII)V

    .line 111
    iget-object v0, p0, Lcom/miui/gallery3d/exif/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 112
    iget-object v0, p0, Lcom/miui/gallery3d/exif/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public readOrThrow([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/gallery3d/exif/CountedDataInputStream;->readOrThrow([BII)V

    .line 89
    return-void
.end method

.method public readOrThrow([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/gallery3d/exif/CountedDataInputStream;->read([BII)I

    move-result v0

    .line 84
    .local v0, "r":I
    if-eq v0, p3, :cond_0

    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 85
    :cond_0
    return-void
.end method

.method public readShort()S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/miui/gallery3d/exif/CountedDataInputStream;->mByteArray:[B

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/gallery3d/exif/CountedDataInputStream;->readOrThrow([BII)V

    .line 101
    iget-object v0, p0, Lcom/miui/gallery3d/exif/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 102
    iget-object v0, p0, Lcom/miui/gallery3d/exif/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method public readString(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p1, "n"    # I
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    new-array v0, p1, [B

    .line 133
    .local v0, "buf":[B
    invoke-virtual {p0, v0}, Lcom/miui/gallery3d/exif/CountedDataInputStream;->readOrThrow([B)V

    .line 134
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public readUnsignedInt()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/CountedDataInputStream;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public readUnsignedShort()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public setByteOrder(Ljava/nio/ByteOrder;)V
    .locals 1
    .param p1, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/miui/gallery3d/exif/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 93
    return-void
.end method

.method public skip(J)J
    .locals 5
    .param p1, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v2, p0, Lcom/miui/gallery3d/exif/CountedDataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 67
    .local v0, "skip":J
    iget v2, p0, Lcom/miui/gallery3d/exif/CountedDataInputStream;->mCount:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lcom/miui/gallery3d/exif/CountedDataInputStream;->mCount:I

    .line 68
    return-wide v0
.end method

.method public skipOrThrow(J)V
    .locals 3
    .param p1, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery3d/exif/CountedDataInputStream;->skip(J)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 73
    :cond_0
    return-void
.end method

.method public skipTo(J)V
    .locals 7
    .param p1, "target"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    iget v4, p0, Lcom/miui/gallery3d/exif/CountedDataInputStream;->mCount:I

    int-to-long v0, v4

    .line 77
    .local v0, "cur":J
    sub-long v2, p1, v0

    .line 78
    .local v2, "diff":J
    sget-boolean v4, Lcom/miui/gallery3d/exif/CountedDataInputStream;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 79
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/miui/gallery3d/exif/CountedDataInputStream;->skipOrThrow(J)V

    .line 80
    return-void
.end method
