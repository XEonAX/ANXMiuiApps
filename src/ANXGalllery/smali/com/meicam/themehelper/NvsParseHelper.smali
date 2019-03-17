.class public Lcom/meicam/themehelper/NvsParseHelper;
.super Ljava/lang/Object;
.source "NvsParseHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NvsParseHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetDescFromJsonObject(Lorg/json/JSONObject;)Lcom/meicam/themehelper/NvsMusicPointDesc;
    .locals 7
    .param p0, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 136
    new-instance v3, Lcom/meicam/themehelper/NvsMusicPointDesc;

    invoke-direct {v3}, Lcom/meicam/themehelper/NvsMusicPointDesc;-><init>()V

    .line 137
    .local v3, "info":Lcom/meicam/themehelper/NvsMusicPointDesc;
    const-string v6, "cutPoint"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v3, Lcom/meicam/themehelper/NvsMusicPointDesc;->cutPoint:I

    .line 138
    const-string/jumbo v6, "transLen"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v3, Lcom/meicam/themehelper/NvsMusicPointDesc;->transLen:I

    .line 140
    const-string/jumbo v6, "transName"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 141
    const-string/jumbo v6, "transName"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 142
    .local v5, "transName":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 143
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 144
    .local v4, "name":Lorg/json/JSONObject;
    const-string v6, "id"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "id":Ljava/lang/String;
    iget-object v6, v3, Lcom/meicam/themehelper/NvsMusicPointDesc;->transNames:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    .end local v1    # "i":I
    .end local v2    # "id":Ljava/lang/String;
    .end local v4    # "name":Lorg/json/JSONObject;
    .end local v5    # "transName":Lorg/json/JSONArray;
    :cond_0
    const-string v6, "fxName"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 150
    const-string v6, "fxName"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 151
    .local v0, "fxName":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 152
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 153
    .restart local v4    # "name":Lorg/json/JSONObject;
    const-string v6, "id"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 154
    .restart local v2    # "id":Ljava/lang/String;
    iget-object v6, v3, Lcom/meicam/themehelper/NvsMusicPointDesc;->fxNames:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 158
    .end local v0    # "fxName":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v2    # "id":Ljava/lang/String;
    .end local v4    # "name":Lorg/json/JSONObject;
    :cond_1
    return-object v3
.end method

.method public static GetMusicFileFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/meicam/themehelper/NvsMusicFileDesc;
    .locals 5
    .param p0, "object"    # Lorg/json/JSONObject;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 59
    const/4 v1, 0x0

    .line 61
    .local v1, "info":Lcom/meicam/themehelper/NvsMusicFileDesc;
    :try_start_0
    new-instance v2, Lcom/meicam/themehelper/NvsMusicFileDesc;

    invoke-direct {v2}, Lcom/meicam/themehelper/NvsMusicFileDesc;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v1    # "info":Lcom/meicam/themehelper/NvsMusicFileDesc;
    .local v2, "info":Lcom/meicam/themehelper/NvsMusicFileDesc;
    :try_start_1
    iput-object p1, v2, Lcom/meicam/themehelper/NvsMusicFileDesc;->id:Ljava/lang/String;

    .line 63
    const-string v3, "name"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/meicam/themehelper/NvsMusicFileDesc;->displayName:Ljava/lang/String;

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "json id"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/meicam/themehelper/NvsMusicFileDesc;->jsonFile:Ljava/lang/String;

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "json id10s"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/meicam/themehelper/NvsMusicFileDesc;->jsonFile10s:Ljava/lang/String;

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "music id"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/meicam/themehelper/NvsMusicFileDesc;->musicFile:Ljava/lang/String;

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "music id10s"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/meicam/themehelper/NvsMusicFileDesc;->musicFile10s:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 72
    .end local v2    # "info":Lcom/meicam/themehelper/NvsMusicFileDesc;
    .restart local v1    # "info":Lcom/meicam/themehelper/NvsMusicFileDesc;
    :goto_0
    return-object v1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 68
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "info":Lcom/meicam/themehelper/NvsMusicFileDesc;
    .restart local v2    # "info":Lcom/meicam/themehelper/NvsMusicFileDesc;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "info":Lcom/meicam/themehelper/NvsMusicFileDesc;
    .restart local v1    # "info":Lcom/meicam/themehelper/NvsMusicFileDesc;
    goto :goto_1
