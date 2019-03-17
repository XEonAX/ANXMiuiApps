.class public Lorg/jcodec/containers/mp4/boxes/Header;
.super Ljava/lang/Object;
.source "Header.java"


# static fields
.field public static final FOURCC_FREE:[B


# instance fields
.field private fourcc:Ljava/lang/String;

.field private lng:Z

.field private size:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/jcodec/containers/mp4/boxes/Header;->FOURCC_FREE:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x66t
        0x72t
        0x65t
        0x65t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "fourcc"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/jcodec/containers/mp4/boxes/Header;->fourcc:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static createHeader(Ljava/lang/String;J)Lorg/jcodec/containers/mp4/boxes/Header;
    .locals 1
    .param p0, "fourcc"    # Ljava/lang/String;
    .param p1, "size"    # J

    .prologue
    .line 33
    new-instance v0, Lorg/jcodec/containers/mp4/boxes/Header;

    invoke-direct {v0, p0}, Lorg/jcodec/containers/mp4/boxes/Header;-><init>(Ljava/lang/String;)V

    .line 34
    .local v0, "header":Lorg/jcodec/containers/mp4/boxes/Header;
    iput-wide p1, v0, Lorg/jcodec/containers/mp4/boxes/Header;->size:J

    .line 35
    return-object v0
.end method

.method public static estimateHeaderSize(I)I
    .locals 4
    .param p0, "size"    # I

    .prologue
    .line 78
    add-int/lit8 v0, p0, 0x8

    int-to-long v0, v0

    const-wide v2, 0x100000000L

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/16 v0, 0x10

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static newHeader(Ljava/lang/String;JZ)Lorg/jcodec/containers/mp4/boxes/Header;
    .locals 1
    .param p0, "fourcc"    # Ljava/lang/String;
    .param p1, "size"    # J
    .param p3, "lng"    # Z

    .prologue
    .line 39
    new-instance v0, Lorg/jcodec/containers/mp4/boxes/Header;

    invoke-direct {v0, p0}, Lorg/jcodec/containers/mp4/boxes/Header;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, "header":Lorg/jcodec/containers/mp4/boxes/Header;
    iput-wide p1, v0, Lorg/jcodec/containers/mp4/boxes/Header;->size:J

    .line 41
    iput-boolean p3, v0, Lorg/jcodec/containers/mp4/boxes/Header;->lng:Z

    .line 42
    return-object v0
.end method

.method public static read(Ljava/nio/ByteBuffer;)Lorg/jcodec/containers/mp4/boxes/Header;
    .locals 12
    .param p0, "input"    # Ljava/nio/ByteBuffer;

    .prologue
    const-wide/16 v10, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x4

    .line 46
    const-wide/16 v2, 0x0

    .line 47
    .local v2, "size":J
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-lt v5, v8, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-static {v5}, Lorg/jcodec/platform/Platform;->unsignedInt(I)J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-eqz v5, :cond_0

    .line 49
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-lt v5, v8, :cond_2

    const-wide/16 v6, 0x8

    cmp-long v5, v2, v6

    if-gez v5, :cond_3

    cmp-long v5, v2, v10

    if-eqz v5, :cond_3

    .line 66
    :cond_2
    :goto_0
    return-object v4

    .line 54
    :cond_3
    invoke-static {p0, v8}, Lorg/jcodec/common/io/NIOUtils;->readString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "fourcc":Ljava/lang/String;
    const/4 v1, 0x0

    .line 56
    .local v1, "lng":Z
    cmp-long v5, v2, v10

    if-nez v5, :cond_4

    .line 57
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    const/16 v6, 0x8

    if-lt v5, v6, :cond_2

    .line 58
    const/4 v1, 0x1

    .line 59
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    .line 66
    :cond_4
    invoke-static {v0, v2, v3, v1}, Lorg/jcodec/containers/mp4/boxes/Header;->newHeader(Ljava/lang/String;JZ)Lorg/jcodec/containers/mp4/boxes/Header;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 137
    if-ne p0, p1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v1

    .line 139
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 140
    goto :goto_0

    .line 141
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 142
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 143
    check-cast v0, Lorg/jcodec/containers/mp4/boxes/Header;

    .line 144
    .local v0, "other":Lorg/jcodec/containers/mp4/boxes/Header;
    iget-object v3, p0, Lorg/jcodec/containers/mp4/boxes/Header;->fourcc:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 145
    iget-object v3, v0, Lorg/jcodec/containers/mp4/boxes/Header;->fourcc:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 146
    goto :goto_0

    .line 147
    :cond_4
    iget-object v3, p0, Lorg/jcodec/containers/mp4/boxes/Header;->fourcc:Ljava/lang/String;

    iget-object v4, v0, Lorg/jcodec/containers/mp4/boxes/Header;->fourcc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 148
    goto :goto_0
.end method

.method public getBodySize()J
    .locals 4

    .prologue
    .line 94
    iget-wide v0, p0, Lorg/jcodec/containers/mp4/boxes/Header;->size:J

    invoke-virtual {p0}, Lorg/jcodec/containers/mp4/boxes/Header;->headerSize()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getFourcc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/Header;->fourcc:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Lorg/jcodec/containers/mp4/boxes/Header;->size:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 129
    const/16 v0, 0x1f

    .line 130
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 131
    .local v1, "result":I
    iget-object v2, p0, Lorg/jcodec/containers/mp4/boxes/Header;->fourcc:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 132
    return v1

    .line 131
    :cond_0
    iget-object v2, p0, Lorg/jcodec/containers/mp4/boxes/Header;->fourcc:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public headerSize()J
    .locals 4

    .prologue
    .line 74
    iget-boolean v0, p0, Lorg/jcodec/containers/mp4/boxes/Header;->lng:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/jcodec/containers/mp4/boxes/Header;->size:J

    const-wide v2, 0x100000000L

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    const-wide/16 v0, 0x10

    :goto_0
    return-wide v0

    :cond_1
    const-wide/16 v0, 0x8

    goto :goto_0
.end method

.method public setBodySize(I)V
    .locals 4
    .param p1, "length"    # I

    .prologue
    .line 98
    int-to-long v0, p1

    invoke-virtual {p0}, Lorg/jcodec/containers/mp4/boxes/Header;->headerSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/jcodec/containers/mp4/boxes/Header;->size:J

    .line 99
    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "out"    # Ljava/nio/ByteBuffer;

    .prologue
    const-wide v4, 0x100000000L

    .line 102
    iget-wide v2, p0, Lorg/jcodec/containers/mp4/boxes/Header;->size:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 103
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 106
    :goto_0
    iget-object v1, p0, Lorg/jcodec/containers/mp4/boxes/Header;->fourcc:Ljava/lang/String;

    invoke-static {v1}, Lorg/jcodec/common/JCodecUtil2;->asciiString(Ljava/lang/String;)[B

    move-result-object v0

    .line 107
    .local v0, "bt":[B
    if-eqz v0, :cond_2

    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 108
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 111
    :goto_1
    iget-wide v2, p0, Lorg/jcodec/containers/mp4/boxes/Header;->size:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 112
    iget-wide v2, p0, Lorg/jcodec/containers/mp4/boxes/Header;->size:J

    invoke-virtual {p1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 114
    :cond_0
    return-void

    .line 105
    .end local v0    # "bt":[B
    :cond_1
    iget-wide v2, p0, Lorg/jcodec/containers/mp4/boxes/Header;->size:J

    long-to-int v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 110
    .restart local v0    # "bt":[B
    :cond_2
    sget-object v1, Lorg/jcodec/containers/mp4/boxes/Header;->FOURCC_FREE:[B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1
.end method
