.class public Lcom/alibaba/fastjson/asm/ByteVector;
.super Ljava/lang/Object;
.source "ByteVector.java"


# instance fields
.field data:[B

.field length:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    .line 55
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialSize"    # I

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    .line 64
    return-void
.end method

.method private enlarge(I)V
    .locals 6
    .param p1, "size"    # I

    .prologue
    const/4 v5, 0x0

    .line 217
    iget-object v3, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    array-length v3, v3

    mul-int/lit8 v0, v3, 0x2

    .line 218
    .local v0, "length1":I
    iget v3, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    add-int v1, v3, p1

    .line 219
    .local v1, "length2":I
    if-le v0, v1, :cond_0

    .end local v0    # "length1":I
    :goto_0
    new-array v2, v0, [B

    .line 220
    .local v2, "newData":[B
    iget-object v3, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    iget v4, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    iput-object v2, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    .line 222
    return-void

    .end local v2    # "newData":[B
    .restart local v0    # "length1":I
    :cond_0
    move v0, v1

    .line 219
    goto :goto_0
.end method


# virtual methods
.method put11(II)Lcom/alibaba/fastjson/asm/ByteVector;
    .locals 5
    .param p1, "b1"    # I
    .param p2, "b2"    # I

    .prologue
    .line 90
    iget v1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    .line 91
    .local v1, "length":I
    add-int/lit8 v3, v1, 0x2

    iget-object v4, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    array-length v4, v4

    if-le v3, v4, :cond_0

    .line 92
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/alibaba/fastjson/asm/ByteVector;->enlarge(I)V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    .line 95
    .local v0, "data":[B
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "length":I
    .local v2, "length":I
    int-to-byte v3, p1

    aput-byte v3, v0, v1

    .line 96
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "length":I
    .restart local v1    # "length":I
    int-to-byte v3, p2

    aput-byte v3, v0, v2

    .line 97
    iput v1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    .line 98
    return-object p0
.end method

.method put12(II)Lcom/alibaba/fastjson/asm/ByteVector;
    .locals 5
    .param p1, "b"    # I
    .param p2, "s"    # I

    .prologue
    .line 127
    iget v1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    .line 128
    .local v1, "length":I
    add-int/lit8 v3, v1, 0x3

    iget-object v4, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    array-length v4, v4

    if-le v3, v4, :cond_0

    .line 129
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/alibaba/fastjson/asm/ByteVector;->enlarge(I)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    .line 132
    .local v0, "data":[B
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "length":I
    .local v2, "length":I
    int-to-byte v3, p1

    aput-byte v3, v0, v1

    .line 133
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "length":I
    .restart local v1    # "length":I
    ushr-int/lit8 v3, p2, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 134
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "length":I
    .restart local v2    # "length":I
    int-to-byte v3, p2

    aput-byte v3, v0, v1

    .line 135
    iput v2, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    .line 136
    return-object p0
.end method

.method public putByte(I)Lcom/alibaba/fastjson/asm/ByteVector;
    .locals 4
    .param p1, "b"    # I

    .prologue
    .line 73
    iget v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    .line 74
    .local v0, "length":I
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    array-length v3, v3

    if-le v2, v3, :cond_0

    .line 75
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/alibaba/fastjson/asm/ByteVector;->enlarge(I)V

    .line 77
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "length":I
    .local v1, "length":I
    int-to-byte v3, p1

    aput-byte v3, v2, v0

    .line 78
    iput v1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    .line 79
    return-object p0
.end method

.method public putByteArray([BII)Lcom/alibaba/fastjson/asm/ByteVector;
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 201
    iget v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 202
    invoke-direct {p0, p3}, Lcom/alibaba/fastjson/asm/ByteVector;->enlarge(I)V

    .line 204
    :cond_0
    if-eqz p1, :cond_1

    .line 205
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    iget v1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    .line 208
    return-object p0
.end method

.method public putInt(I)Lcom/alibaba/fastjson/asm/ByteVector;
    .locals 5
    .param p1, "i"    # I

    .prologue
    .line 146
    iget v1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    .line 147
    .local v1, "length":I
    add-int/lit8 v3, v1, 0x4

    iget-object v4, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    array-length v4, v4

    if-le v3, v4, :cond_0

    .line 148
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/alibaba/fastjson/asm/ByteVector;->enlarge(I)V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    .line 151
    .local v0, "data":[B
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "length":I
    .local v2, "length":I
    ushr-int/lit8 v3, p1, 0x18

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 152
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "length":I
    .restart local v1    # "length":I
    ushr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 153
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "length":I
    .restart local v2    # "length":I
    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 154
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "length":I
    .restart local v1    # "length":I
    int-to-byte v3, p1

    aput-byte v3, v0, v2

    .line 155
    iput v1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    .line 156
    return-object p0
.end method

.method public putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;
    .locals 5
    .param p1, "s"    # I

    .prologue
    .line 108
    iget v1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    .line 109
    .local v1, "length":I
    add-int/lit8 v3, v1, 0x2

    iget-object v4, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    array-length v4, v4

    if-le v3, v4, :cond_0

    .line 110
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/alibaba/fastjson/asm/ByteVector;->enlarge(I)V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    .line 113
    .local v0, "data":[B
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "length":I
    .local v2, "length":I
    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 114
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "length":I
    .restart local v1    # "length":I
    int-to-byte v3, p1

    aput-byte v3, v0, v2

    .line 115
    iput v1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    .line 116
    return-object p0
.end method

.method public putUTF8(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/ByteVector;
    .locals 8
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 166
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 167
    .local v1, "charLength":I
    iget v4, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    .line 168
    .local v4, "len":I
    add-int/lit8 v6, v4, 0x2

    add-int/2addr v6, v1

    iget-object v7, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    array-length v7, v7

    if-le v6, v7, :cond_0

    .line 169
    add-int/lit8 v6, v1, 0x2

    invoke-direct {p0, v6}, Lcom/alibaba/fastjson/asm/ByteVector;->enlarge(I)V

    .line 171
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    .line 178
    .local v2, "data":[B
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "len":I
    .local v5, "len":I
    ushr-int/lit8 v6, v1, 0x8

    int-to-byte v6, v6

    aput-byte v6, v2, v4

    .line 179
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "len":I
    .restart local v4    # "len":I
    int-to-byte v6, v1

    aput-byte v6, v2, v5

    .line 180
    const/4 v3, 0x0

    .local v3, "i":I
    move v5, v4

    .end local v4    # "len":I
    .restart local v5    # "len":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 181
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 182
    .local v0, "c":C
    const/4 v6, 0x1

    if-lt v0, v6, :cond_1

    const/16 v6, 0x7f

    if-gt v0, v6, :cond_1

    .line 183
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "len":I
    .restart local v4    # "len":I
    int-to-byte v6, v0

    aput-byte v6, v2, v5

    .line 180
    add-int/lit8 v3, v3, 0x1

    move v5, v4

    .end local v4    # "len":I
    .restart local v5    # "len":I
    goto :goto_0

    .line 185
    :cond_1
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v6}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v6

    .line 188
    .end local v0    # "c":C
    :cond_2
    iput v5, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    .line 189
    return-object p0
.end method
