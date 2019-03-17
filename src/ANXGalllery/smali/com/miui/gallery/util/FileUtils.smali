.class public Lcom/miui/gallery/util/FileUtils;
.super Lcom/miui/gallery/util/BaseFileUtils;
.source "FileUtils.java"


# direct methods
.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 1
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;

    .prologue
    .line 316
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/DocumentProviderUtils;->needUseDocumentProvider(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    invoke-static {p0, p1}, Lcom/miui/gallery/util/FileUtils;->copyFileByDocumentProvider(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    .line 319
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lmiui/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    goto :goto_0
.end method

.method public static copyFileByDocumentProvider(Ljava/io/File;Ljava/io/File;)Z
    .locals 5
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;

    .prologue
    .line 324
    const/4 v3, 0x0

    .line 325
    .local v3, "result":Z
    const/4 v1, 0x0

    .line 327
    .local v1, "in":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    .end local v1    # "in":Ljava/io/FileInputStream;
    .local v2, "in":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v2, p1}, Lcom/miui/gallery/util/FileUtils;->copyFileByDocumentProvider(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    .line 332
    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    move-object v1, v2

    .line 334
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    :goto_0
    return v3

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    const-string v4, "FileUtils"

    invoke-static {v4, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 332
    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v4

    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    goto :goto_2

    .line 329
    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static copyFileByDocumentProvider(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "destFile"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 338
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    new-array v3, v1, [Ljava/io/File;

    aput-object p1, v3, v2

    invoke-static {v3}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFile([Ljava/io/File;)I

    move-result v3

    if-gtz v3, :cond_0

    .line 359
    :goto_0
    return v2

    .line 341
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/miui/gallery/util/FileUtils$1;

    invoke-direct {v4, p0}, Lcom/miui/gallery/util/FileUtils$1;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Lcom/miui/gallery/util/DocumentProviderUtils;->safeWriteFile(Ljava/lang/String;Lcom/miui/gallery/util/BaseDocumentProviderUtils$WriteHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 359
    .local v0, "result":Ljava/lang/Boolean;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public static createFolder(Ljava/io/File;Z)Z
    .locals 10
    .param p0, "destFolderFile"    # Ljava/io/File;
    .param p1, "hideFolder"    # Z

    .prologue
    const/4 v9, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 145
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 146
    sget-object v5, Lcom/miui/gallery/util/MediaFileUtils$FileType;->NORMAL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    new-array v6, v3, [Ljava/io/File;

    aput-object p0, v6, v4

    invoke-static {v5, v6}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/io/File;)I

    move-result v5

    if-lez v5, :cond_0

    move v0, v3

    .line 147
    .local v0, "deleted":Z
    :goto_0
    const-string v5, "FileUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createFolder  there is a file that has the same name as the dest folder, delete it first. result:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    if-nez v0, :cond_1

    .line 177
    .end local v0    # "deleted":Z
    :goto_1
    return v4

    :cond_0
    move v0, v4

    .line 146
    goto :goto_0

    .line 152
    .restart local v0    # "deleted":Z
    :cond_1
    new-instance v5, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;

    const/16 v6, 0x34

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "FileUtils"

    invoke-direct {v5, v6, v7, v8}, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/miui/gallery/util/deleterecorder/DeleteRecorder;->record(Lcom/miui/gallery/util/deleterecorder/DeleteRecord;)I

    .line 157
    .end local v0    # "deleted":Z
    :cond_2
    const/16 v5, 0x1ff

    invoke-static {p0, v5, v9, v9}, Lcom/miui/gallery/util/FileUtils;->mkdirsCustomize(Ljava/io/File;III)Z

    .line 158
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 159
    const-string v3, "FileUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "folder: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Can not be created."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 162
    :cond_3
    if-eqz p1, :cond_4

    .line 164
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/gallery/util/DocumentProviderUtils;->needUseDocumentProvider(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 166
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v4

    .line 165
    invoke-static {v4, p0}, Lcom/miui/gallery/util/DocumentProviderUtils;->getDocumentFile(Landroid/content/Context;Ljava/io/File;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v1

    .line 167
    .local v1, "destFolderDocumentFile":Landroid/support/v4/provider/DocumentFile;
    const-string v4, ".nomedia"

    invoke-virtual {v1, v4}, Landroid/support/v4/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v4

    if-nez v4, :cond_4

    .line 168
    const-string v4, "any/any"

    const-string v5, ".nomedia"

    invoke-virtual {v1, v4, v5}, Landroid/support/v4/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    .end local v1    # "destFolderDocumentFile":Landroid/support/v4/provider/DocumentFile;
    :cond_4
    :goto_2
    move v4, v3

    .line 177
    goto :goto_1

    .line 171
    :cond_5
    new-instance v4, Ljava/io/File;

    const-string v5, ".nomedia"

    invoke-direct {v4, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 173
    :catch_0
    move-exception v2

    .line 174
    .local v2, "e":Ljava/io/IOException;
    const-string v4, "FileUtils"

    invoke-static {v4, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public static createFolder(Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "destFolder"    # Ljava/lang/String;
    .param p1, "hideFolder"    # Z

    .prologue
    .line 140
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, "destFolderFile":Ljava/io/File;
    invoke-static {v0, p1}, Lcom/miui/gallery/util/FileUtils;->createFolder(Ljava/io/File;Z)Z

    move-result v1

    return v1
.end method

.method public static deleteFile(Ljava/io/File;)Z
    .locals 7
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 413
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 414
    :cond_0
    const/4 v2, 0x0

    .line 450
    :goto_0
    return v2

    .line 418
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/util/DocumentProviderUtils;->needUseDocumentProvider(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 419
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    .line 420
    .local v1, "isDir":Z
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/miui/gallery/util/DocumentProviderUtils;->getDocumentFile(Landroid/content/Context;Ljava/io/File;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v0

    .line 421
    .local v0, "documentFile":Landroid/support/v4/provider/DocumentFile;
    if-nez v0, :cond_2

    .line 422
    const/4 v2, 0x0

    .line 426
    .local v2, "result":Z
    :goto_1
    if-eqz v1, :cond_3

    .line 427
    const-string v3, "FileUtils"

    const-string v4, "delete folder [%s]\'s files, result %s"

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 424
    .end local v2    # "result":Z
    :cond_2
    invoke-virtual {v0}, Landroid/support/v4/provider/DocumentFile;->delete()Z

    move-result v2

    .restart local v2    # "result":Z
    goto :goto_1

    .line 429
    :cond_3
    const-string v3, "FileUtils"

    const-string v4, "delete [%s]\'s file, result %s"

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 434
    .end local v0    # "documentFile":Landroid/support/v4/provider/DocumentFile;
    .end local v1    # "isDir":Z
    .end local v2    # "result":Z
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 435
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/util/FileUtils;->rm(Ljava/lang/String;)Z

    move-result v2

    .line 436
    .restart local v2    # "result":Z
    const-string v3, "FileUtils"

    const-string v4, "delete folder [%s]\'s files, result %s"

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 441
    .end local v2    # "result":Z
    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    .line 442
    .restart local v2    # "result":Z
    if-nez v2, :cond_6

    .line 443
    const-string v3, "FileUtils"

    const-string v4, "File.delete() returns false %s"

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 445
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    .line 446
    const-string v3, "FileUtils"

    const-string v4, "Try File.delete() again. return %s"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 448
    :cond_6
    const-string v3, "FileUtils"

    const-string v4, "delete [%s]\'s file, result %s"

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public static forceCreate(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .locals 10
    .param p0, "dir"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "strategy"    # I

    .prologue
    const/4 v8, 0x0

    .line 215
    const-string v6, "FileUtils"

    const-string v7, "forceCreate file(%s, %s)."

    invoke-static {v6, v7, p0, p1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 216
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 218
    const-string v6, "FileUtils"

    const-string v7, "no conflict, create finish."

    invoke-static {v6, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 243
    .end local v0    # "file":Ljava/io/File;
    .local v1, "file":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 222
    .end local v1    # "file":Ljava/lang/Object;
    .restart local v0    # "file":Ljava/io/File;
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 233
    const-string v6, "FileUtils"

    const-string v7, "duplicated file fount, rename: "

    invoke-static {v6, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v6, "."

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 235
    .local v4, "prefixIndex":I
    invoke-virtual {p1, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 236
    .local v3, "prefix":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 237
    .local v5, "suffix":Ljava/lang/String;
    const/4 v2, 0x1

    .line 238
    .local v2, "index":I
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 239
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, p0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .restart local v0    # "file":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 224
    .end local v2    # "index":I
    .end local v3    # "prefix":Ljava/lang/String;
    .end local v4    # "prefixIndex":I
    .end local v5    # "suffix":Ljava/lang/String;
    :pswitch_0
    sget-object v6, Lcom/miui/gallery/util/MediaFileUtils$FileType;->NORMAL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/io/File;

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/io/File;)I

    move-result v6

    if-gtz v6, :cond_1

    .line 225
    const-string v6, "FileUtils"

    const-string v7, "forceCreate: Delete exist file failed"

    invoke-static {v6, v7}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move-object v1, v0

    .line 229
    .restart local v1    # "file":Ljava/lang/Object;
    goto :goto_0

    .line 227
    .end local v1    # "file":Ljava/lang/Object;
    :cond_1
    new-instance v6, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;

    const/16 v7, 0x33

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const-string v9, "FileUtils"

    invoke-direct {v6, v7, v8, v9}, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/miui/gallery/util/deleterecorder/DeleteRecorder;->record(Lcom/miui/gallery/util/deleterecorder/DeleteRecord;)I

    goto :goto_2

    .line 242
    .restart local v2    # "index":I
    .restart local v3    # "prefix":Ljava/lang/String;
    .restart local v4    # "prefixIndex":I
    .restart local v5    # "suffix":Ljava/lang/String;
    :cond_2
    const-string v6, "FileUtils"

    const-string v7, "rename to %s, create finish."

    invoke-static {v6, v7, v0}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v1, v0

    .line 243
    .restart local v1    # "file":Ljava/lang/Object;
    goto :goto_0

    .line 222
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getBucketID(Ljava/lang/String;)I
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 136
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 45
    if-nez p0, :cond_2

    const/4 v2, 0x0

    .line 46
    .local v2, "trimPath":Ljava/lang/String;
    :goto_0
    const-string v0, ""

    .line 47
    .local v0, "fileName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 48
    move-object v1, v2

    .line 49
    .local v1, "tmpPath":Ljava/lang/String;
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 52
    :cond_0
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 54
    .end local v1    # "tmpPath":Ljava/lang/String;
    :cond_1
    return-object v0

    .line 45
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v2    # "trimPath":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-static {p0}, Lcom/miui/gallery/util/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "fileName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 60
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 61
    .local v1, "indexOfDot":I
    if-lez v1, :cond_0

    .line 62
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 64
    .end local v1    # "indexOfDot":I
    :cond_0
    return-object v0
.end method

.method public static getFileSha1(Ljava/lang/String;)[B
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 114
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_1

    .line 116
    :cond_0
    const-string v5, "FileUtils"

    const-string v6, "File [%s] doesn\'t exist or is not a file"

    invoke-static {v5, v6, p0}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    :goto_0
    return-object v4

    .line 119
    :cond_1
    const/4 v2, 0x0

    .line 121
    .local v2, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    .end local v2    # "in":Ljava/io/InputStream;
    .local v3, "in":Ljava/io/InputStream;
    :try_start_1
    const-string v5, "SHA-1"

    invoke-static {v3, v5}, Lmiui/security/DigestUtils;->get(Ljava/io/InputStream;Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 126
    invoke-static {v3}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 123
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v5, "FileUtils"

    invoke-static {v5, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_2
    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v4

    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_2

    .line 123
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_1
.end method

.method public static getFileSize(Ljava/lang/String;)J
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 82
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static getFileTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    const-string p0, ""

    .line 75
    .end local p0    # "fileName":Ljava/lang/String;
    .local v0, "index":I
    :cond_0
    :goto_0
    return-object p0

    .line 71
    .end local v0    # "index":I
    .restart local p0    # "fileName":Ljava/lang/String;
    :cond_1
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 72
    .restart local v0    # "index":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 73
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getImageRelativeDngFile(Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p0, "imgFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 278
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_2

    :cond_0
    move-object v0, v1

    .line 294
    :cond_1
    :goto_0
    return-object v0

    .line 283
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 284
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".dng"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, "dngFile":Ljava/io/File;
    :goto_1
    if-eqz v0, :cond_1

    .line 290
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    move-object v0, v1

    .line 291
    goto :goto_0

    .line 286
    .end local v0    # "dngFile":Ljava/io/File;
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "dngFile":Ljava/io/File;
    goto :goto_1
.end method

.method public static getPackageNameFromScreenshotFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 252
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "Screenshot"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 253
    const-string v5, "_"

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 254
    .local v3, "packageNameStart":I
    const-string v5, "."

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 255
    .local v2, "packageNameEnd":I
    if-le v2, v3, :cond_0

    .line 256
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, "packageName":Ljava/lang/String;
    const-string v5, "FileUtils"

    const-string v6, "The packageName is %s"

    invoke-static {v5, v6, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 258
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 260
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/16 v5, 0x80

    :try_start_0
    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 266
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "packageNameEnd":I
    .end local v3    # "packageNameStart":I
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v5

    .line 261
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "packageNameEnd":I
    .restart local v3    # "packageNameStart":I
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 266
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "packageNameEnd":I
    .end local v3    # "packageNameStart":I
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static getParentFolderPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    const-string p0, ""

    .line 93
    .end local p0    # "filePath":Ljava/lang/String;
    .local v0, "index":I
    :cond_0
    :goto_0
    return-object p0

    .line 89
    .end local v0    # "index":I
    .restart local p0    # "filePath":Ljava/lang/String;
    :cond_1
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 90
    .restart local v0    # "index":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 91
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getSha1(Ljava/io/File;)Ljava/lang/String;
    .locals 12
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 97
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 98
    .local v4, "start":J
    const/4 v1, 0x0

    .line 99
    .local v1, "in":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 101
    .local v3, "sha1String":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .end local v1    # "in":Ljava/io/InputStream;
    .local v2, "in":Ljava/io/InputStream;
    :try_start_1
    const-string v6, "SHA-1"

    .line 103
    invoke-static {v2, v6}, Lmiui/security/DigestUtils;->get(Ljava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v6

    .line 102
    invoke-static {v6}, Lmiui/text/ExtraTextUtils;->toHexReadable([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 107
    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    move-object v1, v2

    .line 109
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v1    # "in":Ljava/io/InputStream;
    :goto_0
    const-string v6, "FileUtils"

    const-string v7, "getSha1 for [%s] costs [%d]"

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    return-object v3

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v6, "FileUtils"

    invoke-static {v6, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_2
    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v6

    .end local v1    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v1    # "in":Ljava/io/InputStream;
    goto :goto_2

    .line 104
    .end local v1    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v1    # "in":Ljava/io/InputStream;
    goto :goto_1
.end method

.method public static getSha1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 132
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/gallery/util/FileUtils;->getSha1(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isFileExist(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 248
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isScreenShot(Landroid/net/Uri;)Z
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 270
    if-eqz p0, :cond_0

    .line 271
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "Screenshot"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 274
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method private static mkdirsCustomize(Ljava/io/File;III)Z
    .locals 9
    .param p0, "file"    # Ljava/io/File;
    .param p1, "mode"    # I
    .param p2, "uid"    # I
    .param p3, "gid"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 182
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 183
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    .line 211
    :cond_0
    :goto_0
    return v4

    .line 187
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-static {v6, p1, p2, p3}, Lcom/miui/gallery/util/FileUtils;->mkdirsCustomize(Ljava/io/File;III)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 192
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 193
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 194
    .local v3, "path":Ljava/lang/String;
    invoke-static {v3, p1}, Lcom/miui/gallery/util/FileUtils;->chmod(Ljava/lang/String;I)Z

    move-result v0

    .line 195
    .local v0, "chmod":Z
    invoke-static {v3, p2, p3}, Lcom/miui/gallery/util/FileUtils;->chown(Ljava/lang/String;II)Z

    move-result v1

    .line 196
    .local v1, "chown":Z
    const-string v4, "FileUtils"

    const-string v6, "path %s, chmod %s, chown %s"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v4, v6, v3, v7, v8}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move v4, v5

    .line 197
    goto :goto_0

    .line 198
    .end local v0    # "chmod":Z
    .end local v1    # "chown":Z
    .end local v3    # "path":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/gallery/util/DocumentProviderUtils;->needUseDocumentProvider(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 199
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, p0}, Lcom/miui/gallery/util/DocumentProviderUtils;->getDocumentFileDirectory(Landroid/content/Context;Ljava/io/File;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v2

    .line 200
    .local v2, "documentFile":Landroid/support/v4/provider/DocumentFile;
    if-eqz v2, :cond_0

    .line 203
    invoke-virtual {v2}, Landroid/support/v4/provider/DocumentFile;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 204
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 205
    .restart local v3    # "path":Ljava/lang/String;
    invoke-static {v3, p1}, Lcom/miui/gallery/util/FileUtils;->chmod(Ljava/lang/String;I)Z

    move-result v0

    .line 206
    .restart local v0    # "chmod":Z
    invoke-static {v3, p2, p3}, Lcom/miui/gallery/util/FileUtils;->chown(Ljava/lang/String;II)Z

    move-result v1

    .line 207
    .restart local v1    # "chown":Z
    const-string v4, "FileUtils"

    const-string v6, "path %s, chmod %s, chown %s"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v4, v6, v3, v7, v8}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move v4, v5

    .line 208
    goto :goto_0
.end method

.method public static move(Ljava/io/File;Ljava/io/File;)Z
    .locals 3
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 301
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v0, v1

    .line 312
    :cond_1
    :goto_0
    return v0

    .line 304
    :cond_2
    invoke-static {p0, p1}, Lcom/miui/gallery/util/FileUtils;->renameFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 307
    invoke-static {p0, p1}, Lcom/miui/gallery/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 308
    new-array v2, v0, [Ljava/io/File;

    aput-object p0, v2, v1

    invoke-static {v2}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFile([Ljava/io/File;)I

    goto :goto_0

    :cond_3
    move v0, v1

    .line 312
    goto :goto_0
.end method

.method public static renameFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 13
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "desFile"    # Ljava/io/File;

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 363
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v7

    .line 409
    :goto_0
    return v0

    .line 365
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/util/DocumentProviderUtils;->needUseDocumentProvider(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 366
    invoke-static {p0, p1}, Lcom/miui/gallery/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 367
    new-array v2, v7, [Ljava/io/File;

    aput-object p0, v2, v10

    invoke-static {v2}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFile([Ljava/io/File;)I

    move v0, v7

    .line 368
    goto :goto_0

    .line 372
    :cond_1
    const/4 v1, 0x0

    .line 373
    .local v1, "inChannel":Ljava/nio/channels/FileChannel;
    const/4 v6, 0x0

    .line 374
    .local v6, "outChannel":Ljava/nio/channels/FileChannel;
    const/4 v0, 0x0

    .line 376
    .local v0, "result":Z
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 377
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 378
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    .line 379
    .local v4, "count":J
    const-wide/16 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v8

    .line 380
    .local v8, "transferCount":J
    cmp-long v2, v4, v8

    if-nez v2, :cond_5

    move v0, v7

    .line 381
    :goto_1
    if-nez v0, :cond_2

    .line 382
    const-string v2, "FileUtils"

    const-string/jumbo v3, "transfer error, expect count %s, actual count %s"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v2, v3, v11, v12}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    :cond_2
    if-eqz v1, :cond_3

    .line 390
    :try_start_1
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 395
    :cond_3
    :goto_2
    if-eqz v6, :cond_4

    .line 397
    :try_start_2
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 402
    :cond_4
    :goto_3
    if-eqz v0, :cond_6

    .line 403
    new-array v2, v7, [Ljava/io/File;

    aput-object p0, v2, v10

    invoke-static {v2}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFile([Ljava/io/File;)I

    goto :goto_0

    :cond_5
    move v0, v10

    .line 380
    goto :goto_1

    .line 405
    :cond_6
    new-array v2, v7, [Ljava/io/File;

    aput-object p1, v2, v10

    invoke-static {v2}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFile([Ljava/io/File;)I

    goto :goto_0

    .line 385
    .end local v4    # "count":J
    .end local v8    # "transferCount":J
    :catch_0
    move-exception v2

    .line 388
    if-eqz v1, :cond_7

    .line 390
    :try_start_3
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 395
    :cond_7
    :goto_4
    if-eqz v6, :cond_8

    .line 397
    :try_start_4
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 402
    :cond_8
    :goto_5
    if-eqz v0, :cond_a

    .line 403
    new-array v2, v7, [Ljava/io/File;

    aput-object p0, v2, v10

    invoke-static {v2}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFile([Ljava/io/File;)I

    .end local v0    # "result":Z
    .end local v1    # "inChannel":Ljava/nio/channels/FileChannel;
    .end local v6    # "outChannel":Ljava/nio/channels/FileChannel;
    :cond_9
    :goto_6
    move v0, v10

    .line 409
    goto/16 :goto_0

    .line 405
    .restart local v0    # "result":Z
    .restart local v1    # "inChannel":Ljava/nio/channels/FileChannel;
    .restart local v6    # "outChannel":Ljava/nio/channels/FileChannel;
    :cond_a
    new-array v2, v7, [Ljava/io/File;

    aput-object p1, v2, v10

    invoke-static {v2}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFile([Ljava/io/File;)I

    goto :goto_6

    .line 388
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_b

    .line 390
    :try_start_5
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 395
    :cond_b
    :goto_7
    if-eqz v6, :cond_c

    .line 397
    :try_start_6
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 402
    :cond_c
    :goto_8
    if-eqz v0, :cond_d

    .line 403
    new-array v3, v7, [Ljava/io/File;

    aput-object p0, v3, v10

    invoke-static {v3}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFile([Ljava/io/File;)I

    .line 405
    :goto_9
    throw v2

    :cond_d
    new-array v3, v7, [Ljava/io/File;

    aput-object p1, v3, v10

    invoke-static {v3}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFile([Ljava/io/File;)I

    goto :goto_9

    .line 391
    .restart local v4    # "count":J
    .restart local v8    # "transferCount":J
    :catch_1
    move-exception v2

    goto :goto_2

    .line 398
    :catch_2
    move-exception v2

    goto :goto_3

    .line 391
    .end local v4    # "count":J
    .end local v8    # "transferCount":J
    :catch_3
    move-exception v2

    goto :goto_4

    .line 398
    :catch_4
    move-exception v2

    goto :goto_5

    .line 391
    :catch_5
    move-exception v3

    goto :goto_7

    .line 398
    :catch_6
    move-exception v3

    goto :goto_8
.end method
