.class public Lcom/baidu/vis/ClassIfication/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Predictor"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bitmap2Bytes(Landroid/graphics/Bitmap;)[B
    .locals 3
    .param p0, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 26
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v2

    .line 28
    .local v2, "bytes":I
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 29
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 31
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 32
    .local v1, "byteArray":[B
    return-object v1
.end method

.method public static bytes2Bitmap([BIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "type"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 37
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 38
    .local v0, "stitchBmp":Landroid/graphics/Bitmap;
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 40
    return-object v0
.end method

.method public static checkFile(Ljava/lang/String;)V
    .locals 2
    .param p0, "nnFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/vis/ClassIfication/SDKExceptions$NV21BytesLengthNotMatch;
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Lcom/baidu/vis/ClassIfication/SDKExceptions$NV21BytesLengthNotMatch;

    invoke-direct {v1}, Lcom/baidu/vis/ClassIfication/SDKExceptions$NV21BytesLengthNotMatch;-><init>()V

    throw v1

    .line 51
    :cond_0
    return-void
.end method

.method public static copyAssets(Landroid/content/Context;Ljava/lang/String;)V
    .locals 17
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "nnFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/vis/ClassIfication/SDKExceptions$NoSDCardPermission;,
            Lcom/baidu/vis/ClassIfication/SDKExceptions$MissingModleFileInAssetFolder;,
            Lcom/baidu/vis/ClassIfication/SDKExceptions$IlleagleCpuArch;
        }
    .end annotation

    .prologue
    .line 58
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 59
    .local v1, "arch":Ljava/lang/String;
    const-string/jumbo v14, "v7a"

    invoke-virtual {v1, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string/jumbo v14, "v8a"

    invoke-virtual {v1, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 64
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 65
    .local v2, "assetManager":Landroid/content/res/AssetManager;
    const/4 v8, 0x0

    .line 68
    .local v8, "is":Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 74
    if-eqz v8, :cond_1

    .line 76
    :try_start_1
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 84
    :cond_1
    :goto_0
    const-string v14, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v12

    .line 85
    .local v12, "perm":I
    if-eqz v12, :cond_4

    .line 87
    new-instance v14, Lcom/baidu/vis/ClassIfication/SDKExceptions$NoSDCardPermission;

    invoke-direct {v14}, Lcom/baidu/vis/ClassIfication/SDKExceptions$NoSDCardPermission;-><init>()V

    throw v14

    .line 62
    .end local v2    # "assetManager":Landroid/content/res/AssetManager;
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v12    # "perm":I
    :cond_2
    new-instance v14, Lcom/baidu/vis/ClassIfication/SDKExceptions$IlleagleCpuArch;

    invoke-direct {v14}, Lcom/baidu/vis/ClassIfication/SDKExceptions$IlleagleCpuArch;-><init>()V

    throw v14

    .line 77
    .restart local v2    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v8    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v4

    .line 78
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 70
    .end local v4    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 72
    .local v5, "ex":Ljava/io/IOException;
    :try_start_2
    new-instance v14, Lcom/baidu/vis/ClassIfication/SDKExceptions$MissingModleFileInAssetFolder;

    invoke-direct {v14}, Lcom/baidu/vis/ClassIfication/SDKExceptions$MissingModleFileInAssetFolder;-><init>()V

    throw v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    .end local v5    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    if-eqz v8, :cond_3

    .line 76
    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 79
    :cond_3
    :goto_1
    throw v14

    .line 77
    :catch_2
    move-exception v4

    .line 78
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 90
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v12    # "perm":I
    :cond_4
    new-instance v6, Ljava/io/File;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-direct {v6, v14, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 91
    .local v6, "fileInSD":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 92
    const-string v14, "Predictor"

    const-string v15, "NN model on SD card"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_5
    :goto_2
    return-void

    .line 97
    :cond_6
    const/4 v7, 0x0

    .line 98
    .local v7, "in":Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 100
    .local v9, "out":Ljava/io/OutputStream;
    :try_start_4
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 101
    new-instance v11, Ljava/io/File;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-direct {v11, v14, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 102
    .local v11, "outFile":Ljava/io/File;
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 103
    .end local v9    # "out":Ljava/io/OutputStream;
    .local v10, "out":Ljava/io/OutputStream;
    const/16 v14, 0x400

    :try_start_5
    new-array v3, v14, [B

    .line 105
    .local v3, "buffer":[B
    :goto_3
    invoke-virtual {v7, v3}, Ljava/io/InputStream;->read([B)I

    move-result v13

    .local v13, "read":I
    const/4 v14, -0x1

    if-eq v13, v14, :cond_8

    .line 106
    const/4 v14, 0x0

    invoke-virtual {v10, v3, v14, v13}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    .line 108
    .end local v3    # "buffer":[B
    .end local v13    # "read":I
    :catch_3
    move-exception v4

    move-object v9, v10

    .line 109
    .end local v10    # "out":Ljava/io/OutputStream;
    .end local v11    # "outFile":Ljava/io/File;
    .restart local v4    # "e":Ljava/io/IOException;
    .restart local v9    # "out":Ljava/io/OutputStream;
    :goto_4
    :try_start_6
    const-string/jumbo v14, "tag"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to copy asset file: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 111
    if-eqz v7, :cond_7

    .line 113
    :try_start_7
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 118
    :cond_7
    :goto_5
    if-eqz v9, :cond_5

    .line 120
    :try_start_8
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_2

    .line 121
    :catch_4
    move-exception v14

    goto :goto_2

    .line 111
    .end local v4    # "e":Ljava/io/IOException;
    .end local v9    # "out":Ljava/io/OutputStream;
    .restart local v3    # "buffer":[B
    .restart local v10    # "out":Ljava/io/OutputStream;
    .restart local v11    # "outFile":Ljava/io/File;
    .restart local v13    # "read":I
    :cond_8
    if-eqz v7, :cond_9

    .line 113
    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 118
    :cond_9
    :goto_6
    if-eqz v10, :cond_c

    .line 120
    :try_start_a
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    move-object v9, v10

    .line 123
    .end local v10    # "out":Ljava/io/OutputStream;
    .restart local v9    # "out":Ljava/io/OutputStream;
    goto :goto_2

    .line 121
    .end local v9    # "out":Ljava/io/OutputStream;
    .restart local v10    # "out":Ljava/io/OutputStream;
    :catch_5
    move-exception v14

    move-object v9, v10

    .line 123
    .end local v10    # "out":Ljava/io/OutputStream;
    .restart local v9    # "out":Ljava/io/OutputStream;
    goto :goto_2

    .line 111
    .end local v3    # "buffer":[B
    .end local v11    # "outFile":Ljava/io/File;
    .end local v13    # "read":I
    :catchall_1
    move-exception v14

    :goto_7
    if-eqz v7, :cond_a

    .line 113
    :try_start_b
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 118
    :cond_a
    :goto_8
    if-eqz v9, :cond_b

    .line 120
    :try_start_c
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 123
    :cond_b
    :goto_9
    throw v14

    .line 114
    .end local v9    # "out":Ljava/io/OutputStream;
    .restart local v3    # "buffer":[B
    .restart local v10    # "out":Ljava/io/OutputStream;
    .restart local v11    # "outFile":Ljava/io/File;
    .restart local v13    # "read":I
    :catch_6
    move-exception v14

    goto :goto_6

    .end local v3    # "buffer":[B
    .end local v10    # "out":Ljava/io/OutputStream;
    .end local v11    # "outFile":Ljava/io/File;
    .end local v13    # "read":I
    .restart local v4    # "e":Ljava/io/IOException;
    .restart local v9    # "out":Ljava/io/OutputStream;
    :catch_7
    move-exception v14

    goto :goto_5

    .end local v4    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v15

    goto :goto_8

    .line 121
    :catch_9
    move-exception v15

    goto :goto_9

    .line 111
    .end local v9    # "out":Ljava/io/OutputStream;
    .restart local v10    # "out":Ljava/io/OutputStream;
    .restart local v11    # "outFile":Ljava/io/File;
    :catchall_2
    move-exception v14

    move-object v9, v10

    .end local v10    # "out":Ljava/io/OutputStream;
    .restart local v9    # "out":Ljava/io/OutputStream;
    goto :goto_7

    .line 108
    .end local v11    # "outFile":Ljava/io/File;
    :catch_a
    move-exception v4

    goto :goto_4

    .end local v9    # "out":Ljava/io/OutputStream;
    .restart local v3    # "buffer":[B
    .restart local v10    # "out":Ljava/io/OutputStream;
    .restart local v11    # "outFile":Ljava/io/File;
    .restart local v13    # "read":I
    :cond_c
    move-object v9, v10

    .end local v10    # "out":Ljava/io/OutputStream;
    .restart local v9    # "out":Ljava/io/OutputStream;
    goto :goto_2
.end method
