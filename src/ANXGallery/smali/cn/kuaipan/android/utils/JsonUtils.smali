.class public Lcn/kuaipan/android/utils/JsonUtils;
.super Ljava/lang/Object;
.source "JsonUtils.java"


# direct methods
.method public static parser(Lcn/kuaipan/android/utils/JsonReader;)Ljava/lang/Object;
    .locals 4
    .param p0, "reader"    # Lcn/kuaipan/android/utils/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, "result":Ljava/lang/Object;
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/JsonReader;->peek()Lcn/kuaipan/android/utils/JsonToken;

    move-result-object v1

    .line 51
    .local v1, "token":Lcn/kuaipan/android/utils/JsonToken;
    sget-object v2, Lcn/kuaipan/android/utils/JsonUtils$1;->$SwitchMap$cn$kuaipan$android$utils$JsonToken:[I

    invoke-virtual {v1}, Lcn/kuaipan/android/utils/JsonToken;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 77
    .end local v0    # "result":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 53
    .restart local v0    # "result":Ljava/lang/Object;
    :pswitch_0
    invoke-static {p0}, Lcn/kuaipan/android/utils/JsonUtils;->parserArray(Lcn/kuaipan/android/utils/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    .line 54
    goto :goto_0

    .line 56
    :pswitch_1
    invoke-static {p0}, Lcn/kuaipan/android/utils/JsonUtils;->parserObject(Lcn/kuaipan/android/utils/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    .line 57
    goto :goto_0

    .line 59
    :pswitch_2
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/JsonReader;->nextBoolean()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 60
    .local v0, "result":Ljava/lang/Boolean;
    goto :goto_0

    .line 62
    .local v0, "result":Ljava/lang/Object;
    :pswitch_3
    invoke-static {p0}, Lcn/kuaipan/android/utils/JsonUtils;->parserNumber(Lcn/kuaipan/android/utils/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    .line 63
    goto :goto_0

    .line 65
    :pswitch_4
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "result":Ljava/lang/String;
    goto :goto_0

    .line 68
    .local v0, "result":Ljava/lang/Object;
    :pswitch_5
    const/4 v0, 0x0

    .line 69
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/JsonReader;->nextNull()V

    goto :goto_0

    .line 75
    :pswitch_6
    new-instance v2, Lorg/json/JSONException;

    const-string v3, "Meet EOF when json not end."

    invoke-direct {v2, v3}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public static parser(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lcn/kuaipan/android/utils/JsonReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Lcn/kuaipan/android/utils/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 32
    .local v0, "reader":Lcn/kuaipan/android/utils/JsonReader;
    invoke-static {v0}, Lcn/kuaipan/android/utils/JsonUtils;->parser(Lcn/kuaipan/android/utils/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    .line 33
    .local v1, "result":Ljava/lang/Object;
    invoke-virtual {v0}, Lcn/kuaipan/android/utils/JsonReader;->peek()Lcn/kuaipan/android/utils/JsonToken;

    move-result-object v2

    sget-object v3, Lcn/kuaipan/android/utils/JsonToken;->END_DOCUMENT:Lcn/kuaipan/android/utils/JsonToken;

    if-eq v2, v3, :cond_0

    .line 34
    new-instance v2, Lorg/json/JSONException;

    const-string v3, "Document not end of EOF"

    invoke-direct {v2, v3}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 36
    :cond_0
    return-object v1
.end method

.method public static parser(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 4
    .param p0, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Lcn/kuaipan/android/utils/JsonReader;

    invoke-direct {v0, p0}, Lcn/kuaipan/android/utils/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 41
    .local v0, "reader":Lcn/kuaipan/android/utils/JsonReader;
    invoke-static {v0}, Lcn/kuaipan/android/utils/JsonUtils;->parser(Lcn/kuaipan/android/utils/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    .line 42
    .local v1, "result":Ljava/lang/Object;
    invoke-virtual {v0}, Lcn/kuaipan/android/utils/JsonReader;->peek()Lcn/kuaipan/android/utils/JsonToken;

    move-result-object v2

    sget-object v3, Lcn/kuaipan/android/utils/JsonToken;->END_DOCUMENT:Lcn/kuaipan/android/utils/JsonToken;

    if-eq v2, v3, :cond_0

    .line 43
    new-instance v2, Lorg/json/JSONException;

    const-string v3, "Document not end of EOF"

    invoke-direct {v2, v3}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 45
    :cond_0
    return-object v1
.end method

.method private static parserArray(Lcn/kuaipan/android/utils/JsonReader;)Ljava/lang/Object;
    .locals 4
    .param p0, "reader"    # Lcn/kuaipan/android/utils/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/JsonReader;->beginArray()V

    .line 116
    invoke-static {}, Lcn/kuaipan/android/utils/ObtainabelList;->obtain()Lcn/kuaipan/android/utils/ObtainabelList;

    move-result-object v1

    .line 118
    .local v1, "result":Lcn/kuaipan/android/utils/ObtainabelList;, "Lcn/kuaipan/android/utils/ObtainabelList<Ljava/lang/Object;>;"
    :try_start_0
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/JsonReader;->peek()Lcn/kuaipan/android/utils/JsonToken;

    move-result-object v2

    .line 119
    .local v2, "token":Lcn/kuaipan/android/utils/JsonToken;
    :goto_0
    sget-object v3, Lcn/kuaipan/android/utils/JsonToken;->END_ARRAY:Lcn/kuaipan/android/utils/JsonToken;

    if-eq v2, v3, :cond_0

    .line 120
    invoke-static {p0}, Lcn/kuaipan/android/utils/JsonUtils;->parser(Lcn/kuaipan/android/utils/JsonReader;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/kuaipan/android/utils/ObtainabelList;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/JsonReader;->peek()Lcn/kuaipan/android/utils/JsonToken;

    move-result-object v2

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/JsonReader;->endArray()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 131
    return-object v1

    .line 124
    .end local v2    # "token":Lcn/kuaipan/android/utils/JsonToken;
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Lcn/kuaipan/android/utils/ObtainabelList;->recycle()V

    .line 126
    throw v0

    .line 127
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 128
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lcn/kuaipan/android/utils/ObtainabelList;->recycle()V

    .line 129
    throw v0
.end method

.method private static parserNumber(Lcn/kuaipan/android/utils/JsonReader;)Ljava/lang/Object;
    .locals 6
    .param p0, "reader"    # Lcn/kuaipan/android/utils/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    const/4 v2, 0x0

    .line 83
    .local v2, "result":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/JsonReader;->nextInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 91
    .end local v2    # "result":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 84
    .restart local v2    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_1
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/JsonReader;->nextLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .local v2, "result":Ljava/lang/Long;
    goto :goto_0

    .line 87
    .local v2, "result":Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 88
    .local v1, "e1":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/JsonReader;->nextDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .local v2, "result":Ljava/lang/Double;
    goto :goto_0
.end method

.method private static parserObject(Lcn/kuaipan/android/utils/JsonReader;)Ljava/lang/Object;
    .locals 5
    .param p0, "reader"    # Lcn/kuaipan/android/utils/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/JsonReader;->beginObject()V

    .line 96
    invoke-static {}, Lcn/kuaipan/android/utils/ObtainabelHashMap;->obtain()Lcn/kuaipan/android/utils/ObtainabelHashMap;

    move-result-object v1

    .line 98
    .local v1, "result":Lcn/kuaipan/android/utils/ObtainabelHashMap;, "Lcn/kuaipan/android/utils/ObtainabelHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/JsonReader;->peek()Lcn/kuaipan/android/utils/JsonToken;

    move-result-object v2

    .line 99
    .local v2, "token":Lcn/kuaipan/android/utils/JsonToken;
    :goto_0
    sget-object v3, Lcn/kuaipan/android/utils/JsonToken;->END_OBJECT:Lcn/kuaipan/android/utils/JsonToken;

    if-eq v2, v3, :cond_0

    .line 100
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcn/kuaipan/android/utils/JsonUtils;->parser(Lcn/kuaipan/android/utils/JsonReader;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcn/kuaipan/android/utils/ObtainabelHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/JsonReader;->peek()Lcn/kuaipan/android/utils/JsonToken;

    move-result-object v2

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/JsonReader;->endObject()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 111
    return-object v1

    .line 104
    .end local v2    # "token":Lcn/kuaipan/android/utils/JsonToken;
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Lcn/kuaipan/android/utils/ObtainabelHashMap;->recycle()V

    .line 106
    throw v0

    .line 107
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 108
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lcn/kuaipan/android/utils/ObtainabelHashMap;->recycle()V

    .line 109
    throw v0
.end method
