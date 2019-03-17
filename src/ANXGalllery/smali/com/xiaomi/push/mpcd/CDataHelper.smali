.class public Lcom/xiaomi/push/mpcd/CDataHelper;
.super Ljava/lang/Object;
.source "CDataHelper.java"


# direct methods
.method public static decryptData(Ljava/lang/String;[B)[B
    .locals 3
    .param p0, "regSecret"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .prologue
    .line 16
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/string/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v2

    .line 18
    .local v2, "keyBytes":[B
    :try_start_0
    invoke-static {v2}, Lcom/xiaomi/push/mpcd/CDataHelper;->parseKey([B)V

    .line 19
    invoke-static {v2, p1}, Lcom/xiaomi/channel/commonutils/android/DataCryptUtils;->mipushDecrypt([B[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 24
    .local v0, "decryptedBytes":[B
    :goto_0
    return-object v0

    .line 20
    .end local v0    # "decryptedBytes":[B
    :catch_0
    move-exception v1

    .line 22
    .local v1, "ignored":Ljava/lang/Exception;
    const/4 v0, 0x0

    .restart local v0    # "decryptedBytes":[B
    goto :goto_0
.end method

.method public static encryptData(Ljava/lang/String;[B)[B
    .locals 3
    .param p0, "regSecret"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .prologue
    .line 28
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/string/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v2

    .line 31
    .local v2, "keyBytes":[B
    :try_start_0
    invoke-static {v2}, Lcom/xiaomi/push/mpcd/CDataHelper;->parseKey([B)V

    .line 32
    invoke-static {v2, p1}, Lcom/xiaomi/channel/commonutils/android/DataCryptUtils;->mipushEncrypt([B[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 37
    .local v0, "encryptedBytes":[B
    :goto_0
    return-object v0

    .line 33
    .end local v0    # "encryptedBytes":[B
    :catch_0
    move-exception v1

    .line 35
    .local v1, "ignored":Ljava/lang/Exception;
    const/4 v0, 0x0

    .restart local v0    # "encryptedBytes":[B
    goto :goto_0
.end method

.method private static parseKey([B)V
    .locals 2
    .param p0, "key"    # [B

    .prologue
    .line 41
    array-length v0, p0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 42
    const/4 v0, 0x0

    const/16 v1, 0x63

    aput-byte v1, p0, v0

    .line 43
    const/4 v0, 0x1

    const/16 v1, 0x64

    aput-byte v1, p0, v0

    .line 45
    :cond_0
    return-void
.end method
