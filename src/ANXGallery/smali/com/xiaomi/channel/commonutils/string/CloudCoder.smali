.class public Lcom/xiaomi/channel/commonutils/string/CloudCoder;
.super Ljava/lang/Object;
.source "CloudCoder.java"


# direct methods
.method public static generateSignature(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "requestUrl"    # Ljava/lang/String;
    .param p3, "security"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 112
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 113
    new-instance v9, Ljava/security/InvalidParameterException;

    const-string v10, "security is not nullable"

    invoke-direct {v9, v10}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 115
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v3, "exps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_1

    .line 117
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_1
    if-eqz p1, :cond_2

    .line 120
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 121
    .local v8, "uri":Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    .end local v8    # "uri":Landroid/net/Uri;
    :cond_2
    if-eqz p2, :cond_3

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 124
    new-instance v7, Ljava/util/TreeMap;

    move-object/from16 v0, p2

    invoke-direct {v7, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 125
    .local v7, "sortedParams":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 126
    .local v1, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 127
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "%s=%s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    .line 128
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v11, v12

    .line 127
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    .end local v1    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "sortedParams":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    move-object/from16 v0, p3

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    const/4 v4, 0x1

    .line 133
    .local v4, "first":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 135
    .local v5, "s":Ljava/lang/String;
    if-nez v4, :cond_4

    .line 136
    const/16 v10, 0x26

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    :cond_4
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const/4 v4, 0x0

    .line 140
    goto :goto_1

    .line 141
    .end local v5    # "s":Ljava/lang/String;
    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/xiaomi/channel/commonutils/string/CloudCoder;->hash4SHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method public static hash4SHA1(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "plain"    # Ljava/lang/String;

    .prologue
    .line 85
    :try_start_0
    const-string v4, "SHA1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 86
    .local v1, "md":Ljava/security/MessageDigest;
    const-string v4, "UTF-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 87
    .local v3, "utf8Bytes":[B
    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 88
    .local v2, "sha1Bytes":[B
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/string/Base64Coder;->encode([B)[C

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    return-object v4

    .line 89
    .end local v1    # "md":Ljava/security/MessageDigest;
    .end local v2    # "sha1Bytes":[B
    .end local v3    # "utf8Bytes":[B
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v4, "CloudCoder.hash4SHA1 "

    invoke-static {v4, v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "failed to SHA1"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 91
    :catch_1
    move-exception v0

    .line 92
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v4, "CloudCoder.hash4SHA1 "

    invoke-static {v4, v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 93
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "CloudCoder.hash4SHA1 "

    invoke-static {v4, v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
