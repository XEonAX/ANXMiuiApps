.class public Lorg/jcodec/containers/mp4/boxes/MetaValue;
.super Ljava/lang/Object;
.source "MetaValue.java"


# instance fields
.field private data:[B

.field private locale:I

.field private type:I


# direct methods
.method private constructor <init>(II[B)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "locale"    # I
    .param p3, "data"    # [B

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->type:I

    .line 34
    iput p2, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->locale:I

    .line 35
    iput-object p3, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->data:[B

    .line 36
    return-void
.end method

.method public static createOtherWithLocale(II[B)Lorg/jcodec/containers/mp4/boxes/MetaValue;
    .locals 1
    .param p0, "type"    # I
    .param p1, "locale"    # I
    .param p2, "data"    # [B

    .prologue
    .line 55
    new-instance v0, Lorg/jcodec/containers/mp4/boxes/MetaValue;

    invoke-direct {v0, p0, p1, p2}, Lorg/jcodec/containers/mp4/boxes/MetaValue;-><init>(II[B)V

    return-object v0
.end method

.method private toDouble([B)D
    .locals 4
    .param p1, "data"    # [B

    .prologue
    .line 173
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 174
    .local v0, "bb":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 175
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v2

    return-wide v2
.end method

.method private toFloat([B)F
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 167
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 168
    .local v0, "bb":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 169
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    return v1
.end method

.method private toInt16([B)I
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 149
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 150
    .local v0, "bb":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 151
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    return v1
.end method

.method private toInt24([B)I
    .locals 3
    .param p1, "data"    # [B

    .prologue
    .line 155
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 156
    .local v0, "bb":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 157
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x8

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1
.end method

.method private toInt32([B)I
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 161
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 162
    .local v0, "bb":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 163
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    return v1
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->data:[B

    return-object v0
.end method

.method public getFloat()D
    .locals 2

    .prologue
    .line 81
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->type:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    .line 82
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->data:[B

    invoke-direct {p0, v0}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->toFloat([B)F

    move-result v0

    float-to-double v0, v0

    .line 85
    :goto_0
    return-wide v0

    .line 83
    :cond_0
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->type:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_1

    .line 84
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->data:[B

    invoke-direct {p0, v0}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->toDouble([B)D

    move-result-wide v0

    goto :goto_0

    .line 85
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getInt()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 59
    iget v1, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->type:I

    const/16 v2, 0x15

    if-eq v1, v2, :cond_0

    iget v1, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->type:I

    const/16 v2, 0x16

    if-ne v1, v2, :cond_1

    .line 60
    :cond_0
    iget-object v1, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->data:[B

    array-length v1, v1

    packed-switch v1, :pswitch_data_0

    .line 71
    :cond_1
    iget v1, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->type:I

    const/16 v2, 0x41

    if-ne v1, v2, :cond_3

    .line 72
    iget-object v1, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->data:[B

    aget-byte v0, v1, v0

    .line 77
    :cond_2
    :goto_0
    return v0

    .line 62
    :pswitch_0
    iget-object v1, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->data:[B

    aget-byte v0, v1, v0

    goto :goto_0

    .line 64
    :pswitch_1
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->data:[B

    invoke-direct {p0, v0}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->toInt16([B)I

    move-result v0

    goto :goto_0

    .line 66
    :pswitch_2
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->data:[B

    invoke-direct {p0, v0}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->toInt24([B)I

    move-result v0

    goto :goto_0

    .line 68
    :pswitch_3
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->data:[B

    invoke-direct {p0, v0}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->toInt32([B)I

    move-result v0

    goto :goto_0

    .line 73
    :cond_3
    iget v1, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->type:I

    const/16 v2, 0x42

    if-ne v1, v2, :cond_4

    .line 74
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->data:[B

    invoke-direct {p0, v0}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->toInt16([B)I

    move-result v0

    goto :goto_0

    .line 75
    :cond_4
    iget v1, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->type:I

    const/16 v2, 0x43

    if-ne v1, v2, :cond_2

    .line 76
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->data:[B

    invoke-direct {p0, v0}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->toInt32([B)I

    move-result v0

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getLocale()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->locale:I

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 90
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->data:[B

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lorg/jcodec/platform/Platform;->stringFromCharset([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    :goto_0
    return-object v0

    .line 91
    :cond_0
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 92
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->data:[B

    const-string v1, "UTF-16BE"

    invoke-static {v0, v1}, Lorg/jcodec/platform/Platform;->stringFromCharset([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->type:I

    return v0
.end method

.method public isFloat()Z
    .locals 2

    .prologue
    .line 106
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->type:I

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->type:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInt()Z
    .locals 2

    .prologue
    .line 98
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->type:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->type:I

    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->type:I

    const/16 v1, 0x41

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->type:I

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->type:I

    const/16 v1, 0x43

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isString()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 102
    iget v1, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->type:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    invoke-virtual {p0}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->isInt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->getInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 117
    :goto_0
    return-object v0

    .line 112
    :cond_0
    invoke-virtual {p0}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->isFloat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {p0}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->getFloat()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {p0}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->isString()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    invoke-virtual {p0}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 117
    :cond_2
    const-string v0, "BLOB"

    goto :goto_0
.end method
