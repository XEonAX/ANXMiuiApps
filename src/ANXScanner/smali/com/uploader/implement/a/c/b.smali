.class public Lcom/uploader/implement/a/c/b;
.super Ljava/lang/Object;
.source "ProtocolUtils.java"


# direct methods
.method public static a(Lcom/uploader/export/IUploaderTask;)Landroid/util/Pair;
    .locals 13
    .param p0, "task"    # Lcom/uploader/export/IUploaderTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uploader/export/IUploaderTask;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/uploader/implement/c/a;",
            "Lcom/uploader/implement/a/a/b;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 35
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/uploader/export/IUploaderTask;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {p0}, Lcom/uploader/export/IUploaderTask;->getBizType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 36
    :cond_0
    new-instance v5, Landroid/util/Pair;

    new-instance v6, Lcom/uploader/implement/c/a;

    const-string v7, "200"

    const-string v8, "4"

    const-string v9, "task getFilePath == null || getBizType == null"

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/uploader/implement/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    :goto_0
    return-object v5

    .line 39
    :cond_1
    new-instance v0, Lcom/uploader/implement/a/a/b;

    invoke-direct {v0}, Lcom/uploader/implement/a/a/b;-><init>()V

    .line 40
    .local v0, "description":Lcom/uploader/implement/a/a/b;
    invoke-interface {p0}, Lcom/uploader/export/IUploaderTask;->getFilePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/uploader/implement/a/a/b;->a:Ljava/lang/String;

    .line 41
    invoke-interface {p0}, Lcom/uploader/export/IUploaderTask;->getBizType()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/uploader/implement/a/a/b;->f:Ljava/lang/String;

    .line 42
    invoke-interface {p0}, Lcom/uploader/export/IUploaderTask;->getMetaInfo()Ljava/util/Map;

    move-result-object v5

    iput-object v5, v0, Lcom/uploader/implement/a/a/b;->i:Ljava/util/Map;

    .line 43
    invoke-interface {p0}, Lcom/uploader/export/IUploaderTask;->getFileType()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/uploader/implement/a/a/b;->c:Ljava/lang/String;

    .line 45
    new-instance v2, Ljava/io/File;

    iget-object v5, v0, Lcom/uploader/implement/a/a/b;->a:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 47
    new-instance v5, Landroid/util/Pair;

    new-instance v6, Lcom/uploader/implement/c/a;

    const-string v7, "200"

    const-string v8, "3"

    const-string v9, "!file.exists()"

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/uploader/implement/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    .end local v0    # "description":Lcom/uploader/implement/a/a/b;
    .end local v2    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/Exception;
    const/16 v3, 0x10

    .line 66
    .local v3, "p":I
    invoke-static {v3}, Lcom/uploader/implement/a;->a(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 67
    const-string v5, "ProtocolUtils"

    const-string v6, "createFileDescription"

    invoke-static {v3, v5, v6, v1}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    :cond_2
    new-instance v5, Landroid/util/Pair;

    new-instance v6, Lcom/uploader/implement/c/a;

    const-string v7, "200"

    const-string v8, "4"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9, v12}, Lcom/uploader/implement/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {v5, v6, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 50
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "p":I
    .restart local v0    # "description":Lcom/uploader/implement/a/a/b;
    .restart local v2    # "file":Ljava/io/File;
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_4

    .line 51
    new-instance v5, Landroid/util/Pair;

    new-instance v6, Lcom/uploader/implement/c/a;

    const-string v7, "200"

    const-string v8, "9"

    const-string v9, "file.length() == 0"

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/uploader/implement/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 55
    :cond_4
    iput-object v2, v0, Lcom/uploader/implement/a/a/b;->b:Ljava/io/File;

    .line 56
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/uploader/implement/a/a/b;->d:Ljava/lang/String;

    .line 57
    invoke-static {v2}, Lcom/uploader/implement/a/c/b;->a(Ljava/io/File;)Landroid/util/Pair;

    move-result-object v4

    .line 58
    .local v4, "pair":Landroid/util/Pair;
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iput-object v5, v0, Lcom/uploader/implement/a/a/b;->h:Ljava/lang/String;

    .line 59
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, [B

    iput-object v5, v0, Lcom/uploader/implement/a/a/b;->l:[B

    .line 60
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "-"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/uploader/implement/a/a/b;->e:Ljava/lang/String;

    .line 61
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/uploader/implement/a/a/b;->g:J

    .line 62
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/uploader/implement/a/a/b;->k:J

    .line 63
    new-instance v5, Landroid/util/Pair;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static a(Ljava/io/File;)Landroid/util/Pair;
    .locals 11
    .param p0, "inputFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 96
    const/4 v3, 0x0

    .line 97
    .local v3, "fis":Ljava/io/FileInputStream;
    const v7, 0x32000

    .line 101
    .local v7, "size":I
    :try_start_0
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 108
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    :goto_0
    :try_start_1
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 109
    .local v5, "messageDigest":Ljava/security/MessageDigest;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 114
    .local v1, "count":I
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v6

    .local v6, "readLength":I
    if-lez v6, :cond_0

    .line 115
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v9

    invoke-virtual {v5, v8, v9, v6}, Ljava/security/MessageDigest;->update([BII)V

    .line 116
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 102
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v1    # "count":I
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "messageDigest":Ljava/security/MessageDigest;
    .end local v6    # "readLength":I
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v2

    .line 103
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    const/high16 v7, 0x20000

    .line 104
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 119
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "count":I
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "messageDigest":Ljava/security/MessageDigest;
    .restart local v6    # "readLength":I
    :cond_0
    :try_start_3
    new-instance v9, Landroid/util/Pair;

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    invoke-static {v8}, Lcom/uploader/implement/a/c/b;->a([B)Ljava/lang/String;

    move-result-object v10

    const/4 v8, 0x1

    if-ne v1, v8, :cond_2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    :goto_2
    invoke-direct {v9, v10, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 126
    if-eqz v4, :cond_1

    .line 128
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 131
    :cond_1
    :goto_3
    return-object v9

    .line 119
    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    .line 121
    .end local v1    # "count":I
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "messageDigest":Ljava/security/MessageDigest;
    .end local v6    # "readLength":I
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    .line 122
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    :goto_4
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 126
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catchall_0
    move-exception v8

    :goto_5
    if-eqz v3, :cond_3

    .line 128
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 131
    :cond_3
    :goto_6
    throw v8

    .line 123
    :catch_2
    move-exception v2

    .line 124
    .local v2, "e":Ljava/lang/Exception;
    :goto_7
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 129
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "count":I
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "messageDigest":Ljava/security/MessageDigest;
    .restart local v6    # "readLength":I
    :catch_3
    move-exception v8

    goto :goto_3

    .end local v1    # "count":I
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "messageDigest":Ljava/security/MessageDigest;
    .end local v6    # "readLength":I
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v9

    goto :goto_6

    .line 126
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "count":I
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "messageDigest":Ljava/security/MessageDigest;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 123
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_5
    move-exception v2

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_7

    .line 121
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_6
    move-exception v2

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_4
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "origin"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    :try_start_0
    const-string v0, "utf-8"

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 81
    :cond_0
    :goto_0
    return-object p0

    .line 78
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a([B)Ljava/lang/String;
    .locals 9
    .param p0, "byteArray"    # [B

    .prologue
    .line 139
    const/16 v8, 0x10

    new-array v2, v8, [C

    fill-array-data v2, :array_0

    .line 141
    .local v2, "hexDigits":[C
    array-length v8, p0

    mul-int/lit8 v8, v8, 0x2

    new-array v7, v8, [C

    .line 145
    .local v7, "resultCharArray":[C
    const/4 v4, 0x0

    .line 147
    .local v4, "index":I
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v5, v4

    .end local v4    # "index":I
    .local v5, "index":I
    :goto_0
    if-ge v3, v6, :cond_0

    aget-byte v1, v0, v3

    .line 149
    .local v1, "b":B
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "index":I
    .restart local v4    # "index":I
    ushr-int/lit8 v8, v1, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v2, v8

    aput-char v8, v7, v5

    .line 151
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .restart local v5    # "index":I
    and-int/lit8 v8, v1, 0xf

    aget-char v8, v2, v8

    aput-char v8, v7, v4

    .line 147
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 157
    .end local v1    # "b":B
    :cond_0
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>([C)V

    return-object v8

    .line 139
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
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "origin"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    :try_start_0
    const-string v0, "utf-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 91
    :cond_0
    :goto_0
    return-object p0

    .line 88
    :catch_0
    move-exception v0

    goto :goto_0
.end method
