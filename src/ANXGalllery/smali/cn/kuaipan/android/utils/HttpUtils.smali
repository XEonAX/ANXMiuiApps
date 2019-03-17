.class public Lcn/kuaipan/android/utils/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# direct methods
.method private static entityToString(Lorg/apache/http/HttpEntity;I)Ljava/lang/String;
    .locals 18
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;
    .param p1, "maxLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-interface/range {p0 .. p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v8

    .line 71
    .local v8, "length":J
    const-wide/16 v16, 0x0

    cmp-long v15, v8, v16

    if-gez v15, :cond_1

    const-wide/32 v6, 0x7fffffff

    .line 73
    .local v6, "len":J
    :goto_0
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v15, v0

    invoke-direct {v11, v15}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 74
    .local v11, "outstream":Ljava/io/ByteArrayOutputStream;
    const-wide/16 v16, 0x0

    cmp-long v15, v8, v16

    if-ltz v15, :cond_2

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v16, v0

    cmp-long v15, v8, v16

    if-gtz v15, :cond_2

    const/4 v3, 0x1

    .line 76
    .local v3, "fullOutput":Z
    :goto_1
    const/4 v13, 0x0

    .line 77
    .local v13, "readed":I
    if-eqz v3, :cond_3

    .line 78
    move-object/from16 v0, p0

    invoke-interface {v0, v11}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 96
    :goto_2
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "content":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    if-nez v3, :cond_0

    move/from16 v0, p1

    if-ge v13, v0, :cond_5

    :cond_0
    const-string v15, ""

    :goto_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    return-object v15

    .end local v2    # "content":Ljava/lang/String;
    .end local v3    # "fullOutput":Z
    .end local v6    # "len":J
    .end local v11    # "outstream":Ljava/io/ByteArrayOutputStream;
    .end local v13    # "readed":I
    :cond_1
    move-wide v6, v8

    .line 71
    goto :goto_0

    .line 74
    .restart local v6    # "len":J
    .restart local v11    # "outstream":Ljava/io/ByteArrayOutputStream;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 80
    .restart local v3    # "fullOutput":Z
    .restart local v13    # "readed":I
    :cond_3
    invoke-interface/range {p0 .. p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 82
    .local v4, "instream":Ljava/io/InputStream;
    const/16 v15, 0x400

    :try_start_0
    new-array v14, v15, [B

    .line 83
    .local v14, "tmp":[B
    const/4 v12, 0x0

    .line 85
    .local v12, "pos":I
    :goto_4
    invoke-virtual {v4, v14}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "l":I
    const/4 v15, -0x1

    if-eq v5, v15, :cond_4

    move/from16 v0, p1

    if-ge v12, v0, :cond_4

    .line 86
    sub-int v15, p1, v12

    invoke-static {v5, v15}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 87
    .local v10, "ol":I
    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    add-int/2addr v12, v5

    goto :goto_4

    .line 90
    .end local v10    # "ol":I
    :cond_4
    move v13, v12

    .line 92
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_2

    .end local v5    # "l":I
    .end local v12    # "pos":I
    .end local v14    # "tmp":[B
    :catchall_0
    move-exception v15

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    throw v15

    .line 97
    .end local v4    # "instream":Ljava/io/InputStream;
    .restart local v2    # "content":Ljava/lang/String;
    :cond_5
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "\n [TOO MUCH DATA TO INCLUDE, SIZE="

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "]"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_3
.end method

.method public static getHeaderSize([Lorg/apache/http/Header;)J
    .locals 8
    .param p0, "headers"    # [Lorg/apache/http/Header;

    .prologue
    .line 136
    if-eqz p0, :cond_0

    array-length v1, p0

    if-gtz v1, :cond_2

    .line 137
    :cond_0
    const-wide/16 v2, 0x0

    .line 144
    :cond_1
    return-wide v2

    .line 139
    :cond_2
    const-wide/16 v2, 0x0

    .line 140
    .local v2, "size":J
    array-length v4, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, p0, v1

    .line 141
    .local v0, "header":Lorg/apache/http/Header;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    int-to-long v6, v5

    add-long/2addr v2, v6

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getRequestSize(Lorg/apache/http/HttpRequest;Z)J
    .locals 8
    .param p0, "request"    # Lorg/apache/http/HttpRequest;
    .param p1, "includeContent"    # Z

    .prologue
    .line 161
    if-nez p0, :cond_0

    .line 162
    const-wide/16 v6, 0x0

    .line 180
    :goto_0
    return-wide v6

    .line 165
    :cond_0
    invoke-interface {p0}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v4, v6

    .line 166
    .local v4, "lineSize":J
    invoke-interface {p0}, Lorg/apache/http/HttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v6

    invoke-static {v6}, Lcn/kuaipan/android/utils/HttpUtils;->getHeaderSize([Lorg/apache/http/Header;)J

    move-result-wide v2

    .line 167
    .local v2, "headerSize":J
    const-wide/16 v0, 0x0

    .line 180
    .local v0, "contentSize":J
    add-long v6, v4, v2

    add-long/2addr v6, v0

    goto :goto_0
.end method

.method public static varargs getRequestSize([Lorg/apache/http/HttpRequest;)J
    .locals 8
    .param p0, "requests"    # [Lorg/apache/http/HttpRequest;

    .prologue
    .line 148
    if-nez p0, :cond_1

    .line 149
    const-wide/16 v2, 0x0

    .line 157
    :cond_0
    return-wide v2

    .line 152
    :cond_1
    const-wide/16 v2, 0x0

    .line 153
    .local v2, "size":J
    array-length v4, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, p0, v1

    .line 154
    .local v0, "request":Lorg/apache/http/HttpRequest;
    const/4 v5, 0x1

    invoke-static {v0, v5}, Lcn/kuaipan/android/utils/HttpUtils;->getRequestSize(Lorg/apache/http/HttpRequest;Z)J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getResponseSize(Lorg/apache/http/HttpResponse;Z)J
    .locals 8
    .param p0, "response"    # Lorg/apache/http/HttpResponse;
    .param p1, "includeContent"    # Z

    .prologue
    .line 197
    if-nez p0, :cond_0

    .line 198
    const-wide/16 v6, 0x0

    .line 210
    :goto_0
    return-wide v6

    .line 201
    :cond_0
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v4, v6

    .line 202
    .local v4, "lineSize":J
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v6

    invoke-static {v6}, Lcn/kuaipan/android/utils/HttpUtils;->getHeaderSize([Lorg/apache/http/Header;)J

    move-result-wide v2

    .line 203
    .local v2, "headerSize":J
    const-wide/16 v0, 0x0

    .line 210
    .local v0, "contentSize":J
    add-long v6, v4, v2

    add-long/2addr v6, v0

    goto :goto_0
.end method

.method public static varargs getResponseSize([Lorg/apache/http/HttpResponse;)J
    .locals 8
    .param p0, "responses"    # [Lorg/apache/http/HttpResponse;

    .prologue
    .line 184
    if-nez p0, :cond_1

    .line 185
    const-wide/16 v2, 0x0

    .line 193
    :cond_0
    return-wide v2

    .line 188
    :cond_1
    const-wide/16 v2, 0x0

    .line 189
    .local v2, "size":J
    array-length v4, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, p0, v1

    .line 190
    .local v0, "response":Lorg/apache/http/HttpResponse;
    const/4 v5, 0x1

    invoke-static {v0, v5}, Lcn/kuaipan/android/utils/HttpUtils;->getResponseSize(Lorg/apache/http/HttpResponse;Z)J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static toString(Lorg/apache/http/HttpRequest;)Ljava/lang/StringBuffer;
    .locals 9
    .param p0, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 18
    if-nez p0, :cond_1

    .line 19
    const/4 v0, 0x0

    .line 66
    :cond_0
    :goto_0
    return-object v0

    .line 22
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 23
    .local v0, "builder":Ljava/lang/StringBuffer;
    invoke-interface {p0}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 24
    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    invoke-interface {p0}, Lorg/apache/http/HttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v6

    array-length v7, v6

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v7, :cond_2

    aget-object v4, v6, v5

    .line 43
    .local v4, "header":Lorg/apache/http/Header;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    const-string v8, "\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 47
    .end local v4    # "header":Lorg/apache/http/Header;
    :cond_2
    instance-of v5, p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v5, :cond_0

    move-object v3, p0

    .line 48
    check-cast v3, Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 49
    .local v3, "entityRequest":Lorg/apache/http/HttpEntityEnclosingRequest;
    invoke-interface {v3}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 50
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v2, :cond_0

    .line 51
    const-string v5, "Content:\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    :try_start_0
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 54
    const/16 v5, 0x400

    invoke-static {v2, v5}, Lcn/kuaipan/android/utils/HttpUtils;->entityToString(Lorg/apache/http/HttpEntity;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_2
    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 56
    :cond_3
    :try_start_1
    const-string v5, " [DATA CAN NOT REPEAT]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 58
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, " [FAILED OUTPUT DATA]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public static toString(Lorg/apache/http/HttpResponse;)Ljava/lang/StringBuffer;
    .locals 8
    .param p0, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 103
    if-nez p0, :cond_1

    .line 104
    const/4 v0, 0x0

    .line 132
    :cond_0
    :goto_0
    return-object v0

    .line 107
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 108
    .local v0, "builder":Ljava/lang/StringBuffer;
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 109
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v6, :cond_2

    aget-object v3, v5, v4

    .line 113
    .local v3, "header":Lorg/apache/http/Header;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    const-string v7, "\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 117
    .end local v3    # "header":Lorg/apache/http/Header;
    :cond_2
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 118
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v2, :cond_0

    .line 119
    const-string v4, "Content:\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    :try_start_0
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 122
    const/16 v4, 0x400

    invoke-static {v2, v4}, Lcn/kuaipan/android/utils/HttpUtils;->entityToString(Lorg/apache/http/HttpEntity;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_2
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 124
    :cond_3
    :try_start_1
    const-string v4, " [DATA CAN NOT REPEAT]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 126
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, " [FAILED OUTPUT DATA]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method
