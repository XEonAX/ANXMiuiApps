.class public Lcom/xiaomi/channel/commonutils/network/Network;
.super Ljava/lang/Object;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/channel/commonutils/network/Network$DoneHandlerInputStream;,
        Lcom/xiaomi/channel/commonutils/network/Network$HttpHeaderInfo;
    }
.end annotation


# static fields
.field public static final ContentTypePattern_Charset:Ljava/util/regex/Pattern;

.field public static final ContentTypePattern_MimeType:Ljava/util/regex/Pattern;

.field public static final ContentTypePattern_XmlEncoding:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 362
    const-string v0, "([^\\s;]+)(.*)"

    .line 363
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/channel/commonutils/network/Network;->ContentTypePattern_MimeType:Ljava/util/regex/Pattern;

    .line 365
    const-string v0, "(.*?charset\\s*=[^a-zA-Z0-9]*)([-a-zA-Z0-9]+)(.*)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/channel/commonutils/network/Network;->ContentTypePattern_Charset:Ljava/util/regex/Pattern;

    .line 369
    const-string v0, "(\\<\\?xml\\s+.*?encoding\\s*=[^a-zA-Z0-9]*)([-a-zA-Z0-9]+)(.*)"

    .line 370
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/channel/commonutils/network/Network;->ContentTypePattern_XmlEncoding:Ljava/util/regex/Pattern;

    .line 369
    return-void
.end method

.method public static doHttpPost(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Lcom/xiaomi/channel/commonutils/network/HttpResponse;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/channel/commonutils/network/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1135
    .local p2, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2}, Lcom/xiaomi/channel/commonutils/network/Network;->fromParamsMapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 1136
    .local v0, "strParams":Ljava/lang/String;
    const-string v1, "POST"

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Lcom/xiaomi/channel/commonutils/network/Network;->httpRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/xiaomi/channel/commonutils/network/HttpResponse;

    move-result-object v1

    return-object v1
.end method

