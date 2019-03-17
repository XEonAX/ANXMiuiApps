.class public final Lcom/alibaba/mtl/log/d/e;
.super Ljava/lang/Object;
.source "e.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/mtl/log/d/e$a;
    }
.end annotation


# static fields
.field private static a:Lcom/alibaba/mtl/log/d/u;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 248
    const-string v0, "http.keepAlive"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 249
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/mtl/log/d/e;->a:Lcom/alibaba/mtl/log/d/u;

    .line 250
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/util/Map;Z)Lcom/alibaba/mtl/log/d/e$a;
    .locals 46
    .param p0, "var0"    # I
    .param p1, "var1"    # Ljava/lang/String;
    .param p3, "var3"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Lcom/alibaba/mtl/log/d/e$a;"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, "var2":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v12, Lcom/alibaba/mtl/log/d/e$a;

    invoke-direct {v12}, Lcom/alibaba/mtl/log/d/e$a;-><init>()V

    .line 26
    .local v12, "var4":Lcom/alibaba/mtl/log/d/e$a;
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-eqz v42, :cond_1

    .line 243
    .end local v12    # "var4":Lcom/alibaba/mtl/log/d/e$a;
    :cond_0
    :goto_0
    return-object v12

    .line 29
    .restart local v12    # "var4":Lcom/alibaba/mtl/log/d/e$a;
    :cond_1
    const/4 v13, 0x0

    .line 30
    .local v13, "var5":Ljava/net/URL;
    const/16 v17, 0x0

    .line 33
    .local v17, "var6":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v14, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 34
    .end local v13    # "var5":Ljava/net/URL;
    .local v14, "var5":Ljava/net/URL;
    :try_start_1
    invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v17

    .end local v17    # "var6":Ljava/net/HttpURLConnection;
    check-cast v17, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_16
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_14

    .line 51
    .restart local v17    # "var6":Ljava/net/HttpURLConnection;
    if-eqz v17, :cond_1d

    .line 53
    :try_start_2
    move-object/from16 v0, v17

    instance-of v0, v0, Ljavax/net/ssl/HttpsURLConnection;

    move/from16 v42, v0

    if-eqz v42, :cond_3

    .line 54
    sget-object v42, Lcom/alibaba/mtl/log/d/e;->a:Lcom/alibaba/mtl/log/d/u;

    if-nez v42, :cond_2

    invoke-virtual {v14}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-nez v42, :cond_2

    .line 55
    new-instance v42, Lcom/alibaba/mtl/log/d/u;

    invoke-virtual {v14}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Lcom/alibaba/mtl/log/d/u;-><init>(Ljava/lang/String;)V

    sput-object v42, Lcom/alibaba/mtl/log/d/e;->a:Lcom/alibaba/mtl/log/d/u;

    .line 58
    :cond_2
    move-object/from16 v0, v17

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v42, v0

    sget-object v43, Lcom/alibaba/mtl/log/d/e;->a:Lcom/alibaba/mtl/log/d/u;

    invoke-virtual/range {v42 .. v43}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_13

    .line 64
    :cond_3
    :goto_1
    const/16 v42, 0x2

    move/from16 v0, p0

    move/from16 v1, v42

    if-eq v0, v1, :cond_4

    const/16 v42, 0x3

    move/from16 v0, p0

    move/from16 v1, v42

    if-ne v0, v1, :cond_5

    .line 65
    :cond_4
    const/16 v42, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 68
    :cond_5
    const/16 v42, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 71
    const/16 v42, 0x2

    move/from16 v0, p0

    move/from16 v1, v42

    if-eq v0, v1, :cond_a

    const/16 v42, 0x3

    move/from16 v0, p0

    move/from16 v1, v42

    if-eq v0, v1, :cond_a

    .line 72
    :try_start_3
    const-string v42, "GET"

    move-object/from16 v0, v17

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_3

    .line 81
    :goto_2
    const/16 v42, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 82
    const/16 v42, 0x2710

    move-object/from16 v0, v17

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 83
    const v42, 0xea60

    move-object/from16 v0, v17

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 84
    const-string v42, "Connection"

    const-string v43, "close"

    move-object/from16 v0, v17

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    if-eqz p3, :cond_6

    .line 86
    const-string v42, "Accept-Encoding"

    const-string v43, "gzip,deflate"

    move-object/from16 v0, v17

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_6
    const/16 v42, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 90
    const/16 v26, 0x0

    .line 92
    .local v26, "var7":[B
    const/16 v42, 0x2

    move/from16 v0, p0

    move/from16 v1, v42

    if-eq v0, v1, :cond_7

    const/16 v42, 0x3

    move/from16 v0, p0

    move/from16 v1, v42

    if-ne v0, v1, :cond_12

    .line 93
    :cond_7
    const/16 v42, 0x2

    move/from16 v0, p0

    move/from16 v1, v42

    if-ne v0, v1, :cond_b

    .line 94
    const-string v42, "Content-Type"

    const-string v43, "multipart/form-data; boundary=GJircTeP"

    move-object/from16 v0, v17

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_8
    :goto_3
    const/16 v39, 0x0

    .line 100
    .local v39, "var8":I
    if-eqz p2, :cond_10

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->size()I

    move-result v42

    if-lez v42, :cond_10

    .line 101
    new-instance v41, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v41 .. v41}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 102
    .local v41, "var9":Ljava/io/ByteArrayOutputStream;
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 103
    .local v5, "var10":Ljava/util/Set;
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v42

    move/from16 v0, v42

    new-array v6, v0, [Ljava/lang/String;

    .line 104
    .local v6, "var11":[Ljava/lang/String;
    invoke-interface {v5, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 105
    invoke-static {}, Lcom/alibaba/mtl/log/d/g;->a()Lcom/alibaba/mtl/log/d/g;

    move-result-object v42

    const/16 v43, 0x1

    move-object/from16 v0, v42

    move/from16 v1, v43

    invoke-virtual {v0, v6, v1}, Lcom/alibaba/mtl/log/d/g;->a([Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v6

    .line 106
    move-object v7, v6

    .line 107
    .local v7, "var12":[Ljava/lang/String;
    array-length v8, v6

    .line 109
    .local v8, "var13":I
    const/4 v9, 0x0

    .local v9, "var14":I
    :goto_4
    if-ge v9, v8, :cond_e

    .line 110
    aget-object v10, v7, v9

    .line 111
    .local v10, "var15":Ljava/lang/String;
    const/16 v42, 0x2

    move/from16 v0, p0

    move/from16 v1, v42

    if-ne v0, v1, :cond_c

    .line 112
    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, [B

    check-cast v42, [B

    move-object/from16 v11, v42

    check-cast v11, [B

    .line 113
    .local v11, "var16":[B
    if-eqz v11, :cond_9

    .line 115
    :try_start_4
    const-string v42, "--GJircTeP\r\nContent-Disposition: form-data; name=\"%s\"; filename=\"%s\"\r\nContent-Type: application/octet-stream \r\n\r\n"

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    aput-object v10, v43, v44

    const/16 v44, 0x1

    aput-object v10, v43, v44

    invoke-static/range {v42 .. v43}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->getBytes()[B

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 116
    move-object/from16 v0, v41

    invoke-virtual {v0, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 117
    const-string v42, "\r\n"

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->getBytes()[B

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 109
    .end local v11    # "var16":[B
    :cond_9
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 35
    .end local v5    # "var10":Ljava/util/Set;
    .end local v6    # "var11":[Ljava/lang/String;
    .end local v7    # "var12":[Ljava/lang/String;
    .end local v8    # "var13":I
    .end local v9    # "var14":I
    .end local v10    # "var15":Ljava/lang/String;
    .end local v14    # "var5":Ljava/net/URL;
    .end local v26    # "var7":[B
    .end local v39    # "var8":I
    .end local v41    # "var9":Ljava/io/ByteArrayOutputStream;
    .restart local v13    # "var5":Ljava/net/URL;
    :catch_0
    move-exception v23

    .line 36
    .end local v17    # "var6":Ljava/net/HttpURLConnection;
    .local v23, "var66":Ljava/net/MalformedURLException;
    :goto_6
    invoke-virtual/range {v23 .. v23}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto/16 :goto_0

    .line 39
    .end local v23    # "var66":Ljava/net/MalformedURLException;
    .restart local v17    # "var6":Ljava/net/HttpURLConnection;
    :catch_1
    move-exception v4

    .line 43
    .end local v17    # "var6":Ljava/net/HttpURLConnection;
    .local v4, "e":Ljava/net/SocketTimeoutException;
    :goto_7
    const-string v42, "HttpUtils"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "SocketTimeoutException: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual {v13}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "://"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual {v13}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " (port "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual {v13}, Ljava/net/URL;->getPort()I

    move-result v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ")"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 46
    .end local v4    # "e":Ljava/net/SocketTimeoutException;
    .restart local v17    # "var6":Ljava/net/HttpURLConnection;
    :catch_2
    move-exception v24

    .line 47
    .end local v17    # "var6":Ljava/net/HttpURLConnection;
    .local v24, "var67":Ljava/io/IOException;
    :goto_8
    invoke-virtual/range {v24 .. v24}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 74
    .end local v13    # "var5":Ljava/net/URL;
    .end local v24    # "var67":Ljava/io/IOException;
    .restart local v14    # "var5":Ljava/net/URL;
    .restart local v17    # "var6":Ljava/net/HttpURLConnection;
    :cond_a
    :try_start_5
    const-string v42, "POST"

    move-object/from16 v0, v17

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/ProtocolException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_2

    .line 76
    :catch_3
    move-exception v28

    .line 77
    .local v28, "var72":Ljava/net/ProtocolException;
    invoke-virtual/range {v28 .. v28}, Ljava/net/ProtocolException;->printStackTrace()V

    goto/16 :goto_0

    .line 95
    .end local v28    # "var72":Ljava/net/ProtocolException;
    .restart local v26    # "var7":[B
    :cond_b
    const/16 v42, 0x3

    move/from16 v0, p0

    move/from16 v1, v42

    if-ne v0, v1, :cond_8

    .line 96
    const-string v42, "Content-Type"

    const-string v43, "application/x-www-form-urlencoded"

    move-object/from16 v0, v17

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 118
    .restart local v5    # "var10":Ljava/util/Set;
    .restart local v6    # "var11":[Ljava/lang/String;
    .restart local v7    # "var12":[Ljava/lang/String;
    .restart local v8    # "var13":I
    .restart local v9    # "var14":I
    .restart local v10    # "var15":Ljava/lang/String;
    .restart local v11    # "var16":[B
    .restart local v39    # "var8":I
    .restart local v41    # "var9":Ljava/io/ByteArrayOutputStream;
    :catch_4
    move-exception v22

    .line 119
    .local v22, "var64":Ljava/io/IOException;
    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 122
    .end local v11    # "var16":[B
    .end local v22    # "var64":Ljava/io/IOException;
    :cond_c
    const/16 v42, 0x3

    move/from16 v0, p0

    move/from16 v1, v42

    if-ne v0, v1, :cond_9

    .line 123
    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    .line 124
    .local v40, "var80":Ljava/lang/String;
    invoke-virtual/range {v41 .. v41}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v42

    if-lez v42, :cond_d

    .line 126
    :try_start_6
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "&"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->getBytes()[B

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_5

    .line 127
    :catch_5
    move-exception v21

    .line 128
    .local v21, "var63":Ljava/io/IOException;
    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 132
    .end local v21    # "var63":Ljava/io/IOException;
    :cond_d
    :try_start_7
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->getBytes()[B

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_5

    .line 133
    :catch_6
    move-exception v20

    .line 134
    .local v20, "var62":Ljava/io/IOException;
    invoke-virtual/range {v20 .. v20}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 141
    .end local v10    # "var15":Ljava/lang/String;
    .end local v20    # "var62":Ljava/io/IOException;
    .end local v40    # "var80":Ljava/lang/String;
    :cond_e
    const/16 v42, 0x2

    move/from16 v0, p0

    move/from16 v1, v42

    if-ne v0, v1, :cond_f

    .line 142
    :try_start_8
    const-string v42, "--GJircTeP--\r\n"

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->getBytes()[B

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 148
    :cond_f
    :goto_9
    invoke-virtual/range {v41 .. v41}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v26

    .line 151
    .end local v5    # "var10":Ljava/util/Set;
    .end local v6    # "var11":[Ljava/lang/String;
    .end local v7    # "var12":[Ljava/lang/String;
    .end local v8    # "var13":I
    .end local v9    # "var14":I
    .end local v41    # "var9":Ljava/io/ByteArrayOutputStream;
    :cond_10
    if-eqz v26, :cond_11

    .line 152
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v39, v0

    .line 155
    :cond_11
    const-string v42, "Content-Length"

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v17

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .end local v39    # "var8":I
    :cond_12
    const/16 v29, 0x0

    .line 163
    .local v29, "var73":Ljava/io/DataOutputStream;
    :try_start_9
    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->connect()V

    .line 164
    const/16 v42, 0x2

    move/from16 v0, p0

    move/from16 v1, v42

    if-eq v0, v1, :cond_13

    const/16 v42, 0x3

    move/from16 v0, p0

    move/from16 v1, v42

    if-ne v0, v1, :cond_14

    :cond_13
    if-eqz v26, :cond_14

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v42, v0

    if-lez v42, :cond_14

    .line 165
    new-instance v30, Ljava/io/DataOutputStream;

    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v42

    move-object/from16 v0, v30

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 166
    .end local v29    # "var73":Ljava/io/DataOutputStream;
    .local v30, "var73":Ljava/io/DataOutputStream;
    :try_start_a
    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 167
    invoke-virtual/range {v30 .. v30}, Ljava/io/DataOutputStream;->flush()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_12
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move-object/from16 v29, v30

    .line 175
    .end local v30    # "var73":Ljava/io/DataOutputStream;
    .restart local v29    # "var73":Ljava/io/DataOutputStream;
    :cond_14
    if-eqz v29, :cond_15

    .line 177
    :try_start_b
    invoke-virtual/range {v29 .. v29}, Ljava/io/DataOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 182
    :goto_a
    const/16 v29, 0x0

    .line 191
    :cond_15
    :try_start_c
    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v42

    move/from16 v0, v42

    iput v0, v12, Lcom/alibaba/mtl/log/d/e$a;->E:I

    .line 192
    const-string v42, "UtAnalytics"

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const-string v45, "responseCode:"

    aput-object v45, v43, v44

    const/16 v44, 0x1

    iget v0, v12, Lcom/alibaba/mtl/log/d/e$a;->E:I

    move/from16 v45, v0

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v43, v44

    invoke-static/range {v42 .. v43}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c

    .line 197
    :goto_b
    const/16 v31, 0x0

    .line 198
    .local v31, "var74":Ljava/lang/Object;
    new-instance v34, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v34 .. v34}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 203
    .local v34, "var76":Ljava/io/ByteArrayOutputStream;
    if-eqz p3, :cond_19

    :try_start_d
    const-string v42, "gzip"

    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_19

    .line 204
    new-instance v32, Ljava/util/zip/GZIPInputStream;

    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v42

    move-object/from16 v0, v32

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_11
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .local v32, "var74":Ljava/util/zip/GZIPInputStream;
    move-object/from16 v31, v32

    .line 209
    .end local v32    # "var74":Ljava/util/zip/GZIPInputStream;
    :goto_c
    :try_start_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    .line 210
    .local v36, "var77":J
    const/16 v42, 0x800

    move/from16 v0, v42

    new-array v0, v0, [B

    move-object/from16 v38, v0

    .line 213
    .local v38, "var79":[B
    :goto_d
    move-object/from16 v0, v31

    check-cast v0, Ljava/io/InputStream;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    const/16 v44, 0x800

    move-object/from16 v0, v42

    move-object/from16 v1, v38

    move/from16 v2, v43

    move/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    move-result v9

    .restart local v9    # "var14":I
    const/16 v42, -0x1

    move/from16 v0, v42

    if-ne v9, v0, :cond_1a

    .line 223
    if-eqz v31, :cond_16

    .line 225
    :try_start_f
    check-cast v31, Ljava/io/InputStream;

    .end local v31    # "var74":Ljava/lang/Object;
    invoke-virtual/range {v31 .. v31}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_d

    .line 236
    :cond_16
    :goto_e
    invoke-virtual/range {v34 .. v34}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v42

    if-lez v42, :cond_0

    .line 237
    invoke-virtual/range {v34 .. v34}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v42

    move-object/from16 v0, v42

    iput-object v0, v12, Lcom/alibaba/mtl/log/d/e$a;->data:[B

    goto/16 :goto_0

    .line 144
    .end local v29    # "var73":Ljava/io/DataOutputStream;
    .end local v34    # "var76":Ljava/io/ByteArrayOutputStream;
    .end local v36    # "var77":J
    .end local v38    # "var79":[B
    .restart local v5    # "var10":Ljava/util/Set;
    .restart local v6    # "var11":[Ljava/lang/String;
    .restart local v7    # "var12":[Ljava/lang/String;
    .restart local v8    # "var13":I
    .restart local v39    # "var8":I
    .restart local v41    # "var9":Ljava/io/ByteArrayOutputStream;
    :catch_7
    move-exception v19

    .line 145
    .local v19, "var61":Ljava/io/IOException;
    invoke-virtual/range {v19 .. v19}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    .line 178
    .end local v5    # "var10":Ljava/util/Set;
    .end local v6    # "var11":[Ljava/lang/String;
    .end local v7    # "var12":[Ljava/lang/String;
    .end local v8    # "var13":I
    .end local v9    # "var14":I
    .end local v19    # "var61":Ljava/io/IOException;
    .end local v39    # "var8":I
    .end local v41    # "var9":Ljava/io/ByteArrayOutputStream;
    .restart local v29    # "var73":Ljava/io/DataOutputStream;
    :catch_8
    move-exception v16

    .line 179
    .local v16, "var59":Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_a

    .line 170
    .end local v16    # "var59":Ljava/io/IOException;
    :catch_9
    move-exception v27

    .line 171
    .local v27, "var70":Ljava/lang/Exception;
    :goto_f
    :try_start_10
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->printStackTrace()V

    .line 172
    const-string v42, "UtAnalytics"

    const-string v43, "http"

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 173
    move-object/from16 v33, v12

    .line 175
    .local v33, "var75":Lcom/alibaba/mtl/log/d/e$a;
    if-eqz v29, :cond_17

    .line 177
    :try_start_11
    invoke-virtual/range {v29 .. v29}, Ljava/io/DataOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a

    .line 182
    :goto_10
    const/16 v29, 0x0

    :cond_17
    move-object/from16 v12, v33

    .line 187
    goto/16 :goto_0

    .line 178
    :catch_a
    move-exception v16

    .line 179
    .restart local v16    # "var59":Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    .line 175
    .end local v16    # "var59":Ljava/io/IOException;
    .end local v27    # "var70":Ljava/lang/Exception;
    .end local v33    # "var75":Lcom/alibaba/mtl/log/d/e$a;
    :catchall_0
    move-exception v42

    :goto_11
    if-eqz v29, :cond_18

    .line 177
    :try_start_12
    invoke-virtual/range {v29 .. v29}, Ljava/io/DataOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b

    .line 182
    :goto_12
    const/16 v29, 0x0

    :cond_18
    throw v42

    .line 178
    :catch_b
    move-exception v16

    .line 179
    .restart local v16    # "var59":Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12

    .line 193
    .end local v16    # "var59":Ljava/io/IOException;
    :catch_c
    move-exception v18

    .line 194
    .local v18, "var60":Ljava/io/IOException;
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_b

    .line 206
    .end local v18    # "var60":Ljava/io/IOException;
    .restart local v31    # "var74":Ljava/lang/Object;
    .restart local v34    # "var76":Ljava/io/ByteArrayOutputStream;
    :cond_19
    :try_start_13
    new-instance v32, Ljava/io/DataInputStream;

    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v42

    move-object/from16 v0, v32

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_11
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .local v32, "var74":Ljava/io/DataInputStream;
    move-object/from16 v31, v32

    goto/16 :goto_c

    .line 226
    .end local v31    # "var74":Ljava/lang/Object;
    .end local v32    # "var74":Ljava/io/DataInputStream;
    .restart local v9    # "var14":I
    .restart local v36    # "var77":J
    .restart local v38    # "var79":[B
    :catch_d
    move-exception v15

    .line 227
    .local v15, "var58":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e

    .line 217
    .end local v15    # "var58":Ljava/lang/Exception;
    .restart local v31    # "var74":Ljava/lang/Object;
    :cond_1a
    const/16 v42, 0x0

    :try_start_14
    move-object/from16 v0, v34

    move-object/from16 v1, v38

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_e
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    goto/16 :goto_d

    .line 219
    .end local v9    # "var14":I
    .end local v36    # "var77":J
    .end local v38    # "var79":[B
    :catch_e
    move-exception v25

    move-object/from16 v42, v31

    .line 220
    .end local v31    # "var74":Ljava/lang/Object;
    .local v25, "var68":Ljava/io/IOException;
    :goto_13
    :try_start_15
    invoke-virtual/range {v25 .. v25}, Ljava/io/IOException;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    .line 221
    move-object/from16 v35, v12

    .line 223
    .local v35, "var78":Lcom/alibaba/mtl/log/d/e$a;
    if-eqz v42, :cond_1b

    .line 225
    :try_start_16
    check-cast v42, Ljava/io/InputStream;

    invoke-virtual/range {v42 .. v42}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_f

    :cond_1b
    :goto_14
    move-object/from16 v12, v35

    .line 233
    goto/16 :goto_0

    .line 226
    :catch_f
    move-exception v15

    .line 227
    .restart local v15    # "var58":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14

    .line 223
    .end local v15    # "var58":Ljava/lang/Exception;
    .end local v25    # "var68":Ljava/io/IOException;
    .end local v35    # "var78":Lcom/alibaba/mtl/log/d/e$a;
    .restart local v31    # "var74":Ljava/lang/Object;
    :catchall_1
    move-exception v42

    move-object/from16 v43, v42

    move-object/from16 v42, v31

    .end local v31    # "var74":Ljava/lang/Object;
    :goto_15
    if-eqz v42, :cond_1c

    .line 225
    :try_start_17
    check-cast v42, Ljava/io/InputStream;

    invoke-virtual/range {v42 .. v42}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_10

    .line 228
    :cond_1c
    :goto_16
    throw v43

    .line 226
    :catch_10
    move-exception v15

    .line 227
    .restart local v15    # "var58":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16

    .line 240
    .end local v15    # "var58":Ljava/lang/Exception;
    .end local v26    # "var7":[B
    .end local v29    # "var73":Ljava/io/DataOutputStream;
    .end local v34    # "var76":Ljava/io/ByteArrayOutputStream;
    :cond_1d
    const-string v42, "UtAnalytics"

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const-string v45, "conn"

    aput-object v45, v43, v44

    const/16 v44, 0x1

    aput-object v17, v43, v44

    invoke-static/range {v42 .. v43}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 223
    .restart local v26    # "var7":[B
    .restart local v29    # "var73":Ljava/io/DataOutputStream;
    .restart local v31    # "var74":Ljava/lang/Object;
    .restart local v34    # "var76":Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v42

    move-object/from16 v43, v42

    move-object/from16 v42, v31

    goto :goto_15

    .end local v31    # "var74":Ljava/lang/Object;
    .restart local v25    # "var68":Ljava/io/IOException;
    :catchall_3
    move-exception v43

    goto :goto_15

    .line 219
    .end local v25    # "var68":Ljava/io/IOException;
    .restart local v31    # "var74":Ljava/lang/Object;
    :catch_11
    move-exception v25

    move-object/from16 v42, v31

    goto :goto_13

    .line 175
    .end local v29    # "var73":Ljava/io/DataOutputStream;
    .end local v31    # "var74":Ljava/lang/Object;
    .end local v34    # "var76":Ljava/io/ByteArrayOutputStream;
    .restart local v30    # "var73":Ljava/io/DataOutputStream;
    :catchall_4
    move-exception v42

    move-object/from16 v29, v30

    .end local v30    # "var73":Ljava/io/DataOutputStream;
    .restart local v29    # "var73":Ljava/io/DataOutputStream;
    goto/16 :goto_11

    .line 170
    .end local v29    # "var73":Ljava/io/DataOutputStream;
    .restart local v30    # "var73":Ljava/io/DataOutputStream;
    :catch_12
    move-exception v27

    move-object/from16 v29, v30

    .end local v30    # "var73":Ljava/io/DataOutputStream;
    .restart local v29    # "var73":Ljava/io/DataOutputStream;
    goto/16 :goto_f

    .line 60
    .end local v26    # "var7":[B
    .end local v29    # "var73":Ljava/io/DataOutputStream;
    :catch_13
    move-exception v42

    goto/16 :goto_1

    .line 46
    .end local v17    # "var6":Ljava/net/HttpURLConnection;
    :catch_14
    move-exception v24

    move-object v13, v14

    .end local v14    # "var5":Ljava/net/URL;
    .restart local v13    # "var5":Ljava/net/URL;
    goto/16 :goto_8

    .line 39
    .end local v13    # "var5":Ljava/net/URL;
    .restart local v14    # "var5":Ljava/net/URL;
    :catch_15
    move-exception v4

    move-object v13, v14

    .end local v14    # "var5":Ljava/net/URL;
    .restart local v13    # "var5":Ljava/net/URL;
    goto/16 :goto_7

    .line 35
    .end local v13    # "var5":Ljava/net/URL;
    .restart local v14    # "var5":Ljava/net/URL;
    :catch_16
    move-exception v23

    move-object v13, v14

    .end local v14    # "var5":Ljava/net/URL;
    .restart local v13    # "var5":Ljava/net/URL;
    goto/16 :goto_6
.end method
