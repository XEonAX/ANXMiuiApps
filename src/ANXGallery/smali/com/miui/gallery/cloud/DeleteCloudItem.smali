.class public Lcom/miui/gallery/cloud/DeleteCloudItem;
.super Lcom/miui/gallery/cloud/RequestOperationBase;
.source "DeleteCloudItem.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/RequestOperationBase;-><init>(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method private static deleteDownloadAndTempFiles(Lcom/miui/gallery/util/MediaFileUtils$FileType;Ljava/lang/String;)V
    .locals 5
    .param p0, "fileType"    # Lcom/miui/gallery/util/MediaFileUtils$FileType;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 241
    invoke-static {p1}, Lcom/miui/gallery/cloud/CloudUtils;->isFileInCloudDB(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    :goto_0
    return-void

    .line 245
    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    aput-object p1, v0, v4

    invoke-static {p0, v0}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/lang/String;)I

    .line 247
    sget-object v0, Lcom/miui/gallery/util/MediaFileUtils$FileType;->TEMP:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".temp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static deleteOriginalFileAndThumbnail(Lcom/miui/gallery/data/DBImage;)V
    .locals 14
    .param p0, "dbImage"    # Lcom/miui/gallery/data/DBImage;

    .prologue
    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v0, "deleteRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/util/deleterecorder/DeleteRecord;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getLocalFile()Ljava/lang/String;

    move-result-object v6

    .line 175
    .local v6, "localFile":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getThumbnailFile()Ljava/lang/String;

    move-result-object v8

    .line 176
    .local v8, "thumbnailFile":Ljava/lang/String;
    invoke-static {v6}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getSize()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-nez v9, :cond_0

    .line 177
    sget-object v9, Lcom/miui/gallery/util/MediaFileUtils$FileType;->ORIGINAL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    invoke-static {v9, v10}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/lang/String;)I

    .line 178
    new-instance v9, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;

    const/4 v10, 0x1

    const-string v11, "DeleteCloudItem"

    invoke-direct {v9, v10, v6, v11}, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static {v6, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 181
    sget-object v9, Lcom/miui/gallery/util/MediaFileUtils$FileType;->THUMBNAIL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v8, v10, v11

    invoke-static {v9, v10}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/lang/String;)I

    .line 182
    new-instance v9, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;

    const/4 v10, 0x1

    const-string v11, "DeleteCloudItem"

    invoke-direct {v9, v10, v8, v11}, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_1
    const/4 v2, 0x0

    .line 186
    .local v2, "fileNameOfLocalStorage":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "fileName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->isShareItem()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 188
    invoke-static {p0, v1}, Lcom/miui/gallery/cloud/DownloadPathHelper;->getDownloadFileNameNotSecret(Lcom/miui/gallery/data/DBImage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 194
    :goto_0
    invoke-static {p0}, Lcom/miui/gallery/cloud/DownloadPathHelper;->getDownloadFolderRelativePath(Lcom/miui/gallery/data/DBImage;)Ljava/lang/String;

    move-result-object v5

    .line 196
    .local v5, "folderRelativePath":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v5}, Lcom/miui/gallery/util/StorageUtils;->getPathsInExternalStorage(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 195
    invoke-static {v9, v2}, Lcom/miui/gallery/cloud/DownloadPathHelper;->getAllFilePathForRead([Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 198
    .local v4, "filePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 199
    .local v3, "filePath":Ljava/lang/String;
    invoke-static {v3}, Lcom/miui/gallery/util/ExifUtil;->getUserCommentSha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 200
    .local v7, "sha1":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 201
    invoke-static {v3}, Lcom/miui/gallery/util/FileUtils;->getSha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 203
    :cond_3
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getSha1()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 204
    sget-object v10, Lcom/miui/gallery/util/MediaFileUtils$FileType;->ORIGINAL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    invoke-static {v10, v11}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/lang/String;)I

    .line 205
    new-instance v10, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;

    const/4 v11, 0x1

    const-string v12, "DeleteCloudItem"

    invoke-direct {v10, v11, v3, v12}, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 191
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v4    # "filePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "folderRelativePath":Ljava/lang/String;
    .end local v7    # "sha1":Ljava/lang/String;
    :cond_4
    move-object v2, v1

    goto :goto_0

    .line 208
    .restart local v4    # "filePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "folderRelativePath":Ljava/lang/String;
    :cond_5
    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 209
    invoke-static {v0}, Lcom/miui/gallery/util/deleterecorder/DeleteRecorder;->record(Ljava/util/Collection;)I

    .line 211
    :cond_6
    return-void
.end method

.method private static tryDeleteDirtyItem(Lcom/miui/gallery/data/DBImage;)Z
    .locals 7
    .param p0, "dbImage"    # Lcom/miui/gallery/data/DBImage;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 123
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getBaseUri()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "_id = ? AND serverId IS NULL "

    new-array v5, v1, [Ljava/lang/String;

    .line 126
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 123
    invoke-static {v3, v4, v5}, Lcom/miui/gallery/util/GalleryUtils;->safeDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 128
    .local v0, "rows":I
    invoke-static {p0}, Lcom/miui/gallery/util/UbiFocusUtils;->safeDeleteSubUbi(Lcom/miui/gallery/data/DBImage;)V

    .line 129
    if-lez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static updateForDeleteOrPurgedGroupOnLocal(Landroid/content/Context;Lcom/miui/gallery/data/DBImage;Lorg/json/JSONObject;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cloud"    # Lcom/miui/gallery/data/DBImage;
    .param p2, "schemaJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 225
    invoke-static {p2}, Lcom/miui/gallery/cloud/CloudUtils;->getContentValuesForUploadDeletePurged(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v0

    .line 226
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "serverStatus"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 229
    const-string v1, "serverStatus"

    const-string v2, "deleted"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_0
    sget-object v1, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 232
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 231
    invoke-static {v1, v0, v2, v3}, Lcom/miui/gallery/util/GalleryUtils;->safeUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 236
    return-void
.end method

.method public static updateForDeleteOrPurgedOnLocal(Landroid/net/Uri;Landroid/content/Context;Lcom/miui/gallery/data/DBImage;Lorg/json/JSONObject;)V
    .locals 8
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cloud"    # Lcom/miui/gallery/data/DBImage;
    .param p3, "schemaJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-virtual {p2}, Lcom/miui/gallery/data/DBImage;->getServerType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 136
    invoke-virtual {p2}, Lcom/miui/gallery/data/DBImage;->getServerType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 138
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/miui/gallery/cloud/DeleteCloudItem;->updateForDeleteOrPurgedOnLocalNotDeleteFile(Landroid/net/Uri;Landroid/content/Context;Lcom/miui/gallery/data/DBImage;Lorg/json/JSONObject;)V

    .line 139
    invoke-static {}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->getInstance()Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    move-result-object v2

    invoke-virtual {p2}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->onImageDelete(Ljava/lang/String;)V

    .line 145
    invoke-static {p1}, Lcom/miui/gallery/util/StorageUtils;->getMicroThumbnailDirectories(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 146
    .local v0, "onePath":Ljava/lang/String;
    sget-object v5, Lcom/miui/gallery/util/MediaFileUtils$FileType;->MICRO_THUMBNAIL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 147
    invoke-virtual {p2}, Lcom/miui/gallery/data/DBImage;->getSha1FileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 146
    invoke-static {v5, v6}, Lcom/miui/gallery/cloud/DeleteCloudItem;->deleteDownloadAndTempFiles(Lcom/miui/gallery/util/MediaFileUtils$FileType;Ljava/lang/String;)V

    .line 145
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    .end local v0    # "onePath":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Storage;->getCloudThumbnailFilePath()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 151
    .restart local v0    # "onePath":Ljava/lang/String;
    sget-object v4, Lcom/miui/gallery/util/MediaFileUtils$FileType;->THUMBNAIL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 152
    invoke-virtual {p2}, Lcom/miui/gallery/data/DBImage;->getSha1FileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 151
    invoke-static {v4, v5}, Lcom/miui/gallery/cloud/DeleteCloudItem;->deleteDownloadAndTempFiles(Lcom/miui/gallery/util/MediaFileUtils$FileType;Ljava/lang/String;)V

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 155
    .end local v0    # "onePath":Ljava/lang/String;
    :cond_2
    invoke-static {p2}, Lcom/miui/gallery/cloud/DeleteCloudItem;->deleteOriginalFileAndThumbnail(Lcom/miui/gallery/data/DBImage;)V

    .line 168
    :cond_3
    :goto_2
    return-void

    .line 160
    :cond_4
    invoke-virtual {p2}, Lcom/miui/gallery/data/DBImage;->getServerType()I

    move-result v1

    if-nez v1, :cond_3

    .line 161
    invoke-virtual {p2}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/miui/gallery/cloud/CloudUtils;->hasCreateCopyMoveImageByGroupId(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 163
    invoke-virtual {p2}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/cloud/CreateGroupItem;->recreateGroup(Ljava/lang/String;)V

    goto :goto_2

    .line 165
    :cond_5
    invoke-static {p1, p2, p3}, Lcom/miui/gallery/cloud/DeleteCloudItem;->updateForDeleteOrPurgedGroupOnLocal(Landroid/content/Context;Lcom/miui/gallery/data/DBImage;Lorg/json/JSONObject;)V

    goto :goto_2
.end method

.method public static updateForDeleteOrPurgedOnLocalNotDeleteFile(Landroid/net/Uri;Landroid/content/Context;Lcom/miui/gallery/data/DBImage;Lorg/json/JSONObject;)V
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cloud"    # Lcom/miui/gallery/data/DBImage;
    .param p3, "schemaJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 215
    invoke-static {p3}, Lcom/miui/gallery/cloud/CloudUtils;->getContentValuesForUploadDeletePurged(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v0

    .line 216
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "thumbnailFile"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 217
    const-string v1, "microthumbfile"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/miui/gallery/util/GalleryUtils;->safeUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 220
    invoke-static {p2}, Lcom/miui/gallery/util/UbiFocusUtils;->safeDeleteSubUbi(Lcom/miui/gallery/data/DBImage;)V

    .line 221
    return-void
.end method


# virtual methods
.method protected buildRequest(Landroid/accounts/Account;Lcom/miui/gallery/cloud/RequestItemBase;)Lcom/miui/gallery/cloud/RequestOperationBase$Request;
    .locals 13
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "requestItem"    # Lcom/miui/gallery/cloud/RequestItemBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 60
    move-object v5, p2

    check-cast v5, Lcom/miui/gallery/cloud/RequestCloudItem;

    .line 62
    .local v5, "requestCloudItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    new-instance v0, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    invoke-direct {v0}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;-><init>()V

    .line 63
    .local v0, "builder":Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;
    iget-object v9, v5, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v9}, Lcom/miui/gallery/data/DBImage;->isItemType()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 64
    iget-object v1, v5, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    .line 65
    .local v1, "dbCloud":Lcom/miui/gallery/data/DBImage;
    invoke-virtual {v1}, Lcom/miui/gallery/data/DBImage;->getRequestId()Ljava/lang/String;

    move-result-object v6

    .line 66
    .local v6, "requestId":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 67
    const/4 v9, 0x0

    .line 97
    .end local v1    # "dbCloud":Lcom/miui/gallery/data/DBImage;
    :goto_0
    return-object v9

    .line 69
    .restart local v1    # "dbCloud":Lcom/miui/gallery/data/DBImage;
    :cond_0
    invoke-virtual {v1}, Lcom/miui/gallery/data/DBImage;->isShareItem()Z

    move-result v9

    invoke-virtual {v1}, Lcom/miui/gallery/data/DBImage;->isVideoType()Z

    move-result v10

    invoke-static {v9, v10}, Lcom/miui/gallery/cloud/CloudUrlProvider;->getUrlProvider(ZZ)Lcom/miui/gallery/cloud/CloudUrlProvider;

    move-result-object v8

    .line 70
    .local v8, "urlProvider":Lcom/miui/gallery/cloud/CloudUrlProvider;
    iget-object v9, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v8, v9, v6}, Lcom/miui/gallery/cloud/CloudUrlProvider;->getDeleteUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "deleteUrl":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v4, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    invoke-virtual {v1}, Lcom/miui/gallery/data/DBImage;->isShareItem()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 73
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v10, "sharedGalleryId"

    invoke-direct {v9, v10, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_1
    invoke-virtual {v0, v2}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setUrl(Ljava/lang/String;)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v9

    const/4 v10, 0x2

    .line 76
    invoke-virtual {v9, v10}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setMethod(I)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v9

    .line 77
    invoke-virtual {v9, v4}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setParams(Ljava/util/List;)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v9

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    const-string v11, "content"

    iget-object v12, v5, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    .line 78
    invoke-virtual {v12}, Lcom/miui/gallery/data/DBImage;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setPostData(Lorg/json/JSONObject;)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v9

    iget v10, p2, Lcom/miui/gallery/cloud/RequestItemBase;->otherRetryTimes:I

    .line 79
    invoke-virtual {v9, v10}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setRetryTimes(I)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v9

    const/4 v10, 0x0

    .line 80
    invoke-virtual {v9, v10}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setNeedReRequest(Z)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    .line 97
    .end local v1    # "dbCloud":Lcom/miui/gallery/data/DBImage;
    .end local v4    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .end local v8    # "urlProvider":Lcom/miui/gallery/cloud/CloudUrlProvider;
    :goto_1
    invoke-virtual {v0}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->build()Lcom/miui/gallery/cloud/RequestOperationBase$Request;

    move-result-object v9

    goto :goto_0

    .line 82
    .end local v2    # "deleteUrl":Ljava/lang/String;
    .end local v6    # "requestId":Ljava/lang/String;
    :cond_2
    iget-object v9, v5, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v9}, Lcom/miui/gallery/data/DBImage;->getServerId()Ljava/lang/String;

    move-result-object v6

    .line 83
    .restart local v6    # "requestId":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 84
    const/4 v9, 0x0

    goto :goto_0

    .line 86
    :cond_3
    invoke-static {v6}, Lcom/miui/gallery/cloud/HostManager$OwnerAlbum;->getDeleteAlbumUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 87
    .restart local v2    # "deleteUrl":Ljava/lang/String;
    iget-object v9, v5, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v9}, Lcom/miui/gallery/data/DBImage;->getServerTag()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 88
    .local v7, "serverTag":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v3, "parameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v10, "tag"

    invoke-direct {v9, v10, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {v0, v2}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setUrl(Ljava/lang/String;)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v9

    const/4 v10, 0x2

    .line 91
    invoke-virtual {v9, v10}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setMethod(I)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v9

    .line 92
    invoke-virtual {v9, v3}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setParams(Ljava/util/List;)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v9

    iget v10, p2, Lcom/miui/gallery/cloud/RequestItemBase;->otherRetryTimes:I

    .line 93
    invoke-virtual {v9, v10}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setRetryTimes(I)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v9

    const/4 v10, 0x0

    .line 94
    invoke-virtual {v9, v10}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setNeedReRequest(Z)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    goto :goto_1
.end method

.method protected onPreRequest(Lcom/miui/gallery/cloud/RequestItemBase;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    .locals 4
    .param p1, "requestItem"    # Lcom/miui/gallery/cloud/RequestItemBase;

    .prologue
    .line 45
    instance-of v1, p1, Lcom/miui/gallery/cloud/RequestCloudItem;

    if-nez v1, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/DeleteCloudItem;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "item is not instanceof RequestCloudItem."

    invoke-static {v1, v2}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    sget-object v1, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 55
    :goto_0
    return-object v1

    :cond_0
    move-object v0, p1

    .line 50
    check-cast v0, Lcom/miui/gallery/cloud/RequestCloudItem;

    .line 51
    .local v0, "requestCloudItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    iget-object v1, v0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-static {v1}, Lcom/miui/gallery/cloud/DeleteCloudItem;->tryDeleteDirtyItem(Lcom/miui/gallery/data/DBImage;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/DeleteCloudItem;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "serverId is null means item is deleted by user, delete this dirty record: %s"

    iget-object v3, v0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v3}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    sget-object v1, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    goto :goto_0

    .line 55
    :cond_1
    invoke-super {p0, p1}, Lcom/miui/gallery/cloud/RequestOperationBase;->onPreRequest(Lcom/miui/gallery/cloud/RequestItemBase;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-result-object v1

    goto :goto_0
.end method

.method protected onRequestError(Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;Lcom/miui/gallery/cloud/RequestItemBase;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "result"    # Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    .param p2, "requestItem"    # Lcom/miui/gallery/cloud/RequestItemBase;
    .param p3, "response"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 115
    sget-object v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->AlbumNotExist:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    if-eq p1, v0, :cond_0

    .line 116
    iget v0, p2, Lcom/miui/gallery/cloud/RequestItemBase;->otherRetryTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/miui/gallery/cloud/RequestItemBase;->otherRetryTimes:I

    .line 118
    :cond_0
    return-void
.end method

.method protected onRequestSuccess(Lcom/miui/gallery/cloud/RequestItemBase;Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "requestItem"    # Lcom/miui/gallery/cloud/RequestItemBase;
    .param p2, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 102
    move-object v0, p1

    check-cast v0, Lcom/miui/gallery/cloud/RequestCloudItem;

    .line 104
    .local v0, "requestCloudItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sGetCloudGalleryRecyclebinFull()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/miui/gallery/util/deprecated/Preference;->sSetCloudGalleryRecyclebinFull(Z)V

    .line 107
    :cond_0
    iget-object v1, v0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v1}, Lcom/miui/gallery/data/DBImage;->getBaseUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/cloud/DeleteCloudItem;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-static {v1, v2, v3, p2}, Lcom/miui/gallery/cloud/DeleteCloudItem;->updateForDeleteOrPurgedOnLocal(Landroid/net/Uri;Landroid/content/Context;Lcom/miui/gallery/data/DBImage;Lorg/json/JSONObject;)V

    .line 109
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/DeleteCloudItem;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Delete item success: %s, type: %s"

    iget-object v3, v0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v3}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v4}, Lcom/miui/gallery/data/DBImage;->getServerType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 111
    return-void
.end method
