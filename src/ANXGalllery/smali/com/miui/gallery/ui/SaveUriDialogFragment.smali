.class public Lcom/miui/gallery/ui/SaveUriDialogFragment;
.super Lcom/miui/gallery/widget/GalleryDialogFragment;
.source "SaveUriDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/SaveUriDialogFragment$OnCompleteListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/miui/gallery/ui/SaveUriDialogFragment$OnCompleteListener;

.field private mProgressDialog:Lmiui/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;-><init>()V

    .line 214
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/SaveUriDialogFragment;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/SaveUriDialogFragment;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/SaveUriDialogFragment;->saveInternal(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/SaveUriDialogFragment;)Lcom/miui/gallery/ui/SaveUriDialogFragment$OnCompleteListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/SaveUriDialogFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/gallery/ui/SaveUriDialogFragment;->mListener:Lcom/miui/gallery/ui/SaveUriDialogFragment$OnCompleteListener;

    return-object v0
.end method

.method private static generateFileForSaving(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 14
    .param p0, "directory"    # Ljava/lang/String;
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 181
    const-string v5, ""

    .line 182
    .local v5, "filePath":Ljava/lang/String;
    const-string/jumbo v0, "yyyyMMdd_kkmmss"

    .line 183
    .local v0, "DATETIME_FORMAT_STR":Ljava/lang/String;
    const/4 v7, 0x0

    .line 186
    .local v7, "index":I
    const/4 v3, 0x0

    .line 188
    .local v3, "file":Ljava/io/File;
    :goto_0
    new-instance v8, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v8, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 189
    .local v8, "now":Ljava/util/Date;
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v9, "yyyyMMdd_kkmmss"

    invoke-direct {v6, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 190
    .local v6, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v6, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "dateTimeString":Ljava/lang/String;
    const-string v9, "SAVE_%s"

    new-array v10, v13, [Ljava/lang/Object;

    aput-object v1, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 192
    .local v4, "fileName":Ljava/lang/String;
    const-string v9, "%s/%s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object p0, v10, v12

    aput-object v4, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 193
    if-lez v7, :cond_0

    .line 194
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 198
    :goto_1
    new-instance v3, Ljava/io/File;

    .end local v3    # "file":Ljava/io/File;
    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v3    # "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 206
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .end local v3    # "file":Ljava/io/File;
    :goto_2
    return-object v3

    .line 196
    .restart local v3    # "file":Ljava/io/File;
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 201
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 202
    goto :goto_0

    .line 207
    :catch_0
    move-exception v2

    .line 208
    .local v2, "e":Ljava/io/IOException;
    const-string v9, "SaveUriDialogFragment"

    const-string v10, "generateFileForSaving() failed %s %s"

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 209
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private getMimeType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 169
    const/4 v1, 0x0

    .line 170
    .local v1, "type":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "extension":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 172
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 174
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 175
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 177
    :cond_1
    return-object v1
.end method

.method private save(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 84
    if-nez p1, :cond_1

    .line 85
    iget-object v0, p0, Lcom/miui/gallery/ui/SaveUriDialogFragment;->mListener:Lcom/miui/gallery/ui/SaveUriDialogFragment$OnCompleteListener;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/miui/gallery/ui/SaveUriDialogFragment;->mListener:Lcom/miui/gallery/ui/SaveUriDialogFragment$OnCompleteListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/miui/gallery/ui/SaveUriDialogFragment$OnCompleteListener;->onComplete(Ljava/lang/String;)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/ui/SaveUriDialogFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/ui/SaveUriDialogFragment$1;-><init>(Lcom/miui/gallery/ui/SaveUriDialogFragment;Landroid/net/Uri;)V

    new-instance v2, Lcom/miui/gallery/ui/SaveUriDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/miui/gallery/ui/SaveUriDialogFragment$2;-><init>(Lcom/miui/gallery/ui/SaveUriDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/threadpool/FutureListener;)Lcom/miui/gallery/threadpool/Future;

    goto :goto_0
.end method

.method private saveInternal(Landroid/net/Uri;)Ljava/lang/String;
    .locals 14
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v10, 0x0

    .line 116
    const/4 v7, 0x0

    .line 117
    .local v7, "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    const/4 v4, 0x0

    .line 118
    .local v4, "inputStream":Ljava/io/FileInputStream;
    const/4 v8, 0x0

    .line 120
    .local v8, "saveFile":Ljava/io/File;
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "r"

    invoke-virtual {v11, p1, v12}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    .line 121
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 124
    .local v3, "fd":Ljava/io/FileDescriptor;
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/SaveUriDialogFragment;->getMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 125
    .local v6, "mimeType":Ljava/lang/String;
    invoke-static {v6}, Lmiui/net/MimeUtils;->guessExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "extension":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 128
    const-string v11, "SaveUriDialogFragment"

    const-string v12, "fail to save [%s] because of can\'t get right file extension"

    invoke-static {v11, v12, p1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    invoke-static {v7}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 163
    invoke-static {v4}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    move-object v9, v10

    .line 165
    .end local v2    # "extension":Ljava/lang/String;
    .end local v3    # "fd":Ljava/io/FileDescriptor;
    .end local v6    # "mimeType":Ljava/lang/String;
    :goto_0
    return-object v9

    .line 134
    .restart local v2    # "extension":Ljava/lang/String;
    .restart local v3    # "fd":Ljava/io/FileDescriptor;
    .restart local v6    # "mimeType":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v11, "DCIM/Camera"

    invoke-static {v11}, Lcom/miui/gallery/util/StorageUtils;->getSafePathInPriorStorageForUnadapted(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "destFolder":Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/miui/gallery/util/FileUtils;->createFolder(Ljava/io/File;Z)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v11

    if-nez v11, :cond_1

    .line 162
    invoke-static {v7}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 163
    invoke-static {v4}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    move-object v9, v10

    goto :goto_0

    .line 141
    :cond_1
    :try_start_2
    invoke-static {v0, v2}, Lcom/miui/gallery/ui/SaveUriDialogFragment;->generateFileForSaving(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .line 142
    if-nez v8, :cond_2

    .line 162
    invoke-static {v7}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 163
    invoke-static {v4}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    move-object v9, v10

    goto :goto_0

    .line 146
    :cond_2
    :try_start_3
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 147
    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .local v5, "inputStream":Ljava/io/FileInputStream;
    :try_start_4
    invoke-static {v5, v8}, Lcom/miui/gallery/util/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v11

    if-nez v11, :cond_3

    .line 162
    invoke-static {v7}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 163
    invoke-static {v5}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    move-object v4, v5

    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    move-object v9, v10

    goto :goto_0

    .line 150
    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "inputStream":Ljava/io/FileInputStream;
    :cond_3
    :try_start_5
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 151
    .local v9, "savePath":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/gallery/ui/SaveUriDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v9, v12}, Lcom/miui/gallery/scanner/MediaScannerUtil;->scanSingleFile(Landroid/content/Context;Ljava/lang/String;I)V

    .line 152
    const/4 v11, 0x1

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/io/File;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    invoke-static {v11, v12}, Lcom/miui/gallery/util/MediaFileUtils;->triggerMediaScan(Z[Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 162
    invoke-static {v7}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 163
    invoke-static {v5}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    move-object v4, v5

    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_0

    .line 154
    .end local v0    # "destFolder":Ljava/lang/String;
    .end local v2    # "extension":Ljava/lang/String;
    .end local v3    # "fd":Ljava/io/FileDescriptor;
    .end local v6    # "mimeType":Ljava/lang/String;
    .end local v9    # "savePath":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_6
    const-string v11, "SaveUriDialogFragment"

    const-string v12, "fail to open %s %s"

    invoke-static {v11, v12, p1, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 162
    invoke-static {v7}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 163
    invoke-static {v4}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    move-object v9, v10

    .line 165
    goto :goto_0

    .line 156
    :catch_1
    move-exception v1

    .line 157
    .local v1, "e":Ljava/lang/Exception;
    :goto_3
    if-eqz v8, :cond_4

    .line 158
    :try_start_7
    sget-object v11, Lcom/miui/gallery/util/MediaFileUtils$FileType;->TEMP:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/io/File;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    invoke-static {v11, v12}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/io/File;)I

    .line 160
    :cond_4
    const-string v11, "SaveUriDialogFragment"

    const-string v12, "fail to save %s %s"

    invoke-static {v11, v12, p1, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 162
    invoke-static {v7}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 163
    invoke-static {v4}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_2

    .line 162
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    :goto_4
    invoke-static {v7}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 163
    invoke-static {v4}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v10

    .line 162
    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .restart local v0    # "destFolder":Ljava/lang/String;
    .restart local v2    # "extension":Ljava/lang/String;
    .restart local v3    # "fd":Ljava/io/FileDescriptor;
    .restart local v5    # "inputStream":Ljava/io/FileInputStream;
    .restart local v6    # "mimeType":Ljava/lang/String;
    :catchall_1
    move-exception v10

    move-object v4, v5

    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 156
    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "inputStream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    move-object v4, v5

    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 154
    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "inputStream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v1

    move-object v4, v5

    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static show(Landroid/app/Activity;Landroid/net/Uri;Lcom/miui/gallery/ui/SaveUriDialogFragment$OnCompleteListener;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "listener"    # Lcom/miui/gallery/ui/SaveUriDialogFragment$OnCompleteListener;

    .prologue
    .line 45
    new-instance v1, Lcom/miui/gallery/ui/SaveUriDialogFragment;

    invoke-direct {v1}, Lcom/miui/gallery/ui/SaveUriDialogFragment;-><init>()V

    .line 46
    .local v1, "dialog":Lcom/miui/gallery/ui/SaveUriDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 47
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "key_uri"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 48
    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/SaveUriDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {v1, p2}, Lcom/miui/gallery/ui/SaveUriDialogFragment;->setOnCompleteListener(Lcom/miui/gallery/ui/SaveUriDialogFragment$OnCompleteListener;)V

    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "SaveUriDialogFragment"

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/ui/SaveUriDialogFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 51
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/miui/gallery/ui/SaveUriDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/SaveUriDialogFragment;->save(Landroid/net/Uri;)V

    .line 75
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/SaveUriDialogFragment;->setCancelable(Z)V

    .line 61
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/miui/gallery/ui/SaveUriDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0}, Lcom/miui/gallery/ui/SaveUriDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c001e

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lmiui/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lmiui/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/SaveUriDialogFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    .line 68
    iget-object v0, p0, Lcom/miui/gallery/ui/SaveUriDialogFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/SaveUriDialogFragment;->setOnCompleteListener(Lcom/miui/gallery/ui/SaveUriDialogFragment$OnCompleteListener;)V

    .line 80
    invoke-super {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onDestroy()V

    .line 81
    return-void
.end method

.method public setOnCompleteListener(Lcom/miui/gallery/ui/SaveUriDialogFragment$OnCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/ui/SaveUriDialogFragment$OnCompleteListener;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/miui/gallery/ui/SaveUriDialogFragment;->mListener:Lcom/miui/gallery/ui/SaveUriDialogFragment$OnCompleteListener;

    .line 55
    return-void
.end method