.method public static downloadXml(Landroid/content/Context;Ljava/net/URL;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 189
    const/4 v2, 0x0

    const-string v4, "UTF-8"

    move-object v0, p0

    move-object v1, p1

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/channel/commonutils/network/Network;->downloadXml(Landroid/content/Context;Ljava/net/URL;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static downloadXml(Landroid/content/Context;Ljava/net/URL;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "noEncryptUrl"    # Z
    .param p3, "userAgent"    # Ljava/lang/String;
    .param p4, "encoding"    # Ljava/lang/String;
    .param p5, "cookie"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    const/4 v3, 0x0

    .line 198
    .local v3, "responseStream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {p0, p1, p2, p3, p5}, Lcom/xiaomi/channel/commonutils/network/Network;->downloadXmlAsStream(Landroid/content/Context;Ljava/net/URL;ZLjava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 200
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x400

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 201
    .local v5, "sbReponse":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v3, p4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 203
    .local v2, "reader":Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 204
    .local v0, "len":I
    const/16 v6, 0x1000

    new-array v1, v6, [C

    .line 205
    .local v1, "line":[C
    :goto_0
    const/4 v6, -0x1

    invoke-virtual {v2, v1}, Ljava/io/BufferedReader;->read([C)I

    move-result v0

    if-eq v6, v0, :cond_0

    .line 206
    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 209
    .end local v0    # "len":I
    .end local v1    # "line":[C
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "sbReponse":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v6

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v6

    .restart local v0    # "len":I
    .restart local v1    # "line":[C
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "sbReponse":Ljava/lang/StringBuilder;
    :cond_0
    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 212
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 213
    .local v4, "responseXml":Ljava/lang/String;
    return-object v4
.end method

.method public static downloadXmlAsStream(Landroid/content/Context;Ljava/net/URL;ZLjava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "noEncryptUrl"    # Z
    .param p3, "userAgent"    # Ljava/lang/String;
    .param p4, "cookie"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 80
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/channel/commonutils/network/Network;->downloadXmlAsStream(Landroid/content/Context;Ljava/net/URL;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/channel/commonutils/network/Network$HttpHeaderInfo;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static downloadXmlAsStream(Landroid/content/Context;Ljava/net/URL;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/channel/commonutils/network/Network$HttpHeaderInfo;)Ljava/io/InputStream;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "noEncryptUrl"    # Z
    .param p3, "userAgent"    # Ljava/lang/String;
    .param p4, "cookie"    # Ljava/lang/String;
    .param p6, "responseHdrs"    # Lcom/xiaomi/channel/commonutils/network/Network$HttpHeaderInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/net/URL;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/xiaomi/channel/commonutils/network/Network$HttpHeaderInfo;",
            ")",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    .local p5, "requestHdrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 108
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "context"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 109
    :cond_0
    if-nez p1, :cond_1

    .line 110
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v10, "url"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 112
    :cond_1
    move-object v6, p1

    .line 113
    .local v6, "newUrl":Ljava/net/URL;
    if-nez p2, :cond_2

    .line 114
    new-instance v6, Ljava/net/URL;

    .end local v6    # "newUrl":Ljava/net/URL;
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/xiaomi/channel/commonutils/network/Network;->encryptURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 116
    .restart local v6    # "newUrl":Ljava/net/URL;
    :cond_2
    const/4 v7, 0x0

    .line 118
    .local v7, "responseStream":Ljava/io/InputStream;
    const/4 v9, 0x1

    :try_start_0
    invoke-static {v9}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 119
    invoke-static {p0, v6}, Lcom/xiaomi/channel/commonutils/network/Network;->getHttpUrlConnection(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 120
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const/16 v9, 0x2710

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 121
    const/16 v9, 0x3a98

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 122
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 123
    const-string v9, "User-Agent"

    invoke-virtual {v1, v9, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_3
    if-eqz p4, :cond_4

    .line 126
    const-string v9, "Cookie"

    move-object/from16 v0, p4

    invoke-virtual {v1, v9, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_4
    if-eqz p5, :cond_5

    .line 129
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 130
    .local v4, "key":Ljava/lang/String;
    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v1, v4, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 152
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "key":Ljava/lang/String;
    .end local v7    # "responseStream":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 153
    .local v2, "e":Ljava/io/IOException;
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 134
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v7    # "responseStream":Ljava/io/InputStream;
    :cond_5
    if-eqz p6, :cond_8

    .line 135
    :try_start_1
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v9

    const-string v10, "http"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v9

    const-string v10, "https"

    .line 136
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 137
    :cond_6
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    move-object/from16 v0, p6

    iput v9, v0, Lcom/xiaomi/channel/commonutils/network/Network$HttpHeaderInfo;->ResponseCode:I

    .line 138
    move-object/from16 v0, p6

    iget-object v9, v0, Lcom/xiaomi/channel/commonutils/network/Network$HttpHeaderInfo;->AllHeaders:Ljava/util/Map;

    if-nez v9, :cond_7

    .line 139
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p6

    iput-object v9, v0, Lcom/xiaomi/channel/commonutils/network/Network$HttpHeaderInfo;->AllHeaders:Ljava/util/Map;

    .line 140
    :cond_7
    const/4 v3, 0x0

    .line 141
    .local v3, "i":I
    :goto_1
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v5

    .line 142
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v8

    .line 144
    .local v8, "value":Ljava/lang/String;
    if-nez v5, :cond_9

    if-nez v8, :cond_9

    .line 151
    .end local v3    # "i":I
    .end local v5    # "name":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_8
    new-instance v7, Lcom/xiaomi/channel/commonutils/network/Network$DoneHandlerInputStream;

    .end local v7    # "responseStream":Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/xiaomi/channel/commonutils/network/Network$DoneHandlerInputStream;-><init>(Ljava/io/InputStream;)V

    .line 157
    .restart local v7    # "responseStream":Ljava/io/InputStream;
    return-object v7

    .line 146
    .restart local v3    # "i":I
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    :cond_9
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 140
    :cond_a
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 148
    :cond_b
    move-object/from16 v0, p6

    iget-object v9, v0, Lcom/xiaomi/channel/commonutils/network/Network$HttpHeaderInfo;->AllHeaders:Ljava/util/Map;

    invoke-interface {v9, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 154
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "i":I
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "responseStream":Ljava/io/InputStream;
    .end local v8    # "value":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 155
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v9, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public static encryptURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "strUrl"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 517
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 518
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 519
    const-string v1, "%sbe988a6134bc8254465424e5a70ef037"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, "strTemp":Ljava/lang/String;
    const-string v1, "%s&key=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/string/MD5;->MD5_32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 523
    .end local v0    # "strTemp":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static fromParamsMapToString(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 1207
    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 1208
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1209
    .local v2, "params":Ljava/lang/StringBuffer;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1210
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1214
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-static {v3, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1215
    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1216
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-static {v3, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1217
    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1218
    :catch_0
    move-exception v0

    .line 1219
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v3, "com.xiaomi.common.Network"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to convert from params map to string: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1220
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1219
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    const-string v3, "com.xiaomi.common.Network"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "map: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 1230
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "params":Ljava/lang/StringBuffer;
    :goto_1
    return-object v3

    .line 1225
    .restart local v2    # "params":Ljava/lang/StringBuffer;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 1226
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1228
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .end local v2    # "params":Ljava/lang/StringBuffer;
    :cond_3
    move-object v3, v4

    .line 1230
    goto :goto_1
.end method

.method public static getActiveConnPoint(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1092
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/network/Network;->isWIFIConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1093
    const-string/jumbo v3, "wifi"

    .line 1116
    :goto_0
    return-object v3

    .line 1095
    :cond_0
    const/4 v0, 0x0

    .line 1097
    .local v0, "cm":Landroid/net/ConnectivityManager;
    :try_start_0
    const-string v3, "connectivity"

    .line 1098
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    check-cast v0, Landroid/net/ConnectivityManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1102
    .restart local v0    # "cm":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 1103
    const-string v3, ""

    goto :goto_0

    .line 1099
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v1

    .line 1100
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, ""

    goto :goto_0

    .line 1106
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_1
    const/4 v2, 0x0

    .line 1108
    .local v2, "info":Landroid/net/NetworkInfo;
    :try_start_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 1113
    if-nez v2, :cond_2

    .line 1114
    const-string v3, ""

    goto :goto_0

    .line 1109
    :catch_1
    move-exception v1

    .line 1111
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v3, ""

    goto :goto_0

    .line 1116
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1117
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getActiveNetworkType(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 776
    const/4 v2, -0x1

    .line 777
    .local v2, "defaultValue":I
    const/4 v1, 0x0

    .line 779
    .local v1, "cm":Landroid/net/ConnectivityManager;
    :try_start_0
    const-string v5, "connectivity"

    .line 780
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/net/ConnectivityManager;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 784
    if-nez v1, :cond_1

    .line 795
    .end local v2    # "defaultValue":I
    :cond_0
    :goto_0
    return v2

    .line 781
    .restart local v2    # "defaultValue":I
    :catch_0
    move-exception v3

    .line 782
    .local v3, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 786
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v4, 0x0

    .line 788
    .local v4, "info":Landroid/net/NetworkInfo;
    :try_start_1
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 793
    if-eqz v4, :cond_0

    .line 795
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    goto :goto_0

    .line 789
    :catch_1
    move-exception v3

    .line 791
    .restart local v3    # "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static getDefaultStreamHandlerURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 1234
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1235
    .local v0, "urlInstance":Ljava/net/URL;
    return-object v0
.end method

.method public static getHttpUrlConnection(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 862
    const-string v1, "http"

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 863
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 871
    :goto_0
    return-object v1

    .line 865
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/network/Network;->isCtwap(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 866
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    const-string v3, "10.0.0.200"

    const/16 v4, 0x50

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 868
    .local v0, "proxy":Ljava/net/Proxy;
    invoke-virtual {p1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    goto :goto_0

    .line 871
    .end local v0    # "proxy":Ljava/net/Proxy;
    :cond_1
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    goto :goto_0
.end method

.method public static getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 1078
    const/4 v1, 0x0

    .line 1080
    .local v1, "cm":Landroid/net/ConnectivityManager;
    :try_start_0
    const-string v3, "connectivity"

    .line 1081
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/net/ConnectivityManager;

    move-object v1, v0

    .line 1082
    if-nez v1, :cond_0

    move-object v3, v4

    .line 1087
    :goto_0
    return-object v3

    .line 1085
    :cond_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 1086
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    move-object v3, v4

    .line 1087
    goto :goto_0
.end method

.method public static hasNetwork(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 915
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/network/Network;->getActiveNetworkType(Landroid/content/Context;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static httpRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/xiaomi/channel/commonutils/network/HttpResponse;
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "httpMethod"    # Ljava/lang/String;
    .param p4, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/channel/commonutils/network/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1140
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Lcom/xiaomi/channel/commonutils/network/HttpResponse;

    invoke-direct {v6}, Lcom/xiaomi/channel/commonutils/network/HttpResponse;-><init>()V

    .line 1141
    .local v6, "httpResponse":Lcom/xiaomi/channel/commonutils/network/HttpResponse;
    const/4 v3, 0x0

    .line 1142
    .local v3, "conn":Ljava/net/HttpURLConnection;
    const/4 v10, 0x0

    .line 1143
    .local v10, "outputStream":Ljava/io/OutputStream;
    const/4 v11, 0x0

    .line 1145
    .local v11, "rd":Ljava/io/BufferedReader;
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/channel/commonutils/network/Network;->getDefaultStreamHandlerURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/xiaomi/channel/commonutils/network/Network;->getHttpUrlConnection(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 1146
    const/16 v16, 0x2710

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1147
    const/16 v16, 0x3a98

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1148
    if-nez p2, :cond_0

    const-string p2, "GET"

    .end local p2    # "httpMethod":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1150
    if-eqz p3, :cond_1

    .line 1151
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1152
    .local v8, "key":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v3, v8, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1194
    .end local v8    # "key":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 1195
    .local v5, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v16, Ljava/io/IOException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "err while request "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ":"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1199
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v16

    invoke-static {v10}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1200
    invoke-static {v11}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v16

    .line 1156
    :cond_1
    :try_start_2
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 1157
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1158
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 1159
    .local v2, "b":[B
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    .line 1160
    const/16 v16, 0x0

    array-length v0, v2

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v2, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 1161
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V

    .line 1162
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 1163
    const/4 v10, 0x0

    .line 1165
    .end local v2    # "b":[B
    :cond_2
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v16

    move/from16 v0, v16

    iput v0, v6, Lcom/xiaomi/channel/commonutils/network/HttpResponse;->responseCode:I

    .line 1166
    const-string v16, "com.xiaomi.common.Network"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Http POST Response Code: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v6, Lcom/xiaomi/channel/commonutils/network/HttpResponse;->responseCode:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    const/4 v7, 0x0

    .line 1168
    .local v7, "i":I
    :goto_1
    invoke-virtual {v3, v7}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v9

    .line 1169
    .local v9, "name":Ljava/lang/String;
    invoke-virtual {v3, v7}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v15

    .line 1170
    .local v15, "value":Ljava/lang/String;
    if-nez v9, :cond_3

    if-nez v15, :cond_3

    .line 1177
    :try_start_3
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v16, Ljava/io/InputStreamReader;

    new-instance v17, Lcom/xiaomi/channel/commonutils/network/Network$DoneHandlerInputStream;

    .line 1178
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/xiaomi/channel/commonutils/network/Network$DoneHandlerInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct/range {v16 .. v17}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v11    # "rd":Ljava/io/BufferedReader;
    .local v12, "rd":Ljava/io/BufferedReader;
    move-object v11, v12

    .line 1183
    .end local v12    # "rd":Ljava/io/BufferedReader;
    .restart local v11    # "rd":Ljava/io/BufferedReader;
    :goto_2
    :try_start_4
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .line 1184
    .local v13, "tempLine":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 1185
    .local v14, "tempStr":Ljava/lang/StringBuffer;
    const-string v16, "line.separator"

    invoke-static/range {v16 .. v16}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1186
    .local v4, "crlf":Ljava/lang/String;
    :goto_3
    if-eqz v13, :cond_4

    .line 1187
    invoke-virtual {v14, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1188
    invoke-virtual {v14, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1189
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    goto :goto_3

    .line 1173
    .end local v4    # "crlf":Ljava/lang/String;
    .end local v13    # "tempLine":Ljava/lang/String;
    .end local v14    # "tempStr":Ljava/lang/StringBuffer;
    :cond_3
    iget-object v0, v6, Lcom/xiaomi/channel/commonutils/network/HttpResponse;->headers:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v9, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1174
    add-int/lit8 v7, v7, 0x1

    .line 1167
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1179
    :catch_1
    move-exception v5

    .line 1180
    .restart local v5    # "e":Ljava/io/IOException;
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v16, Ljava/io/InputStreamReader;

    new-instance v17, Lcom/xiaomi/channel/commonutils/network/Network$DoneHandlerInputStream;

    .line 1181
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/xiaomi/channel/commonutils/network/Network$DoneHandlerInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct/range {v16 .. v17}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .end local v11    # "rd":Ljava/io/BufferedReader;
    .restart local v12    # "rd":Ljava/io/BufferedReader;
    move-object v11, v12

    .end local v12    # "rd":Ljava/io/BufferedReader;
    .restart local v11    # "rd":Ljava/io/BufferedReader;
    goto :goto_2

    .line 1191
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v4    # "crlf":Ljava/lang/String;
    .restart local v13    # "tempLine":Ljava/lang/String;
    .restart local v14    # "tempStr":Ljava/lang/StringBuffer;
    :cond_4
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v6, Lcom/xiaomi/channel/commonutils/network/HttpResponse;->responseString:Ljava/lang/String;

    .line 1192
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1193
    const/4 v11, 0x0

    .line 1199
    invoke-static {v10}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1200
    invoke-static {v11}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1202
    return-object v6

    .line 1196
    .end local v4    # "crlf":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v9    # "name":Ljava/lang/String;
    .end local v13    # "tempLine":Ljava/lang/String;
    .end local v14    # "tempStr":Ljava/lang/StringBuffer;
    .end local v15    # "value":Ljava/lang/String;
    :catch_2
    move-exception v5

    .line 1197
    .local v5, "e":Ljava/lang/Throwable;
    :try_start_5
    new-instance v16, Ljava/io/IOException;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public static is2GConnected(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 1050
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/network/Network;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1051
    .local v0, "info":Landroid/net/NetworkInfo;
    if-nez v0, :cond_1

    .line 1067
    :cond_0
    :goto_0
    return v1

    .line 1054
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_0

    .line 1058
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1065
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1058
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static is3GConnected(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1010
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/network/Network;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1011
    .local v0, "info":Landroid/net/NetworkInfo;
    if-nez v0, :cond_1

    .line 1039
    :cond_0
    :goto_0
    return v2

    .line 1014
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-nez v4, :cond_0

    .line 1019
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    .line 1020
    .local v1, "strSubTypeName":Ljava/lang/String;
    const-string v4, "TD-SCDMA"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "CDMA2000"

    .line 1021
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "WCDMA"

    .line 1022
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v2, v3

    .line 1023
    goto :goto_0

    .line 1026
    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    move v2, v3

    .line 1037
    goto :goto_0

    .line 1026
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static is4GConnected(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 991
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/network/Network;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 992
    .local v0, "info":Landroid/net/NetworkInfo;
    if-nez v0, :cond_1

    .line 1000
    :cond_0
    :goto_0
    return v2

    .line 995
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 996
    .local v1, "type":I
    if-nez v1, :cond_0

    .line 999
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    .line 1000
    const/16 v3, 0xd

    if-ne v3, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 919
    const/4 v0, 0x0

    .line 921
    .local v0, "currentNetworkInfo":Landroid/net/NetworkInfo;
    :try_start_0
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 922
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 926
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 923
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isCtwap(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 826
    const-string v7, "phone"

    .line 827
    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 828
    .local v5, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 829
    .local v1, "countryISO":Ljava/lang/String;
    const-string v7, "CN"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 857
    :cond_0
    :goto_0
    return v6

    .line 832
    :cond_1
    const/4 v0, 0x0

    .line 834
    .local v0, "cm":Landroid/net/ConnectivityManager;
    :try_start_0
    const-string v7, "connectivity"

    .line 835
    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    check-cast v0, Landroid/net/ConnectivityManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 839
    .restart local v0    # "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 841
    const/4 v4, 0x0

    .line 843
    .local v4, "info":Landroid/net/NetworkInfo;
    :try_start_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 848
    if-eqz v4, :cond_0

    .line 850
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    .line 851
    .local v3, "extraInfo":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x3

    if-lt v7, v8, :cond_0

    .line 853
    const-string v7, "ctwap"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 854
    const/4 v6, 0x1

    goto :goto_0

    .line 836
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v3    # "extraInfo":Ljava/lang/String;
    .end local v4    # "info":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v2

    .line 837
    .local v2, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 844
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "cm":Landroid/net/ConnectivityManager;
    .restart local v4    # "info":Landroid/net/NetworkInfo;
    :catch_1
    move-exception v2

    .line 846
    .restart local v2    # "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static isUsingMobileDataConnection(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 981
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/network/Network;->is4GConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/network/Network;->is3GConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/network/Network;->is2GConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWIFIConnected(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 951
    const/4 v1, 0x0

    .line 953
    .local v1, "cm":Landroid/net/ConnectivityManager;
    :try_start_0
    const-string v4, "connectivity"

    .line 954
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/net/ConnectivityManager;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 959
    if-nez v1, :cond_1

    .line 974
    :cond_0
    :goto_0
    return v6

    .line 955
    :catch_0
    move-exception v2

    .line 956
    .local v2, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 963
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v3, 0x0

    .line 965
    .local v3, "info":Landroid/net/NetworkInfo;
    :try_start_1
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 970
    if-eqz v3, :cond_0

    .line 974
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v5, v4, :cond_2

    move v4, v5

    :goto_1
    move v6, v4

    goto :goto_0

    .line 966
    :catch_1
    move-exception v2

    .line 968
    .restart local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    move v4, v6

    .line 974
    goto :goto_1
.end method

.method public static uploadFile(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 26
    .param p0, "url"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "fileKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 653
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v23

    if-nez v23, :cond_0

    .line 654
    const/16 v23, 0x0

    .line 727
    :goto_0
    return-object v23

    .line 656
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    .line 658
    .local v15, "filename":Ljava/lang/String;
    const/4 v8, 0x0

    .line 660
    .local v8, "conn":Ljava/net/HttpURLConnection;
    const-string v18, "\r\n"

    .line 661
    .local v18, "lineEnd":Ljava/lang/String;
    const-string v22, "--"

    .line 662
    .local v22, "twoHyphens":Ljava/lang/String;
    const-string v5, "*****"

    .line 664
    .local v5, "boundary":Ljava/lang/String;
    const/4 v13, 0x0

    .line 665
    .local v13, "fileInputStream":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 666
    .local v9, "dos":Ljava/io/DataOutputStream;
    const/16 v19, 0x0

    .line 669
    .local v19, "rd":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 670
    .local v4, "_url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v23

    move-object/from16 v0, v23

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v8, v0

    .line 671
    const/16 v23, 0x3a98

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 672
    const/16 v23, 0x2710

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 675
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 676
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 677
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 680
    const-string v23, "POST"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 681
    const-string v23, "Connection"

    const-string v24, "Keep-Alive"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    const-string v23, "Content-Type"

    const-string v24, "multipart/form-data;boundary=*****"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    if-eqz p1, :cond_1

    .line 686
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_1
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 687
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 728
    .end local v4    # "_url":Ljava/net/URL;
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v11

    .line 729
    .local v11, "e":Ljava/io/IOException;
    :goto_2
    :try_start_1
    new-instance v23, Ljava/io/IOException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "IOException:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 733
    .end local v11    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v23

    :goto_3
    invoke-static {v13}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 734
    invoke-static/range {v19 .. v19}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v23

    .line 691
    .restart local v4    # "_url":Ljava/net/URL;
    :cond_1
    const/16 v3, 0x4d

    .line 692
    .local v3, "EXTRA_LEN":I
    :try_start_2
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v23

    add-int/lit8 v23, v23, 0x4d

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    add-int v23, v23, v24

    .line 693
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v24

    add-int v16, v23, v24

    .line 694
    .local v16, "len":I
    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 696
    new-instance v10, Ljava/io/DataOutputStream;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v10, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 697
    .end local v9    # "dos":Ljava/io/DataOutputStream;
    .local v10, "dos":Ljava/io/DataOutputStream;
    :try_start_3
    const-string v23, "--*****\r\n"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 698
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Content-Disposition: form-data; name=\""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\";filename=\""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 699
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\r\n"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 698
    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 700
    const-string v23, "\r\n"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 703
    new-instance v14, Ljava/io/FileInputStream;

    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 704
    .end local v13    # "fileInputStream":Ljava/io/FileInputStream;
    .local v14, "fileInputStream":Ljava/io/FileInputStream;
    const/4 v7, -0x1

    .line 705
    .local v7, "bytesRead":I
    const/16 v2, 0x400

    .line 706
    .local v2, "BUFFER_SIZE":I
    const/16 v23, 0x400

    :try_start_4
    move/from16 v0, v23

    new-array v6, v0, [B

    .line 707
    .local v6, "buffer":[B
    :goto_4
    invoke-virtual {v14, v6}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v7, v0, :cond_2

    .line 708
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v10, v6, v0, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 709
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->flush()V

    goto :goto_4

    .line 728
    .end local v6    # "buffer":[B
    :catch_1
    move-exception v11

    move-object v9, v10

    .end local v10    # "dos":Ljava/io/DataOutputStream;
    .restart local v9    # "dos":Ljava/io/DataOutputStream;
    move-object v13, v14

    .end local v14    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v13    # "fileInputStream":Ljava/io/FileInputStream;
    goto/16 :goto_2

    .line 712
    .end local v9    # "dos":Ljava/io/DataOutputStream;
    .end local v13    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "buffer":[B
    .restart local v10    # "dos":Ljava/io/DataOutputStream;
    .restart local v14    # "fileInputStream":Ljava/io/FileInputStream;
    :cond_2
    const-string v23, "\r\n"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 713
    const-string v23, "--"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 714
    const-string v23, "*****"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 715
    const-string v23, "--"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 716
    const-string v23, "\r\n"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 719
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->flush()V

    .line 720
    new-instance v21, Ljava/lang/StringBuffer;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    .line 721
    .local v21, "sb":Ljava/lang/StringBuffer;
    new-instance v20, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/InputStreamReader;

    new-instance v24, Lcom/xiaomi/channel/commonutils/network/Network$DoneHandlerInputStream;

    .line 722
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Lcom/xiaomi/channel/commonutils/network/Network$DoneHandlerInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct/range {v23 .. v24}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 724
    .end local v19    # "rd":Ljava/io/BufferedReader;
    .local v20, "rd":Ljava/io/BufferedReader;
    :goto_5
    :try_start_5
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    .local v17, "line":Ljava/lang/String;
    if-eqz v17, :cond_3

    .line 725
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 728
    .end local v17    # "line":Ljava/lang/String;
    :catch_2
    move-exception v11

    move-object/from16 v19, v20

    .end local v20    # "rd":Ljava/io/BufferedReader;
    .restart local v19    # "rd":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "dos":Ljava/io/DataOutputStream;
    .restart local v9    # "dos":Ljava/io/DataOutputStream;
    move-object v13, v14

    .end local v14    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v13    # "fileInputStream":Ljava/io/FileInputStream;
    goto/16 :goto_2

    .line 727
    .end local v9    # "dos":Ljava/io/DataOutputStream;
    .end local v13    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v19    # "rd":Ljava/io/BufferedReader;
    .restart local v10    # "dos":Ljava/io/DataOutputStream;
    .restart local v14    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v17    # "line":Ljava/lang/String;
    .restart local v20    # "rd":Ljava/io/BufferedReader;
    :cond_3
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-result-object v23

    .line 733
    invoke-static {v14}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 734
    invoke-static/range {v20 .. v20}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 730
    .end local v2    # "BUFFER_SIZE":I
    .end local v3    # "EXTRA_LEN":I
    .end local v4    # "_url":Ljava/net/URL;
    .end local v6    # "buffer":[B
    .end local v7    # "bytesRead":I
    .end local v10    # "dos":Ljava/io/DataOutputStream;
    .end local v14    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v16    # "len":I
    .end local v17    # "line":Ljava/lang/String;
    .end local v20    # "rd":Ljava/io/BufferedReader;
    .end local v21    # "sb":Ljava/lang/StringBuffer;
    .restart local v9    # "dos":Ljava/io/DataOutputStream;
    .restart local v13    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v19    # "rd":Ljava/io/BufferedReader;
    :catch_3
    move-exception v11

    .line 731
    .local v11, "e":Ljava/lang/Throwable;
    :goto_6
    :try_start_6
    new-instance v23, Ljava/io/IOException;

    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v23
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 733
    .end local v9    # "dos":Ljava/io/DataOutputStream;
    .end local v11    # "e":Ljava/lang/Throwable;
    .restart local v3    # "EXTRA_LEN":I
    .restart local v4    # "_url":Ljava/net/URL;
    .restart local v10    # "dos":Ljava/io/DataOutputStream;
    .restart local v16    # "len":I
    :catchall_1
    move-exception v23

    move-object v9, v10

    .end local v10    # "dos":Ljava/io/DataOutputStream;
    .restart local v9    # "dos":Ljava/io/DataOutputStream;
    goto/16 :goto_3

    .end local v9    # "dos":Ljava/io/DataOutputStream;
    .end local v13    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "BUFFER_SIZE":I
    .restart local v7    # "bytesRead":I
    .restart local v10    # "dos":Ljava/io/DataOutputStream;
    .restart local v14    # "fileInputStream":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v23

    move-object v9, v10

    .end local v10    # "dos":Ljava/io/DataOutputStream;
    .restart local v9    # "dos":Ljava/io/DataOutputStream;
    move-object v13, v14

    .end local v14    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v13    # "fileInputStream":Ljava/io/FileInputStream;
    goto/16 :goto_3

    .end local v9    # "dos":Ljava/io/DataOutputStream;
    .end local v13    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v19    # "rd":Ljava/io/BufferedReader;
    .restart local v6    # "buffer":[B
    .restart local v10    # "dos":Ljava/io/DataOutputStream;
    .restart local v14    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v20    # "rd":Ljava/io/BufferedReader;
    .restart local v21    # "sb":Ljava/lang/StringBuffer;
    :catchall_3
    move-exception v23

    move-object/from16 v19, v20

    .end local v20    # "rd":Ljava/io/BufferedReader;
    .restart local v19    # "rd":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "dos":Ljava/io/DataOutputStream;
    .restart local v9    # "dos":Ljava/io/DataOutputStream;
    move-object v13, v14

    .end local v14    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v13    # "fileInputStream":Ljava/io/FileInputStream;
    goto/16 :goto_3

    .line 730
    .end local v2    # "BUFFER_SIZE":I
    .end local v6    # "buffer":[B
    .end local v7    # "bytesRead":I
    .end local v9    # "dos":Ljava/io/DataOutputStream;
    .end local v21    # "sb":Ljava/lang/StringBuffer;
    .restart local v10    # "dos":Ljava/io/DataOutputStream;
    :catch_4
    move-exception v11

    move-object v9, v10

    .end local v10    # "dos":Ljava/io/DataOutputStream;
    .restart local v9    # "dos":Ljava/io/DataOutputStream;
    goto :goto_6

    .end local v9    # "dos":Ljava/io/DataOutputStream;
    .end local v13    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "BUFFER_SIZE":I
    .restart local v7    # "bytesRead":I
    .restart local v10    # "dos":Ljava/io/DataOutputStream;
    .restart local v14    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_5
    move-exception v11

    move-object v9, v10

    .end local v10    # "dos":Ljava/io/DataOutputStream;
    .restart local v9    # "dos":Ljava/io/DataOutputStream;
    move-object v13, v14

    .end local v14    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v13    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v9    # "dos":Ljava/io/DataOutputStream;
    .end local v13    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v19    # "rd":Ljava/io/BufferedReader;
    .restart local v6    # "buffer":[B
    .restart local v10    # "dos":Ljava/io/DataOutputStream;
    .restart local v14    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v20    # "rd":Ljava/io/BufferedReader;
    .restart local v21    # "sb":Ljava/lang/StringBuffer;
    :catch_6
    move-exception v11

    move-object/from16 v19, v20

    .end local v20    # "rd":Ljava/io/BufferedReader;
    .restart local v19    # "rd":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "dos":Ljava/io/DataOutputStream;
    .restart local v9    # "dos":Ljava/io/DataOutputStream;
    move-object v13, v14

    .end local v14    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v13    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_6

    .line 728
    .end local v2    # "BUFFER_SIZE":I
    .end local v6    # "buffer":[B
    .end local v7    # "bytesRead":I
    .end local v9    # "dos":Ljava/io/DataOutputStream;
    .end local v21    # "sb":Ljava/lang/StringBuffer;
    .restart local v10    # "dos":Ljava/io/DataOutputStream;
    :catch_7
    move-exception v11

    move-object v9, v10

    .end local v10    # "dos":Ljava/io/DataOutputStream;
    .restart local v9    # "dos":Ljava/io/DataOutputStream;
    goto/16 :goto_2
.end method
