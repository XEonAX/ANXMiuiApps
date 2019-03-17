.class public Lcn/kuaipan/android/kss/DownloadRequestResult;
.super Ljava/lang/Object;
.source "DownloadRequestResult.java"

# interfaces
.implements Lcn/kuaipan/android/kss/IKssDownloadRequestResult;
.implements Lcn/kuaipan/android/kss/KssDef;


# instance fields
.field private blocks:[Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;

.field private secure_key:[B

.field private final stat:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/exception/KscException;
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "kssData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string/jumbo v15, "stat"

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcn/kuaipan/android/utils/ApiDataHelper;->asString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcn/kuaipan/android/kss/DownloadRequestResult;->stat:Ljava/lang/String;

    .line 31
    const-string v15, "OK"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/kuaipan/android/kss/DownloadRequestResult;->stat:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 61
    :cond_0
    return-void

    .line 36
    :cond_1
    const-string v15, "secure_key"

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcn/kuaipan/android/utils/ApiDataHelper;->asString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcn/kuaipan/android/utils/Encode;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcn/kuaipan/android/kss/DownloadRequestResult;->secure_key:[B

    .line 38
    const-string v15, "blocks"

    .line 39
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    .line 40
    .local v4, "blockDatas":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-eqz v4, :cond_0

    .line 41
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v15

    new-array v15, v15, [Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcn/kuaipan/android/kss/DownloadRequestResult;->blocks:[Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;

    .line 42
    const/4 v5, 0x0

    .line 43
    .local v5, "i":I
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 44
    .local v3, "blockData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v16, "sha1"

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lcn/kuaipan/android/utils/ApiDataHelper;->asString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 45
    .local v9, "sha1":Ljava/lang/String;
    const-string/jumbo v16, "size"

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcn/kuaipan/android/utils/ApiDataHelper;->asNumber(Ljava/lang/Object;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    .line 47
    .local v10, "size":J
    const/4 v14, 0x0

    .line 48
    .local v14, "urls":[Ljava/lang/String;
    const-string/jumbo v16, "urls"

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Collection;

    .line 49
    .local v13, "urlDatas":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v13, :cond_2

    .line 50
    invoke-interface {v13}, Ljava/util/Collection;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v14, v0, [Ljava/lang/String;

    .line 51
    const/4 v7, 0x0

    .line 52
    .local v7, "j":I
    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 53
    .local v12, "url":Ljava/lang/String;
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "j":I
    .local v8, "j":I
    aput-object v12, v14, v7

    move v7, v8

    .line 54
    .end local v8    # "j":I
    .restart local v7    # "j":I
    goto :goto_1

    .line 57
    .end local v7    # "j":I
    .end local v12    # "url":Ljava/lang/String;
    :cond_2
    new-instance v2, Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;

    invoke-direct {v2, v9, v14, v10, v11}, Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;-><init>(Ljava/lang/String;[Ljava/lang/String;J)V

    .line 58
    .local v2, "block":Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/kuaipan/android/kss/DownloadRequestResult;->blocks:[Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;

    move-object/from16 v16, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .local v6, "i":I
    aput-object v2, v16, v5

    move v5, v6

    .line 59
    .end local v6    # "i":I
    .restart local v5    # "i":I
    goto :goto_0
.end method


# virtual methods
.method public getBlock(I)Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lcn/kuaipan/android/kss/DownloadRequestResult;->blocks:[Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getBlockCount()I
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcn/kuaipan/android/kss/DownloadRequestResult;->blocks:[Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/kuaipan/android/kss/DownloadRequestResult;->blocks:[Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;

    array-length v0, v0

    goto :goto_0
.end method

.method public getBlockUrls(J)[Ljava/lang/String;
    .locals 9
    .param p1, "start"    # J

    .prologue
    .line 123
    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-ltz v6, :cond_0

    iget-object v6, p0, Lcn/kuaipan/android/kss/DownloadRequestResult;->blocks:[Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;

    if-nez v6, :cond_2

    .line 124
    :cond_0
    const/4 v3, 0x0

    .line 138
    :cond_1
    :goto_0
    return-object v3

    .line 126
    :cond_2
    const/4 v3, 0x0

    .line 127
    .local v3, "result":[Ljava/lang/String;
    const-wide/16 v4, 0x0

    .line 129
    .local v4, "pos":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v6, p0, Lcn/kuaipan/android/kss/DownloadRequestResult;->blocks:[Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;

    array-length v6, v6

    if-ge v2, v6, :cond_1

    .line 130
    iget-object v6, p0, Lcn/kuaipan/android/kss/DownloadRequestResult;->blocks:[Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;

    aget-object v6, v6, v2

    iget-wide v6, v6, Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;->size:J

    add-long v0, v4, v6

    .line 132
    .local v0, "end":J
    cmp-long v6, p1, v4

    if-ltz v6, :cond_3

    cmp-long v6, p1, v0

    if-gez v6, :cond_3

    .line 133
    iget-object v6, p0, Lcn/kuaipan/android/kss/DownloadRequestResult;->blocks:[Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;

    aget-object v6, v6, v2

    iget-object v3, v6, Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;->urls:[Ljava/lang/String;

    .line 134
    goto :goto_0

    .line 136
    :cond_3
    move-wide v4, v0

    .line 129
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getHash()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v5, 0x3a

    const/4 v4, 0x0

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .local v2, "builder":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcn/kuaipan/android/kss/DownloadRequestResult;->blocks:[Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;

    if-nez v3, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p0}, Lcn/kuaipan/android/kss/DownloadRequestResult;->getTotalSize()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .local v1, "blockStr":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcn/kuaipan/android/kss/DownloadRequestResult;->blocks:[Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;

    if-eqz v3, :cond_1

    .line 102
    iget-object v3, p0, Lcn/kuaipan/android/kss/DownloadRequestResult;->blocks:[Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;

    array-length v5, v3

    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v0, v3, v4

    .line 103
    .local v0, "block":Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;
    iget-object v6, v0, Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;->sha1:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 95
    .end local v0    # "block":Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;
    .end local v1    # "blockStr":Ljava/lang/StringBuilder;
    :cond_0
    iget-object v3, p0, Lcn/kuaipan/android/kss/DownloadRequestResult;->blocks:[Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;

    array-length v3, v3

    goto :goto_0

    .line 106
    .restart local v1    # "blockStr":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcn/kuaipan/android/utils/Encode;->MD5Encode([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcn/kuaipan/android/kss/DownloadRequestResult;->stat:Ljava/lang/String;

    return-object v0
.end method

.method public getModifyTime()J
    .locals 2

    .prologue
    .line 190
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getSecureKey()[B
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcn/kuaipan/android/kss/DownloadRequestResult;->secure_key:[B

    return-object v0
.end method

.method public getStatus()I
    .locals 2

    .prologue
    .line 84
    const-string v0, "OK"

    iget-object v1, p0, Lcn/kuaipan/android/kss/DownloadRequestResult;->stat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getTotalSize()J
    .locals 8

    .prologue
    .line 176
    iget-object v1, p0, Lcn/kuaipan/android/kss/DownloadRequestResult;->blocks:[Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;

    if-nez v1, :cond_1

    .line 177
    const-wide/16 v2, 0x0

    .line 185
    :cond_0
    return-wide v2

    .line 180
    :cond_1
    const-wide/16 v2, 0x0

    .line 181
    .local v2, "result":J
    iget-object v4, p0, Lcn/kuaipan/android/kss/DownloadRequestResult;->blocks:[Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;

    array-length v5, v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v0, v4, v1

    .line 182
    .local v0, "block":Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;
    iget-wide v6, v0, Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;->size:J

    add-long/2addr v2, v6

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    .prologue
    .line 143
    const/4 v4, 0x0

    .line 145
    .local v4, "root":Lorg/json/JSONObject;
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v4    # "root":Lorg/json/JSONObject;
    .local v5, "root":Lorg/json/JSONObject;
    :try_start_1
    const-string/jumbo v7, "stat"

    iget-object v8, p0, Lcn/kuaipan/android/kss/DownloadRequestResult;->stat:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    const-string v7, "secure_key"

    iget-object v8, p0, Lcn/kuaipan/android/kss/DownloadRequestResult;->secure_key:[B

    invoke-static {v8}, Lcn/kuaipan/android/utils/Encode;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 150
    .local v2, "blocks":Lorg/json/JSONArray;
    iget-object v7, p0, Lcn/kuaipan/android/kss/DownloadRequestResult;->blocks:[Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;

    if-eqz v7, :cond_1

    .line 151
    iget-object v8, p0, Lcn/kuaipan/android/kss/DownloadRequestResult;->blocks:[Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;

    array-length v9, v8

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v9, :cond_1

    aget-object v0, v8, v7

    .line 152
    .local v0, "block":Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 153
    .local v1, "blockObj":Lorg/json/JSONObject;
    const-string/jumbo v10, "sha1"

    iget-object v11, v0, Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;->sha1:Ljava/lang/String;

    invoke-virtual {v1, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    const-string/jumbo v10, "size"

    iget-wide v12, v0, Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;->size:J

    invoke-virtual {v1, v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 155
    const/4 v6, 0x0

    .line 156
    .local v6, "urls":Lorg/json/JSONArray;
    iget-object v10, v0, Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;->urls:[Ljava/lang/String;

    if-eqz v10, :cond_0

    .line 157
    new-instance v6, Lorg/json/JSONArray;

    .end local v6    # "urls":Lorg/json/JSONArray;
    iget-object v10, v0, Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;->urls:[Ljava/lang/String;

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v6, v10}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 161
    .restart local v6    # "urls":Lorg/json/JSONArray;
    :goto_1
    const-string/jumbo v10, "urls"

    invoke-virtual {v1, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 151
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 159
    :cond_0
    new-instance v6, Lorg/json/JSONArray;

    .end local v6    # "urls":Lorg/json/JSONArray;
    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .restart local v6    # "urls":Lorg/json/JSONArray;
    goto :goto_1

    .line 167
    .end local v0    # "block":Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;
    .end local v1    # "blockObj":Lorg/json/JSONObject;
    .end local v6    # "urls":Lorg/json/JSONArray;
    :cond_1
    const-string v7, "blocks"

    invoke-virtual {v5, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    .line 172
    .end local v2    # "blocks":Lorg/json/JSONArray;
    .end local v5    # "root":Lorg/json/JSONObject;
    .restart local v4    # "root":Lorg/json/JSONObject;
    :goto_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 168
    :catch_0
    move-exception v3

    .line 169
    .local v3, "e":Lorg/json/JSONException;
    :goto_3
    const-string v7, "DownloadRequestResult"

    const-string v8, "Failed generate Json String for UploadRequestResult"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v4, 0x0

    goto :goto_2

    .line 168
    .end local v3    # "e":Lorg/json/JSONException;
    .end local v4    # "root":Lorg/json/JSONObject;
    .restart local v5    # "root":Lorg/json/JSONObject;
    :catch_1
    move-exception v3

    move-object v4, v5

    .end local v5    # "root":Lorg/json/JSONObject;
    .restart local v4    # "root":Lorg/json/JSONObject;
    goto :goto_3
.end method
