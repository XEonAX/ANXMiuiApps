.class public Lcom/xiaomi/opensdk/file/utils/FileSDKUtils;
.super Ljava/lang/Object;
.source "FileSDKUtils.java"


# direct methods
.method public static contentKssJsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 6
    .param p0, "kssJson"    # Lorg/json/JSONObject;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/exception/KscException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 39
    :try_start_0
    new-instance v1, Lcn/kuaipan/android/utils/JsonReader;

    new-instance v3, Ljava/io/StringReader;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Lcn/kuaipan/android/utils/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 40
    .local v1, "reader":Lcn/kuaipan/android/utils/JsonReader;
    invoke-static {v1}, Lcn/kuaipan/android/utils/JsonUtils;->parser(Lcn/kuaipan/android/utils/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 42
    .local v2, "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v1}, Lcn/kuaipan/android/utils/JsonReader;->peek()Lcn/kuaipan/android/utils/JsonToken;

    move-result-object v3

    sget-object v4, Lcn/kuaipan/android/utils/JsonToken;->END_DOCUMENT:Lcn/kuaipan/android/utils/JsonToken;

    if-eq v3, v4, :cond_0

    .line 43
    new-instance v3, Lorg/json/JSONException;

    const-string v4, "Document not end of EOF"

    invoke-direct {v3, v4}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 51
    .end local v1    # "reader":Lcn/kuaipan/android/utils/JsonReader;
    .end local v2    # "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "contentKssJsonToMap failed."

    invoke-static {v0, v3}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;)Lcn/kuaipan/android/exception/KscException;

    move-result-object v3

    throw v3

    .line 46
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "reader":Lcn/kuaipan/android/utils/JsonReader;
    .restart local v2    # "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 47
    :cond_1
    new-instance v3, Lcn/kuaipan/android/exception/KscException;

    const v4, 0x7a50b

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 53
    .end local v1    # "reader":Lcn/kuaipan/android/utils/JsonReader;
    .end local v2    # "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_1
    move-exception v0

    .line 54
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "contentKssJsonToMap failed."

    invoke-static {v0, v3}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;)Lcn/kuaipan/android/exception/KscException;

    move-result-object v3

    throw v3

    .line 50
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "reader":Lcn/kuaipan/android/utils/JsonReader;
    .restart local v2    # "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    return-object v2
.end method
