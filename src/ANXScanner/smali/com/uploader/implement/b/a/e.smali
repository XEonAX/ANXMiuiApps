.class public Lcom/uploader/implement/b/a/e;
.super Lcom/uploader/implement/b/a/a;
.source "ShortLivedConnection.java"


# static fields
.field static volatile f:Ljavax/net/ssl/SSLSocketFactory;


# instance fields
.field e:Ljava/net/HttpURLConnection;

.field g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/uploader/implement/b/a/e;->f:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method constructor <init>(Lcom/uploader/implement/c;Lcom/uploader/implement/b/a/g;)V
    .locals 2
    .param p1, "config"    # Lcom/uploader/implement/c;
    .param p2, "target"    # Lcom/uploader/implement/b/a/g;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/uploader/implement/b/a/a;-><init>(Lcom/uploader/implement/c;Lcom/uploader/implement/b/a;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uploader/implement/b/a/e;->e:Ljava/net/HttpURLConnection;

    .line 54
    iget-object v0, p2, Lcom/uploader/implement/b/a/g;->f:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/uploader/implement/b/a/e;->g:Z

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/uploader/implement/b/a/e;)V
    .locals 0
    .param p0, "x0"    # Lcom/uploader/implement/b/a/e;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/uploader/implement/b/a/e;->g()V

    return-void
.end method

