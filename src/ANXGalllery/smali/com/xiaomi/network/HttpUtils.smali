.class public abstract Lcom/xiaomi/network/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/network/HttpUtils$DefaultHttpGetProcessor;
    }
.end annotation


# direct methods
.method public static get(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/channel/commonutils/network/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 48
    .local p2, "params":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/channel/commonutils/network/NameValuePair;>;"
    new-instance v0, Lcom/xiaomi/network/HttpUtils$DefaultHttpGetProcessor;

    invoke-direct {v0}, Lcom/xiaomi/network/HttpUtils$DefaultHttpGetProcessor;-><init>()V

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/xiaomi/network/HttpUtils;->httpRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/xiaomi/network/HttpProcessor;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getHttpGetTxtTraffic(II)I
    .locals 1
    .param p0, "urlLen"    # I
    .param p1, "dataLen"    # I

    .prologue
    .line 164
    add-int/lit16 v0, p1, 0xf3

    div-int/lit16 v0, v0, 0x5a8

    mul-int/lit16 v0, v0, 0x84

    add-int/lit16 v0, v0, 0x438

    add-int/2addr v0, p0

    add-int/2addr v0, p1

    return v0
.end method

.method static getHttpPostTxtTraffic(III)I
    .locals 1
    .param p0, "urlLen"    # I
    .param p1, "postDataLen"    # I
    .param p2, "retDateLen"    # I

    .prologue
    .line 169
    add-int/lit16 v0, p1, 0xc8

    div-int/lit16 v0, v0, 0x5a8

    mul-int/lit16 v0, v0, 0x84

    add-int/lit16 v0, v0, 0x3f3

    add-int/2addr v0, p1

    add-int/2addr v0, p0

    add-int/2addr v0, p2

    return v0
.end method

.method static getPostDataLength(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/channel/commonutils/network/NameValuePair;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/channel/commonutils/network/NameValuePair;>;"
    const/4 v0, 0x0

    .line 140
    .local v0, "len":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/channel/commonutils/network/NameValuePair;

    .line 141
    .local v1, "nvp":Lcom/xiaomi/channel/commonutils/network/NameValuePair;
    invoke-interface {v1}, Lcom/xiaomi/channel/commonutils/network/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 142
    invoke-interface {v1}, Lcom/xiaomi/channel/commonutils/network/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    .line 144
    :cond_1
    invoke-interface {v1}, Lcom/xiaomi/channel/commonutils/network/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 145
    invoke-interface {v1}, Lcom/xiaomi/channel/commonutils/network/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 149
    .end local v1    # "nvp":Lcom/xiaomi/channel/commonutils/network/NameValuePair;
    :cond_2
    mul-int/lit8 v2, v0, 0x2

    return v2
.end method

.method static getStringUTF8Length(Ljava/lang/String;)I
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    :goto_0
    return v1

    .line 157
    :cond_0
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v1, v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method private static getTraffic(Lcom/xiaomi/network/HttpProcessor;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)I
    .locals 3
    .param p0, "processor"    # Lcom/xiaomi/network/HttpProcessor;
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "result"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/network/HttpProcessor;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/channel/commonutils/network/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 126
    .local p2, "params":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/channel/commonutils/network/NameValuePair;>;"
    invoke-virtual {p0}, Lcom/xiaomi/network/HttpProcessor;->getRequestType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 127
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 128
    invoke-static {p3}, Lcom/xiaomi/network/HttpUtils;->getStringUTF8Length(Ljava/lang/String;)I

    move-result v2

    .line 127
    invoke-static {v1, v2}, Lcom/xiaomi/network/HttpUtils;->getHttpGetTxtTraffic(II)I

    move-result v1

    .line 134
    :goto_0
    return v1

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/network/HttpProcessor;->getRequestType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 130
    invoke-static {p2}, Lcom/xiaomi/network/HttpUtils;->getPostDataLength(Ljava/util/List;)I

    move-result v0

    .line 131
    .local v0, "postDataLen":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 132
    invoke-static {p3}, Lcom/xiaomi/network/HttpUtils;->getStringUTF8Length(Ljava/lang/String;)I

    move-result v2

    .line 131
    invoke-static {v1, v0, v2}, Lcom/xiaomi/network/HttpUtils;->getHttpPostTxtTraffic(III)I

    move-result v1

    goto :goto_0

    .line 134
    .end local v0    # "postDataLen":I
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static httpRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/xiaomi/network/HttpProcessor;Z)Ljava/lang/String;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "processor"    # Lcom/xiaomi/network/HttpProcessor;
    .param p4, "useFallback"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/channel/commonutils/network/NameValuePair;",
            ">;",
            "Lcom/xiaomi/network/HttpProcessor;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, "params":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/channel/commonutils/network/NameValuePair;>;"
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/network/Network;->hasNetwork(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 61
    :try_start_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v11, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 64
    .local v2, "fb":Lcom/xiaomi/network/Fallback;
    if-eqz p4, :cond_0

    .line 65
    invoke-static {}, Lcom/xiaomi/network/HostManager;->getInstance()Lcom/xiaomi/network/HostManager;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/xiaomi/network/HostManager;->getFallbacksByURL(Ljava/lang/String;)Lcom/xiaomi/network/Fallback;

    move-result-object v2

    .line 66
    if-eqz v2, :cond_0

    .line 67
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/xiaomi/network/Fallback;->getUrls(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 71
    :cond_0
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 72
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_1
    const/4 v10, 0x0

    .line 76
    .local v10, "result":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_2
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 77
    .local v3, "newUrl":Ljava/lang/String;
    if-eqz p2, :cond_4

    new-instance v9, Ljava/util/ArrayList;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 79
    .local v9, "newParams":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/channel/commonutils/network/NameValuePair;>;"
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v12

    .line 81
    .local v12, "start":J
    :try_start_1
    move-object/from16 v0, p3

    invoke-virtual {v0, p0, v3, v9}, Lcom/xiaomi/network/HttpProcessor;->prepare(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 121
    .end local v2    # "fb":Lcom/xiaomi/network/Fallback;
    .end local v3    # "newUrl":Ljava/lang/String;
    .end local v9    # "newParams":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/channel/commonutils/network/NameValuePair;>;"
    .end local v10    # "result":Ljava/lang/String;
    .end local v11    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "start":J
    :cond_3
    :goto_2
    return-object v10

    .line 77
    .restart local v2    # "fb":Lcom/xiaomi/network/Fallback;
    .restart local v3    # "newUrl":Ljava/lang/String;
    .restart local v10    # "result":Ljava/lang/String;
    .restart local v11    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    .line 85
    .restart local v9    # "newParams":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/channel/commonutils/network/NameValuePair;>;"
    .restart local v12    # "start":J
    :cond_5
    move-object/from16 v0, p3

    invoke-virtual {v0, p0, v3, v9}, Lcom/xiaomi/network/HttpProcessor;->visit(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    .line 86
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 87
    if-eqz v2, :cond_3

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v12

    .line 91
    move-object/from16 v0, p3

    invoke-static {v0, v3, v9, v10}, Lcom/xiaomi/network/HttpUtils;->getTraffic(Lcom/xiaomi/network/HttpProcessor;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    .line 88
    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/network/Fallback;->succeedUrl(Ljava/lang/String;JJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 104
    :catch_0
    move-exception v8

    .line 105
    .local v8, "e":Ljava/io/IOException;
    if-eqz v2, :cond_6

    .line 108
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v12

    .line 109
    move-object/from16 v0, p3

    invoke-static {v0, v3, v9, v10}, Lcom/xiaomi/network/HttpUtils;->getTraffic(Lcom/xiaomi/network/HttpProcessor;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    .line 106
    invoke-virtual/range {v2 .. v8}, Lcom/xiaomi/network/Fallback;->failedUrl(Ljava/lang/String;JJLjava/lang/Exception;)V

    .line 112
    :cond_6
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 117
    .end local v2    # "fb":Lcom/xiaomi/network/Fallback;
    .end local v3    # "newUrl":Ljava/lang/String;
    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "newParams":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/channel/commonutils/network/NameValuePair;>;"
    .end local v10    # "result":Ljava/lang/String;
    .end local v11    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "start":J
    :catch_1
    move-exception v8

    .line 118
    .local v8, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v8}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 121
    .end local v8    # "e":Ljava/net/MalformedURLException;
    :cond_7
    const/4 v10, 0x0

    goto :goto_2

    .line 96
    .restart local v2    # "fb":Lcom/xiaomi/network/Fallback;
    .restart local v3    # "newUrl":Ljava/lang/String;
    .restart local v9    # "newParams":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/channel/commonutils/network/NameValuePair;>;"
    .restart local v10    # "result":Ljava/lang/String;
    .restart local v11    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12    # "start":J
    :cond_8
    if-eqz v2, :cond_2

    .line 99
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v12

    .line 100
    move-object/from16 v0, p3

    invoke-static {v0, v3, v9, v10}, Lcom/xiaomi/network/HttpUtils;->getTraffic(Lcom/xiaomi/network/HttpProcessor;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    const/4 v8, 0x0

    .line 97
    invoke-virtual/range {v2 .. v8}, Lcom/xiaomi/network/Fallback;->failedUrl(Ljava/lang/String;JJLjava/lang/Exception;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method
