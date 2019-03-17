.class public Lmiui/module/appstore/MD5Utils;
.super Ljava/lang/Object;
.source "MD5Utils.java"


# direct methods
.method public static MD5Sum(Ljava/io/File;)Ljava/lang/String;
    .locals 10
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 16
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .local v8, "sb":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 19
    .local v5, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .end local v5    # "is":Ljava/io/InputStream;
    .local v6, "is":Ljava/io/InputStream;
    :try_start_1
    const-string v9, "MD5"

    invoke-static {v6, v9}, Lmiui/security/DigestUtils;->get(Ljava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v2

    .line 21
    .local v2, "bytes":[B
    move-object v0, v2

    .local v0, "arr$":[B
    array-length v7, v0

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v7, :cond_0

    aget-byte v1, v0, v4

    .line 22
    .local v1, "b":B
    invoke-static {v1}, Lmiui/module/appstore/MD5Utils;->byte2Hex(B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 21
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 27
    .end local v1    # "b":B
    :cond_0
    if-eqz v6, :cond_3

    .line 29
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, v6

    .line 35
    .end local v0    # "arr$":[B
    .end local v2    # "bytes":[B
    .end local v4    # "i$":I
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "len$":I
    .restart local v5    # "is":Ljava/io/InputStream;
    :cond_1
    :goto_1
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 30
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v0    # "arr$":[B
    .restart local v2    # "bytes":[B
    .restart local v4    # "i$":I
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "len$":I
    :catch_0
    move-exception v3

    .line 31
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 32
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    goto :goto_1

    .line 24
    .end local v0    # "arr$":[B
    .end local v2    # "bytes":[B
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    :catch_1
    move-exception v3

    .line 25
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 27
    if-eqz v5, :cond_1

    .line 29
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 30
    :catch_2
    move-exception v3

    .line 31
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 27
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_3
    if-eqz v5, :cond_2

    .line 29
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 32
    :cond_2
    :goto_4
    throw v9

    .line 30
    :catch_3
    move-exception v3

    .line 31
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 27
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    goto :goto_3

    .line 24
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    :catch_4
    move-exception v3

    move-object v5, v6

    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    goto :goto_2

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v0    # "arr$":[B
    .restart local v2    # "bytes":[B
    .restart local v4    # "i$":I
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "len$":I
    :cond_3
    move-object v5, v6

    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    goto :goto_1
.end method

.method private static byte2Hex(B)Ljava/lang/String;
    .locals 3
    .param p0, "b"    # B

    .prologue
    .line 50
    and-int/lit8 v2, p0, 0x7f

    if-gez p0, :cond_0

    const/16 v1, 0x80

    :goto_0
    add-int v0, v2, v1

    .line 51
    .local v0, "value":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    const-string v1, "0"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 50
    .end local v0    # "value":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 51
    .restart local v0    # "value":I
    :cond_1
    const-string v1, ""

    goto :goto_1
.end method

.method public static checkMD5(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "srcMD5"    # Ljava/lang/String;

    .prologue
    .line 39
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 40
    invoke-static {p0}, Lmiui/module/appstore/MD5Utils;->MD5Sum(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "md5":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    const/4 v1, 0x1

    .line 46
    .end local v0    # "md5":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
