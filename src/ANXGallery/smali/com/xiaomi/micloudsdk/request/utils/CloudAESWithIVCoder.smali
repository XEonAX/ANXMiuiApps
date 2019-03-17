.class public Lcom/xiaomi/micloudsdk/request/utils/CloudAESWithIVCoder;
.super Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;
.source "CloudAESWithIVCoder.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "aesKey"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static encryptHMACSha1([B[B)[B
    .locals 6
    .param p0, "data"    # [B
    .param p1, "key"    # [B

    .prologue
    .line 70
    const-string v0, "HmacSHA1"

    .line 71
    .local v0, "HMAC_SHA1":Ljava/lang/String;
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "HmacSHA1"

    invoke-direct {v3, p1, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 73
    .local v3, "signingKey":Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    const-string v4, "HmacSHA1"

    invoke-static {v4}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 74
    .local v2, "mac":Ljavax/crypto/Mac;
    invoke-virtual {v2, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 75
    invoke-virtual {v2, p0}, Ljavax/crypto/Mac;->update([B)V

    .line 76
    invoke-virtual {v2}, Ljavax/crypto/Mac;->doFinal()[B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 82
    .end local v2    # "mac":Ljavax/crypto/Mac;
    :goto_0
    return-object v4

    .line 77
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Ljava/security/InvalidKeyException;
    const-string v4, "CloudAESWithIVCoder"

    const-string v5, "encryptHMACSha1 error"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 79
    :catch_1
    move-exception v1

    .line 80
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v4, "CloudAESWithIVCoder"

    const-string v5, "encryptHMACSha1 error"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "responseBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/exception/CipherException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    .line 32
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/request/utils/CloudAESWithIVCoder;->checkThreadIdThrow()V

    .line 34
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 36
    .local v5, "result":Lorg/json/JSONObject;
    const-string v9, "D"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "edata":Ljava/lang/String;
    const-string v9, "S"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 38
    .local v7, "security":Ljava/lang/String;
    const-string v9, ":"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 39
    .local v2, "elems":[Ljava/lang/String;
    array-length v9, v2

    if-eq v9, v10, :cond_0

    .line 40
    new-instance v9, Ljava/lang/SecurityException;

    const-string v10, "not 2 columns in security info"

    invoke-direct {v9, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    .line 54
    .end local v1    # "edata":Ljava/lang/String;
    .end local v2    # "elems":[Ljava/lang/String;
    .end local v5    # "result":Lorg/json/JSONObject;
    .end local v7    # "security":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Lorg/json/JSONException;
    const-string v9, "CloudAESWithIVCoder"

    const-string v10, "decrypt error"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    new-instance v9, Lcom/xiaomi/micloudsdk/exception/CipherException;

    const-string v10, "decrypt error"

    invoke-direct {v9, v10, v0}, Lcom/xiaomi/micloudsdk/exception/CipherException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 42
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "edata":Ljava/lang/String;
    .restart local v2    # "elems":[Ljava/lang/String;
    .restart local v5    # "result":Lorg/json/JSONObject;
    .restart local v7    # "security":Ljava/lang/String;
    :cond_0
    const/4 v9, 0x0

    :try_start_1
    aget-object v3, v2, v9

    .line 43
    .local v3, "nonce":Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v6, v2, v9

    .line 44
    .local v6, "returnHash":Ljava/lang/String;
    const-string v9, "%s:%s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    const/4 v11, 0x1

    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 45
    .local v8, "signedData":Ljava/lang/String;
    const-string v9, "UTF-8"

    .line 46
    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    iget-object v10, p0, Lcom/xiaomi/micloudsdk/request/utils/CloudAESWithIVCoder;->aesKey:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v10

    invoke-static {v9, v10}, Lcom/xiaomi/micloudsdk/request/utils/CloudAESWithIVCoder;->encryptHMACSha1([B[B)[B

    move-result-object v9

    const/16 v10, 0xb

    .line 45
    invoke-static {v9, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 48
    .local v4, "realHash":Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 49
    new-instance v9, Lcom/xiaomi/micloudsdk/exception/CipherException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "server hash "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " and local hash "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " dismatch"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/xiaomi/micloudsdk/exception/CipherException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    .line 57
    .end local v1    # "edata":Ljava/lang/String;
    .end local v2    # "elems":[Ljava/lang/String;
    .end local v3    # "nonce":Ljava/lang/String;
    .end local v4    # "realHash":Ljava/lang/String;
    .end local v5    # "result":Lorg/json/JSONObject;
    .end local v6    # "returnHash":Ljava/lang/String;
    .end local v7    # "security":Ljava/lang/String;
    .end local v8    # "signedData":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 58
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v9, "CloudAESWithIVCoder"

    const-string v10, "decrypt error"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    new-instance v9, Lcom/xiaomi/micloudsdk/exception/CipherException;

    const-string v10, "decrypt error"

    invoke-direct {v9, v10, v0}, Lcom/xiaomi/micloudsdk/exception/CipherException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 53
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "edata":Ljava/lang/String;
    .restart local v2    # "elems":[Ljava/lang/String;
    .restart local v3    # "nonce":Ljava/lang/String;
    .restart local v4    # "realHash":Ljava/lang/String;
    .restart local v5    # "result":Lorg/json/JSONObject;
    .restart local v6    # "returnHash":Ljava/lang/String;
    .restart local v7    # "security":Ljava/lang/String;
    .restart local v8    # "signedData":Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-super {p0, v1}, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->decrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v9

    return-object v9

    .line 60
    .end local v1    # "edata":Ljava/lang/String;
    .end local v2    # "elems":[Ljava/lang/String;
    .end local v3    # "nonce":Ljava/lang/String;
    .end local v4    # "realHash":Ljava/lang/String;
    .end local v5    # "result":Lorg/json/JSONObject;
    .end local v6    # "returnHash":Ljava/lang/String;
    .end local v7    # "security":Ljava/lang/String;
    .end local v8    # "signedData":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v9, "CloudAESWithIVCoder"

    const-string v10, "decrypt error"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    new-instance v9, Lcom/xiaomi/micloudsdk/exception/CipherException;

    const-string v10, "decrypt error"

    invoke-direct {v9, v10, v0}, Lcom/xiaomi/micloudsdk/exception/CipherException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 63
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v9, "CloudAESWithIVCoder"

    const-string v10, "decrypt error"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    new-instance v9, Lcom/xiaomi/micloudsdk/exception/CipherException;

    const-string v10, "decrypt error"

    invoke-direct {v9, v10, v0}, Lcom/xiaomi/micloudsdk/exception/CipherException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
.end method
