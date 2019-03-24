.class public Lmiui/util/HashUtils;
.super Ljava/lang/Object;
.source "HashUtils.java"


# static fields
.field public static final MD5:Ljava/lang/String; = "MD5"

.field public static final SHA1:Ljava/lang/String; = "SHA1"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static getHash(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "method"    # Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    .line 86
    .local v0, "hash":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 87
    .local v1, "is":Ljava/io/BufferedInputStream;
    invoke-static {v1, p1}, Lmiui/util/HashUtils;->getHash(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 90
    .end local v1    # "is":Ljava/io/BufferedInputStream;
    goto :goto_0

    .line 88
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 91
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    return-object v0
.end method

.method public static getHash(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "method"    # Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    .line 59
    .local v0, "hash":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 60
    .local v1, "digester":Ljava/security/MessageDigest;
    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 62
    .local v2, "bytes":[B
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "byteCount":I
    if-lez v3, :cond_0

    .line 63
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 66
    .local v3, "digest":[B
    invoke-static {v3}, Lmiui/util/HashUtils;->toHexString([B)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v5

    .line 72
    .end local v1    # "digester":Ljava/security/MessageDigest;
    .end local v2    # "bytes":[B
    .end local v3    # "digest":[B
    .end local v4    # "byteCount":I
    if-eqz p0, :cond_1

    .line 74
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 77
    :goto_1
    goto :goto_2

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 72
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 69
    :catch_1
    move-exception v1

    .line 70
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    .end local v1    # "e":Ljava/io/IOException;
    if-eqz p0, :cond_1

    .line 74
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 67
    :catch_2
    move-exception v1

    .line 68
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_4
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 72
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    if-eqz p0, :cond_1

    .line 74
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 80
    :cond_1
    :goto_2
    return-object v0

    .line 72
    :goto_3
    if-eqz p0, :cond_2

    .line 74
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 77
    goto :goto_4

    .line 75
    :catch_3
    move-exception v2

    .line 76
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 77
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :goto_4
    throw v1
.end method

.method public static getHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    .line 47
    .local v0, "hash":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 48
    .local v1, "digester":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 49
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lmiui/util/HashUtils;->toHexString([B)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 52
    .end local v1    # "digester":Ljava/security/MessageDigest;
    goto :goto_0

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 53
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    return-object v0
.end method

.method public static getMD5(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 29
    const-string v0, "MD5"

    invoke-static {p0, v0}, Lmiui/util/HashUtils;->getHash(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMD5(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;

    .line 25
    const-string v0, "MD5"

    invoke-static {p0, v0}, Lmiui/util/HashUtils;->getHash(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "content"    # Ljava/lang/String;

    .line 21
    const-string v0, "MD5"

    invoke-static {p0, v0}, Lmiui/util/HashUtils;->getHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSHA1(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 41
    const-string v0, "SHA1"

    invoke-static {p0, v0}, Lmiui/util/HashUtils;->getHash(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSHA1(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;

    .line 37
    const-string v0, "SHA1"

    invoke-static {p0, v0}, Lmiui/util/HashUtils;->getHash(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSHA1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "content"    # Ljava/lang/String;

    .line 33
    const-string v0, "SHA1"

    invoke-static {p0, v0}, Lmiui/util/HashUtils;->getHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .local v0, "hexString":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 97
    const-string v3, "%02x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v5, 0xff

    aget-byte v6, p0, v2

    and-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
