.class public Lcom/miui/gallery/movie/utils/UnzipUtils;
.super Ljava/lang/Object;
.source "UnzipUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/miui/gallery/movie/utils/UnzipUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/movie/utils/UnzipUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unZipFile(Ljava/lang/String;)Z
    .locals 14
    .param p0, "zipPath"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 23
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    .local v8, "zipFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v11

    .line 27
    :cond_1
    new-instance v6, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    .local v6, "unzipFile":Ljava/io/File;
    invoke-static {v6, v12}, Lcom/miui/gallery/util/FileUtils;->createFolder(Ljava/io/File;Z)Z

    .line 30
    const/4 v5, 0x0

    .line 31
    .local v5, "inputStream":Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 33
    .local v9, "zipInputStream":Ljava/util/zip/ZipInputStream;
    :try_start_0
    new-instance v10, Ljava/util/zip/ZipInputStream;

    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v13}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 34
    .end local v9    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .local v10, "zipInputStream":Ljava/util/zip/ZipInputStream;
    :try_start_1
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v7

    .line 35
    .local v7, "zipEntry":Ljava/util/zip/ZipEntry;
    const/high16 v13, 0x100000

    new-array v0, v13, [B

    .line 36
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 38
    .local v1, "count":I
    :goto_1
    if-eqz v7, :cond_b

    .line 39
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 40
    new-instance v3, Ljava/io/File;

    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v6, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 41
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_2

    .line 42
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 58
    :cond_2
    :goto_2
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v7

    goto :goto_1

    .line 45
    .end local v3    # "file":Ljava/io/File;
    :cond_3
    new-instance v3, Ljava/io/File;

    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v6, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 46
    .restart local v3    # "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_4

    .line 47
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    .line 49
    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_2

    .line 50
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 51
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 52
    .local v4, "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_3
    invoke-virtual {v10, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_7

    .line 53
    const/4 v13, 0x0

    invoke-virtual {v4, v0, v13, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 60
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v7    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v2

    move-object v9, v10

    .line 61
    .end local v10    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .local v2, "e":Ljava/io/IOException;
    .restart local v9    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :goto_4
    :try_start_2
    sget-object v12, Lcom/miui/gallery/movie/utils/UnzipUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 64
    if-eqz v9, :cond_5

    .line 66
    :try_start_3
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 71
    :cond_5
    :goto_5
    if-eqz v5, :cond_6

    .line 73
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 78
    :cond_6
    :goto_6
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 79
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .line 55
    .end local v2    # "e":Ljava/io/IOException;
    .end local v9    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "count":I
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v7    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v10    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :cond_7
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 64
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v7    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catchall_0
    move-exception v11

    move-object v9, v10

    .end local v10    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v9    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :goto_7
    if-eqz v9, :cond_8

    .line 66
    :try_start_6
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 71
    :cond_8
    :goto_8
    if-eqz v5, :cond_9

    .line 73
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 78
    :cond_9
    :goto_9
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 79
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_a
    throw v11

    .line 64
    .end local v9    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "count":I
    .restart local v7    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v10    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :cond_b
    if-eqz v10, :cond_c

    .line 66
    :try_start_8
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 71
    :cond_c
    :goto_a
    if-eqz v5, :cond_d

    .line 73
    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 78
    :cond_d
    :goto_b
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 79
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_e
    move v11, v12

    .line 82
    goto/16 :goto_0

    .line 67
    :catch_1
    move-exception v2

    .line 68
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 74
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 75
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 67
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    .end local v7    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v10    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v9    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catch_3
    move-exception v2

    .line 68
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 74
    :catch_4
    move-exception v2

    .line 75
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 67
    .end local v2    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 68
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 74
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 75
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 64
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v11

    goto :goto_7

    .line 60
    :catch_7
    move-exception v2

    goto :goto_4
.end method