.method static synthetic a(Lcom/uploader/implement/b/a/e;Ljava/net/HttpURLConnection;Lcom/uploader/implement/b/b;)V
    .locals 0
    .param p0, "x0"    # Lcom/uploader/implement/b/a/e;
    .param p1, "x1"    # Ljava/net/HttpURLConnection;
    .param p2, "x2"    # Lcom/uploader/implement/b/b;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/uploader/implement/b/a/e;->a(Ljava/net/HttpURLConnection;Lcom/uploader/implement/b/b;)V

    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;Lcom/uploader/implement/b/b;)V
    .locals 28
    .param p1, "conn"    # Ljava/net/HttpURLConnection;
    .param p2, "listener"    # Lcom/uploader/implement/b/b;

    .prologue
    .line 226
    new-instance v7, Lcom/uploader/implement/b/f;

    invoke-direct {v7}, Lcom/uploader/implement/b/f;-><init>()V

    .line 230
    .local v7, "data":Lcom/uploader/implement/b/f;
    const/16 v22, 0x0

    .line 231
    .local v22, "responseCode":I
    const/16 v23, 0x0

    .line 232
    .local v23, "responseMsg":Ljava/lang/String;
    const/4 v15, 0x0

    .line 233
    .local v15, "headers":Ljava/util/Map;
    const/16 v17, 0x0

    .line 235
    .local v17, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v22

    .line 236
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v23

    .line 237
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v15

    .line 239
    const/16 v21, 0x4

    .line 240
    .local v21, "p":I
    invoke-static/range {v21 .. v21}, Lcom/uploader/implement/a;->a(I)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 241
    const-string v24, "ShortLivedConnection"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "code="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ",msg="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ",headers="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 268
    if-eqz v15, :cond_5

    invoke-interface {v15}, Ljava/util/Map;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_5

    .line 269
    new-instance v24, Ljava/util/HashMap;

    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v25

    invoke-direct/range {v24 .. v25}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v0, v24

    iput-object v0, v7, Lcom/uploader/implement/b/f;->a:Ljava/util/Map;

    .line 270
    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 271
    .local v13, "entry":Ljava/util/Map$Entry;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v24

    if-eqz v24, :cond_1

    .line 272
    iget-object v0, v7, Lcom/uploader/implement/b/f;->a:Ljava/util/Map;

    move-object/from16 v25, v0

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v26

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/List;

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 244
    .end local v13    # "entry":Ljava/util/Map$Entry;
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v21    # "p":I
    :catch_0
    move-exception v10

    .line 246
    .local v10, "e":Ljava/lang/Exception;
    const/16 v21, 0x8

    .line 247
    .restart local v21    # "p":I
    invoke-static/range {v21 .. v21}, Lcom/uploader/implement/a;->a(I)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 248
    const-string v24, "ShortLivedConnection"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uploader/implement/b/a/e;->c:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " parseResponse:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_2
    new-instance v14, Lcom/uploader/implement/c/a;

    const-string v24, "100"

    const-string v25, "6"

    const-string v26, "parseResponse getStream"

    const/16 v27, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v14, v0, v1, v2, v3}, Lcom/uploader/implement/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 251
    .local v14, "error":Lcom/uploader/implement/c/a;
    if-eqz p2, :cond_3

    .line 252
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v14}, Lcom/uploader/implement/b/b;->a(Lcom/uploader/implement/b/e;Lcom/uploader/implement/c/a;)V

    .line 254
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/uploader/implement/b/a/e;->f()V

    .line 256
    if-eqz v17, :cond_4

    .line 257
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 348
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v14    # "error":Lcom/uploader/implement/c/a;
    :cond_4
    :goto_1
    return-void

    .line 259
    .restart local v10    # "e":Ljava/lang/Exception;
    .restart local v14    # "error":Lcom/uploader/implement/c/a;
    :catch_1
    move-exception v11

    .line 260
    .local v11, "e2":Ljava/io/IOException;
    const/16 v21, 0x8

    .line 261
    invoke-static/range {v21 .. v21}, Lcom/uploader/implement/a;->a(I)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 262
    const-string v24, "ShortLivedConnection"

    invoke-virtual {v11}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v25

    move/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 276
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "e2":Ljava/io/IOException;
    .end local v14    # "error":Lcom/uploader/implement/c/a;
    :cond_5
    iget-object v0, v7, Lcom/uploader/implement/b/f;->a:Ljava/util/Map;

    move-object/from16 v24, v0

    if-nez v24, :cond_6

    .line 277
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v24

    iput-object v0, v7, Lcom/uploader/implement/b/f;->a:Ljava/util/Map;

    .line 279
    :cond_6
    iget-object v0, v7, Lcom/uploader/implement/b/f;->a:Ljava/util/Map;

    move-object/from16 v24, v0

    const-string v25, "response_code"

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    invoke-interface/range {v24 .. v26}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-object v0, v7, Lcom/uploader/implement/b/f;->a:Ljava/util/Map;

    move-object/from16 v24, v0

    const-string v25, "response_msg"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    if-nez v17, :cond_8

    .line 283
    if-eqz p2, :cond_7

    .line 284
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v7}, Lcom/uploader/implement/b/b;->a(Lcom/uploader/implement/b/e;Lcom/uploader/implement/b/f;)V

    .line 286
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/uploader/implement/b/a/e;->f()V

    goto :goto_1

    .line 290
    :cond_8
    const/4 v8, 0x0

    .line 291
    .local v8, "dis":Ljava/io/DataInputStream;
    const/4 v4, 0x0

    .line 293
    .local v4, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_2
    const-string v24, "Content-Encoding"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 294
    .local v12, "encoding":Ljava/lang/String;
    const-string v24, "gzip"

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    .line 295
    .local v19, "isGZip":Z
    if-eqz v19, :cond_9

    .line 296
    new-instance v18, Ljava/util/zip/GZIPInputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v17    # "is":Ljava/io/InputStream;
    .local v18, "is":Ljava/io/InputStream;
    move-object/from16 v17, v18

    .line 298
    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v17    # "is":Ljava/io/InputStream;
    :cond_9
    new-instance v9, Ljava/io/DataInputStream;

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 299
    .end local v8    # "dis":Ljava/io/DataInputStream;
    .local v9, "dis":Ljava/io/DataInputStream;
    :try_start_3
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 302
    .end local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v5, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v24, 0x400

    :try_start_4
    move/from16 v0, v24

    new-array v6, v0, [B

    .line 303
    .local v6, "buffer":[B
    :goto_2
    invoke-virtual {v9, v6}, Ljava/io/DataInputStream;->read([B)I

    move-result v20

    .local v20, "length":I
    const/16 v24, -0x1

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_d

    .line 304
    const/16 v24, 0x0

    move/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v5, v6, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    .line 313
    .end local v6    # "buffer":[B
    .end local v20    # "length":I
    :catch_2
    move-exception v10

    move-object v4, v5

    .end local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    move-object v8, v9

    .line 315
    .end local v9    # "dis":Ljava/io/DataInputStream;
    .end local v12    # "encoding":Ljava/lang/String;
    .end local v19    # "isGZip":Z
    .restart local v8    # "dis":Ljava/io/DataInputStream;
    .restart local v10    # "e":Ljava/lang/Exception;
    :goto_3
    const/16 v21, 0x8

    .line 316
    :try_start_5
    invoke-static/range {v21 .. v21}, Lcom/uploader/implement/a;->a(I)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 317
    const-string v24, "ShortLivedConnection"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uploader/implement/b/a/e;->c:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " parseResponse, read Stream error"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2, v10}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    :cond_a
    new-instance v14, Lcom/uploader/implement/c/a;

    const-string v24, "100"

    const-string v25, "6"

    const-string v26, "parseResponse read"

    const/16 v27, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v14, v0, v1, v2, v3}, Lcom/uploader/implement/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 320
    .restart local v14    # "error":Lcom/uploader/implement/c/a;
    if-eqz p2, :cond_b

    .line 321
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v14}, Lcom/uploader/implement/b/b;->a(Lcom/uploader/implement/b/e;Lcom/uploader/implement/c/a;)V

    .line 323
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/uploader/implement/b/a/e;->f()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 327
    if-eqz v8, :cond_c

    .line 329
    :try_start_6
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 334
    :cond_c
    :goto_4
    if-eqz v4, :cond_4

    .line 336
    :try_start_7
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_1

    .line 337
    :catch_3
    move-exception v24

    goto/16 :goto_1

    .line 306
    .end local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "dis":Ljava/io/DataInputStream;
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v14    # "error":Lcom/uploader/implement/c/a;
    .restart local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "buffer":[B
    .restart local v9    # "dis":Ljava/io/DataInputStream;
    .restart local v12    # "encoding":Ljava/lang/String;
    .restart local v19    # "isGZip":Z
    .restart local v20    # "length":I
    :cond_d
    :try_start_8
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v7, Lcom/uploader/implement/b/f;->b:[B

    .line 307
    iget-object v0, v7, Lcom/uploader/implement/b/f;->b:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v7, Lcom/uploader/implement/b/f;->d:I

    .line 309
    const/16 v21, 0x2

    .line 310
    invoke-static/range {v21 .. v21}, Lcom/uploader/implement/a;->a(I)Z

    move-result v24

    if-eqz v24, :cond_e

    .line 311
    const-string v24, "ShortLivedConnection"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uploader/implement/b/a/e;->c:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " response body:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    new-instance v26, Ljava/lang/String;

    iget-object v0, v7, Lcom/uploader/implement/b/f;->b:[B

    move-object/from16 v27, v0

    invoke-direct/range {v26 .. v27}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 327
    :cond_e
    if-eqz v9, :cond_f

    .line 329
    :try_start_9
    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 334
    :cond_f
    :goto_5
    if-eqz v5, :cond_10

    .line 336
    :try_start_a
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 343
    :cond_10
    :goto_6
    if-eqz p2, :cond_11

    .line 344
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v7}, Lcom/uploader/implement/b/b;->a(Lcom/uploader/implement/b/e;Lcom/uploader/implement/b/f;)V

    .line 347
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/uploader/implement/b/a/e;->f()V

    goto/16 :goto_1

    .line 327
    .end local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "buffer":[B
    .end local v9    # "dis":Ljava/io/DataInputStream;
    .end local v12    # "encoding":Ljava/lang/String;
    .end local v19    # "isGZip":Z
    .end local v20    # "length":I
    .restart local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "dis":Ljava/io/DataInputStream;
    :catchall_0
    move-exception v24

    :goto_7
    if-eqz v8, :cond_12

    .line 329
    :try_start_b
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 334
    :cond_12
    :goto_8
    if-eqz v4, :cond_13

    .line 336
    :try_start_c
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 339
    :cond_13
    :goto_9
    throw v24

    .line 330
    .end local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "dis":Ljava/io/DataInputStream;
    .restart local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "buffer":[B
    .restart local v9    # "dis":Ljava/io/DataInputStream;
    .restart local v12    # "encoding":Ljava/lang/String;
    .restart local v19    # "isGZip":Z
    .restart local v20    # "length":I
    :catch_4
    move-exception v24

    goto :goto_5

    .line 337
    :catch_5
    move-exception v24

    goto :goto_6

    .line 330
    .end local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "buffer":[B
    .end local v9    # "dis":Ljava/io/DataInputStream;
    .end local v12    # "encoding":Ljava/lang/String;
    .end local v19    # "isGZip":Z
    .end local v20    # "length":I
    .restart local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "dis":Ljava/io/DataInputStream;
    .restart local v10    # "e":Ljava/lang/Exception;
    .restart local v14    # "error":Lcom/uploader/implement/c/a;
    :catch_6
    move-exception v24

    goto/16 :goto_4

    .end local v10    # "e":Ljava/lang/Exception;
    .end local v14    # "error":Lcom/uploader/implement/c/a;
    :catch_7
    move-exception v25

    goto :goto_8

    .line 337
    :catch_8
    move-exception v25

    goto :goto_9

    .line 327
    .end local v8    # "dis":Ljava/io/DataInputStream;
    .restart local v9    # "dis":Ljava/io/DataInputStream;
    .restart local v12    # "encoding":Ljava/lang/String;
    .restart local v19    # "isGZip":Z
    :catchall_1
    move-exception v24

    move-object v8, v9

    .end local v9    # "dis":Ljava/io/DataInputStream;
    .restart local v8    # "dis":Ljava/io/DataInputStream;
    goto :goto_7

    .end local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "dis":Ljava/io/DataInputStream;
    .restart local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "dis":Ljava/io/DataInputStream;
    :catchall_2
    move-exception v24

    move-object v4, v5

    .end local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    move-object v8, v9

    .end local v9    # "dis":Ljava/io/DataInputStream;
    .restart local v8    # "dis":Ljava/io/DataInputStream;
    goto :goto_7

    .line 313
    .end local v12    # "encoding":Ljava/lang/String;
    .end local v19    # "isGZip":Z
    :catch_9
    move-exception v10

    goto/16 :goto_3

    .end local v8    # "dis":Ljava/io/DataInputStream;
    .restart local v9    # "dis":Ljava/io/DataInputStream;
    .restart local v12    # "encoding":Ljava/lang/String;
    .restart local v19    # "isGZip":Z
    :catch_a
    move-exception v10

    move-object v8, v9

    .end local v9    # "dis":Ljava/io/DataInputStream;
    .restart local v8    # "dis":Ljava/io/DataInputStream;
    goto/16 :goto_3
.end method

.method private a(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 2
    .param p1, "conn"    # Ljava/net/HttpURLConnection;
    .param p2, "host"    # Ljava/lang/String;

    .prologue
    .line 206
    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 209
    .local v0, "connection":Ljavax/net/ssl/HttpsURLConnection;
    new-instance v1, Lcom/uploader/implement/b/a/e$2;

    invoke-direct {v1, p0, p2}, Lcom/uploader/implement/b/a/e$2;-><init>(Lcom/uploader/implement/b/a/e;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 215
    return-void
.end method

.method private g()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v8, 0x2710

    const/4 v7, 0x1

    .line 176
    iget-object v3, p0, Lcom/uploader/implement/b/a/e;->e:Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_0

    .line 202
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/uploader/implement/b/a/e;->a:Lcom/uploader/implement/b/a;

    check-cast v1, Lcom/uploader/implement/b/a/g;

    .line 181
    .local v1, "target":Lcom/uploader/implement/b/a/g;
    new-instance v2, Ljava/net/URL;

    iget-object v3, v1, Lcom/uploader/implement/b/a/g;->f:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 183
    .local v2, "url":Ljava/net/URL;
    iget-boolean v3, p0, Lcom/uploader/implement/b/a/e;->g:Z

    if-eqz v3, :cond_1

    .line 184
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    iput-object v3, p0, Lcom/uploader/implement/b/a/e;->e:Ljava/net/HttpURLConnection;

    .line 185
    iget-object v3, p0, Lcom/uploader/implement/b/a/e;->e:Ljava/net/HttpURLConnection;

    iget-object v4, v1, Lcom/uploader/implement/b/a/g;->g:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/uploader/implement/b/a/e;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    .line 197
    :goto_1
    iget-object v3, p0, Lcom/uploader/implement/b/a/e;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v3, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 198
    iget-object v3, p0, Lcom/uploader/implement/b/a/e;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v3, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 199
    iget-object v3, p0, Lcom/uploader/implement/b/a/e;->e:Ljava/net/HttpURLConnection;

    const-string v4, "POST"

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 200
    iget-object v3, p0, Lcom/uploader/implement/b/a/e;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v3, v7}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 201
    iget-object v3, p0, Lcom/uploader/implement/b/a/e;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v3, v7}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    goto :goto_0

    .line 187
    :cond_1
    const/4 v0, 0x0

    .line 188
    .local v0, "p":Ljava/net/Proxy;
    iget-object v3, v1, Lcom/uploader/implement/b/a/g;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, v1, Lcom/uploader/implement/b/a/g;->d:I

    if-lez v3, :cond_2

    .line 189
    new-instance v0, Ljava/net/Proxy;

    .end local v0    # "p":Ljava/net/Proxy;
    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v4, Ljava/net/InetSocketAddress;

    iget-object v5, v1, Lcom/uploader/implement/b/a/g;->c:Ljava/lang/String;

    iget v6, v1, Lcom/uploader/implement/b/a/g;->d:I

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v3, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 191
    .restart local v0    # "p":Ljava/net/Proxy;
    :cond_2
    if-eqz v0, :cond_3

    .line 192
    invoke-virtual {v2, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    iput-object v3, p0, Lcom/uploader/implement/b/a/e;->e:Ljava/net/HttpURLConnection;

    goto :goto_1

    .line 194
    :cond_3
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    iput-object v3, p0, Lcom/uploader/implement/b/a/e;->e:Ljava/net/HttpURLConnection;

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/uploader/implement/b/f;I)V
    .locals 1
    .param p1, "data"    # Lcom/uploader/implement/b/f;
    .param p2, "sendSequence"    # I

    .prologue
    .line 70
    new-instance v0, Lcom/uploader/implement/b/a/e$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/uploader/implement/b/a/e$1;-><init>(Lcom/uploader/implement/b/a/e;Lcom/uploader/implement/b/f;I)V

    .line 163
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/uploader/implement/e/b;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 164
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method f()V
    .locals 1

    .prologue
    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/uploader/implement/b/a/e;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :goto_0
    return-void

    .line 353
    :catch_0
    move-exception v0

    goto :goto_0
.end method
