.class public Lcom/miui/gallery/video/editor/util/FileHelper;
.super Ljava/lang/Object;
.source "FileHelper.java"


# direct methods
.method public static createDir(Ljava/lang/String;)Z
    .locals 4
    .param p0, "destDirName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 88
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    const-string v2, "FileHelper"

    const-string v3, "The target directory already exists"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :goto_0
    return v1

    .line 93
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    const-string v2, "FileHelper"

    const-string v3, "create dir sucessed\uff01"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_1
    const-string v1, "FileHelper"

    const-string v2, "create dir failed\uff01 "

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static generateFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 4
    .param p0, "parentPath"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "extensionName"    # Ljava/lang/String;
    .param p3, "number"    # I
    .param p4, "isHiddened"    # Z

    .prologue
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v1, "fileNameSB":Ljava/lang/StringBuilder;
    if-eqz p4, :cond_0

    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 70
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 74
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 78
    add-int/lit8 v2, p3, 0x1

    invoke-static {p0, p1, p2, v2, p4}, Lcom/miui/gallery/video/editor/util/FileHelper;->generateFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2

    .line 80
    :goto_0
    return-object v2

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static generateOutputFilePath(Ljava/io/File;Z)Ljava/lang/String;
    .locals 8
    .param p0, "file"    # Ljava/io/File;
    .param p1, "isHiddened"    # Z

    .prologue
    const/4 v7, 0x0

    .line 37
    if-eqz p0, :cond_4

    .line 38
    const/4 v4, 0x0

    .line 39
    .local v4, "parentPath":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 40
    .local v3, "parentFile":Ljava/io/File;
    if-eqz v3, :cond_0

    .line 41
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 43
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 44
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getCreativeDirectory()Ljava/lang/String;

    move-result-object v4

    .line 45
    invoke-static {v4, v7}, Lcom/miui/gallery/util/FileUtils;->createFolder(Ljava/lang/String;Z)Z

    .line 53
    :cond_1
    :goto_0
    const-string v0, ""

    .line 54
    .local v0, "extensionName":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 55
    .local v1, "lastPointIndex":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 56
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "name":Ljava/lang/String;
    :goto_1
    invoke-static {v4, v2, v0, v7, p1}, Lcom/miui/gallery/video/editor/util/FileHelper;->generateFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v5

    .line 63
    .end local v0    # "extensionName":Ljava/lang/String;
    .end local v1    # "lastPointIndex":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "parentFile":Ljava/io/File;
    .end local v4    # "parentPath":Ljava/lang/String;
    :goto_2
    return-object v5

    .line 46
    .restart local v3    # "parentFile":Ljava/io/File;
    .restart local v4    # "parentPath":Ljava/lang/String;
    :cond_2
    invoke-static {v4}, Lcom/miui/gallery/util/DocumentProviderUtils;->needUseDocumentProvider(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 49
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/miui/gallery/util/StorageUtils;->getRelativePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 48
    invoke-static {v5}, Lcom/miui/gallery/util/StorageUtils;->getPathInPrimaryStorage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 50
    invoke-static {v4, v7}, Lcom/miui/gallery/util/FileUtils;->createFolder(Ljava/lang/String;Z)Z

    goto :goto_0

    .line 59
    .restart local v0    # "extensionName":Ljava/lang/String;
    .restart local v1    # "lastPointIndex":I
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "name":Ljava/lang/String;
    goto :goto_1

    .line 63
    .end local v0    # "extensionName":Ljava/lang/String;
    .end local v1    # "lastPointIndex":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "parentFile":Ljava/io/File;
    .end local v4    # "parentPath":Ljava/lang/String;
    :cond_4
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public static generateOutputFilePath(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "isHiddened"    # Z

    .prologue
    .line 30
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/miui/gallery/video/editor/util/FileHelper;->generateOutputFilePath(Ljava/io/File;Z)Ljava/lang/String;

    move-result-object v0

    .line 33
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static unZipFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "zipPath"    # Ljava/lang/String;

    .prologue
    .line 177
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    .local v8, "zipFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1

    .line 179
    const/4 v11, 0x0

    .line 243
    :cond_0
    :goto_0
    return-object v11

    .line 181
    :cond_1
    new-instance v6, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "[.][^.]+$"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    .local v6, "unzipFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_c

    .line 183
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 184
    const/4 v5, 0x0

    .line 185
    .local v5, "inputStream":Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 187
    .local v9, "zipInputStream":Ljava/util/zip/ZipInputStream;
    :try_start_0
    new-instance v10, Ljava/util/zip/ZipInputStream;

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v11}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 188
    .end local v9    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .local v10, "zipInputStream":Ljava/util/zip/ZipInputStream;
    :try_start_1
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v7

    .line 189
    .local v7, "zipEntry":Ljava/util/zip/ZipEntry;
    const/16 v11, 0x400

    new-array v0, v11, [B

    .line 190
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 192
    .local v1, "count":I
    :goto_1
    if-eqz v7, :cond_a

    .line 193
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 194
    new-instance v3, Ljava/io/File;

    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v6, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 195
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_2

    .line 196
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 212
    :cond_2
    :goto_2
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v7

    goto :goto_1

    .line 199
    .end local v3    # "file":Ljava/io/File;
    :cond_3
    new-instance v3, Ljava/io/File;

    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v6, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 200
    .restart local v3    # "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_4

    .line 201
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 203
    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_2

    .line 204
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 205
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 206
    .local v4, "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_3
    invoke-virtual {v10, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_7

    .line 207
    const/4 v11, 0x0

    invoke-virtual {v4, v0, v11, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 214
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v7    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v2

    move-object v9, v10

    .line 215
    .end local v10    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .local v2, "e":Ljava/io/IOException;
    .restart local v9    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :goto_4
    :try_start_2
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 216
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 218
    :cond_5
    const-string v11, "FileHelper"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 219
    const/4 v11, 0x0

    .line 221
    if-eqz v9, :cond_6

    .line 223
    :try_start_3
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 228
    :cond_6
    :goto_5
    if-eqz v5, :cond_0

    .line 230
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 231
    :catch_1
    move-exception v2

    .line 232
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 209
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

    .line 221
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
    :goto_6
    if-eqz v9, :cond_8

    .line 223
    :try_start_6
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 228
    :cond_8
    :goto_7
    if-eqz v5, :cond_9

    .line 230
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 233
    :cond_9
    :goto_8
    throw v11

    .line 221
    .end local v9    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "count":I
    .restart local v7    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v10    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :cond_a
    if-eqz v10, :cond_b

    .line 223
    :try_start_8
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 228
    :cond_b
    :goto_9
    if-eqz v5, :cond_c

    .line 230
    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 237
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v7    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v10    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :cond_c
    :goto_a
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 238
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 239
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 241
    :cond_d
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .line 224
    .restart local v0    # "buffer":[B
    .restart local v1    # "count":I
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v7    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v10    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catch_2
    move-exception v2

    .line 225
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 231
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 232
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 224
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    .end local v7    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v10    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v9    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catch_4
    move-exception v2

    .line 225
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 224
    .end local v2    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 225
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 231
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 232
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 243
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v9    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :cond_e
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 221
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catchall_1
    move-exception v11

    goto :goto_6

    .line 214
    :catch_7
    move-exception v2

    goto :goto_4
.end method

.method public static unZipTemplateFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "zipPath"    # Ljava/lang/String;
    .param p1, "unZipPath"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 109
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    .local v8, "zipFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-object v11

    .line 113
    :cond_1
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v6, "unzipFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_2

    .line 115
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 117
    :cond_2
    const/4 v5, 0x0

    .line 118
    .local v5, "inputStream":Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 120
    .local v9, "zipInputStream":Ljava/util/zip/ZipInputStream;
    :try_start_0
    new-instance v10, Ljava/util/zip/ZipInputStream;

    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v12}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 121
    .end local v9    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .local v10, "zipInputStream":Ljava/util/zip/ZipInputStream;
    :try_start_1
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v7

    .line 122
    .local v7, "zipEntry":Ljava/util/zip/ZipEntry;
    const/16 v12, 0x400

    new-array v0, v12, [B

    .line 123
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 125
    .local v1, "count":I
    :goto_1
    if-eqz v7, :cond_b

    .line 126
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 127
    new-instance v3, Ljava/io/File;

    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v6, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 128
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_3

    .line 129
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 143
    :cond_3
    :goto_2
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v7

    goto :goto_1

    .line 132
    .end local v3    # "file":Ljava/io/File;
    :cond_4
    new-instance v3, Ljava/io/File;

    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v6, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 133
    .restart local v3    # "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_5

    .line 134
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    .line 136
    :cond_5
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 137
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 138
    .local v4, "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_3
    invoke-virtual {v10, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_8

    .line 139
    const/4 v12, 0x0

    invoke-virtual {v4, v0, v12, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 145
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v7    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v2

    move-object v9, v10

    .line 146
    .end local v10    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .local v2, "e":Ljava/io/IOException;
    .restart local v9    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :goto_4
    :try_start_2
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 147
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 149
    :cond_6
    const-string v12, "FileHelper"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 152
    if-eqz v9, :cond_7

    .line 154
    :try_start_3
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 159
    :cond_7
    :goto_5
    if-eqz v5, :cond_0

    .line 161
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 162
    :catch_1
    move-exception v2

    .line 163
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 141
    .end local v2    # "e":Ljava/io/IOException;
    .end local v9    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "count":I
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v7    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v10    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :cond_8
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 152
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
    :goto_6
    if-eqz v9, :cond_9

    .line 154
    :try_start_6
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 159
    :cond_9
    :goto_7
    if-eqz v5, :cond_a

    .line 161
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 164
    :cond_a
    :goto_8
    throw v11

    .line 152
    .end local v9    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "count":I
    .restart local v7    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v10    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :cond_b
    if-eqz v10, :cond_c

    .line 154
    :try_start_8
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 159
    :cond_c
    :goto_9
    if-eqz v5, :cond_d

    .line 161
    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 167
    :cond_d
    :goto_a
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 168
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 169
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 171
    :cond_e
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .line 155
    :catch_2
    move-exception v2

    .line 156
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 162
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 163
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 155
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    .end local v7    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v10    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v9    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catch_4
    move-exception v2

    .line 156
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 155
    .end local v2    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 156
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 162
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 163
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 152
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v11

    goto :goto_6

    .line 145
    :catch_7
    move-exception v2

    goto :goto_4
.end method