.end method

.method public static getFileLastTime(Ljava/lang/String;)J
    .locals 8
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 250
    const/4 v3, 0x0

    .line 252
    .local v3, "exif":Landroid/media/ExifInterface;
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    .end local v3    # "exif":Landroid/media/ExifInterface;
    invoke-direct {v3, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .restart local v3    # "exif":Landroid/media/ExifInterface;
    :goto_0
    if-eqz v3, :cond_0

    .line 258
    const-string v6, "DateTime"

    invoke-virtual {v3, v6}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, "dataTime":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 260
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 261
    .local v5, "format":Ljava/text/SimpleDateFormat;
    const/4 v0, 0x0

    .line 263
    .local v0, "d":Ljava/util/Date;
    :try_start_1
    invoke-virtual {v5, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 268
    :goto_1
    if-nez v0, :cond_1

    .line 269
    new-instance v5, Ljava/text/SimpleDateFormat;

    .end local v5    # "format":Ljava/text/SimpleDateFormat;
    const-string/jumbo v6, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 271
    .restart local v5    # "format":Ljava/text/SimpleDateFormat;
    :try_start_2
    invoke-virtual {v5, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v6

    .line 287
    .end local v0    # "d":Ljava/util/Date;
    .end local v1    # "dataTime":Ljava/lang/String;
    .end local v5    # "format":Ljava/text/SimpleDateFormat;
    :goto_2
    return-wide v6

    .line 253
    .end local v3    # "exif":Landroid/media/ExifInterface;
    :catch_0
    move-exception v2

    .line 254
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 255
    const/4 v3, 0x0

    .restart local v3    # "exif":Landroid/media/ExifInterface;
    goto :goto_0

    .line 264
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "d":Ljava/util/Date;
    .restart local v1    # "dataTime":Ljava/lang/String;
    .restart local v5    # "format":Ljava/text/SimpleDateFormat;
    :catch_1
    move-exception v2

    .line 265
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1

    .line 273
    .end local v2    # "e":Ljava/text/ParseException;
    :catch_2
    move-exception v2

    .line 274
    .restart local v2    # "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    .line 282
    .end local v0    # "d":Ljava/util/Date;
    .end local v1    # "dataTime":Ljava/lang/String;
    .end local v2    # "e":Ljava/text/ParseException;
    .end local v5    # "format":Ljava/text/SimpleDateFormat;
    :cond_0
    :try_start_3
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 283
    .local v4, "f1":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-wide v6

    goto :goto_2

    .line 277
    .end local v4    # "f1":Ljava/io/File;
    .restart local v0    # "d":Ljava/util/Date;
    .restart local v1    # "dataTime":Ljava/lang/String;
    .restart local v5    # "format":Ljava/text/SimpleDateFormat;
    :cond_1
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    goto :goto_2

    .line 284
    .end local v0    # "d":Ljava/util/Date;
    .end local v1    # "dataTime":Ljava/lang/String;
    .end local v5    # "format":Ljava/text/SimpleDateFormat;
    :catch_3
    move-exception v2

    .line 285
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 287
    const-wide/16 v6, 0x0

    goto :goto_2
.end method

.method private static getTransByType(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .param p0, "fxDescobj"    # Lorg/json/JSONObject;
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 162
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 163
    .local v0, "array":Lorg/json/JSONArray;
    if-nez v0, :cond_1

    .line 164
    const-string v4, "NvsParseHelper"

    const-string v5, "getTransByType error!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    return-void

    .line 168
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 170
    :try_start_0
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 171
    .local v3, "trans":Lorg/json/JSONObject;
    const-string/jumbo v4, "transName"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .end local v3    # "trans":Lorg/json/JSONObject;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    :catch_0
    move-exception v1

    .line 173
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private static getTransFxByType(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .param p0, "fxDescobj"    # Lorg/json/JSONObject;
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 179
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 180
    .local v0, "array":Lorg/json/JSONArray;
    if-nez v0, :cond_1

    .line 181
    const-string v4, "NvsParseHelper"

    const-string v5, "getTransFxByType error!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    return-void

    .line 185
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 187
    :try_start_0
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 188
    .local v3, "trans":Lorg/json/JSONObject;
    const-string v4, "fxName"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v3    # "trans":Lorg/json/JSONObject;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static readMusicFileList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meicam/themehelper/NvsMusicFileDesc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/info.json"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/meicam/themehelper/Utils;->readFile(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v6

    .line 34
    .local v6, "musicInfo":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 35
    const-string v8, "NvsParseHelper"

    const-string v9, "read music info json error!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 54
    :cond_0
    :goto_0
    return-object v3

    .line 39
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v3, "fileArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meicam/themehelper/NvsMusicFileDesc;>;"
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 43
    .local v4, "filesobj":Lorg/json/JSONObject;
    const-string v8, "musicfiles"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 44
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v5, v8, :cond_0

    .line 45
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 47
    .local v7, "musicObj":Lorg/json/JSONObject;
    invoke-static {v7, p1}, Lcom/meicam/themehelper/NvsParseHelper;->GetMusicFileFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/meicam/themehelper/NvsMusicFileDesc;

    move-result-object v2

    .line 48
    .local v2, "file":Lcom/meicam/themehelper/NvsMusicFileDesc;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 50
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "file":Lcom/meicam/themehelper/NvsMusicFileDesc;
    .end local v4    # "filesobj":Lorg/json/JSONObject;
    .end local v5    # "i":I
    .end local v7    # "musicObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static readMusicPoint(Ljava/lang/String;Ljava/util/ArrayList;Lcom/meicam/themehelper/NvsTransDesc;)J
    .locals 16
    .param p0, "jsonString"    # Ljava/lang/String;
    .param p2, "transDesc"    # Lcom/meicam/themehelper/NvsTransDesc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meicam/themehelper/NvsMusicPointDesc;",
            ">;",
            "Lcom/meicam/themehelper/NvsTransDesc;",
            ")J"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "musicPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meicam/themehelper/NvsMusicPointDesc;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    .line 77
    const-wide/16 v8, -0x1

    .line 80
    .local v8, "musicLen":J
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 82
    .local v4, "fxDescobj":Lorg/json/JSONObject;
    const-string v12, "music duration"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    mul-long v8, v12, v14

    .line 83
    const-string v12, "points"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 84
    .local v2, "array":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v12

    if-ge v5, v12, :cond_0

    .line 86
    :try_start_1
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 87
    .local v7, "point":Lorg/json/JSONObject;
    invoke-static {v7}, Lcom/meicam/themehelper/NvsParseHelper;->GetDescFromJsonObject(Lorg/json/JSONObject;)Lcom/meicam/themehelper/NvsMusicPointDesc;

    move-result-object v6

    .line 88
    .local v6, "info":Lcom/meicam/themehelper/NvsMusicPointDesc;
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 84
    .end local v6    # "info":Lcom/meicam/themehelper/NvsMusicPointDesc;
    .end local v7    # "point":Lorg/json/JSONObject;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 89
    :catch_0
    move-exception v3

    .line 90
    .local v3, "e":Lorg/json/JSONException;
    :try_start_2
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 127
    .end local v2    # "array":Lorg/json/JSONArray;
    .end local v3    # "e":Lorg/json/JSONException;
    .end local v4    # "fxDescobj":Lorg/json/JSONObject;
    .end local v5    # "i":I
    :catch_1
    move-exception v3

    .line 128
    .restart local v3    # "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    move-wide v10, v8

    .line 131
    .end local v3    # "e":Lorg/json/JSONException;
    .end local v8    # "musicLen":J
    .local v10, "musicLen":J
    :goto_2
    return-wide v10

    .line 94
    .end local v10    # "musicLen":J
    .restart local v2    # "array":Lorg/json/JSONArray;
    .restart local v4    # "fxDescobj":Lorg/json/JSONObject;
    .restart local v5    # "i":I
    .restart local v8    # "musicLen":J
    :cond_0
    if-eqz p2, :cond_7

    .line 95
    :try_start_3
    const-string v12, "fullSizeTrans"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 96
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p2

    iput-object v12, v0, Lcom/meicam/themehelper/NvsTransDesc;->m_fulltransList:Ljava/util/ArrayList;

    .line 97
    const-string v12, "fullSizeTrans"

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/meicam/themehelper/NvsTransDesc;->m_fulltransList:Ljava/util/ArrayList;

    invoke-static {v4, v12, v13}, Lcom/meicam/themehelper/NvsParseHelper;->getTransByType(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 99
    :cond_1
    const-string v12, "halfSizeTrans"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 100
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p2

    iput-object v12, v0, Lcom/meicam/themehelper/NvsTransDesc;->m_halftransList:Ljava/util/ArrayList;

    .line 101
    const-string v12, "halfSizeTrans"

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/meicam/themehelper/NvsTransDesc;->m_halftransList:Ljava/util/ArrayList;

    invoke-static {v4, v12, v13}, Lcom/meicam/themehelper/NvsParseHelper;->getTransByType(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 103
    :cond_2
    const-string v12, "h-fSizeTrans"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 104
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p2

    iput-object v12, v0, Lcom/meicam/themehelper/NvsTransDesc;->m_hftransList:Ljava/util/ArrayList;

    .line 105
    const-string v12, "h-fSizeTrans"

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/meicam/themehelper/NvsTransDesc;->m_hftransList:Ljava/util/ArrayList;

    invoke-static {v4, v12, v13}, Lcom/meicam/themehelper/NvsParseHelper;->getTransByType(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 108
    :cond_3
    const-string v12, "fullFx"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 109
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p2

    iput-object v12, v0, Lcom/meicam/themehelper/NvsTransDesc;->m_fulltransFxList:Ljava/util/ArrayList;

    .line 110
    const-string v12, "fullFx"

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/meicam/themehelper/NvsTransDesc;->m_fulltransFxList:Ljava/util/ArrayList;

    invoke-static {v4, v12, v13}, Lcom/meicam/themehelper/NvsParseHelper;->getTransFxByType(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 112
    :cond_4
    const-string v12, "halfFx"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 113
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p2

    iput-object v12, v0, Lcom/meicam/themehelper/NvsTransDesc;->m_halftransFxList:Ljava/util/ArrayList;

    .line 114
    const-string v12, "halfFx"

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/meicam/themehelper/NvsTransDesc;->m_halftransFxList:Ljava/util/ArrayList;

    invoke-static {v4, v12, v13}, Lcom/meicam/themehelper/NvsParseHelper;->getTransFxByType(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 116
    :cond_5
    const-string v12, "h-fFx"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 117
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p2

    iput-object v12, v0, Lcom/meicam/themehelper/NvsTransDesc;->m_hftransFxList:Ljava/util/ArrayList;

    .line 118
    const-string v12, "h-fFx"

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/meicam/themehelper/NvsTransDesc;->m_hftransFxList:Ljava/util/ArrayList;

    invoke-static {v4, v12, v13}, Lcom/meicam/themehelper/NvsParseHelper;->getTransFxByType(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 120
    :cond_6
    const-string v12, "f-hFx"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 121
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p2

    iput-object v12, v0, Lcom/meicam/themehelper/NvsTransDesc;->m_fhtransFxList:Ljava/util/ArrayList;

    .line 122
    const-string v12, "f-hFx"

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/meicam/themehelper/NvsTransDesc;->m_fhtransFxList:Ljava/util/ArrayList;

    invoke-static {v4, v12, v13}, Lcom/meicam/themehelper/NvsParseHelper;->getTransFxByType(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_7
    move-wide v10, v8

    .line 126
    .end local v8    # "musicLen":J
    .restart local v10    # "musicLen":J
    goto/16 :goto_2
.end method

.method public static sortFileByModifyTime(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meicam/themehelper/NvsImageFileDesc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p0, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meicam/themehelper/NvsImageFileDesc;>;"
    new-instance v0, Lcom/meicam/themehelper/NvsParseHelper$1;

    invoke-direct {v0}, Lcom/meicam/themehelper/NvsParseHelper$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 220
    return-void
.end method

.method public static sortFileByName(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meicam/themehelper/NvsImageFileDesc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p0, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meicam/themehelper/NvsImageFileDesc;>;"
    new-instance v0, Lcom/meicam/themehelper/NvsParseHelper$2;

    invoke-direct {v0}, Lcom/meicam/themehelper/NvsParseHelper$2;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 229
    return-void
.end method

.method public static sortFileByScore(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meicam/themehelper/NvsImageFileDesc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 233
    .local p0, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meicam/themehelper/NvsImageFileDesc;>;"
    new-instance v0, Lcom/meicam/themehelper/NvsParseHelper$3;

    invoke-direct {v0}, Lcom/meicam/themehelper/NvsParseHelper$3;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 247
    return-void
.end method
