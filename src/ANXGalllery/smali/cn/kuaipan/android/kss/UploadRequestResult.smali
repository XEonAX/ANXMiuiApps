.class public Lcn/kuaipan/android/kss/UploadRequestResult;
.super Ljava/lang/Object;
.source "UploadRequestResult.java"

# interfaces
.implements Lcn/kuaipan/android/kss/IKssUploadRequestResult;
.implements Lcn/kuaipan/android/kss/KssDef;


# instance fields
.field private blocks:[Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;

.field private final file_meta:Ljava/lang/String;

.field private node_urls:[Ljava/lang/String;

.field private final secure_key:[B


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 14
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
    .local p1, "kssData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v10, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v11, "secure_key"

    invoke-static {p1, v11}, Lcn/kuaipan/android/utils/ApiDataHelper;->asString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcn/kuaipan/android/utils/Encode;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v11

    iput-object v11, p0, Lcn/kuaipan/android/kss/UploadRequestResult;->secure_key:[B

    .line 33
    const-string v11, "file_meta"

    invoke-static {p1, v11}, Lcn/kuaipan/android/utils/ApiDataHelper;->asString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcn/kuaipan/android/kss/UploadRequestResult;->file_meta:Ljava/lang/String;

    .line 35
    const-string v11, "block_metas"

    .line 36
    invoke-interface {p1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 37
    .local v2, "blockDatas":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-eqz v2, :cond_2

    .line 38
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v11

    new-array v11, v11, [Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;

    iput-object v11, p0, Lcn/kuaipan/android/kss/UploadRequestResult;->blocks:[Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;

    .line 39
    const/4 v4, 0x0

    .line 40
    .local v4, "i":I
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 41
    .local v1, "blockData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v12, "is_existed"

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v12, v13}, Lcn/kuaipan/android/utils/ApiDataHelper;->asNumber(Ljava/lang/Object;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    if-eqz v12, :cond_0

    const/4 v3, 0x1

    .line 42
    .local v3, "exist":Z
    :goto_1
    if-eqz v3, :cond_1

    const-string v6, "commit_meta"

    .line 43
    .local v6, "key":Ljava/lang/String;
    :goto_2
    invoke-static {v1, v6}, Lcn/kuaipan/android/utils/ApiDataHelper;->asString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 44
    .local v7, "meta":Ljava/lang/String;
    new-instance v0, Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;

    invoke-direct {v0, v7, v3}, Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;-><init>(Ljava/lang/String;Z)V

    .line 45
    .local v0, "block":Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;
    iget-object v12, p0, Lcn/kuaipan/android/kss/UploadRequestResult;->blocks:[Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    aput-object v0, v12, v4

    move v4, v5

    .line 46
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    .end local v0    # "block":Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;
    .end local v3    # "exist":Z
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "meta":Ljava/lang/String;
    :cond_0
    move v3, v10

    .line 41
    goto :goto_1

    .line 42
    .restart local v3    # "exist":Z
    :cond_1
    const-string v6, "block_meta"

    goto :goto_2

    .line 49
    .end local v1    # "blockData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "exist":Z
    .end local v4    # "i":I
    :cond_2
    const-string v10, "node_urls"

    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    .line 50
    .local v9, "urls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v9, :cond_3

    .line 51
    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    iput-object v10, p0, Lcn/kuaipan/android/kss/UploadRequestResult;->node_urls:[Ljava/lang/String;

    .line 52
    const/4 v4, 0x0

    .line 53
    .restart local v4    # "i":I
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 54
    .local v8, "url":Ljava/lang/String;
    iget-object v11, p0, Lcn/kuaipan/android/kss/UploadRequestResult;->node_urls:[Ljava/lang/String;

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    aput-object v8, v11, v4

    move v4, v5

    .line 55
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_3

    .line 58
    .end local v4    # "i":I
    .end local v8    # "url":Ljava/lang/String;
    :cond_3
    return-void
.end method


# virtual methods
.method public getBlock(I)Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcn/kuaipan/android/kss/UploadRequestResult;->blocks:[Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuaipan/android/kss/UploadRequestResult;->blocks:[Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 99
    :cond_0
    const/4 v0, 0x0

    .line 101
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcn/kuaipan/android/kss/UploadRequestResult;->blocks:[Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getBlockCount()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcn/kuaipan/android/kss/UploadRequestResult;->blocks:[Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/kuaipan/android/kss/UploadRequestResult;->blocks:[Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;

    array-length v0, v0

    goto :goto_0
.end method

.method public getFileMeta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcn/kuaipan/android/kss/UploadRequestResult;->file_meta:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeUrls()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcn/kuaipan/android/kss/UploadRequestResult;->node_urls:[Ljava/lang/String;

    return-object v0
.end method

.method public getSecureKey()[B
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcn/kuaipan/android/kss/UploadRequestResult;->secure_key:[B

    return-object v0
.end method

.method public isCompleted()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 106
    iget-object v3, p0, Lcn/kuaipan/android/kss/UploadRequestResult;->blocks:[Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;

    if-nez v3, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v1

    .line 110
    :cond_1
    iget-object v4, p0, Lcn/kuaipan/android/kss/UploadRequestResult;->blocks:[Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;

    array-length v5, v4

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_0

    aget-object v0, v4, v3

    .line 111
    .local v0, "block":Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;
    iget-boolean v6, v0, Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;->exist:Z

    if-nez v6, :cond_2

    move v1, v2

    .line 112
    goto :goto_0

    .line 110
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v8, 0x0

    .line 120
    const/4 v4, 0x0

    .line 122
    .local v4, "root":Lorg/json/JSONObject;
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 123
    .end local v4    # "root":Lorg/json/JSONObject;
    .local v5, "root":Lorg/json/JSONObject;
    :try_start_1
    const-string v7, "secure_key"

    iget-object v9, p0, Lcn/kuaipan/android/kss/UploadRequestResult;->secure_key:[B

    invoke-static {v9}, Lcn/kuaipan/android/utils/Encode;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string v7, "file_meta"

    iget-object v9, p0, Lcn/kuaipan/android/kss/UploadRequestResult;->file_meta:Ljava/lang/String;

    invoke-virtual {v5, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    const/4 v6, 0x0

    .line 127
    .local v6, "urls":Lorg/json/JSONArray;
    iget-object v7, p0, Lcn/kuaipan/android/kss/UploadRequestResult;->node_urls:[Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 128
    new-instance v6, Lorg/json/JSONArray;

    .end local v6    # "urls":Lorg/json/JSONArray;
    iget-object v7, p0, Lcn/kuaipan/android/kss/UploadRequestResult;->node_urls:[Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 132
    .restart local v6    # "urls":Lorg/json/JSONArray;
    :goto_0
    const-string v7, "node_urls"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 135
    .local v2, "blocks":Lorg/json/JSONArray;
    iget-object v7, p0, Lcn/kuaipan/android/kss/UploadRequestResult;->blocks:[Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;

    if-eqz v7, :cond_3

    .line 136
    iget-object v10, p0, Lcn/kuaipan/android/kss/UploadRequestResult;->blocks:[Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;

    array-length v11, v10

    move v9, v8

    :goto_1
    if-ge v9, v11, :cond_3

    aget-object v0, v10, v9

    .line 137
    .local v0, "block":Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 138
    .local v1, "blockObj":Lorg/json/JSONObject;
    const-string v12, "is_existed"

    iget-boolean v7, v0, Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;->exist:Z

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    :goto_2
    invoke-virtual {v1, v12, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 139
    iget-boolean v7, v0, Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;->exist:Z

    if-eqz v7, :cond_2

    .line 140
    const-string v7, "commit_meta"

    iget-object v12, v0, Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;->meta:Ljava/lang/String;

    invoke-virtual {v1, v7, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    :goto_3
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 136
    add-int/lit8 v7, v9, 0x1

    move v9, v7

    goto :goto_1

    .line 130
    .end local v0    # "block":Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;
    .end local v1    # "blockObj":Lorg/json/JSONObject;
    .end local v2    # "blocks":Lorg/json/JSONArray;
    :cond_0
    new-instance v6, Lorg/json/JSONArray;

    .end local v6    # "urls":Lorg/json/JSONArray;
    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .restart local v6    # "urls":Lorg/json/JSONArray;
    goto :goto_0

    .restart local v0    # "block":Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;
    .restart local v1    # "blockObj":Lorg/json/JSONObject;
    .restart local v2    # "blocks":Lorg/json/JSONArray;
    :cond_1
    move v7, v8

    .line 138
    goto :goto_2

    .line 142
    :cond_2
    const-string v7, "block_meta"

    iget-object v12, v0, Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;->meta:Ljava/lang/String;

    invoke-virtual {v1, v7, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 148
    .end local v0    # "block":Lcn/kuaipan/android/kss/IKssUploadRequestResult$Block;
    .end local v1    # "blockObj":Lorg/json/JSONObject;
    .end local v2    # "blocks":Lorg/json/JSONArray;
    .end local v6    # "urls":Lorg/json/JSONArray;
    :catch_0
    move-exception v3

    move-object v4, v5

    .line 149
    .end local v5    # "root":Lorg/json/JSONObject;
    .local v3, "e":Lorg/json/JSONException;
    .restart local v4    # "root":Lorg/json/JSONObject;
    :goto_4
    const-string v7, "UploadRequestResult"

    const-string v8, "Failed generate Json String for UploadRequestResult"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v4, 0x0

    .line 152
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_5
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 147
    .end local v4    # "root":Lorg/json/JSONObject;
    .restart local v2    # "blocks":Lorg/json/JSONArray;
    .restart local v5    # "root":Lorg/json/JSONObject;
    .restart local v6    # "urls":Lorg/json/JSONArray;
    :cond_3
    :try_start_2
    const-string v7, "block_metas"

    invoke-virtual {v5, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v5

    .line 151
    .end local v5    # "root":Lorg/json/JSONObject;
    .restart local v4    # "root":Lorg/json/JSONObject;
    goto :goto_5

    .line 148
    .end local v2    # "blocks":Lorg/json/JSONArray;
    .end local v6    # "urls":Lorg/json/JSONArray;
    :catch_1
    move-exception v3

    goto :goto_4
.end method
