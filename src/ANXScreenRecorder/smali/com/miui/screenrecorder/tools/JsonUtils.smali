.class public Lcom/miui/screenrecorder/tools/JsonUtils;
.super Ljava/lang/Object;
.source "JsonUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "JsonUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getJson(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .local v3, "stringBuilder":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 26
    .local v0, "bf":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 27
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 29
    .end local v0    # "bf":Ljava/io/BufferedReader;
    .end local v2    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 30
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "JsonUtils"

    const-string v5, "getJson error in"

    invoke-static {v4, v5, v1}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 32
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static parseData(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 15
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/screenrecorder/config/PhoneConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v13, "phoneConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/screenrecorder/config/PhoneConfig;>;"
    :try_start_0
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 39
    .local v8, "array":Lorg/json/JSONArray;
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v11

    .line 40
    .local v11, "len":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v11, :cond_2

    .line 41
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 42
    .local v12, "object":Lorg/json/JSONObject;
    const-string v0, "phoneId"

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "phoneId":Ljava/lang/String;
    const-string v0, "isSupportInner"

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 44
    .local v2, "isSupportInner":Z
    const-string v0, "innerStreamType"

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 46
    .local v3, "innerStreamType":I
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v14, "gemini"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v14, "scorpio"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v14, "capricorn"

    .line 47
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v14, "lithium"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v14, "natrium"

    .line 48
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v14, "riva"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v14, "tiffany"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x19

    if-le v0, v14, :cond_1

    .line 49
    const/4 v3, 0x1

    .line 51
    :cond_1
    const-string v0, "micOffset"

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 52
    .local v4, "micOffset":J
    const-string v0, "innerOffset"

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 53
    .local v6, "innerOffset":J
    new-instance v0, Lcom/miui/screenrecorder/config/PhoneConfig;

    invoke-direct/range {v0 .. v7}, Lcom/miui/screenrecorder/config/PhoneConfig;-><init>(Ljava/lang/String;ZIJJ)V

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 56
    .end local v1    # "phoneId":Ljava/lang/String;
    .end local v2    # "isSupportInner":Z
    .end local v3    # "innerStreamType":I
    .end local v4    # "micOffset":J
    .end local v6    # "innerOffset":J
    .end local v8    # "array":Lorg/json/JSONArray;
    .end local v10    # "i":I
    .end local v11    # "len":I
    .end local v12    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v9

    .line 57
    .local v9, "e":Lorg/json/JSONException;
    const-string v0, "JsonUtils"

    const-string v14, "parseData error in"

    invoke-static {v0, v14, v9}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 59
    .end local v9    # "e":Lorg/json/JSONException;
    :cond_2
    return-object v13
.end method
