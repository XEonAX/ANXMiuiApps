.class public abstract Lcom/miui/gallery/movie/net/LocalResourceRequest;
.super Lcom/miui/gallery/net/BaseGalleryRequest;
.source "LocalResourceRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 30
    const/4 v0, 0x0

    const-string v1, "https://i.mi.com/gallery/public/resource/info"

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/net/BaseGalleryRequest;-><init>(ILjava/lang/String;)V

    .line 31
    const-string v0, "id"

    invoke-virtual {p0}, Lcom/miui/gallery/movie/net/LocalResourceRequest;->getParentId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/movie/net/LocalResourceRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/net/base/BaseRequest;

    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/movie/net/LocalResourceRequest;->setUseCache(Z)Lcom/miui/gallery/net/base/BaseRequest;

    .line 33
    const-wide v0, 0x9a7ec800L

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/movie/net/LocalResourceRequest;->setCacheExpires(J)Lcom/miui/gallery/net/base/BaseRequest;

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/movie/net/LocalResourceRequest;->setCacheSoftTtl(J)Lcom/miui/gallery/net/base/BaseRequest;

    .line 35
    return-void
.end method


# virtual methods
.method protected abstract getParentId()J
.end method

.method protected abstract newLocalResource()Lcom/miui/gallery/movie/entity/MovieResource;
.end method

.method protected onRequestSuccess(Lorg/json/JSONObject;)V
    .locals 12
    .param p1, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/movie/entity/MovieResource;>;"
    const-string v9, "galleryResourceInfoList"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 46
    .local v0, "array":Lorg/json/JSONArray;
    const-string v9, "expireAt"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 47
    .local v2, "expireAt":J
    const-wide/16 v10, 0x0

    cmp-long v9, v2, v10

    if-eqz v9, :cond_0

    .line 48
    invoke-virtual {p0, v2, v3}, Lcom/miui/gallery/movie/net/LocalResourceRequest;->setCacheSoftTtl(J)Lcom/miui/gallery/net/base/BaseRequest;

    .line 50
    :cond_0
    if-eqz v0, :cond_1

    .line 51
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v5, v9, :cond_1

    .line 52
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 53
    .local v7, "object":Lorg/json/JSONObject;
    invoke-virtual {p0}, Lcom/miui/gallery/movie/net/LocalResourceRequest;->newLocalResource()Lcom/miui/gallery/movie/entity/MovieResource;

    move-result-object v8

    .line 54
    .local v8, "resource":Lcom/miui/gallery/movie/entity/MovieResource;
    const-string v9, "id"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v8, Lcom/miui/gallery/movie/entity/MovieResource;->id:J

    .line 55
    const-string v9, "icon"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/miui/gallery/movie/entity/MovieResource;->icon:Ljava/lang/String;

    .line 56
    const-string/jumbo v9, "text"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/miui/gallery/movie/entity/MovieResource;->label:Ljava/lang/String;

    .line 57
    const-string v9, "extraInfo"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/miui/gallery/movie/entity/MovieResource;->extra:Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 59
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    iget-object v9, v8, Lcom/miui/gallery/movie/entity/MovieResource;->extra:Ljava/lang/String;

    invoke-direct {v4, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 60
    .local v4, "extraObject":Lorg/json/JSONObject;
    const-string v9, "enName"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/miui/gallery/movie/entity/MovieResource;->enName:Ljava/lang/String;

    .line 61
    const-string v9, "nameKey"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/miui/gallery/movie/entity/MovieResource;->nameKey:Ljava/lang/String;

    .line 62
    const-string v9, "index"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/miui/gallery/movie/entity/MovieResource;->index:I

    .line 63
    iget-object v9, v8, Lcom/miui/gallery/movie/entity/MovieResource;->nameKey:Ljava/lang/String;

    iput-object v9, v8, Lcom/miui/gallery/movie/entity/MovieResource;->pathKey:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 67
    .end local v4    # "extraObject":Lorg/json/JSONObject;
    :goto_1
    :try_start_2
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Lcom/google/gson/JsonParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 72
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "expireAt":J
    .end local v5    # "i":I
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/movie/entity/MovieResource;>;"
    .end local v7    # "object":Lorg/json/JSONObject;
    .end local v8    # "resource":Lcom/miui/gallery/movie/entity/MovieResource;
    :catch_1
    move-exception v1

    .line 73
    .local v1, "e":Lcom/google/gson/JsonParseException;
    invoke-virtual {v1}, Lcom/google/gson/JsonParseException;->printStackTrace()V

    .line 74
    sget-object v9, Lcom/miui/gallery/net/base/ErrorCode;->PARSE_ERROR:Lcom/miui/gallery/net/base/ErrorCode;

    invoke-virtual {v1}, Lcom/google/gson/JsonParseException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10, p1}, Lcom/miui/gallery/movie/net/LocalResourceRequest;->deliverError(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    .end local v1    # "e":Lcom/google/gson/JsonParseException;
    :goto_2
    return-void

    .line 70
    .restart local v0    # "array":Lorg/json/JSONArray;
    .restart local v2    # "expireAt":J
    .restart local v6    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/movie/entity/MovieResource;>;"
    :cond_1
    :try_start_3
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 71
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    invoke-virtual {p0, v9}, Lcom/miui/gallery/movie/net/LocalResourceRequest;->deliverResponse([Ljava/lang/Object;)V
    :try_end_3
    .catch Lcom/google/gson/JsonParseException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 75
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "expireAt":J
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/movie/entity/MovieResource;>;"
    :catch_2
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 77
    sget-object v9, Lcom/miui/gallery/net/base/ErrorCode;->HANDLE_ERROR:Lcom/miui/gallery/net/base/ErrorCode;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10, p1}, Lcom/miui/gallery/movie/net/LocalResourceRequest;->deliverError(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2
.end method
