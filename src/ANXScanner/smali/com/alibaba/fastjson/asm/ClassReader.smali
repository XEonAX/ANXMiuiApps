.class public Lcom/alibaba/fastjson/asm/ClassReader;
.super Ljava/lang/Object;
.source "ClassReader.java"


# instance fields
.field public final b:[B

.field public final header:I

.field private final items:[I

.field private final maxStringLength:I

.field private final strings:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 10
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 21
    .local v6, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 23
    .local v0, "buf":[B
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 24
    .local v3, "len":I
    const/4 v8, -0x1

    if-ne v3, v8, :cond_2

    .line 32
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 33
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    iput-object v8, p0, Lcom/alibaba/fastjson/asm/ClassReader;->b:[B

    .line 37
    const/16 v8, 0x8

    invoke-direct {p0, v8}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/alibaba/fastjson/asm/ClassReader;->items:[I

    .line 38
    iget-object v8, p0, Lcom/alibaba/fastjson/asm/ClassReader;->items:[I

    array-length v5, v8

    .line 39
    .local v5, "n":I
    new-array v8, v5, [Ljava/lang/String;

    iput-object v8, p0, Lcom/alibaba/fastjson/asm/ClassReader;->strings:[Ljava/lang/String;

    .line 40
    const/4 v4, 0x0

    .line 41
    .local v4, "max":I
    const/16 v2, 0xa

    .line 42
    .local v2, "index":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_3

    .line 43
    iget-object v8, p0, Lcom/alibaba/fastjson/asm/ClassReader;->items:[I

    add-int/lit8 v9, v2, 0x1

    aput v9, v8, v1

    .line 45
    iget-object v8, p0, Lcom/alibaba/fastjson/asm/ClassReader;->b:[B

    aget-byte v8, v8, v2

    packed-switch v8, :pswitch_data_0

    .line 72
    :pswitch_0
    const/4 v7, 0x3

    .line 75
    .local v7, "size":I
    :cond_1
    :goto_2
    add-int/2addr v2, v7

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 28
    .end local v1    # "i":I
    .end local v2    # "index":I
    .end local v4    # "max":I
    .end local v5    # "n":I
    .end local v7    # "size":I
    :cond_2
    if-lez v3, :cond_0

    .line 29
    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 53
    .restart local v1    # "i":I
    .restart local v2    # "index":I
    .restart local v4    # "max":I
    .restart local v5    # "n":I
    :pswitch_1
    const/4 v7, 0x5

    .line 54
    .restart local v7    # "size":I
    goto :goto_2

    .line 57
    .end local v7    # "size":I
    :pswitch_2
    const/16 v7, 0x9

    .line 58
    .restart local v7    # "size":I
    add-int/lit8 v1, v1, 0x1

    .line 59
    goto :goto_2

    .line 61
    .end local v7    # "size":I
    :pswitch_3
    const/4 v7, 0x4

    .line 62
    .restart local v7    # "size":I
    goto :goto_2

    .line 64
    .end local v7    # "size":I
    :pswitch_4
    add-int/lit8 v8, v2, 0x1

    invoke-direct {p0, v8}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    add-int/lit8 v7, v8, 0x3

    .line 65
    .restart local v7    # "size":I
    if-le v7, v4, :cond_1

    .line 66
    move v4, v7

    goto :goto_2

    .line 77
    .end local v7    # "size":I
    :cond_3
    iput v4, p0, Lcom/alibaba/fastjson/asm/ClassReader;->maxStringLength:I

    .line 79
    iput v2, p0, Lcom/alibaba/fastjson/asm/ClassReader;->header:I

    .line 80
    return-void

    .line 45
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private readInt(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 247
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/ClassReader;->b:[B

    .line 248
    .local v0, "b":[B
    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1
.end method

.method private readMethod(Lcom/alibaba/fastjson/asm/TypeCollector;[CI)I
    .locals 21
    .param p1, "classVisitor"    # Lcom/alibaba/fastjson/asm/TypeCollector;
    .param p2, "c"    # [C
    .param p3, "u"    # I

    .prologue
    .line 154
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    .line 155
    .local v3, "access":I
    add-int/lit8 v20, p3, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v14

    .line 156
    .local v14, "name":Ljava/lang/String;
    add-int/lit8 v20, p3, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v9

    .line 157
    .local v9, "desc":Ljava/lang/String;
    const/16 v16, 0x0

    .line 158
    .local v16, "v":I
    const/16 v19, 0x0

    .line 161
    .local v19, "w":I
    add-int/lit8 v20, p3, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v11

    .line 162
    .local v11, "j":I
    add-int/lit8 p3, p3, 0x8

    .line 163
    :goto_0
    if-lez v11, :cond_1

    .line 164
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    .line 165
    .local v4, "attrName":Ljava/lang/String;
    add-int/lit8 v20, p3, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/asm/ClassReader;->readInt(I)I

    move-result v5

    .line 166
    .local v5, "attrSize":I
    add-int/lit8 p3, p3, 0x6

    .line 169
    const-string v20, "Code"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 170
    move/from16 v16, p3

    .line 172
    :cond_0
    add-int p3, p3, v5

    .line 163
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    .line 175
    .end local v4    # "attrName":Ljava/lang/String;
    .end local v5    # "attrSize":I
    :cond_1
    if-nez v19, :cond_3

    .line 184
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v14, v9}, Lcom/alibaba/fastjson/asm/TypeCollector;->visitMethod(ILjava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/MethodCollector;

    move-result-object v13

    .line 186
    .local v13, "mv":Lcom/alibaba/fastjson/asm/MethodCollector;
    if-eqz v13, :cond_9

    if-eqz v16, :cond_9

    .line 187
    add-int/lit8 v20, v16, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/asm/ClassReader;->readInt(I)I

    move-result v7

    .line 188
    .local v7, "codeLength":I
    add-int/lit8 v16, v16, 0x8

    .line 190
    move/from16 v8, v16

    .line 191
    .local v8, "codeStart":I
    add-int v6, v16, v7

    .line 192
    .local v6, "codeEnd":I
    move/from16 v16, v6

    .line 194
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v11

    .line 195
    add-int/lit8 v16, v16, 0x2

    .line 196
    :goto_1
    if-lez v11, :cond_4

    .line 197
    add-int/lit8 v16, v16, 0x8

    .line 196
    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    .line 177
    .end local v6    # "codeEnd":I
    .end local v7    # "codeLength":I
    .end local v8    # "codeStart":I
    .end local v13    # "mv":Lcom/alibaba/fastjson/asm/MethodCollector;
    :cond_3
    add-int/lit8 v19, v19, 0x2

    .line 178
    const/4 v11, 0x0

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v20

    move/from16 v0, v20

    if-ge v11, v0, :cond_2

    .line 179
    add-int/lit8 v19, v19, 0x2

    .line 178
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 201
    .restart local v6    # "codeEnd":I
    .restart local v7    # "codeLength":I
    .restart local v8    # "codeStart":I
    .restart local v13    # "mv":Lcom/alibaba/fastjson/asm/MethodCollector;
    :cond_4
    const/16 v17, 0x0

    .line 202
    .local v17, "varTable":I
    const/16 v18, 0x0

    .line 203
    .local v18, "varTypeTable":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v11

    .line 204
    add-int/lit8 v16, v16, 0x2

    .line 205
    :goto_3
    if-lez v11, :cond_7

    .line 206
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    .line 207
    .restart local v4    # "attrName":Ljava/lang/String;
    const-string v20, "LocalVariableTable"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 208
    add-int/lit8 v17, v16, 0x6

    .line 212
    :cond_5
    :goto_4
    add-int/lit8 v20, v16, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/asm/ClassReader;->readInt(I)I

    move-result v20

    add-int/lit8 v20, v20, 0x6

    add-int v16, v16, v20

    .line 205
    add-int/lit8 v11, v11, -0x1

    goto :goto_3

    .line 209
    :cond_6
    const-string v20, "LocalVariableTypeTable"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 210
    add-int/lit8 v18, v16, 0x6

    goto :goto_4

    .line 215
    .end local v4    # "attrName":Ljava/lang/String;
    :cond_7
    move/from16 v16, v8

    .line 217
    if-eqz v17, :cond_9

    .line 218
    if-eqz v18, :cond_8

    .line 219
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v20

    mul-int/lit8 v12, v20, 0x3

    .line 220
    .local v12, "k":I
    add-int/lit8 v19, v18, 0x2

    .line 221
    new-array v15, v12, [I

    .line 222
    .local v15, "typeTable":[I
    :goto_5
    if-lez v12, :cond_8

    .line 223
    add-int/lit8 v12, v12, -0x1

    add-int/lit8 v20, v19, 0x6

    aput v20, v15, v12

    .line 224
    add-int/lit8 v12, v12, -0x1

    add-int/lit8 v20, v19, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v20

    aput v20, v15, v12

    .line 225
    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v20

    aput v20, v15, v12

    .line 226
    add-int/lit8 v19, v19, 0xa

    goto :goto_5

    .line 229
    .end local v12    # "k":I
    .end local v15    # "typeTable":[I
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v12

    .line 230
    .restart local v12    # "k":I
    add-int/lit8 v19, v17, 0x2

    .line 231
    :goto_6
    if-lez v12, :cond_9

    .line 232
    add-int/lit8 v20, v19, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v10

    .line 233
    .local v10, "index":I
    add-int/lit8 v20, v19, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0, v10}, Lcom/alibaba/fastjson/asm/MethodCollector;->visitLocalVariable(Ljava/lang/String;I)V

    .line 234
    add-int/lit8 v19, v19, 0xa

    .line 231
    add-int/lit8 v12, v12, -0x1

    goto :goto_6

    .line 238
    .end local v6    # "codeEnd":I
    .end local v7    # "codeLength":I
    .end local v8    # "codeStart":I
    .end local v10    # "index":I
    .end local v12    # "k":I
    .end local v17    # "varTable":I
    .end local v18    # "varTypeTable":I
    :cond_9
    return p3
.end method

.method private readUTF(II[C)Ljava/lang/String;
    .locals 10
    .param p1, "index"    # I
    .param p2, "utfLen"    # I
    .param p3, "buf"    # [C

    .prologue
    .line 263
    add-int v3, p1, p2

    .line 264
    .local v3, "endIndex":I
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/ClassReader;->b:[B

    .line 265
    .local v0, "b":[B
    const/4 v6, 0x0

    .line 267
    .local v6, "strLen":I
    const/4 v5, 0x0

    .line 268
    .local v5, "st":I
    const/4 v2, 0x0

    .local v2, "cc":C
    move v7, v6

    .end local v6    # "strLen":I
    .local v7, "strLen":I
    move v4, p1

    .line 269
    .end local p1    # "index":I
    .local v4, "index":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 270
    add-int/lit8 p1, v4, 0x1

    .end local v4    # "index":I
    .restart local p1    # "index":I
    aget-byte v1, v0, v4

    .line 271
    .local v1, "c":I
    packed-switch v5, :pswitch_data_0

    move v6, v7

    .end local v7    # "strLen":I
    .restart local v6    # "strLen":I
    :goto_1
    move v7, v6

    .end local v6    # "strLen":I
    .restart local v7    # "strLen":I
    move v4, p1

    .line 293
    .end local p1    # "index":I
    .restart local v4    # "index":I
    goto :goto_0

    .line 273
    .end local v4    # "index":I
    .restart local p1    # "index":I
    :pswitch_0
    and-int/lit16 v1, v1, 0xff

    .line 274
    const/16 v8, 0x80

    if-ge v1, v8, :cond_0

    .line 275
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "strLen":I
    .restart local v6    # "strLen":I
    int-to-char v8, v1

    aput-char v8, p3, v7

    goto :goto_1

    .line 276
    .end local v6    # "strLen":I
    .restart local v7    # "strLen":I
    :cond_0
    const/16 v8, 0xe0

    if-ge v1, v8, :cond_1

    const/16 v8, 0xbf

    if-le v1, v8, :cond_1

    .line 277
    and-int/lit8 v8, v1, 0x1f

    int-to-char v2, v8

    .line 278
    const/4 v5, 0x1

    move v6, v7

    .end local v7    # "strLen":I
    .restart local v6    # "strLen":I
    goto :goto_1

    .line 280
    .end local v6    # "strLen":I
    .restart local v7    # "strLen":I
    :cond_1
    and-int/lit8 v8, v1, 0xf

    int-to-char v2, v8

    .line 281
    const/4 v5, 0x2

    move v6, v7

    .line 283
    .end local v7    # "strLen":I
    .restart local v6    # "strLen":I
    goto :goto_1

    .line 286
    .end local v6    # "strLen":I
    .restart local v7    # "strLen":I
    :pswitch_1
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "strLen":I
    .restart local v6    # "strLen":I
    shl-int/lit8 v8, v2, 0x6

    and-int/lit8 v9, v1, 0x3f

    or-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, p3, v7

    .line 287
    const/4 v5, 0x0

    .line 288
    goto :goto_1

    .line 291
    .end local v6    # "strLen":I
    .restart local v7    # "strLen":I
    :pswitch_2
    shl-int/lit8 v8, v2, 0x6

    and-int/lit8 v9, v1, 0x3f

    or-int/2addr v8, v9

    int-to-char v2, v8

    .line 292
    const/4 v5, 0x1

    move v6, v7

    .end local v7    # "strLen":I
    .restart local v6    # "strLen":I
    goto :goto_1

    .line 296
    .end local v1    # "c":I
    .end local v6    # "strLen":I
    .end local p1    # "index":I
    .restart local v4    # "index":I
    .restart local v7    # "strLen":I
    :cond_2
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, p3, v9, v7}, Ljava/lang/String;-><init>([CII)V

    return-object v8

    .line 271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private readUTF8(I[C)Ljava/lang/String;
    .locals 5
    .param p1, "index"    # I
    .param p2, "buf"    # [C

    .prologue
    .line 253
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 254
    .local v0, "item":I
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ClassReader;->strings:[Ljava/lang/String;

    aget-object v1, v2, v0

    .line 255
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 259
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 258
    .restart local v1    # "s":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ClassReader;->items:[I

    aget p1, v2, v0

    .line 259
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ClassReader;->strings:[Ljava/lang/String;

    add-int/lit8 v3, p1, 0x2

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    invoke-direct {p0, v3, v4, p2}, Lcom/alibaba/fastjson/asm/ClassReader;->readUTF(II[C)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "s":Ljava/lang/String;
    aput-object v1, v2, v0

    goto :goto_0
.end method

.method private readUnsignedShort(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 242
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/ClassReader;->b:[B

    .line 243
    .local v0, "b":[B
    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1
.end method


# virtual methods
.method public accept(Lcom/alibaba/fastjson/asm/TypeCollector;)V
    .locals 11
    .param p1, "classVisitor"    # Lcom/alibaba/fastjson/asm/TypeCollector;

    .prologue
    .line 83
    iget v9, p0, Lcom/alibaba/fastjson/asm/ClassReader;->maxStringLength:I

    new-array v1, v9, [C

    .line 88
    .local v1, "c":[C
    const/4 v0, 0x0

    .line 89
    .local v0, "anns":I
    const/4 v3, 0x0

    .line 92
    .local v3, "ianns":I
    iget v6, p0, Lcom/alibaba/fastjson/asm/ClassReader;->header:I

    .line 93
    .local v6, "u":I
    iget-object v9, p0, Lcom/alibaba/fastjson/asm/ClassReader;->items:[I

    add-int/lit8 v10, v6, 0x4

    invoke-direct {p0, v10}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v10

    aget v7, v9, v10

    .line 94
    .local v7, "v":I
    add-int/lit8 v9, v6, 0x6

    invoke-direct {p0, v9}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    .line 95
    .local v5, "len":I
    const/4 v8, 0x0

    .line 96
    .local v8, "w":I
    add-int/lit8 v6, v6, 0x8

    .line 97
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 98
    add-int/lit8 v6, v6, 0x2

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    :cond_0
    move v7, v6

    .line 101
    invoke-direct {p0, v7}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .line 102
    add-int/lit8 v7, v7, 0x2

    .line 103
    :goto_1
    if-lez v2, :cond_2

    .line 104
    add-int/lit8 v9, v7, 0x6

    invoke-direct {p0, v9}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    .line 105
    .local v4, "j":I
    add-int/lit8 v7, v7, 0x8

    .line 106
    :goto_2
    if-lez v4, :cond_1

    .line 107
    add-int/lit8 v9, v7, 0x2

    invoke-direct {p0, v9}, Lcom/alibaba/fastjson/asm/ClassReader;->readInt(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x6

    add-int/2addr v7, v9

    .line 106
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 103
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 110
    .end local v4    # "j":I
    :cond_2
    invoke-direct {p0, v7}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .line 111
    add-int/lit8 v7, v7, 0x2

    .line 112
    :goto_3
    if-lez v2, :cond_4

    .line 113
    add-int/lit8 v9, v7, 0x6

    invoke-direct {p0, v9}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    .line 114
    .restart local v4    # "j":I
    add-int/lit8 v7, v7, 0x8

    .line 115
    :goto_4
    if-lez v4, :cond_3

    .line 116
    add-int/lit8 v9, v7, 0x2

    invoke-direct {p0, v9}, Lcom/alibaba/fastjson/asm/ClassReader;->readInt(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x6

    add-int/2addr v7, v9

    .line 115
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 112
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 120
    .end local v4    # "j":I
    :cond_4
    invoke-direct {p0, v7}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .line 121
    add-int/lit8 v7, v7, 0x2

    .line 122
    :goto_5
    if-lez v2, :cond_5

    .line 123
    add-int/lit8 v9, v7, 0x2

    invoke-direct {p0, v9}, Lcom/alibaba/fastjson/asm/ClassReader;->readInt(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x6

    add-int/2addr v7, v9

    .line 122
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 129
    :cond_5
    invoke-direct {p0, v6}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .line 130
    add-int/lit8 v6, v6, 0x2

    .line 131
    :goto_6
    if-lez v2, :cond_7

    .line 132
    add-int/lit8 v9, v6, 0x6

    invoke-direct {p0, v9}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    .line 133
    .restart local v4    # "j":I
    add-int/lit8 v6, v6, 0x8

    .line 134
    :goto_7
    if-lez v4, :cond_6

    .line 135
    add-int/lit8 v9, v6, 0x2

    invoke-direct {p0, v9}, Lcom/alibaba/fastjson/asm/ClassReader;->readInt(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x6

    add-int/2addr v6, v9

    .line 134
    add-int/lit8 v4, v4, -0x1

    goto :goto_7

    .line 131
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .line 140
    .end local v4    # "j":I
    :cond_7
    invoke-direct {p0, v6}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .line 141
    add-int/lit8 v6, v6, 0x2

    .line 142
    :goto_8
    if-lez v2, :cond_8

    .line 144
    invoke-direct {p0, p1, v1, v6}, Lcom/alibaba/fastjson/asm/ClassReader;->readMethod(Lcom/alibaba/fastjson/asm/TypeCollector;[CI)I

    move-result v6

    .line 142
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    .line 146
    :cond_8
    return-void
.end method
