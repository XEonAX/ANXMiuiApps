.class public Lcom/miui/gallery/util/uil/CryptUtil;
.super Ljava/lang/Object;
.source "CryptUtil.java"


# static fields
.field private static final sAesIv:[B

.field private static final sRandomKey:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 41
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/gallery/util/uil/CryptUtil;->sAesIv:[B

    .line 43
    new-array v0, v1, [B

    sput-object v0, Lcom/miui/gallery/util/uil/CryptUtil;->sRandomKey:[B

    return-void

    .line 41
    :array_0
    .array-data 1
        0x11t
        0x13t
        0x21t
        0x23t
        0x31t
        0x33t
        0x41t
        0x43t
        0x51t
        0x53t
        0x61t
        0x66t
        0x67t
        0x68t
        0x71t
        0x72t
    .end array-data
.end method

.method private static getCipher([BI)Ljavax/crypto/Cipher;
    .locals 6
    .param p0, "key"    # [B
    .param p1, "opmode"    # I

    .prologue
    .line 243
    if-eqz p0, :cond_0

    array-length v4, p0

    const/16 v5, 0x10

    if-eq v4, v5, :cond_1

    .line 244
    :cond_0
    const/4 v0, 0x0

    .line 262
    :goto_0
    return-object v0

    .line 247
    :cond_1
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v3, p0, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 248
    .local v3, "spec":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v4, Lcom/miui/gallery/util/uil/CryptUtil;->sAesIv:[B

    invoke-direct {v2, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 249
    .local v2, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v0, 0x0

    .line 251
    .local v0, "cipher":Ljavax/crypto/Cipher;
    :try_start_0
    const-string v4, "AES/CTR/NoPadding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 252
    invoke-virtual {v0, p1, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 253
    :catch_0
    move-exception v1

    .line 254
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 255
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 256
    .local v1, "e":Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_0

    .line 257
    .end local v1    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v1

    .line 258
    .local v1, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0

    .line 259
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v1

    .line 260
    .local v1, "e":Ljava/security/InvalidAlgorithmParameterException;
    invoke-virtual {v1}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDecryptCipherInputStream(Ljava/lang/String;[B)Ljava/io/InputStream;
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 289
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 290
    .local v0, "is":Ljava/io/InputStream;
    if-eqz p1, :cond_0

    .line 291
    new-instance v1, Ljavax/crypto/CipherInputStream;

    const/4 v2, 0x2

    invoke-static {p1, v2}, Lcom/miui/gallery/util/uil/CryptUtil;->getCipher([BI)Ljavax/crypto/Cipher;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .end local v0    # "is":Ljava/io/InputStream;
    .local v1, "is":Ljava/io/InputStream;
    move-object v0, v1

    .line 293
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v0    # "is":Ljava/io/InputStream;
    :cond_0
    return-object v0
.end method

.method public static getDecryptCipherInputStream(Ljava/io/InputStream;[B)Ljavax/crypto/CipherInputStream;
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "key"    # [B

    .prologue
    .line 285
    new-instance v0, Ljavax/crypto/CipherInputStream;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcom/miui/gallery/util/uil/CryptUtil;->getCipher([BI)Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v0
.end method
