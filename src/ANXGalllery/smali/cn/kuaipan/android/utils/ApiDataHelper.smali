.class public Lcn/kuaipan/android/utils/ApiDataHelper;
.super Ljava/lang/Object;
.source "ApiDataHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/kuaipan/android/utils/ApiDataHelper$IKscData;
    }
.end annotation


# direct methods
.method public static asNumber(Ljava/lang/Object;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 6
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "defaultValue"    # Ljava/lang/Number;

    .prologue
    .line 158
    move-object v1, p1

    .line 159
    .local v1, "result":Ljava/lang/Number;
    if-nez p0, :cond_0

    move-object v2, v1

    .line 174
    .end local v1    # "result":Ljava/lang/Number;
    .local v2, "result":Ljava/lang/Number;
    :goto_0
    return-object v2

    .line 163
    .end local v2    # "result":Ljava/lang/Number;
    .restart local v1    # "result":Ljava/lang/Number;
    :cond_0
    instance-of v4, p0, Ljava/lang/Number;

    if-eqz v4, :cond_1

    move-object v1, p0

    .line 164
    check-cast v1, Ljava/lang/Number;

    :goto_1
    move-object v2, v1

    .line 174
    .end local v1    # "result":Ljava/lang/Number;
    .restart local v2    # "result":Ljava/lang/Number;
    goto :goto_0

    .line 166
    .end local v2    # "result":Ljava/lang/Number;
    .restart local v1    # "result":Ljava/lang/Number;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 168
    .local v3, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_1

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_1
.end method

.method public static asString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p0, :cond_0

    .line 150
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "DataMap can\'t be null when parse."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 152
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 154
    .local v0, "obj":Ljava/lang/Object;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static contentToMap(Lcn/kuaipan/android/http/KscHttpResponse;)Ljava/util/Map;
    .locals 6
    .param p0, "response"    # Lcn/kuaipan/android/http/KscHttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/kuaipan/android/http/KscHttpResponse;",
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
    .line 42
    const/4 v1, 0x0

    .line 44
    .local v1, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lcn/kuaipan/android/http/KscHttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 45
    if-nez v1, :cond_0

    .line 46
    new-instance v3, Lcn/kuaipan/android/exception/KscException;

    const v4, 0x7a509

    invoke-virtual {p0}, Lcn/kuaipan/android/http/KscHttpResponse;->dump()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/util/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Landroid/util/MalformedJsonException;
    :try_start_1
    new-instance v3, Lcn/kuaipan/android/exception/KscException;

    const v4, 0x7a509

    invoke-virtual {p0}, Lcn/kuaipan/android/http/KscHttpResponse;->dump()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    .end local v0    # "e":Landroid/util/MalformedJsonException;
    :catchall_0
    move-exception v3

    .line 65
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5

    .line 68
    :goto_0
    throw v3

    .line 49
    :cond_0
    :try_start_3
    invoke-static {v1}, Lcn/kuaipan/android/utils/JsonUtils;->parser(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 50
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 51
    :cond_1
    new-instance v3, Lcn/kuaipan/android/exception/KscException;

    const v4, 0x7a50b

    invoke-virtual {p0}, Lcn/kuaipan/android/http/KscHttpResponse;->dump()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_3
    .catch Landroid/util/MalformedJsonException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 57
    .end local v2    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_1
    move-exception v0

    .line 58
    .local v0, "e":Lorg/json/JSONException;
    :try_start_4
    new-instance v3, Lcn/kuaipan/android/exception/KscException;

    const v4, 0x7a509

    invoke-virtual {p0}, Lcn/kuaipan/android/http/KscHttpResponse;->dump()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 65
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v2    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    .line 68
    :goto_1
    return-object v2

    .line 59
    .end local v2    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_2
    move-exception v0

    .line 60
    .local v0, "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {p0}, Lcn/kuaipan/android/http/KscHttpResponse;->dump()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;)Lcn/kuaipan/android/exception/KscException;

    move-result-object v3

    throw v3

    .line 61
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v3, Lcn/kuaipan/android/exception/KscException;

    const v4, 0x7a50b

    invoke-virtual {p0}, Lcn/kuaipan/android/http/KscHttpResponse;->dump()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 66
    .end local v0    # "e":Ljava/lang/ClassCastException;
    .restart local v2    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_4
    move-exception v3

    goto :goto_1

    .end local v2    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_5
    move-exception v4

    goto :goto_0
.end method
