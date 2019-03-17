.class public Lcom/uploader/implement/a/a/c;
.super Ljava/lang/Object;
.source "FileUploadActionRequest.java"

# interfaces
.implements Lcom/uploader/implement/a/e;


# instance fields
.field private a:Z

.field private b:Lcom/uploader/implement/a/a/b;

.field private c:Lcom/uploader/implement/b/a/f;

.field private d:J

.field private final e:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final f:I

.field private final g:Lcom/uploader/implement/a/h;

.field private final h:Ljava/lang/String;

.field private final i:Lcom/uploader/implement/c;


# direct methods
.method public constructor <init>(Lcom/uploader/implement/c;Lcom/uploader/implement/a/a/b;Ljava/lang/String;JJZ)V
    .locals 16
    .param p1, "config"    # Lcom/uploader/implement/c;
    .param p2, "description"    # Lcom/uploader/implement/a/a/b;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "offset"    # J
    .param p6, "length"    # J
    .param p8, "needFrameHeader"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/uploader/implement/a/a/c;->f:I

    .line 59
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/uploader/implement/a/a/c;->i:Lcom/uploader/implement/c;

    .line 60
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/uploader/implement/a/a/c;->b:Lcom/uploader/implement/a/a/b;

    .line 61
    move/from16 v0, p8

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/uploader/implement/a/a/c;->a:Z

    .line 62
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/uploader/implement/c;->a:Lcom/uploader/implement/c$a;

    invoke-virtual {v2}, Lcom/uploader/implement/c$a;->d()Landroid/util/Pair;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/uploader/implement/a/a/c;->e:Landroid/util/Pair;

    .line 63
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uploader/implement/a/a/c;->e:Landroid/util/Pair;

    if-nez v2, :cond_0

    .line 64
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "currentUploadTarget is null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/uploader/implement/c;->a:Lcom/uploader/implement/c$a;

    invoke-virtual {v2}, Lcom/uploader/implement/c$a;->a()Landroid/util/Pair;

    move-result-object v2

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/uploader/implement/a/a/c;->h:Ljava/lang/String;

    .line 68
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/uploader/implement/c;->a:Lcom/uploader/implement/c$a;

    invoke-virtual {v2}, Lcom/uploader/implement/c$a;->f()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/uploader/implement/a/a/c;->d:J

    move-object/from16 v3, p0

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p3

    .line 70
    invoke-direct/range {v3 .. v8}, Lcom/uploader/implement/a/a/c;->a(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 71
    .local v14, "frame":Ljava/lang/String;
    new-instance v2, Lcom/uploader/implement/a/h;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/uploader/implement/a/a/b;->b:Ljava/io/File;

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/uploader/implement/a/a/b;->k:J

    const/4 v10, 0x0

    const-string v6, "UTF-8"

    invoke-virtual {v14, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/uploader/implement/a/a/b;->g:J

    cmp-long v6, p4, v6

    if-gez v6, :cond_1

    const-string v6, "\r\n\r\n"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    :goto_0
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/uploader/implement/a/a/b;->l:[B

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    invoke-direct/range {v2 .. v13}, Lcom/uploader/implement/a/h;-><init>(Ljava/io/File;JJJLjava/util/Map;[B[B[B)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/uploader/implement/a/a/c;->g:Lcom/uploader/implement/a/h;

    .line 73
    return-void

    .line 71
    :cond_1
    const/4 v12, 0x0

    goto :goto_0
.end method

.method private final a(JJLjava/lang/String;)Ljava/lang/String;
    .locals 31
    .param p1, "offset"    # J
    .param p3, "length"    # J
    .param p5, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 231
    const/4 v6, 0x0

    .line 232
    .local v6, "bytesString":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/uploader/implement/a/a/c;->a:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uploader/implement/a/a/c;->i:Lcom/uploader/implement/c;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/uploader/implement/c;->b:Lcom/uploader/export/UploaderEnvironment;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/uploader/export/UploaderEnvironment;->getCurrentElement()Lcom/uploader/export/EnvironmentElement;

    move-result-object v7

    .line 234
    .local v7, "element":Lcom/uploader/export/EnvironmentElement;
    iget-object v4, v7, Lcom/uploader/export/EnvironmentElement;->appKey:Ljava/lang/String;

    .line 235
    .local v4, "appKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uploader/implement/a/a/c;->i:Lcom/uploader/implement/c;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/uploader/implement/c;->b:Lcom/uploader/export/UploaderEnvironment;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/uploader/export/UploaderEnvironment;->getUtdid()Ljava/lang/String;

    move-result-object v23

    .line 236
    .local v23, "utdid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uploader/implement/a/a/c;->i:Lcom/uploader/implement/c;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/uploader/implement/c;->b:Lcom/uploader/export/UploaderEnvironment;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/uploader/export/UploaderEnvironment;->getAppVersion()Ljava/lang/String;

    move-result-object v5

    .line 237
    .local v5, "appVersion":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/uploader/implement/a/a/c;->d:J

    move-wide/from16 v24, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    const-wide/16 v28, 0x3e8

    div-long v26, v26, v28

    add-long v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    .line 239
    .local v21, "timestamp":Ljava/lang/String;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 241
    .local v9, "headers":Ljava/util/HashMap;
    const-string v24, "host"

    const-string v25, "arup.alibaba.com"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string v24, "content-type"

    const-string v25, "application/offset+octet-stream"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string v24, "x-arup-version"

    const-string v25, "2.1"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v24, "x-arup-device-id"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string v24, "x-arup-appkey"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string v24, "x-arup-appversion"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string v24, "x-arup-file-count"

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uploader/implement/a/a/c;->i:Lcom/uploader/implement/c;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/uploader/implement/c;->b:Lcom/uploader/export/UploaderEnvironment;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/uploader/export/UploaderEnvironment;->getUserId()Ljava/lang/String;

    move-result-object v22

    .line 249
    .local v22, "userId":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_0

    .line 250
    const-string v24, "x-arup-userinfo"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_0
    const-string v24, "x-arup-timestamp"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v24, "patch"

    move-object/from16 v0, v24

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 256
    new-instance v15, Ljava/lang/StringBuilder;

    const/16 v24, 0x24

    move/from16 v0, v24

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 257
    .local v15, "offsetString":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uploader/implement/a/a/c;->b:Lcom/uploader/implement/a/a/b;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/uploader/implement/a/a/b;->e:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 258
    const-string v24, "x-arup-req-offset"

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uploader/implement/a/a/c;->b:Lcom/uploader/implement/a/a/b;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/uploader/implement/a/a/b;->e:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uploader/implement/a/a/c;->b:Lcom/uploader/implement/a/a/b;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/uploader/implement/a/a/b;->g:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    const-string v24, "x-arup-req-offset-file-length"

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .end local v15    # "offsetString":Ljava/lang/StringBuilder;
    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    const/16 v24, 0x80

    move/from16 v0, v24

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 271
    .local v12, "input":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uploader/implement/a/a/c;->b:Lcom/uploader/implement/a/a/b;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/uploader/implement/a/a/b;->f:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "&"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uploader/implement/a/a/c;->h:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "&"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "&"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "&"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "&"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uploader/implement/a/a/c;->i:Lcom/uploader/implement/c;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/uploader/implement/c;->b:Lcom/uploader/export/UploaderEnvironment;

    move-object/from16 v24, v0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/uploader/export/UploaderEnvironment;->signature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 279
    .local v19, "sign":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 280
    const/16 v16, 0x10

    .line 281
    .local v16, "p":I
    invoke-static/range {v16 .. v16}, Lcom/uploader/implement/a;->a(I)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 282
    const-string v24, "FileUploadActionRequest"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uploader/implement/a/a/c;->f:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " compute upload sign failed."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move/from16 v0, v16

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_2
    new-instance v24, Ljava/lang/Exception;

    const-string v25, "compute api sign failed."

    invoke-direct/range {v24 .. v25}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v24

    .line 286
    .end local v16    # "p":I
    :cond_3
    const-string v24, "x-arup-sign"

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6    # "bytesString":Ljava/lang/StringBuilder;
    const/16 v24, 0x80

    move/from16 v0, v24

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 295
    .restart local v6    # "bytesString":Ljava/lang/StringBuilder;
    move-object/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "f"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uploader/implement/a/a/c;->b:Lcom/uploader/implement/a/a/b;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/uploader/implement/a/a/b;->f:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uploader/implement/a/a/c;->h:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "HTTP/1.1"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\r\n"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 301
    .local v8, "entry":Ljava/util/Map$Entry;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ":"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Lcom/uploader/implement/a/c/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\r\n"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 304
    .end local v8    # "entry":Ljava/util/Map$Entry;
    :cond_4
    const-string v24, "\r\n"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .end local v4    # "appKey":Ljava/lang/String;
    .end local v5    # "appVersion":Ljava/lang/String;
    .end local v7    # "element":Lcom/uploader/export/EnvironmentElement;
    .end local v9    # "headers":Ljava/util/HashMap;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "input":Ljava/lang/StringBuilder;
    .end local v19    # "sign":Ljava/lang/String;
    .end local v21    # "timestamp":Ljava/lang/String;
    .end local v22    # "userId":Ljava/lang/String;
    .end local v23    # "utdid":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uploader/implement/a/a/c;->b:Lcom/uploader/implement/a/a/b;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/uploader/implement/a/a/b;->g:J

    move-wide/from16 v24, v0

    cmp-long v24, p1, v24

    if-gez v24, :cond_a

    .line 318
    if-nez v6, :cond_6

    .line 319
    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6    # "bytesString":Ljava/lang/StringBuilder;
    const/16 v24, 0x80

    move/from16 v0, v24

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 321
    .restart local v6    # "bytesString":Ljava/lang/StringBuilder;
    :cond_6
    const-string v24, "--"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uploader/implement/a/a/c;->b:Lcom/uploader/implement/a/a/b;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/uploader/implement/a/a/b;->e:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "--"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\r\n"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uploader/implement/a/a/c;->b:Lcom/uploader/implement/a/a/b;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/uploader/implement/a/a/b;->i:Ljava/util/Map;

    move-object/from16 v24, v0

    if-eqz v24, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uploader/implement/a/a/c;->b:Lcom/uploader/implement/a/a/b;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/uploader/implement/a/a/b;->i:Ljava/util/Map;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/Map;->size()I

    move-result v24

    if-lez v24, :cond_9

    .line 324
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 325
    .local v14, "mate":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uploader/implement/a/a/c;->b:Lcom/uploader/implement/a/a/b;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/uploader/implement/a/a/b;->i:Ljava/util/Map;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_7
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 326
    .restart local v8    # "entry":Ljava/util/Map$Entry;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 327
    .local v13, "key":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_7

    .line 330
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v14, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 332
    .end local v8    # "entry":Ljava/util/Map$Entry;
    .end local v13    # "key":Ljava/lang/String;
    :cond_8
    const-string v24, "x-arup-meta"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ":"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/uploader/implement/a/c/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\r\n"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v14    # "mate":Lorg/json/JSONObject;
    :cond_9
    const-string v24, "x-arup-file-md5"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ":"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uploader/implement/a/a/c;->b:Lcom/uploader/implement/a/a/b;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/uploader/implement/a/a/b;->h:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/uploader/implement/a/c/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\r\n"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    const-string v24, "x-arup-file-name"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ":"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uploader/implement/a/a/c;->b:Lcom/uploader/implement/a/a/b;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/uploader/implement/a/a/b;->d:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/uploader/implement/a/c/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\r\n"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    const-string v24, "x-arup-range"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ":"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\r\n"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    const-string v24, "x-arup-file-length"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ":"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uploader/implement/a/a/c;->b:Lcom/uploader/implement/a/a/b;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/uploader/implement/a/a/b;->g:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\r\n\r\n"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    :cond_a
    if-nez v6, :cond_b

    .line 349
    const/16 v24, 0x0

    .line 364
    :goto_2
    return-object v24

    .line 351
    :cond_b
    const/16 v16, 0x2

    .line 352
    .restart local v16    # "p":I
    invoke-static/range {v16 .. v16}, Lcom/uploader/implement/a;->a(I)Z

    move-result v24

    if-eqz v24, :cond_d

    .line 353
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 354
    .local v18, "s":Ljava/lang/String;
    const-string v17, ""

    .line 356
    .local v17, "result":Ljava/lang/String;
    const/16 v20, 0x0

    .line 357
    .local v20, "start":I
    :goto_3
    const-string v24, "\r\n"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v11

    .local v11, "index":I
    const/16 v24, -0x1

    move/from16 v0, v24

    if-eq v11, v0, :cond_c

    .line 358
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\n"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 359
    const-string v24, "\r\n"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    add-int v20, v11, v24

    goto :goto_3

    .line 361
    :cond_c
    const-string v24, "FileUploadActionRequest"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uploader/implement/a/a/c;->f:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " create upload header:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move/from16 v0, v16

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 364
    .end local v11    # "index":I
    .end local v17    # "result":Ljava/lang/String;
    .end local v18    # "s":Ljava/lang/String;
    .end local v20    # "start":I
    :cond_d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto :goto_2
.end method

.method private b(Ljava/util/Map;[BII)Lcom/uploader/implement/a/f;
    .locals 17
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

    .prologue
    .line 154
    if-nez p1, :cond_0

    .line 155
    new-instance p1, Ljava/util/HashMap;

    .end local p1    # "header":Ljava/util/Map;
    invoke-direct/range {p1 .. p1}, Ljava/util/HashMap;-><init>()V

    .line 157
    .restart local p1    # "header":Ljava/util/Map;
    :cond_0
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    new-instance v15, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v15, v0, v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v14, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v10, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 158
    .local v10, "reader":Ljava/io/BufferedReader;
    const-string v14, "divided_length"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "content":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 163
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 166
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    .line 168
    .local v12, "size":I
    const-string v14, ":"

    invoke-virtual {v4, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 169
    .local v6, "index":I
    const/4 v14, 0x1

    if-le v6, v14, :cond_4

    .line 170
    const/4 v14, 0x0

    invoke-virtual {v4, v14, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 171
    .local v7, "key":Ljava/lang/String;
    if-ge v6, v12, :cond_1

    .line 172
    add-int/lit8 v14, v6, 0x1

    invoke-virtual {v4, v14, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 173
    .local v13, "value":Ljava/lang/String;
    invoke-static {v13}, Lcom/uploader/implement/a/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 174
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 191
    .end local v4    # "content":Ljava/lang/String;
    .end local v6    # "index":I
    .end local v7    # "key":Ljava/lang/String;
    .end local v12    # "size":I
    .end local v13    # "value":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 192
    .local v5, "e":Ljava/io/IOException;
    const/16 v9, 0x10

    .line 193
    .local v9, "p":I
    :try_start_1
    invoke-static {v9}, Lcom/uploader/implement/a;->a(I)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 194
    const-string v14, "FileUploadActionRequest"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uploader/implement/a/a/c;->f:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " decode response header failed"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v9, v14, v15, v5}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    :cond_2
    const/4 v11, 0x0

    .line 199
    :try_start_2
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 227
    .end local v5    # "e":Ljava/io/IOException;
    .end local v9    # "p":I
    :cond_3
    :goto_1
    return-object v11

    .line 179
    .restart local v4    # "content":Ljava/lang/String;
    .restart local v6    # "index":I
    .restart local v12    # "size":I
    :cond_4
    :try_start_3
    const-string v14, " "

    invoke-virtual {v4, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 180
    const/4 v14, 0x1

    if-le v6, v14, :cond_1

    .line 182
    const/4 v14, 0x0

    invoke-virtual {v4, v14, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 183
    .local v3, "code":Ljava/lang/String;
    if-ge v6, v12, :cond_1

    .line 184
    add-int/lit8 v14, v6, 0x1

    invoke-virtual {v4, v14, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 185
    .local v8, "msg":Ljava/lang/String;
    const-string v14, "response_code"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v14, "response_msg"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 198
    .end local v3    # "code":Ljava/lang/String;
    .end local v4    # "content":Ljava/lang/String;
    .end local v6    # "index":I
    .end local v8    # "msg":Ljava/lang/String;
    .end local v12    # "size":I
    :catchall_0
    move-exception v14

    .line 199
    :try_start_4
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 201
    :goto_2
    throw v14

    .line 199
    .restart local v4    # "content":Ljava/lang/String;
    :cond_5
    :try_start_5
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 206
    :goto_3
    const-string v14, "x-arup-process"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_6

    .line 207
    new-instance v11, Lcom/uploader/implement/a/b/a;

    const/4 v14, 0x2

    move-object/from16 v0, p1

    invoke-direct {v11, v14, v0}, Lcom/uploader/implement/a/b/a;-><init>(ILjava/util/Map;)V

    .line 221
    .local v11, "response":Lcom/uploader/implement/a/f;
    :goto_4
    const-string v14, "divided_length"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const/4 v9, 0x4

    .line 223
    .restart local v9    # "p":I
    invoke-static {v9}, Lcom/uploader/implement/a;->a(I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 224
    const-string v14, "FileUploadActionRequest"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uploader/implement/a/a/c;->f:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " decode actionResponse header:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v9, v14, v15}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 208
    .end local v9    # "p":I
    .end local v11    # "response":Lcom/uploader/implement/a/f;
    :cond_6
    const-string v14, "x-arup-offset"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_7

    .line 209
    new-instance v11, Lcom/uploader/implement/a/b/a;

    const/4 v14, 0x3

    move-object/from16 v0, p1

    invoke-direct {v11, v14, v0}, Lcom/uploader/implement/a/b/a;-><init>(ILjava/util/Map;)V

    .restart local v11    # "response":Lcom/uploader/implement/a/f;
    goto :goto_4

    .line 210
    .end local v11    # "response":Lcom/uploader/implement/a/f;
    :cond_7
    const-string v14, "x-arup-file-status"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_8

    .line 211
    new-instance v11, Lcom/uploader/implement/a/b/a;

    const/4 v14, 0x4

    move-object/from16 v0, p1

    invoke-direct {v11, v14, v0}, Lcom/uploader/implement/a/b/a;-><init>(ILjava/util/Map;)V

    .restart local v11    # "response":Lcom/uploader/implement/a/f;
    goto :goto_4

    .line 212
    .end local v11    # "response":Lcom/uploader/implement/a/f;
    :cond_8
    const-string v14, "x-arup-error-code"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_9

    .line 213
    new-instance v11, Lcom/uploader/implement/a/b/a;

    const/4 v14, 0x5

    move-object/from16 v0, p1

    invoke-direct {v11, v14, v0}, Lcom/uploader/implement/a/b/a;-><init>(ILjava/util/Map;)V

    .restart local v11    # "response":Lcom/uploader/implement/a/f;
    goto :goto_4

    .line 214
    .end local v11    # "response":Lcom/uploader/implement/a/f;
    :cond_9
    const-string v14, "x-arup-session-status"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_a

    .line 215
    new-instance v11, Lcom/uploader/implement/a/b/a;

    const/4 v14, 0x6

    move-object/from16 v0, p1

    invoke-direct {v11, v14, v0}, Lcom/uploader/implement/a/b/a;-><init>(ILjava/util/Map;)V

    .restart local v11    # "response":Lcom/uploader/implement/a/f;
    goto/16 :goto_4

    .line 218
    .end local v11    # "response":Lcom/uploader/implement/a/f;
    :cond_a
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 200
    :catch_1
    move-exception v14

    goto/16 :goto_3

    .end local v4    # "content":Ljava/lang/String;
    .restart local v5    # "e":Ljava/io/IOException;
    .restart local v9    # "p":I
    :catch_2
    move-exception v14

    goto/16 :goto_1

    .end local v5    # "e":Ljava/io/IOException;
    .end local v9    # "p":I
    :catch_3
    move-exception v15

    goto/16 :goto_2
.end method


# virtual methods
.method public a(Ljava/util/Map;[BII)Landroid/util/Pair;
    .locals 11
    .param p1, "header"    # Ljava/util/Map;
    .param p2, "data"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

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
    const/4 v7, -0x1

    .line 95
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2, p3, p4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 98
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    const/4 v5, 0x0

    .line 99
    .local v5, "sign":I
    const/4 v6, -0x1

    .line 102
    .local v6, "size":I
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 103
    .local v1, "c":I
    if-ne v1, v7, :cond_3

    .line 133
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 142
    .end local v1    # "c":I
    :cond_1
    :goto_2
    if-le v6, v7, :cond_a

    .line 143
    invoke-direct {p0, p1, p2, p3, v6}, Lcom/uploader/implement/a/a/c;->b(Ljava/util/Map;[BII)Lcom/uploader/implement/a/f;

    move-result-object v4

    .line 144
    .local v4, "response":Lcom/uploader/implement/a/f;
    new-instance v8, Landroid/util/Pair;

    if-nez v4, :cond_2

    move v6, v7

    .end local v6    # "size":I
    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v8, v4, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v7, v8

    .line 147
    .end local v4    # "response":Lcom/uploader/implement/a/f;
    :goto_3
    return-object v7

    .line 107
    .restart local v1    # "c":I
    .restart local v6    # "size":I
    :cond_3
    const/16 v8, 0xd

    if-ne v1, v8, :cond_5

    .line 108
    if-eqz v5, :cond_4

    const/4 v8, 0x2

    if-ne v5, v8, :cond_7

    .line 109
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 110
    goto :goto_0

    .line 112
    :cond_5
    const/16 v8, 0xa

    if-ne v1, v8, :cond_7

    .line 113
    const/4 v8, 0x1

    if-eq v5, v8, :cond_6

    const/4 v8, 0x3

    if-ne v5, v8, :cond_7

    .line 114
    :cond_6
    add-int/lit8 v5, v5, 0x1

    const/4 v8, 0x4

    if-ne v5, v8, :cond_0

    .line 115
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    sub-int v6, p4, v8

    .line 116
    goto :goto_1

    .line 122
    :cond_7
    if-eqz v5, :cond_0

    .line 123
    const/4 v5, 0x0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v2

    .line 135
    .local v2, "e":Ljava/io/IOException;
    const/16 v3, 0x8

    .line 136
    .local v3, "p":I
    invoke-static {v3}, Lcom/uploader/implement/a;->a(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 137
    const-string v8, "FileUploadActionRequest"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, p0, Lcom/uploader/implement/a/a/c;->f:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " divide"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v8, v9, v2}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 126
    .end local v1    # "c":I
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "p":I
    :catch_1
    move-exception v2

    .line 127
    .local v2, "e":Ljava/lang/Exception;
    const/16 v3, 0x10

    .line 128
    .restart local v3    # "p":I
    :try_start_3
    invoke-static {v3}, Lcom/uploader/implement/a;->a(I)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 129
    const-string v8, "FileUploadActionRequest"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, p0, Lcom/uploader/implement/a/a/c;->f:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " divide, exception"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v8, v9, v2}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 133
    :cond_8
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    .line 134
    :catch_2
    move-exception v2

    .line 135
    .local v2, "e":Ljava/io/IOException;
    const/16 v3, 0x8

    .line 136
    invoke-static {v3}, Lcom/uploader/implement/a;->a(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 137
    const-string v8, "FileUploadActionRequest"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, p0, Lcom/uploader/implement/a/a/c;->f:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " divide"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v8, v9, v2}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 132
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "p":I
    :catchall_0
    move-exception v7

    .line 133
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 139
    :cond_9
    :goto_4
    throw v7

    .line 134
    :catch_3
    move-exception v2

    .line 135
    .restart local v2    # "e":Ljava/io/IOException;
    const/16 v3, 0x8

    .line 136
    .restart local v3    # "p":I
    invoke-static {v3}, Lcom/uploader/implement/a;->a(I)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 137
    const-string v8, "FileUploadActionRequest"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, p0, Lcom/uploader/implement/a/a/c;->f:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " divide"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v8, v9, v2}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 147
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "p":I
    :cond_a
    new-instance v7, Landroid/util/Pair;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3
.end method

.method public synthetic a()Lcom/uploader/implement/b/a;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/uploader/implement/a/a/c;->c()Lcom/uploader/implement/b/a/f;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/uploader/implement/a/h;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/uploader/implement/a/a/c;->g:Lcom/uploader/implement/a/h;

    return-object v0
.end method

.method public c()Lcom/uploader/implement/b/a/f;
    .locals 5

    .prologue
    .line 77
    iget-object v1, p0, Lcom/uploader/implement/a/a/c;->c:Lcom/uploader/implement/b/a/f;

    if-eqz v1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/uploader/implement/a/a/c;->c:Lcom/uploader/implement/b/a/f;

    .line 83
    :goto_0
    return-object v0

    .line 80
    :cond_0
    new-instance v0, Lcom/uploader/implement/b/a/f;

    iget-object v1, p0, Lcom/uploader/implement/a/a/c;->e:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/uploader/implement/a/a/c;->e:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/uploader/implement/a/a/c;->e:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/uploader/implement/b/a/f;-><init>(Ljava/lang/String;IZZ)V

    .line 83
    .local v0, "target":Lcom/uploader/implement/b/a/f;
    iput-object v0, p0, Lcom/uploader/implement/a/a/c;->c:Lcom/uploader/implement/b/a/f;

    goto :goto_0
.end method
