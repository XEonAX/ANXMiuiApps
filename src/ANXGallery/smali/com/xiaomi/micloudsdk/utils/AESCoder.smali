.class public Lcom/xiaomi/micloudsdk/utils/AESCoder;
.super Ljava/lang/Object;
.source "AESCoder.java"

# interfaces
.implements Lcom/xiaomi/micloudsdk/utils/CryptCoder;


# instance fields
.field private keySpec:Ljavax/crypto/spec/SecretKeySpec;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "aesKey"    # Ljava/lang/String;

    .prologue
    .line 33
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/xiaomi/micloudsdk/utils/AESCoder;-><init>([B)V

    .line 34
    return-void

    .line 33
    :cond_0
    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "aesKey"    # [B

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    if-nez p1, :cond_0

    .line 23
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "aes key is null"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_0
    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    .line 27
    const-string v0, "AESCoder"

    const-string v1, "aesKey is invalid"

    invoke-static {v0, v1}, Lcom/xiaomi/micloudsdk/utils/MiCloudLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_1
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/utils/AESCoder;->keySpec:Ljavax/crypto/spec/SecretKeySpec;

    .line 30
    return-void
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "base64EncodeData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/exception/CipherException;
        }
    .end annotation

    .prologue
    .line 42
    if-nez p1, :cond_0

    .line 43
    const-string v3, "AESCoder"

    const-string v4, "decrypt failed for empty data"

    invoke-static {v3, v4}, Lcom/xiaomi/micloudsdk/utils/MiCloudLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const/4 v3, 0x0

    .line 49
    :goto_0
    return-object v3

    .line 47
    :cond_0
    const/4 v3, 0x2

    :try_start_0
    invoke-static {p1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 48
    .local v2, "encryptedByte":[B
    invoke-virtual {p0, v2}, Lcom/xiaomi/micloudsdk/utils/AESCoder;->decrypt([B)[B

    move-result-object v0

    .line 49
    .local v0, "decryptedByte":[B
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    .end local v0    # "decryptedByte":[B
    .end local v2    # "encryptedByte":[B
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/xiaomi/micloudsdk/exception/CipherException;

    const-string v4, "fail to decrypt by aescoder"

    invoke-direct {v3, v4, v1}, Lcom/xiaomi/micloudsdk/exception/CipherException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public decrypt([B)[B
    .locals 6
    .param p1, "cipherData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/exception/CipherException;
        }
    .end annotation

    .prologue
    .line 61
    :try_start_0
    const-string v4, "AES/CBC/PKCS5Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 62
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/utils/AESCoder;->getInitalVector()[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 63
    .local v2, "iv":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/xiaomi/micloudsdk/utils/AESCoder;->keySpec:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, v4, v5, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 64
    if-nez p1, :cond_0

    .line 65
    new-instance v4, Ljavax/crypto/IllegalBlockSizeException;

    const-string v5, "no block data"

    invoke-direct {v4, v5}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/xiaomi/micloudsdk/exception/CipherException;

    const-string v5, "fail to decrypt by aescoder"

    invoke-direct {v4, v5, v1}, Lcom/xiaomi/micloudsdk/exception/CipherException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 67
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cipher":Ljavax/crypto/Cipher;
    .restart local v2    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 68
    .local v3, "rawData":[B
    return-object v3
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/exception/CipherException;
        }
    .end annotation

    .prologue
    .line 86
    :try_start_0
    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 87
    .local v2, "rawData":[B
    invoke-virtual {p0, v2}, Lcom/xiaomi/micloudsdk/utils/AESCoder;->encrypt([B)[B

    move-result-object v0

    .line 88
    .local v0, "cipherData":[B
    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 89
    .end local v0    # "cipherData":[B
    .end local v2    # "rawData":[B
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/xiaomi/micloudsdk/exception/CipherException;

    const-string v4, "fail to encrypt by aescoder"

    invoke-direct {v3, v4, v1}, Lcom/xiaomi/micloudsdk/exception/CipherException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public encrypt([B)[B
    .locals 5
    .param p1, "rawData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/exception/CipherException;
        }
    .end annotation

    .prologue
    .line 101
    :try_start_0
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 102
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/utils/AESCoder;->getInitalVector()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 103
    .local v2, "iv":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/xiaomi/micloudsdk/utils/AESCoder;->keySpec:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, v3, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 104
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 105
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/xiaomi/micloudsdk/exception/CipherException;

    const-string v4, "fail to encrypt by aescoder"

    invoke-direct {v3, v4, v1}, Lcom/xiaomi/micloudsdk/exception/CipherException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected getInitalVector()[B
    .locals 1

    .prologue
    .line 77
    const-string v0, "0102030405060708"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method
