.class public Lcom/xiaomi/micloudsdk/utils/JsonUtils;
.super Ljava/lang/Object;
.source "JsonUtils.java"


# direct methods
.method private static convertObj(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 42
    instance-of v4, p0, Lorg/json/JSONObject;

    if-eqz v4, :cond_1

    .line 43
    check-cast p0, Lorg/json/JSONObject;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/utils/JsonUtils;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    .line 55
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v2

    .line 44
    :cond_1
    instance-of v4, p0, Lorg/json/JSONArray;

    if-eqz v4, :cond_2

    move-object v0, p0

    .line 45
    check-cast v0, Lorg/json/JSONArray;

    .line 46
    .local v0, "array":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 47
    .local v3, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 49
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/micloudsdk/utils/JsonUtils;->convertObj(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 52
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v3    # "size":I
    :cond_2
    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p0, v4, :cond_3

    .line 53
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    move-object v2, p0

    .line 55
    goto :goto_0
.end method

.method public static jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 5
    .param p0, "jsonObj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    if-nez p0, :cond_1

    .line 18
    const/4 v2, 0x0

    .line 27
    :cond_0
    return-object v2

    .line 20
    :cond_1
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 21
    .local v2, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 22
    .local v0, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 24
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 25
    .local v3, "value":Ljava/lang/Object;
    invoke-static {v3}, Lcom/xiaomi/micloudsdk/utils/JsonUtils;->convertObj(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
