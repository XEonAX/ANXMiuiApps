.class public abstract Lcom/miui/gallery/editor/photo/core/imports/obsoletes/ZipUtils;
.super Ljava/lang/Object;
.source "ZipUtils.java"


# direct methods
.method public static unzip(Ljava/io/File;Ljava/io/File;)V
    .locals 17
    .param p0, "zipFile"    # Ljava/io/File;
    .param p1, "dst"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    const-string v11, "ZipUtils"

    const-string/jumbo v12, "unzip zipfile[%s] to [%s]"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v11, v12, v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    if-nez p0, :cond_0

    .line 23
    new-instance v11, Ljava/lang/NullPointerException;

    const-string/jumbo v12, "zip file can\'t be null"

    invoke-direct {v11, v12}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 26
    :cond_0
    if-nez p1, :cond_1

    .line 27
    new-instance v11, Ljava/lang/NullPointerException;

    const-string/jumbo v12, "unzip folder can\'t be null"

    invoke-direct {v11, v12}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 30
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_2

    .line 31
    new-instance v11, Ljava/io/FileNotFoundException;

    const-string/jumbo v12, "zip file not exists"

    invoke-direct {v11, v12}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 34
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->mkdirs()Z

    move-result v11

    if-nez v11, :cond_3

    .line 35
    new-instance v11, Ljava/io/IOException;

    const-string v12, "create folder failed"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 39
    :cond_3
    new-instance v10, Ljava/util/zip/ZipFile;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 41
    .local v10, "zip":Ljava/util/zip/ZipFile;
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    .line 44
    .local v4, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :goto_0
    :try_start_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 45
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 46
    .local v5, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v10, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v7

    .line 49
    .local v7, "in":Ljava/io/InputStream;
    :try_start_1
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-direct {v6, v0, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50
    .local v6, "file":Ljava/io/File;
    const-string v11, "ZipUtils"

    const-string/jumbo v12, "unzipping %s"

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 52
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v11

    if-nez v11, :cond_4

    .line 53
    new-instance v11, Ljava/io/IOException;

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "mkdir for %s failed"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    .end local v6    # "file":Ljava/io/File;
    :catchall_0
    move-exception v11

    .line 75
    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 78
    :goto_1
    :try_start_3
    throw v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 82
    .end local v5    # "entry":Ljava/util/zip/ZipEntry;
    .end local v7    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v11

    .line 83
    :try_start_4
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 86
    :goto_2
    throw v11

    .line 75
    .restart local v5    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v7    # "in":Ljava/io/InputStream;
    :cond_4
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 76
    :catch_0
    move-exception v3

    .line 77
    .local v3, "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 58
    .end local v3    # "e":Ljava/io/IOException;
    :cond_5
    :try_start_7
    new-instance v8, Ljava/io/BufferedOutputStream;

    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 59
    .local v8, "out":Ljava/io/BufferedOutputStream;
    const/16 v11, 0x2000

    new-array v2, v11, [B
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 62
    .local v2, "buff":[B
    :goto_3
    :try_start_8
    invoke-virtual {v7, v2}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .local v9, "size":I
    const/4 v11, -0x1

    if-eq v9, v11, :cond_6

    .line 63
    const/4 v11, 0x0

    invoke-virtual {v8, v2, v11, v9}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_3

    .line 67
    .end local v9    # "size":I
    :catchall_2
    move-exception v11

    .line 68
    :try_start_9
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 71
    :goto_4
    :try_start_a
    throw v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 65
    .restart local v9    # "size":I
    :cond_6
    :try_start_b
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 68
    :try_start_c
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 75
    :goto_5
    :try_start_d
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_0

    .line 76
    :catch_1
    move-exception v3

    .line 77
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_e
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_0

    .line 69
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 70
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_f
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 69
    .end local v3    # "e":Ljava/io/IOException;
    .end local v9    # "size":I
    :catch_3
    move-exception v3

    .line 70
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_4

    .line 76
    .end local v2    # "buff":[B
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "file":Ljava/io/File;
    .end local v8    # "out":Ljava/io/BufferedOutputStream;
    :catch_4
    move-exception v3

    .line 77
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_10
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_1

    .line 83
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "entry":Ljava/util/zip/ZipEntry;
    .end local v7    # "in":Ljava/io/InputStream;
    :cond_7
    :try_start_11
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5

    .line 88
    :goto_6
    return-void

    .line 84
    :catch_5
    move-exception v3

    .line 85
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 84
    .end local v3    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v3

    .line 85
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method
