.class public Lcom/miui/gallery/util/BaseDocumentProviderUtils;
.super Ljava/lang/Object;
.source "BaseDocumentProviderUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/BaseDocumentProviderUtils$WriteHandler;
    }
.end annotation


# direct methods
.method private static findFileIgnoreCase(Landroid/support/v4/provider/DocumentFile;Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;
    .locals 5
    .param p0, "rootDoc"    # Landroid/support/v4/provider/DocumentFile;
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-virtual {p0}, Landroid/support/v4/provider/DocumentFile;->listFiles()[Landroid/support/v4/provider/DocumentFile;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 151
    .local v0, "doc":Landroid/support/v4/provider/DocumentFile;
    invoke-virtual {v0}, Landroid/support/v4/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 155
    .end local v0    # "doc":Landroid/support/v4/provider/DocumentFile;
    :goto_1
    return-object v0

    .line 150
    .restart local v0    # "doc":Landroid/support/v4/provider/DocumentFile;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    .end local v0    # "doc":Landroid/support/v4/provider/DocumentFile;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getDocumentFile(Landroid/content/Context;Ljava/io/File;)Landroid/support/v4/provider/DocumentFile;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/miui/gallery/util/BaseDocumentProviderUtils;->getDocumentFileOrDir(Landroid/content/Context;Ljava/io/File;Z)Landroid/support/v4/provider/DocumentFile;

    move-result-object v0

    return-object v0
.end method

.method public static getDocumentFileDirectory(Landroid/content/Context;Ljava/io/File;)Landroid/support/v4/provider/DocumentFile;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 49
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/miui/gallery/util/BaseDocumentProviderUtils;->getDocumentFileOrDir(Landroid/content/Context;Ljava/io/File;Z)Landroid/support/v4/provider/DocumentFile;

    move-result-object v0

    return-object v0
.end method

.method private static getDocumentFileOrDir(Landroid/content/Context;Ljava/io/File;Z)Landroid/support/v4/provider/DocumentFile;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "isDir"    # Z

    .prologue
    .line 98
    if-nez p0, :cond_1

    .line 99
    const-string v11, "BaseDocumentProviderUtils"

    const-string v12, "getDocumentFileOrDir context null"

    invoke-static {v11, v12}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/4 v10, 0x0

    .line 146
    :cond_0
    :goto_0
    return-object v10

    .line 102
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/miui/gallery/util/StorageUtils;->getVolumePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "baseFolder":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 104
    const-string v11, "BaseDocumentProviderUtils"

    const-string v12, "getDocumentFileOrDir basefolder null"

    invoke-static {v11, v12}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const/4 v10, 0x0

    goto :goto_0

    .line 107
    :cond_2
    const/4 v5, 0x0

    .line 109
    .local v5, "originalDirectory":Z
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/miui/gallery/util/StorageUtils;->getRelativePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 110
    .local v8, "relativePath":Ljava/lang/String;
    sget-object v11, Lcom/miui/gallery/util/StorageUtils;->KEY_FOR_EMPTY_RELATIVE_PATH:Ljava/lang/String;

    if-ne v8, v11, :cond_3

    .line 111
    const/4 v5, 0x1

    .line 113
    :cond_3
    invoke-static {v0}, Lcom/miui/gallery/preference/BaseGalleryPreferences$BaseDocumentProvider;->getUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 114
    .local v9, "uri":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 115
    const/4 v10, 0x0

    goto :goto_0

    .line 117
    :cond_4
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 119
    .local v6, "parse":Landroid/net/Uri;
    invoke-static {p0, v6}, Landroid/support/v4/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v10

    .line 120
    .local v10, "volumeDocument":Landroid/support/v4/provider/DocumentFile;
    if-nez v5, :cond_0

    .line 124
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/miui/gallery/util/BaseFileMimeUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, "mimeType":Ljava/lang/String;
    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 128
    .local v7, "parts":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    :try_start_0
    array-length v11, v7

    if-ge v2, v11, :cond_0

    .line 129
    aget-object v11, v7, v2

    invoke-static {v10, v11}, Lcom/miui/gallery/util/BaseDocumentProviderUtils;->findFileIgnoreCase(Landroid/support/v4/provider/DocumentFile;Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v4

    .line 130
    .local v4, "nextDocument":Landroid/support/v4/provider/DocumentFile;
    if-nez v4, :cond_7

    .line 131
    array-length v11, v7

    add-int/lit8 v11, v11, -0x1

    if-lt v2, v11, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-nez v11, :cond_5

    if-eqz p2, :cond_6

    .line 132
    :cond_5
    aget-object v11, v7, v2

    invoke-virtual {v10, v11}, Landroid/support/v4/provider/DocumentFile;->createDirectory(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v4

    .line 133
    if-nez v4, :cond_7

    .line 134
    const/4 v10, 0x0

    goto :goto_0

    .line 137
    :cond_6
    aget-object v11, v7, v2

    invoke-virtual {v10, v3, v11}, Landroid/support/v4/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 140
    :cond_7
    move-object v10, v4

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 142
    .end local v4    # "nextDocument":Landroid/support/v4/provider/DocumentFile;
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/Exception;
    const-string v11, "BaseDocumentProviderUtils"

    invoke-static {v11, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public static needRequestExternalSDCardPermission(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 28
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-ge v2, v3, :cond_1

    .line 41
    :cond_0
    :goto_0
    return v1

    .line 32
    :cond_1
    invoke-static {p0}, Lcom/miui/gallery/util/StorageUtils;->hasExternalSDCard(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    invoke-static {}, Lcom/miui/gallery/preference/BaseGalleryPreferences$BaseDocumentProvider;->getExternalSDCardUri()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "uri":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static needUseDocumentProvider(Ljava/lang/String;)Z
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lcom/miui/gallery/util/StorageUtils;->isInSecondaryStorage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static openFileDescriptor(Landroid/content/Context;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 53
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-object v2

    .line 57
    :cond_1
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v3}, Lcom/miui/gallery/util/BaseDocumentProviderUtils;->getDocumentFile(Landroid/content/Context;Ljava/io/File;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v0

    .line 58
    .local v0, "documentFile":Landroid/support/v4/provider/DocumentFile;
    if-nez v0, :cond_2

    .line 59
    const-string v3, "BaseDocumentProviderUtils"

    const-string v4, "Failed to get document for file %s"

    invoke-static {v3, v4, p1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    .end local v0    # "documentFile":Landroid/support/v4/provider/DocumentFile;
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "BaseDocumentProviderUtils"

    const-string v4, "Failed to get file descriptor for %s, %s"

    invoke-static {v3, v4, p1, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 62
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "documentFile":Landroid/support/v4/provider/DocumentFile;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v0}, Landroid/support/v4/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v4

    const-string v5, "rw"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0
.end method

.method public static safeWriteFile(Ljava/lang/String;Lcom/miui/gallery/util/BaseDocumentProviderUtils$WriteHandler;)Ljava/lang/Object;
    .locals 8
    .param p0, "absoluteFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/util/BaseDocumentProviderUtils$WriteHandler",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p1, "writerHandler":Lcom/miui/gallery/util/BaseDocumentProviderUtils$WriteHandler;, "Lcom/miui/gallery/util/BaseDocumentProviderUtils$WriteHandler<TT;>;"
    const/4 v5, 0x0

    .line 70
    const/4 v4, 0x0

    .line 71
    .local v4, "pfd":Landroid/os/ParcelFileDescriptor;
    const/4 v2, 0x0

    .line 72
    .local v2, "out":Ljava/io/FileOutputStream;
    invoke-static {}, Lcom/miui/gallery/util/StaticContext;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 74
    .local v0, "context":Landroid/content/Context;
    :try_start_0
    invoke-static {p0}, Lcom/miui/gallery/util/BaseDocumentProviderUtils;->needUseDocumentProvider(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 75
    invoke-static {v0, p0}, Lcom/miui/gallery/util/BaseDocumentProviderUtils;->openFileDescriptor(Landroid/content/Context;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 76
    if-nez v4, :cond_0

    .line 87
    invoke-static {v2}, Lcom/miui/gallery/util/BaseMiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 88
    invoke-static {v4}, Lcom/miui/gallery/util/BaseMiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 90
    :goto_0
    return-object v5

    .line 79
    :cond_0
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 83
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_1
    invoke-interface {p1, v2}, Lcom/miui/gallery/util/BaseDocumentProviderUtils$WriteHandler;->handle(Ljava/io/FileOutputStream;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 87
    invoke-static {v2}, Lcom/miui/gallery/util/BaseMiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 88
    invoke-static {v4}, Lcom/miui/gallery/util/BaseMiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 81
    :cond_1
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 84
    :catch_0
    move-exception v1

    .line 85
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v6, "BaseDocumentProviderUtils"

    const-string v7, "Failed to write file: %s"

    invoke-static {v6, v7, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 87
    invoke-static {v2}, Lcom/miui/gallery/util/BaseMiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 88
    invoke-static {v4}, Lcom/miui/gallery/util/BaseMiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 87
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-static {v2}, Lcom/miui/gallery/util/BaseMiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 88
    invoke-static {v4}, Lcom/miui/gallery/util/BaseMiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v5
.end method
