.class public Lmiui/util/CoderUtils;
.super Ljava/lang/Object;
.source "CoderUtils.java"


# static fields
.field public static final AES_ALGORITHM:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final hexDigits:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 29
    const-string v0, "0"

    const-string v1, "1"

    const-string v2, "2"

    const-string v3, "3"

    const-string v4, "4"

    const-string v5, "5"

    const-string v6, "6"

    const-string v7, "7"

    const-string v8, "8"

    const-string v9, "9"

    const-string v10, "a"

    const-string v11, "b"

    const-string v12, "c"

    const-string v13, "d"

    const-string v14, "e"

    const-string v15, "f"

    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/util/CoderUtils;->hexDigits:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final base64AesEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .line 157
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 161
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 165
    .local v1, "raw":[B
    if-eqz v1, :cond_2

    array-length v2, v1

    const/16 v3, 0x10

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 168
    :cond_1
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 171
    .local v2, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 172
    .local v3, "cipher":Ljavax/crypto/Cipher;
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    const-string v5, "0102030405060708"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 173
    .local v4, "iv":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v5, 0x1

    invoke-virtual {v3, v5, v2, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 174
    new-instance v5, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    invoke-static {v6}, Lmiui/util/CoderUtils;->encodeBase64([B)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 185
    .end local v3    # "cipher":Ljavax/crypto/Cipher;
    .end local v4    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    :catch_0
    move-exception v3

    .line 186
    .local v3, "e":Ljavax/crypto/BadPaddingException;
    return-object v0

    .line 183
    .end local v3    # "e":Ljavax/crypto/BadPaddingException;
    :catch_1
    move-exception v3

    .line 184
    .local v3, "e":Ljavax/crypto/IllegalBlockSizeException;
    return-object v0

    .line 181
    .end local v3    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_2
    move-exception v3

    .line 182
    .local v3, "e":Ljava/security/InvalidAlgorithmParameterException;
    return-object v0

    .line 179
    .end local v3    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_3
    move-exception v3

    .line 180
    .local v3, "e":Ljava/security/InvalidKeyException;
    return-object v0

    .line 177
    .end local v3    # "e":Ljava/security/InvalidKeyException;
    :catch_4
    move-exception v3

    .line 178
    .local v3, "e":Ljavax/crypto/NoSuchPaddingException;
    return-object v0

    .line 175
    .end local v3    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_5
    move-exception v3

    .line 176
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    return-object v0

    .line 166
    .end local v2    # "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_2
    :goto_0
    return-object v0

    .line 158
    .end local v1    # "raw":[B
    :cond_3
    :goto_1
    return-object v0
.end method

.method public static final base6AesDecode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .line 194
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 198
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 199
    .local v1, "raw":[B
    if-eqz v1, :cond_3

    array-length v2, v1

    const/16 v3, 0x10

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 202
    :cond_1
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 204
    .local v2, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 205
    .local v3, "cipher":Ljavax/crypto/Cipher;
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    const-string v5, "0102030405060708"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 206
    .local v4, "iv":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v5, 0x2

    invoke-virtual {v3, v5, v2, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 207
    invoke-static {p0}, Lmiui/util/CoderUtils;->decodeBase64Bytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 208
    .local v5, "encryptedByte":[B
    if-nez v5, :cond_2

    .line 209
    return-object v0

    .line 211
    :cond_2
    invoke-virtual {v3, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    .line 212
    .local v6, "decryptedByte":[B
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    .line 223
    .end local v3    # "cipher":Ljavax/crypto/Cipher;
    .end local v4    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    .end local v5    # "encryptedByte":[B
    .end local v6    # "decryptedByte":[B
    :catch_0
    move-exception v3

    .line 224
    .local v3, "e":Ljavax/crypto/BadPaddingException;
    return-object v0

    .line 221
    .end local v3    # "e":Ljavax/crypto/BadPaddingException;
    :catch_1
    move-exception v3

    .line 222
    .local v3, "e":Ljavax/crypto/IllegalBlockSizeException;
    return-object v0

    .line 219
    .end local v3    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_2
    move-exception v3

    .line 220
    .local v3, "e":Ljava/security/InvalidAlgorithmParameterException;
    return-object v0

    .line 217
    .end local v3    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_3
    move-exception v3

    .line 218
    .local v3, "e":Ljava/security/InvalidKeyException;
    return-object v0

    .line 215
    .end local v3    # "e":Ljava/security/InvalidKeyException;
    :catch_4
    move-exception v3

    .line 216
    .local v3, "e":Ljavax/crypto/NoSuchPaddingException;
    return-object v0

    .line 213
    .end local v3    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_5
    move-exception v3

    .line 214
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    return-object v0

    .line 200
    .end local v2    # "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_3
    :goto_0
    return-object v0

    .line 195
    .end local v1    # "raw":[B
    :cond_4
    :goto_1
    return-object v0
.end method

.method private static byteArrayToString([B)Ljava/lang/String;
    .locals 3
    .param p0, "b"    # [B

    .line 85
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 86
    .local v0, "resultSb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 87
    aget-byte v2, p0, v1

    invoke-static {v2}, Lmiui/util/CoderUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static byteToHexString(B)Ljava/lang/String;
    .locals 5
    .param p0, "b"    # B

    .line 93
    move v0, p0

    .line 94
    .local v0, "n":I
    if-gez v0, :cond_0

    .line 95
    const/16 v1, 0x100

    add-int/2addr v0, v1

    .line 97
    :cond_0
    div-int/lit8 v1, v0, 0x10

    .line 98
    .local v1, "d1":I
    rem-int/lit8 v2, v0, 0x10

    .line 99
    .local v2, "d2":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lmiui/util/CoderUtils;->hexDigits:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lmiui/util/CoderUtils;->hexDigits:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static final decodeBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .line 146
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static final decodeBase64Bytes(Ljava/lang/String;)[B
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .line 150
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static final encodeBase64(Ljava/lang/String;)[B
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .line 134
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static final encodeBase64([B)[B
    .locals 1
    .param p0, "bytes"    # [B

    .line 138
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static final encodeBase64Bytes(Ljava/lang/String;)[B
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .line 142
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static final encodeMD5(Ljava/io/File;)Ljava/lang/String;
    .locals 7
    .param p0, "file"    # Ljava/io/File;

    .line 52
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 53
    .local v0, "buffer":[B
    const/4 v1, 0x0

    move v2, v1

    .line 56
    .local v2, "numRead":I
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6

    .line 60
    .local v4, "fis":Ljava/io/InputStream;
    nop

    .line 59
    nop

    .line 63
    :try_start_1
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 64
    .local v5, "md5":Ljava/security/MessageDigest;
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    move v2, v6

    if-lez v6, :cond_0

    .line 65
    invoke-virtual {v5, v0, v1, v2}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 75
    :cond_0
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 78
    goto :goto_1

    .line 76
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 79
    .end local v1    # "e":Ljava/io/IOException;
    nop

    .line 78
    :goto_1
    nop

    .line 81
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lmiui/util/CoderUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 74
    .end local v5    # "md5":Ljava/security/MessageDigest;
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 70
    :catch_1
    move-exception v1

    .line 71
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 72
    nop

    .line 75
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 78
    goto :goto_2

    .line 76
    :catch_2
    move-exception v5

    .line 77
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 72
    .end local v5    # "e":Ljava/io/IOException;
    :goto_2
    return-object v3

    .line 67
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 68
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_5
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 69
    nop

    .line 75
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 78
    goto :goto_3

    .line 76
    :catch_4
    move-exception v5

    .line 77
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 69
    .end local v5    # "e":Ljava/io/IOException;
    :goto_3
    return-object v3

    .line 74
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_4
    nop

    .line 75
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 78
    goto :goto_5

    .line 76
    :catch_5
    move-exception v3

    .line 77
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 78
    .end local v3    # "e":Ljava/io/IOException;
    :goto_5
    throw v1

    .line 57
    .end local v4    # "fis":Ljava/io/InputStream;
    :catch_6
    move-exception v1

    .line 58
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 59
    return-object v3
.end method

.method public static final encodeMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    move-object v1, v0

    .line 40
    .local v1, "digester":Ljava/security/MessageDigest;
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 44
    .end local v1    # "digester":Ljava/security/MessageDigest;
    .local v0, "digester":Ljava/security/MessageDigest;
    nop

    .line 45
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 46
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 47
    .local v1, "digest":[B
    invoke-static {v1}, Lmiui/util/CoderUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 41
    .end local v0    # "digester":Ljava/security/MessageDigest;
    .local v1, "digester":Ljava/security/MessageDigest;
    :catch_0
    move-exception v2

    .line 42
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 43
    return-object v0

    .line 36
    .end local v1    # "digester":Ljava/security/MessageDigest;
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static final encodeSHA(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .line 103
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    move-object v1, v0

    .line 108
    .local v1, "digester":Ljava/security/MessageDigest;
    :try_start_0
    const-string v2, "SHA"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 112
    .end local v1    # "digester":Ljava/security/MessageDigest;
    .local v0, "digester":Ljava/security/MessageDigest;
    nop

    .line 113
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 114
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 115
    .local v1, "digest":[B
    invoke-static {v1}, Lmiui/util/CoderUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 109
    .end local v0    # "digester":Ljava/security/MessageDigest;
    .local v1, "digester":Ljava/security/MessageDigest;
    :catch_0
    move-exception v2

    .line 110
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 111
    return-object v0

    .line 104
    .end local v1    # "digester":Ljava/security/MessageDigest;
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static final encodeSHABytes(Ljava/lang/String;)[B
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .line 119
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    move-object v1, v0

    .line 124
    .local v1, "digester":Ljava/security/MessageDigest;
    :try_start_0
    const-string v2, "SHA"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 128
    .end local v1    # "digester":Ljava/security/MessageDigest;
    .local v0, "digester":Ljava/security/MessageDigest;
    nop

    .line 129
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 130
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    return-object v1

    .line 125
    .end local v0    # "digester":Ljava/security/MessageDigest;
    .restart local v1    # "digester":Ljava/security/MessageDigest;
    :catch_0
    move-exception v2

    .line 126
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 127
    return-object v0

    .line 120
    .end local v1    # "digester":Ljava/security/MessageDigest;
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_1
    :goto_0
    return-object v0
.end method
