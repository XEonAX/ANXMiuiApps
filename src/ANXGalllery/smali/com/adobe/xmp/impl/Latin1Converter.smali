.class public Lcom/adobe/xmp/impl/Latin1Converter;
.super Ljava/lang/Object;
.source "Latin1Converter.java"


# direct methods
.method public static convert(Lcom/adobe/xmp/impl/ByteBuffer;)Lcom/adobe/xmp/impl/ByteBuffer;
    .locals 13
    .param p0, "buffer"    # Lcom/adobe/xmp/impl/ByteBuffer;

    .prologue
    .line 68
    const-string v11, "UTF-8"

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/ByteBuffer;->getEncoding()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 71
    const/16 v11, 0x8

    new-array v7, v11, [B

    .line 73
    .local v7, "readAheadBuffer":[B
    const/4 v5, 0x0

    .line 75
    .local v5, "readAhead":I
    const/4 v1, 0x0

    .line 77
    .local v1, "expectedBytes":I
    new-instance v4, Lcom/adobe/xmp/impl/ByteBuffer;

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/ByteBuffer;->length()I

    move-result v11

    mul-int/lit8 v11, v11, 0x4

    div-int/lit8 v11, v11, 0x3

    invoke-direct {v4, v11}, Lcom/adobe/xmp/impl/ByteBuffer;-><init>(I)V

    .line 79
    .local v4, "out":Lcom/adobe/xmp/impl/ByteBuffer;
    const/4 v8, 0x0

    .line 80
    .local v8, "state":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/ByteBuffer;->length()I

    move-result v11

    if-ge v2, v11, :cond_4

    .line 82
    invoke-virtual {p0, v2}, Lcom/adobe/xmp/impl/ByteBuffer;->charAt(I)I

    move-result v0

    .line 84
    .local v0, "b":I
    packed-switch v8, :pswitch_data_0

    .line 88
    const/16 v11, 0x7f

    if-ge v0, v11, :cond_0

    .line 90
    int-to-byte v11, v0

    invoke-virtual {v4, v11}, Lcom/adobe/xmp/impl/ByteBuffer;->append(B)V

    .line 80
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    :cond_0
    const/16 v11, 0xc0

    if-lt v0, v11, :cond_2

    .line 95
    const/4 v1, -0x1

    .line 96
    move v9, v0

    .line 97
    .local v9, "test":I
    :goto_2
    const/16 v11, 0x8

    if-ge v1, v11, :cond_1

    and-int/lit16 v11, v9, 0x80

    const/16 v12, 0x80

    if-ne v11, v12, :cond_1

    .line 99
    add-int/lit8 v1, v1, 0x1

    .line 97
    shl-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 101
    :cond_1
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "readAhead":I
    .local v6, "readAhead":I
    int-to-byte v11, v0

    aput-byte v11, v7, v5

    .line 102
    const/16 v8, 0xb

    move v5, v6

    .line 103
    .end local v6    # "readAhead":I
    .restart local v5    # "readAhead":I
    goto :goto_1

    .line 107
    .end local v9    # "test":I
    :cond_2
    int-to-byte v11, v0

    invoke-static {v11}, Lcom/adobe/xmp/impl/Latin1Converter;->convertToUTF8(B)[B

    move-result-object v10

    .line 108
    .local v10, "utf8":[B
    invoke-virtual {v4, v10}, Lcom/adobe/xmp/impl/ByteBuffer;->append([B)V

    goto :goto_1

    .line 113
    .end local v10    # "utf8":[B
    :pswitch_0
    if-lez v1, :cond_3

    and-int/lit16 v11, v0, 0xc0

    const/16 v12, 0x80

    if-ne v11, v12, :cond_3

    .line 116
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "readAhead":I
    .restart local v6    # "readAhead":I
    int-to-byte v11, v0

    aput-byte v11, v7, v5

    .line 117
    add-int/lit8 v1, v1, -0x1

    .line 119
    if-nez v1, :cond_7

    .line 121
    const/4 v11, 0x0

    invoke-virtual {v4, v7, v11, v6}, Lcom/adobe/xmp/impl/ByteBuffer;->append([BII)V

    .line 122
    const/4 v5, 0x0

    .line 124
    .end local v6    # "readAhead":I
    .restart local v5    # "readAhead":I
    const/4 v8, 0x0

    goto :goto_1

    .line 131
    :cond_3
    const/4 v11, 0x0

    aget-byte v11, v7, v11

    invoke-static {v11}, Lcom/adobe/xmp/impl/Latin1Converter;->convertToUTF8(B)[B

    move-result-object v10

    .line 132
    .restart local v10    # "utf8":[B
    invoke-virtual {v4, v10}, Lcom/adobe/xmp/impl/ByteBuffer;->append([B)V

    .line 135
    sub-int/2addr v2, v5

    .line 136
    const/4 v5, 0x0

    .line 138
    const/4 v8, 0x0

    goto :goto_1

    .line 145
    .end local v0    # "b":I
    .end local v10    # "utf8":[B
    :cond_4
    const/16 v11, 0xb

    if-ne v8, v11, :cond_6

    .line 147
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3
    if-ge v3, v5, :cond_6

    .line 149
    aget-byte v0, v7, v3

    .line 150
    .local v0, "b":B
    invoke-static {v0}, Lcom/adobe/xmp/impl/Latin1Converter;->convertToUTF8(B)[B

    move-result-object v10

    .line 151
    .restart local v10    # "utf8":[B
    invoke-virtual {v4, v10}, Lcom/adobe/xmp/impl/ByteBuffer;->append([B)V

    .line 147
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v0    # "b":B
    .end local v1    # "expectedBytes":I
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "out":Lcom/adobe/xmp/impl/ByteBuffer;
    .end local v5    # "readAhead":I
    .end local v7    # "readAheadBuffer":[B
    .end local v8    # "state":I
    .end local v10    # "utf8":[B
    :cond_5
    move-object v4, p0

    .line 160
    :cond_6
    return-object v4

    .local v0, "b":I
    .restart local v1    # "expectedBytes":I
    .restart local v2    # "i":I
    .restart local v4    # "out":Lcom/adobe/xmp/impl/ByteBuffer;
    .restart local v6    # "readAhead":I
    .restart local v7    # "readAheadBuffer":[B
    .restart local v8    # "state":I
    :cond_7
    move v5, v6

    .end local v6    # "readAhead":I
    .restart local v5    # "readAhead":I
    goto :goto_1

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method private static convertToUTF8(B)[B
    .locals 6
    .param p0, "ch"    # B

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 177
    and-int/lit16 v0, p0, 0xff

    .line 180
    .local v0, "c":I
    const/16 v1, 0x80

    if-lt v0, v1, :cond_2

    .line 182
    const/16 v1, 0x81

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8d

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8f

    if-eq v0, v1, :cond_0

    const/16 v1, 0x90

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9d

    if-ne v0, v1, :cond_1

    .line 184
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, 0x20

    aput-byte v3, v1, v2

    .line 195
    :goto_0
    return-object v1

    .line 188
    :cond_1
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte p0, v2, v3

    const-string v3, "cp1252"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 191
    :catch_0
    move-exception v1

    .line 195
    :cond_2
    new-array v1, v5, [B

    aput-byte p0, v1, v4

    goto :goto_0
.end method
