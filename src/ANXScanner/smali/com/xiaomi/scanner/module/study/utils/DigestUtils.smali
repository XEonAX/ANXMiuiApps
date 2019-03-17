.class public Lcom/xiaomi/scanner/module/study/utils/DigestUtils;
.super Ljava/lang/Object;
.source "DigestUtils.java"


# static fields
.field private static final DIGITS_LOWER:[C

.field private static final DIGITS_UPPER:[C

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 12
    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaomi/scanner/module/study/utils/DigestUtils;->DIGITS_LOWER:[C

    .line 19
    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/xiaomi/scanner/module/study/utils/DigestUtils;->DIGITS_UPPER:[C

    .line 23
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-class v1, Lcom/xiaomi/scanner/module/study/utils/DigestUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/study/utils/DigestUtils;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void

    .line 12
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data

    .line 19
    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MD5_32(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "passwd"    # Ljava/lang/String;

    .prologue
    .line 68
    if-nez p0, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 70
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/scanner/module/study/utils/DigestUtils;->getBytesMD5([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static byte2Hex(B)Ljava/lang/String;
    .locals 3
    .param p0, "b"    # B

    .prologue
    .line 94
    and-int/lit8 v2, p0, 0x7f

    if-gez p0, :cond_0

    const/16 v1, 0x80

    :goto_0
    add-int v0, v2, v1

    .line 95
    .local v0, "value":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    const-string v1, "0"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 96
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 94
    .end local v0    # "value":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 95
    .restart local v0    # "value":I
    :cond_1
    const-string v1, ""

    goto :goto_1
.end method

.method private static digest([BLjava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "alg"    # Ljava/lang/String;
    .param p2, "toUpperCase"    # Z

    .prologue
    const/4 v2, 0x0

    .line 38
    if-nez p0, :cond_0

    .line 50
    :goto_0
    return-object v2

    .line 43
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 44
    .local v1, "messageDigest":Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 45
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3, p2}, Lcom/xiaomi/scanner/module/study/utils/DigestUtils;->toHexString([BZ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 46
    .end local v1    # "messageDigest":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/xiaomi/scanner/module/study/utils/DigestUtils;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static digestMD5Hex([B)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 34
    const-string v0, "MD5"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/xiaomi/scanner/module/study/utils/DigestUtils;->digest([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static digestSHA1(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v1, "SHA1"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaomi/scanner/module/study/utils/DigestUtils;->digest([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static digestSHA1([B)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 30
    const-string v0, "SHA1"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/xiaomi/scanner/module/study/utils/DigestUtils;->digest([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getBytesMD5([B)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B

    .prologue
    const/4 v5, 0x0

    .line 74
    if-eqz p0, :cond_0

    array-length v6, p0

    if-nez v6, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-object v5

    .line 79
    :cond_1
    :try_start_0
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 84
    .local v3, "md5":Ljava/security/MessageDigest;
    const/4 v5, 0x0

    array-length v6, p0

    invoke-virtual {v3, p0, v5, v6}, Ljava/security/MessageDigest;->update([BII)V

    .line 85
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 86
    .local v0, "digest":[B
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 87
    .local v4, "strbuf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, v0

    if-ge v2, v5, :cond_2

    .line 88
    aget-byte v5, v0, v2

    invoke-static {v5}, Lcom/xiaomi/scanner/module/study/utils/DigestUtils;->byte2Hex(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 80
    .end local v0    # "digest":[B
    .end local v2    # "i":I
    .end local v3    # "md5":Ljava/security/MessageDigest;
    .end local v4    # "strbuf":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_0

    .line 90
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v0    # "digest":[B
    .restart local v2    # "i":I
    .restart local v3    # "md5":Ljava/security/MessageDigest;
    .restart local v4    # "strbuf":Ljava/lang/StringBuffer;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private static toHexString([BZ)Ljava/lang/String;
    .locals 5
    .param p0, "bytes"    # [B
    .param p1, "toUpperCase"    # Z

    .prologue
    .line 54
    array-length v3, p0

    .line 55
    .local v3, "len":I
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v4, v3, 0x2

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 57
    .local v1, "buf":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    sget-object v0, Lcom/xiaomi/scanner/module/study/utils/DigestUtils;->DIGITS_UPPER:[C

    .line 59
    .local v0, "array":[C
    :goto_0
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 60
    aget-byte v4, p0, v2

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v0, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    aget-byte v4, p0, v2

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v0, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 57
    .end local v0    # "array":[C
    .end local v2    # "j":I
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/module/study/utils/DigestUtils;->DIGITS_LOWER:[C

    goto :goto_0

    .line 64
    .restart local v0    # "array":[C
    .restart local v2    # "j":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
