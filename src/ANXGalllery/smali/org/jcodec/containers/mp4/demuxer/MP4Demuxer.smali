.class public Lorg/jcodec/containers/mp4/demuxer/MP4Demuxer;
.super Ljava/lang/Object;
.source "MP4Demuxer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static probe(Ljava/nio/ByteBuffer;)I
    .locals 10
    .param p0, "b"    # Ljava/nio/ByteBuffer;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 27
    .local v1, "fork":Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    .line 28
    .local v3, "success":I
    const/4 v6, 0x0

    .line 29
    .local v6, "total":I
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    const/16 v8, 0x8

    if-lt v7, v8, :cond_5

    .line 30
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    invoke-static {v7}, Lorg/jcodec/platform/Platform;->unsignedInt(I)J

    move-result-wide v4

    .line 31
    .local v4, "len":J
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 32
    .local v0, "fcc":I
    const/16 v2, 0x8

    .line 33
    .local v2, "hdrLen":I
    const-wide/16 v8, 0x1

    cmp-long v7, v4, v8

    if-nez v7, :cond_6

    .line 34
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    .line 35
    const/16 v2, 0x10

    .line 38
    :cond_0
    sget v7, Lorg/jcodec/common/Fourcc;->ftyp:I

    if-ne v0, v7, :cond_1

    const-wide/16 v8, 0x40

    cmp-long v7, v4, v8

    if-ltz v7, :cond_3

    :cond_1
    sget v7, Lorg/jcodec/common/Fourcc;->moov:I

    if-ne v0, v7, :cond_2

    const-wide/32 v8, 0x6400000

    cmp-long v7, v4, v8

    if-ltz v7, :cond_3

    :cond_2
    sget v7, Lorg/jcodec/common/Fourcc;->free:I

    if-eq v0, v7, :cond_3

    sget v7, Lorg/jcodec/common/Fourcc;->mdat:I

    if-eq v0, v7, :cond_3

    sget v7, Lorg/jcodec/common/Fourcc;->wide:I

    if-ne v0, v7, :cond_4

    .line 40
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 41
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 42
    const-wide/32 v8, 0x7fffffff

    cmp-long v7, v4, v8

    if-ltz v7, :cond_7

    .line 47
    .end local v0    # "fcc":I
    .end local v2    # "hdrLen":I
    .end local v4    # "len":J
    :cond_5
    :goto_1
    if-nez v6, :cond_8

    const/4 v7, 0x0

    :goto_2
    return v7

    .line 36
    .restart local v0    # "fcc":I
    .restart local v2    # "hdrLen":I
    .restart local v4    # "len":J
    :cond_6
    const-wide/16 v8, 0x8

    cmp-long v7, v4, v8

    if-gez v7, :cond_0

    goto :goto_1

    .line 44
    :cond_7
    int-to-long v8, v2

    sub-long v8, v4, v8

    long-to-int v7, v8

    invoke-static {v1, v7}, Lorg/jcodec/common/io/NIOUtils;->skip(Ljava/nio/ByteBuffer;I)I

    goto :goto_0

    .line 47
    .end local v0    # "fcc":I
    .end local v2    # "hdrLen":I
    .end local v4    # "len":J
    :cond_8
    mul-int/lit8 v7, v3, 0x64

    div-int/2addr v7, v6

    goto :goto_2
.end method
