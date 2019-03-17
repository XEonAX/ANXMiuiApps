.class public Lcom/android/volley/toolbox/HttpHeaderParser;
.super Ljava/lang/Object;
.source "HttpHeaderParser.java"


# direct methods
.method static formatEpochAsRfc1123(J)Ljava/lang/String;
    .locals 2
    .param p0, "epoch"    # J

    .prologue
    .line 152
    invoke-static {}, Lcom/android/volley/toolbox/HttpHeaderParser;->newRfc1123Formatter()Ljava/text/SimpleDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static newRfc1123Formatter()Ljava/text/SimpleDateFormat;
    .locals 3

    .prologue
    .line 156
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 158
    .local v0, "formatter":Ljava/text/SimpleDateFormat;
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 159
    return-object v0
.end method

.method public static parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;
    .locals 30
    .param p0, "response"    # Lcom/android/volley/NetworkResponse;

    .prologue
    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 54
    .local v14, "now":J
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    .line 56
    .local v7, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v16, 0x0

    .line 57
    .local v16, "serverDate":J
    const-wide/16 v10, 0x0

    .line 58
    .local v10, "lastModified":J
    const-wide/16 v20, 0x0

    .line 59
    .local v20, "serverExpires":J
    const-wide/16 v22, 0x0

    .line 60
    .local v22, "softExpire":J
    const-wide/16 v4, 0x0

    .line 61
    .local v4, "finalExpire":J
    const-wide/16 v12, 0x0

    .line 62
    .local v12, "maxAge":J
    const-wide/16 v24, 0x0

    .line 63
    .local v24, "staleWhileRevalidate":J
    const/4 v3, 0x0

    .line 64
    .local v3, "hasCacheControl":Z
    const/4 v9, 0x0

    .line 66
    .local v9, "mustRevalidate":Z
    const/16 v18, 0x0

    .line 69
    .local v18, "serverEtag":Ljava/lang/String;
    const-string v27, "Date"

    move-object/from16 v0, v27

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 70
    .local v6, "headerValue":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 71
    invoke-static {v6}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    move-result-wide v16

    .line 74
    :cond_0
    const-string v27, "Cache-Control"

    move-object/from16 v0, v27

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "headerValue":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 75
    .restart local v6    # "headerValue":Ljava/lang/String;
    if-eqz v6, :cond_7

    .line 76
    const/4 v3, 0x1

    .line 77
    const-string v27, ","

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    .line 78
    .local v26, "tokens":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v8, v0, :cond_7

    .line 79
    aget-object v27, v26, v8

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    .line 80
    .local v19, "token":Ljava/lang/String;
    const-string v27, "no-cache"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_1

    const-string v27, "no-store"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2

    .line 81
    :cond_1
    const/4 v2, 0x0

    .line 133
    .end local v8    # "i":I
    .end local v19    # "token":Ljava/lang/String;
    .end local v26    # "tokens":[Ljava/lang/String;
    :goto_1
    return-object v2

    .line 82
    .restart local v8    # "i":I
    .restart local v19    # "token":Ljava/lang/String;
    .restart local v26    # "tokens":[Ljava/lang/String;
    :cond_2
    const-string v27, "max-age="

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_4

    .line 84
    const/16 v27, 0x8

    :try_start_0
    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v12

    .line 78
    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 87
    :cond_4
    const-string/jumbo v27, "stale-while-revalidate="

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_5

    .line 89
    const/16 v27, 0x17

    :try_start_1
    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v24

    goto :goto_2

    .line 92
    :cond_5
    const-string v27, "must-revalidate"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_6

    const-string v27, "proxy-revalidate"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_3

    .line 93
    :cond_6
    const/4 v9, 0x1

    goto :goto_2

    .line 98
    .end local v8    # "i":I
    .end local v19    # "token":Ljava/lang/String;
    .end local v26    # "tokens":[Ljava/lang/String;
    :cond_7
    const-string v27, "Expires"

    move-object/from16 v0, v27

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "headerValue":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 99
    .restart local v6    # "headerValue":Ljava/lang/String;
    if-eqz v6, :cond_8

    .line 100
    invoke-static {v6}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    move-result-wide v20

    .line 103
    :cond_8
    const-string v27, "Last-Modified"

    move-object/from16 v0, v27

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "headerValue":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 104
    .restart local v6    # "headerValue":Ljava/lang/String;
    if-eqz v6, :cond_9

    .line 105
    invoke-static {v6}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    move-result-wide v10

    .line 108
    :cond_9
    const-string v27, "ETag"

    move-object/from16 v0, v27

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "serverEtag":Ljava/lang/String;
    check-cast v18, Ljava/lang/String;

    .line 112
    .restart local v18    # "serverEtag":Ljava/lang/String;
    if-eqz v3, :cond_c

    .line 113
    const-wide/16 v28, 0x3e8

    mul-long v28, v28, v12

    add-long v22, v14, v28

    .line 114
    if-eqz v9, :cond_b

    move-wide/from16 v4, v22

    .line 123
    :cond_a
    :goto_3
    new-instance v2, Lcom/android/volley/Cache$Entry;

    invoke-direct {v2}, Lcom/android/volley/Cache$Entry;-><init>()V

    .line 124
    .local v2, "entry":Lcom/android/volley/Cache$Entry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/volley/NetworkResponse;->data:[B

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iput-object v0, v2, Lcom/android/volley/Cache$Entry;->data:[B

    .line 125
    move-object/from16 v0, v18

    iput-object v0, v2, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    .line 126
    move-wide/from16 v0, v22

    iput-wide v0, v2, Lcom/android/volley/Cache$Entry;->softTtl:J

    .line 127
    iput-wide v4, v2, Lcom/android/volley/Cache$Entry;->ttl:J

    .line 128
    move-wide/from16 v0, v16

    iput-wide v0, v2, Lcom/android/volley/Cache$Entry;->serverDate:J

    .line 129
    iput-wide v10, v2, Lcom/android/volley/Cache$Entry;->lastModified:J

    .line 130
    iput-object v7, v2, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/volley/NetworkResponse;->allHeaders:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iput-object v0, v2, Lcom/android/volley/Cache$Entry;->allResponseHeaders:Ljava/util/List;

    goto/16 :goto_1

    .line 114
    .end local v2    # "entry":Lcom/android/volley/Cache$Entry;
    :cond_b
    const-wide/16 v28, 0x3e8

    mul-long v28, v28, v24

    add-long v4, v22, v28

    goto :goto_3

    .line 117
    :cond_c
    const-wide/16 v28, 0x0

    cmp-long v27, v16, v28

    if-lez v27, :cond_a

    cmp-long v27, v20, v16

    if-ltz v27, :cond_a

    .line 119
    sub-long v28, v20, v16

    add-long v22, v14, v28

    .line 120
    move-wide/from16 v4, v22

    goto :goto_3

    .line 90
    .restart local v8    # "i":I
    .restart local v19    # "token":Ljava/lang/String;
    .restart local v26    # "tokens":[Ljava/lang/String;
    :catch_0
    move-exception v27

    goto/16 :goto_2

    .line 85
    :catch_1
    move-exception v27

    goto/16 :goto_2
.end method

.method public static parseDateAsEpoch(Ljava/lang/String;)J
    .locals 4
    .param p0, "dateStr"    # Ljava/lang/String;

    .prologue
    .line 142
    :try_start_0
    invoke-static {}, Lcom/android/volley/toolbox/HttpHeaderParser;->newRfc1123Formatter()Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 146
    :goto_0
    return-wide v2

    .line 143
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/text/ParseException;
    const-string v1, "Unable to parse dateStr: %s, falling back to 0"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method static toAllHeaderList(Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/volley/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 211
    .local v0, "allHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 212
    .local v1, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Lcom/android/volley/Header;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v5, v2, v3}, Lcom/android/volley/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 214
    .end local v1    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object v0
.end method

.method static toHeaderMap(Ljava/util/List;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/volley/Header;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "allHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    new-instance v1, Ljava/util/TreeMap;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 203
    .local v1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/Header;

    .line 204
    .local v0, "header":Lcom/android/volley/Header;
    invoke-virtual {v0}, Lcom/android/volley/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/volley/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 206
    .end local v0    # "header":Lcom/android/volley/Header;
    :cond_0
    return-object v1
.end method
