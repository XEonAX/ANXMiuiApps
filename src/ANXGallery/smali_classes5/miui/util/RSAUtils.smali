.class public Lmiui/util/RSAUtils;
.super Ljava/lang/Object;
.source "RSAUtils.java"


# static fields
.field public static final CIPHER_RSA:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field private static final DEFAULT_RADIX:I = 0x10

.field public static final FLAG_CRLF:I = 0x4

.field public static final FLAG_DEFAULT:I = 0x0

.field public static final FLAG_NO_CLOSE:I = 0x10

.field public static final FLAG_NO_PADDING:I = 0x1

.field public static final FLAG_NO_WRAP:I = 0x2

.field public static final FLAG_URL_SAFE:I = 0x8

.field public static final KEY_RSA:Ljava/lang/String; = "RSA"

.field private static final MAX_DECRYPT_BLOCK:I = 0x80

.field private static final MAX_ENCRYPT_BLOCK:I = 0x75

.field public static final SIGNATURE_MD5_WITH_RSA:Ljava/lang/String; = "MD5withRSA"

.field public static final SIGNATURE_SHA1_WITH_RSA:Ljava/lang/String; = "SHA1withRSA"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static decrypt(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;
    .locals 1
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 154
    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {p0, p1, v0}, Lmiui/util/RSAUtils;->decrypt(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decrypt(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, p1, p2}, Lmiui/util/RSAUtils;->decrypt([BLjava/security/Key;Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static decrypt([BLjava/security/Key;)[B
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 146
    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {p0, p1, v0}, Lmiui/util/RSAUtils;->decrypt([BLjava/security/Key;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static decrypt([BLjava/security/Key;Ljava/lang/String;)[B
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 142
    const/4 v0, 0x2

    invoke-static {p0, p1, p2, v0}, Lmiui/util/RSAUtils;->doEncryptOrDecrypt([BLjava/security/Key;Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method private static doEncryptOrDecrypt([BLjava/security/Key;Ljava/lang/String;I)[B
    .locals 6
    .param p0, "data"    # [B
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 95
    invoke-static {p3}, Lmiui/util/RSAUtils;->getMaxBlock(I)I

    move-result v0

    .line 96
    .local v0, "maxBlock":I
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 97
    .local v1, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v1, p3, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 98
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 99
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 100
    .local v3, "offset":I
    :goto_0
    array-length v4, p0

    sub-int/2addr v4, v3

    if-lez v4, :cond_1

    .line 101
    const/4 v4, 0x0

    .line 102
    .local v4, "cache":[B
    array-length v5, p0

    sub-int/2addr v5, v3

    if-le v5, v0, :cond_0

    .line 103
    invoke-virtual {v1, p0, v3, v0}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v4

    goto :goto_1

    .line 105
    :cond_0
    array-length v5, p0

    sub-int/2addr v5, v3

    invoke-virtual {v1, p0, v3, v5}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v4

    .line 107
    :goto_1
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 108
    add-int/2addr v3, v0

    .line 109
    .end local v4    # "cache":[B
    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 111
    .local v4, "deformedData":[B
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 112
    return-object v4
.end method

.method public static encrypt(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;
    .locals 1
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 138
    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {p0, p1, v0}, Lmiui/util/RSAUtils;->encrypt(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encrypt(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 134
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, p1, p2}, Lmiui/util/RSAUtils;->encrypt([BLjava/security/Key;Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static encrypt([BLjava/security/Key;)[B
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 130
    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {p0, p1, v0}, Lmiui/util/RSAUtils;->encrypt([BLjava/security/Key;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encrypt([BLjava/security/Key;Ljava/lang/String;)[B
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 126
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lmiui/util/RSAUtils;->doEncryptOrDecrypt([BLjava/security/Key;Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method private static getMaxBlock(I)I
    .locals 2
    .param p0, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 116
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 117
    const/16 v0, 0x75

    return v0

    .line 118
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 119
    const/16 v0, 0x80

    return v0

    .line 121
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrong operation mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 91
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/util/RSAUtils;->getPrivateKey(Ljava/lang/String;I)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public static getPrivateKey(Ljava/lang/String;I)Ljava/security/PrivateKey;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    invoke-static {p0, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 87
    .local v0, "keyBytes":[B
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-static {v1}, Lmiui/util/RSAUtils;->getPrivateKey(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    return-object v1
.end method

.method public static getPrivateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1
    .param p0, "modulus"    # Ljava/lang/String;
    .param p1, "exponent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 82
    const/16 v0, 0x10

    invoke-static {p0, p1, v0}, Lmiui/util/RSAUtils;->getPrivateKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public static getPrivateKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/security/PrivateKey;
    .locals 3
    .param p0, "modulus"    # Ljava/lang/String;
    .param p1, "exponent"    # Ljava/lang/String;
    .param p2, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0, p2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 77
    .local v0, "m":Ljava/math/BigInteger;
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p1, p2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 78
    .local v1, "e":Ljava/math/BigInteger;
    new-instance v2, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-direct {v2, v0, v1}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v2}, Lmiui/util/RSAUtils;->getPrivateKey(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v2

    return-object v2
.end method

.method public static getPrivateKey(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 2
    .param p0, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 70
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 71
    .local v0, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v0, p0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    .line 72
    .local v1, "privateKey":Ljava/security/PrivateKey;
    return-object v1
.end method

.method public static getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 66
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/util/RSAUtils;->getPublicKey(Ljava/lang/String;I)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public static getPublicKey(Ljava/lang/String;I)Ljava/security/PublicKey;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 61
    invoke-static {p0, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 62
    .local v0, "keyBytes":[B
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-static {v1}, Lmiui/util/RSAUtils;->getPublicKey(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1

    return-object v1
.end method

.method public static getPublicKey(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 1
    .param p0, "modulus"    # Ljava/lang/String;
    .param p1, "exponent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 57
    const/16 v0, 0x10

    invoke-static {p0, p1, v0}, Lmiui/util/RSAUtils;->getPublicKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public static getPublicKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/security/PublicKey;
    .locals 3
    .param p0, "modulus"    # Ljava/lang/String;
    .param p1, "exponent"    # Ljava/lang/String;
    .param p2, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0, p2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 52
    .local v0, "m":Ljava/math/BigInteger;
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p1, p2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 53
    .local v1, "e":Ljava/math/BigInteger;
    new-instance v2, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v2, v0, v1}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v2}, Lmiui/util/RSAUtils;->getPublicKey(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    return-object v2
.end method

.method public static getPublicKey(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 2
    .param p0, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 46
    .local v0, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v0, p0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1

    .line 47
    .local v1, "publicKey":Ljava/security/PublicKey;
    return-object v1
.end method

.method public static sign(Ljava/lang/String;Ljava/security/PrivateKey;)Ljava/lang/String;
    .locals 1
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 173
    const-string v0, "SHA1withRSA"

    invoke-static {p0, p1, v0}, Lmiui/util/RSAUtils;->sign(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sign(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 169
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, p1, p2}, Lmiui/util/RSAUtils;->sign([BLjava/security/PrivateKey;Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static sign([BLjava/security/PrivateKey;)[B
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 165
    const-string v0, "SHA1withRSA"

    invoke-static {p0, p1, v0}, Lmiui/util/RSAUtils;->sign([BLjava/security/PrivateKey;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static sign([BLjava/security/PrivateKey;Ljava/lang/String;)[B
    .locals 2
    .param p0, "data"    # [B
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 158
    invoke-static {p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 159
    .local v0, "signature":Ljava/security/Signature;
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 160
    invoke-virtual {v0, p0}, Ljava/security/Signature;->update([B)V

    .line 161
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v1

    return-object v1
.end method

.method public static verify(Ljava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;)Z
    .locals 1
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sign"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 192
    const-string v0, "SHA1withRSA"

    invoke-static {p0, p1, p2, v0}, Lmiui/util/RSAUtils;->verify(Ljava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static verify(Ljava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sign"    # Ljava/lang/String;
    .param p3, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 188
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, p1, v1, p3}, Lmiui/util/RSAUtils;->verify([BLjava/security/PublicKey;[BLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static verify([BLjava/security/PublicKey;[B)Z
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sign"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 184
    const-string v0, "SHA1withRSA"

    invoke-static {p0, p1, p2, v0}, Lmiui/util/RSAUtils;->verify([BLjava/security/PublicKey;[BLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static verify([BLjava/security/PublicKey;[BLjava/lang/String;)Z
    .locals 2
    .param p0, "data"    # [B
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sign"    # [B
    .param p3, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 177
    invoke-static {p3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 178
    .local v0, "signature":Ljava/security/Signature;
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 179
    invoke-virtual {v0, p0}, Ljava/security/Signature;->update([B)V

    .line 180
    invoke-virtual {v0, p2}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    return v1
.end method
