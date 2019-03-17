.class public Lcom/uploader/implement/a/a/a;
.super Ljava/lang/Object;
.source "DeclareUploadActionRequest.java"

# interfaces
.implements Lcom/uploader/implement/a/e;


# instance fields
.field a:Lcom/uploader/implement/b/a/g;

.field final b:Ljava/lang/String;

.field final c:J

.field final d:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final e:Lcom/uploader/implement/c;

.field final f:I

.field final g:Lcom/uploader/implement/a/h;


# direct methods
.method public constructor <init>(Lcom/uploader/implement/c;)V
    .locals 12
    .param p1, "config"    # Lcom/uploader/implement/c;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/uploader/implement/a/a/a;->e:Lcom/uploader/implement/c;

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/uploader/implement/a/a/a;->f:I

    .line 53
    iget-object v0, p1, Lcom/uploader/implement/c;->a:Lcom/uploader/implement/c$a;

    invoke-virtual {v0}, Lcom/uploader/implement/c$a;->b()Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/uploader/implement/a/a/a;->d:Landroid/util/Pair;

    .line 54
    iget-object v0, p1, Lcom/uploader/implement/c;->a:Lcom/uploader/implement/c$a;

    invoke-virtual {v0}, Lcom/uploader/implement/c$a;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uploader/implement/a/a/a;->b:Ljava/lang/String;

    .line 55
    iget-object v0, p1, Lcom/uploader/implement/c;->a:Lcom/uploader/implement/c$a;

    invoke-virtual {v0}, Lcom/uploader/implement/c$a;->f()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/uploader/implement/a/a/a;->c:J

    .line 56
    new-instance v0, Lcom/uploader/implement/a/h;

    invoke-direct {p0}, Lcom/uploader/implement/a/a/a;->d()Ljava/util/Map;

    move-result-object v8

    move-wide v4, v2

    move-wide v6, v2

    move-object v9, v1

    move-object v10, v1

    move-object v11, v1

    invoke-direct/range {v0 .. v11}, Lcom/uploader/implement/a/h;-><init>(Ljava/io/File;JJJLjava/util/Map;[B[B[B)V

    iput-object v0, p0, Lcom/uploader/implement/a/a/a;->g:Lcom/uploader/implement/a/h;

    .line 57
    return-void
.end method

.method private a(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 12
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 179
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 183
    .local v5, "result":Lorg/json/JSONObject;
    const-string v7, "apiServerList"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 184
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 185
    .local v1, "declareServerList":Ljava/util/ArrayList;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 186
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 187
    .local v3, "object":Lorg/json/JSONObject;
    new-instance v4, Landroid/util/Pair;

    const-string v7, "ip"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "port"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 188
    .local v4, "pair":Landroid/util/Pair;
    invoke-virtual {v1, v11, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 185
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 195
    .end local v3    # "object":Lorg/json/JSONObject;
    .end local v4    # "pair":Landroid/util/Pair;
    :cond_0
    const-string v7, "uploadServerList"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 196
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v6, "uploadServerList":Ljava/util/ArrayList;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    :goto_1
    if-ltz v2, :cond_1

    .line 198
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 199
    .restart local v3    # "object":Lorg/json/JSONObject;
    new-instance v4, Landroid/util/Pair;

    const-string v7, "encrypt"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    new-instance v8, Landroid/util/Pair;

    const-string v9, "ip"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "port"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v4, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 201
    .restart local v4    # "pair":Landroid/util/Pair;
    invoke-virtual {v6, v11, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 197
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 210
    .end local v3    # "object":Lorg/json/JSONObject;
    .end local v4    # "pair":Landroid/util/Pair;
    :cond_1
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "token"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    const/4 v8, 0x1

    const-string v9, "expires"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object v1, v7, v8

    const/4 v8, 0x3

    aput-object v6, v7, v8

    return-object v7
.end method

.method private b(Ljava/util/Map;[BII)Lcom/uploader/implement/a/f;
    .locals 4
    .param p1, "header"    # Ljava/util/Map;
    .param p2, "data"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[BII)",
            "Lcom/uploader/implement/a/f;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 106
    const-string v1, "x-arup-error-code"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 107
    new-instance v1, Lcom/uploader/implement/a/b/a;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p1}, Lcom/uploader/implement/a/b/a;-><init>(ILjava/util/Map;)V

    .line 114
    :goto_0
    return-object v1

    .line 109
    :cond_0
    const/4 v0, 0x0

    .line 110
    .local v0, "content":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 111
    new-instance v0, Ljava/lang/String;

    .end local v0    # "content":Ljava/lang/String;
    invoke-direct {v0, p2, p3, p4}, Ljava/lang/String;-><init>([BII)V

    .line 113
    .restart local v0    # "content":Ljava/lang/String;
    :cond_1
    const-string v1, "divided_length"

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    new-instance v1, Lcom/uploader/implement/a/b/a;

    const/4 v2, 0x1

    invoke-direct {p0, v0}, Lcom/uploader/implement/a/a/a;->a(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, p1, v3}, Lcom/uploader/implement/a/b/a;-><init>(ILjava/util/Map;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private final d()Ljava/util/Map;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 119
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/uploader/implement/a/a/a;->e:Lcom/uploader/implement/c;

    iget-object v12, v12, Lcom/uploader/implement/c;->b:Lcom/uploader/export/UploaderEnvironment;

    invoke-virtual {v12}, Lcom/uploader/export/UploaderEnvironment;->getCurrentElement()Lcom/uploader/export/EnvironmentElement;

    move-result-object v4

    .line 120
    .local v4, "element":Lcom/uploader/export/EnvironmentElement;
    iget-object v2, v4, Lcom/uploader/export/EnvironmentElement;->appKey:Ljava/lang/String;

    .line 121
    .local v2, "appKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/uploader/implement/a/a/a;->e:Lcom/uploader/implement/c;

    iget-object v12, v12, Lcom/uploader/implement/c;->b:Lcom/uploader/export/UploaderEnvironment;

    invoke-virtual {v12}, Lcom/uploader/export/UploaderEnvironment;->getUtdid()Ljava/lang/String;

    move-result-object v11

    .line 122
    .local v11, "utdid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/uploader/implement/a/a/a;->e:Lcom/uploader/implement/c;

    iget-object v12, v12, Lcom/uploader/implement/c;->b:Lcom/uploader/export/UploaderEnvironment;

    invoke-virtual {v12}, Lcom/uploader/export/UploaderEnvironment;->getUserId()Ljava/lang/String;

    move-result-object v10

    .line 123
    .local v10, "userId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/uploader/implement/a/a/a;->e:Lcom/uploader/implement/c;

    iget-object v12, v12, Lcom/uploader/implement/c;->b:Lcom/uploader/export/UploaderEnvironment;

    invoke-virtual {v12}, Lcom/uploader/export/UploaderEnvironment;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, "appVersion":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/uploader/implement/a/a/a;->c:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    add-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    .line 126
    .local v9, "timestamp":Ljava/lang/String;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 127
    .local v5, "headers":Ljava/util/Map;
    const-string v12, "content-type"

    const-string v13, "application/json;charset=utf-8"

    invoke-interface {v5, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v12, "x-arup-version"

    const-string v13, "2.1"

    invoke-interface {v5, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v12, "host"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/uploader/implement/a/a/a;->b:Ljava/lang/String;

    invoke-static {v13}, Lcom/uploader/implement/a/c/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v12, "x-arup-appkey"

    invoke-static {v2}, Lcom/uploader/implement/a/c/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v12, "x-arup-appversion"

    invoke-static {v3}, Lcom/uploader/implement/a/c/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v12, "x-arup-device-id"

    invoke-static {v11}, Lcom/uploader/implement/a/c/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 134
    const-string v12, "x-arup-userinfo"

    invoke-static {v10}, Lcom/uploader/implement/a/c/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_0
    const-string v12, "x-arup-timestamp"

    invoke-static {v9}, Lcom/uploader/implement/a/c/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v12, 0x80

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 144
    .local v6, "input":Ljava/lang/StringBuilder;
    const-string v12, "/dispatchUpload.api"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/uploader/implement/a/a/a;->e:Lcom/uploader/implement/c;

    iget-object v12, v12, Lcom/uploader/implement/c;->b:Lcom/uploader/export/UploaderEnvironment;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/uploader/export/UploaderEnvironment;->signature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 151
    .local v8, "sign":Ljava/lang/String;
    const/4 v7, 0x2

    .line 152
    .local v7, "p":I
    invoke-static {v7}, Lcom/uploader/implement/a;->a(I)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 153
    const-string v12, "DeclareUploadActionRequest"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "compute api sign:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", input="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v12, v13}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 156
    const/16 v7, 0x10

    .line 157
    invoke-static {v7}, Lcom/uploader/implement/a;->a(I)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 158
    const-string v12, "DeclareUploadActionRequest"

    const-string v13, "compute api sign failed."

    invoke-static {v7, v12, v13}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_2
    new-instance v12, Ljava/lang/Exception;

    const-string v13, "compute api sign failed."

    invoke-direct {v12, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v12

    .line 162
    :cond_3
    const-string v12, "x-arup-sign"

    invoke-static {v8}, Lcom/uploader/implement/a/c/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const/4 v7, 0x2

    .line 165
    invoke-static {v7}, Lcom/uploader/implement/a;->a(I)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 166
    const-string v12, "DeclareUploadActionRequest"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " create declare header:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v12, v13}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_4
    return-object v5
.end method


# virtual methods
.method public a(Ljava/util/Map;[BII)Landroid/util/Pair;
    .locals 6
    .param p1, "header"    # Ljava/util/Map;
    .param p2, "data"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[BII)",
            "Landroid/util/Pair",
            "<",
            "Lcom/uploader/implement/a/f;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 86
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 87
    :cond_0
    new-instance v2, Landroid/util/Pair;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 98
    :goto_0
    return-object v2

    .line 91
    :cond_1
    :try_start_0
    new-instance v2, Landroid/util/Pair;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/uploader/implement/a/a/a;->b(Ljava/util/Map;[BII)Lcom/uploader/implement/a/f;

    move-result-object v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x2

    .line 94
    .local v1, "p":I
    invoke-static {v1}, Lcom/uploader/implement/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 95
    const-string v2, "DeclareUploadActionRequest"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_2
    new-instance v2, Landroid/util/Pair;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public synthetic a()Lcom/uploader/implement/b/a;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/uploader/implement/a/a/a;->c()Lcom/uploader/implement/b/a/g;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/uploader/implement/a/h;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/uploader/implement/a/a/a;->g:Lcom/uploader/implement/a/h;

    return-object v0
.end method

.method public c()Lcom/uploader/implement/b/a/g;
    .locals 6

    .prologue
    .line 61
    iget-object v2, p0, Lcom/uploader/implement/a/a/a;->a:Lcom/uploader/implement/b/a/g;

    if-eqz v2, :cond_0

    .line 62
    iget-object v1, p0, Lcom/uploader/implement/a/a/a;->a:Lcom/uploader/implement/b/a/g;

    .line 76
    :goto_0
    return-object v1

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 66
    .local v0, "requestUrl":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/uploader/implement/a/a/a;->d:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x1bb

    if-ne v2, v3, :cond_1

    .line 67
    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/uploader/implement/a/a/a;->d:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/uploader/implement/a/a/a;->d:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    :goto_1
    const-string v2, "/dispatchUpload.api"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    new-instance v1, Lcom/uploader/implement/b/a/g;

    iget-object v2, p0, Lcom/uploader/implement/a/a/a;->d:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/uploader/implement/a/a/a;->d:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/uploader/implement/a/a/a;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/uploader/implement/b/a/g;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 76
    .local v1, "target":Lcom/uploader/implement/b/a/g;
    iput-object v1, p0, Lcom/uploader/implement/a/a/a;->a:Lcom/uploader/implement/b/a/g;

    goto :goto_0

    .line 70
    .end local v1    # "target":Lcom/uploader/implement/b/a/g;
    :cond_1
    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/uploader/implement/a/a/a;->d:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
