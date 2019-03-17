.class public Lcn/kuaipan/android/utils/Encode;
.super Ljava/lang/Object;
.source "Encode.java"


# static fields
.field static final HEXDIGITS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "b"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "d"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "e"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "f"

    aput-object v2, v0, v1

    sput-object v0, Lcn/kuaipan/android/utils/Encode;->HEXDIGITS:[Ljava/lang/String;

    return-void
.end method

.method public static MD5Encode([B)Ljava/lang/String;
    .locals 5
    .param p0, "oriData"    # [B

    .prologue
    .line 90
    const/4 v2, 0x0

    .line 92
    .local v2, "md5":Ljava/lang/String;
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 93
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    invoke-static {v3}, Lcn/kuaipan/android/utils/Encode;->byteArrayToHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v3, v2

    .line 98
    .end local v1    # "md":Ljava/security/MessageDigest;
    :goto_0
    return-object v3

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Encode"

    const-string v4, "MD5Encode failed."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static SHA1Encode(Ljava/io/InputStream;I)Ljava/lang/String;
    .locals 8
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "size"    # I

    .prologue
    .line 132
    :try_start_0
    const-string/jumbo v5, "sha1"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 133
    .local v3, "md":Ljava/security/MessageDigest;
    const/16 v5, 0x4000

    new-array v0, v5, [B

    .line 134
    .local v0, "buf":[B
    const/4 v2, -0x1

    .line 135
    .local v2, "len":I
    const/4 v4, 0x0

    .line 136
    .local v4, "pos":I
    :cond_0
    const/4 v5, 0x0

    array-length v6, v0

    sub-int v7, p1, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v0, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_1

    .line 137
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 138
    add-int/2addr v4, v2

    .line 139
    sub-int v5, p1, v4

    if-gtz v5, :cond_0

    .line 144
    :cond_1
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-static {v5}, Lcn/kuaipan/android/utils/Encode;->byteArrayToHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 147
    .end local v0    # "buf":[B
    .end local v2    # "len":I
    .end local v3    # "md":Ljava/security/MessageDigest;
    .end local v4    # "pos":I
    :goto_0
    return-object v5

    .line 145
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "Encode"

    const-string v6, "SHA1Encode failed."

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static SHA1Encode(Ljava/io/RandomAccessFile;JJ)Ljava/lang/String;
    .locals 15
    .param p0, "file"    # Ljava/io/RandomAccessFile;
    .param p1, "start"    # J
    .param p3, "len"    # J

    .prologue
    .line 177
    :try_start_0
    const-string/jumbo v8, "sha1"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 178
    .local v5, "md":Ljava/security/MessageDigest;
    const/16 v8, 0x2000

    new-array v0, v8, [B

    .line 180
    .local v0, "buf":[B
    add-long v2, p1, p3

    .line 181
    .local v2, "end":J
    move-wide/from16 v6, p1

    .line 182
    .local v6, "pos":J
    invoke-virtual {p0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 184
    const/4 v4, -0x1

    .line 185
    .local v4, "l":I
    :cond_0
    const/4 v8, 0x0

    array-length v9, v0

    int-to-long v10, v9

    sub-long v12, v2, v6

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v9, v10

    invoke-virtual {p0, v0, v8, v9}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v4

    if-ltz v4, :cond_1

    .line 186
    const/4 v8, 0x0

    invoke-virtual {v5, v0, v8, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 187
    int-to-long v8, v4

    add-long/2addr v6, v8

    .line 188
    cmp-long v8, v6, v2

    if-ltz v8, :cond_0

    .line 193
    :cond_1
    cmp-long v8, v6, v2

    if-gez v8, :cond_2

    .line 194
    const-string v8, "Encode"

    const-string v9, "File size may not enough for sha1."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v8, 0x0

    .line 201
    .end local v0    # "buf":[B
    .end local v2    # "end":J
    .end local v4    # "l":I
    .end local v5    # "md":Ljava/security/MessageDigest;
    .end local v6    # "pos":J
    :goto_0
    return-object v8

    .line 198
    .restart local v0    # "buf":[B
    .restart local v2    # "end":J
    .restart local v4    # "l":I
    .restart local v5    # "md":Ljava/security/MessageDigest;
    .restart local v6    # "pos":J
    :cond_2
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    invoke-static {v8}, Lcn/kuaipan/android/utils/Encode;->byteArrayToHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_0

    .line 199
    .end local v0    # "buf":[B
    .end local v2    # "end":J
    .end local v4    # "l":I
    .end local v5    # "md":Ljava/security/MessageDigest;
    .end local v6    # "pos":J
    :catch_0
    move-exception v1

    .line 200
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "Encode"

    const-string v9, "SHA1Encode failed."

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public static byteArrayToHexString([B)Ljava/lang/String;
    .locals 4
    .param p0, "b"    # [B

    .prologue
    .line 31
    if-nez p0, :cond_0

    .line 32
    const/4 v2, 0x0

    .line 40
    :goto_0
    return-object v2

    .line 35
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 36
    .local v1, "resultSB":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 37
    sget-object v2, Lcn/kuaipan/android/utils/Encode;->HEXDIGITS:[Ljava/lang/String;

    aget-byte v3, p0, v0

    ushr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    sget-object v2, Lcn/kuaipan/android/utils/Encode;->HEXDIGITS:[Ljava/lang/String;

    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 5
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x10

    .line 17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v0, v2, [B

    .line 18
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 19
    mul-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    mul-int/lit8 v2, v2, 0x10

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    .line 20
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 19
    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    add-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 18
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 22
    :cond_0
    return-object v0
.end method
