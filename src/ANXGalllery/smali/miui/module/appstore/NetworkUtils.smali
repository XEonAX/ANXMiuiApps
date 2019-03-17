.class Lmiui/module/appstore/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# direct methods
.method static downloadFile(Ljava/lang/String;Ljava/io/File;)Z
    .locals 12
    .param p0, "fileURL"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v9, 0x0

    .line 63
    const/4 v3, 0x0

    .line 66
    .local v3, "conn":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 67
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 68
    const/16 v8, 0x2710

    invoke-virtual {v3, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 69
    const/16 v8, 0x3a98

    invoke-virtual {v3, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 72
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 75
    .local v6, "is":Ljava/io/InputStream;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 77
    .local v5, "fos":Ljava/io/FileOutputStream;
    const/4 v2, -0x1

    .line 78
    .local v2, "bytesRead":I
    const/16 v8, 0x1000

    new-array v1, v8, [B

    .line 79
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {v6, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v8, -0x1

    if-eq v2, v8, :cond_1

    .line 80
    const/4 v8, 0x0

    invoke-virtual {v5, v1, v8, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 83
    .end local v1    # "buffer":[B
    .end local v2    # "bytesRead":I
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "url":Ljava/net/URL;
    :catch_0
    move-exception v4

    .line 84
    .local v4, "e":Ljava/io/IOException;
    :try_start_1
    const-string v8, "NetworkUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "error while downloading file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    if-eqz v3, :cond_0

    .line 88
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    move v8, v9

    .line 92
    .end local v4    # "e":Ljava/io/IOException;
    :goto_1
    return v8

    .line 82
    .restart local v1    # "buffer":[B
    .restart local v2    # "bytesRead":I
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "url":Ljava/net/URL;
    :cond_1
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    if-eqz v3, :cond_2

    .line 88
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 92
    :cond_2
    const/4 v8, 0x1

    goto :goto_1

    .line 87
    .end local v1    # "buffer":[B
    .end local v2    # "bytesRead":I
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v8

    if-eqz v3, :cond_3

    .line 88
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v8
.end method

.method static downloadMetadata(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 11
    .param p0, "urlString"    # Ljava/lang/String;

    .prologue
    .line 34
    const/4 v2, 0x0

    .line 35
    .local v2, "conn":Ljava/net/HttpURLConnection;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .local v6, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 39
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 40
    const/16 v8, 0x2710

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 41
    const/16 v8, 0x3a98

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 43
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 44
    .local v5, "is":Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 47
    .local v1, "br":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "inputLine":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 48
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 51
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "inputLine":Ljava/lang/String;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v7    # "url":Ljava/net/URL;
    :catch_0
    move-exception v3

    .line 52
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v8, "NetworkUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error while downloading metadata "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    const/4 v8, 0x0

    .line 55
    if-eqz v2, :cond_0

    .line 56
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-object v8

    .line 50
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "inputLine":Ljava/lang/String;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v7    # "url":Ljava/net/URL;
    :cond_1
    :try_start_2
    new-instance v8, Lorg/json/JSONObject;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    if-eqz v2, :cond_0

    .line 56
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 55
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "inputLine":Ljava/lang/String;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v7    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v8

    if-eqz v2, :cond_2

    .line 56
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw v8
.end method
