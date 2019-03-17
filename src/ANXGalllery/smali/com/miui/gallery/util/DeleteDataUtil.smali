.class public Lcom/miui/gallery/util/DeleteDataUtil;
.super Ljava/lang/Object;
.source "DeleteDataUtil.java"


# direct methods
.method public static delete(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "policy"    # I

    .prologue
    .line 43
    invoke-static {p0}, Lcom/miui/gallery/util/SyncUtil;->stopSync(Landroid/content/Context;)V

    .line 45
    invoke-static {}, Lcom/miui/gallery/sdk/download/ImageDownloader;->getInstance()Lcom/miui/gallery/sdk/download/ImageDownloader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/sdk/download/ImageDownloader;->cancelAll()V

    .line 47
    const/4 v0, 0x1

    .line 49
    .local v0, "result":Z
    invoke-static {p0, p1}, Lcom/miui/gallery/util/DeleteDataUtil;->deleteFile(Landroid/content/Context;I)Z

    move-result v1

    and-int/2addr v0, v1

    .line 51
    invoke-static {p0, p1}, Lcom/miui/gallery/util/DeleteDataUtil;->deleteDB(Landroid/content/Context;I)Z

    move-result v1

    and-int/2addr v0, v1

    .line 53
    invoke-static {}, Lcom/miui/gallery/util/DeleteDataUtil;->deletePreferences()Z

    move-result v1

    and-int/2addr v0, v1

    .line 56
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/scanner/MediaScannerUtil;->scanAllAlbumDirectories(Landroid/content/Context;IZ)V

    .line 58
    return v0
.end method

.method private static deleteDB(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "policy"    # I

    .prologue
    .line 76
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/miui/gallery/util/deprecated/Preference;->setSyncShouldClearDataBase(Z)V

    .line 77
    invoke-static {}, Lcom/miui/gallery/util/DeleteDataUtil;->resetCloudDataBase()Z

    move-result v0

    .line 78
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 79
    const-string v1, "DeleteDataUtil"

    const-string v2, "delete cloud success"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/miui/gallery/util/deprecated/Preference;->setSyncShouldClearDataBase(Z)V

    .line 86
    :goto_0
    invoke-static {}, Lcom/miui/gallery/util/DeleteDataUtil;->resetMediaRemarkInfo()Z

    move-result v1

    and-int/2addr v0, v1

    .line 87
    if-eqz v0, :cond_1

    .line 88
    const-string v1, "DeleteDataUtil"

    const-string v2, "delete MediaRemarkInfo end."

    invoke-static {v1, v2}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :goto_1
    invoke-static {}, Lcom/miui/gallery/util/DeleteDataUtil;->resetCloudControlData()Z

    move-result v1

    and-int/2addr v0, v1

    .line 95
    if-eqz v0, :cond_2

    .line 96
    const-string v1, "DeleteDataUtil"

    const-string v2, "delete CloudControl DB end."

    invoke-static {v1, v2}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :goto_2
    invoke-static {}, Lcom/miui/gallery/util/DeleteDataUtil;->resetFavoritesData()Z

    move-result v1

    and-int/2addr v0, v1

    .line 103
    if-eqz v0, :cond_3

    .line 104
    const-string v1, "DeleteDataUtil"

    const-string v2, "delete Favorites DB end."

    invoke-static {v1, v2}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :goto_3
    invoke-static {}, Lcom/miui/gallery/card/CardManager;->getInstance()Lcom/miui/gallery/card/CardManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/card/CardManager;->onAccountDelete()V

    .line 113
    invoke-static {}, Lcom/miui/gallery/util/PersistentResponseHelper;->clearData()V

    .line 116
    invoke-static {}, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->getInstance()Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/provider/peoplecover/PeopleCoverManager;->onAccountDelete()V

    .line 119
    invoke-static {}, Lcom/miui/gallery/provider/cache/SearchHistoryManager;->getInstance()Lcom/miui/gallery/provider/cache/SearchHistoryManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/provider/cache/SearchHistoryManager;->deleteAll()I

    .line 121
    return v0

    .line 82
    :cond_0
    const-string v1, "DeleteDataUtil"

    const-string v2, "delete cloud failed"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_1
    const-string v1, "DeleteDataUtil"

    const-string v2, "delete MediaRemarkInfo DB failed!"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 98
    :cond_2
    const-string v1, "DeleteDataUtil"

    const-string v2, "delete CloudControl DB failed!"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 106
    :cond_3
    const-string v1, "DeleteDataUtil"

    const-string v2, "delete Favorites DB failed!"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private static deleteFile(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "policy"    # I

    .prologue
    .line 62
    packed-switch p1, :pswitch_data_0

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unsupported policy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :pswitch_0
    const/4 v0, 0x1

    .line 68
    :goto_0
    return v0

    .line 66
    :pswitch_1
    invoke-static {p0}, Lcom/miui/gallery/util/DeleteDataUtil;->deleteHiddenFiles(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    .line 68
    :pswitch_2
    invoke-static {p0}, Lcom/miui/gallery/util/DeleteDataUtil;->deleteSyncedFile(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static deleteHiddenFiles(Landroid/content/Context;)Z
    .locals 15
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 187
    const-string v6, "MIUI/Gallery/cloud"

    invoke-static {p0, v6}, Lcom/miui/gallery/util/StorageUtils;->getPathsInExternalStorage(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, "cloudFolders":[Ljava/lang/String;
    const/4 v5, 0x1

    .line 189
    .local v5, "result":Z
    if-eqz v3, :cond_2

    .line 190
    array-length v9, v3

    move v8, v7

    :goto_0
    if-ge v8, v9, :cond_2

    aget-object v2, v3, v8

    .line 191
    .local v2, "cloudFolder":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 192
    .local v1, "children":[Ljava/io/File;
    if-eqz v1, :cond_1

    .line 193
    array-length v10, v1

    move v6, v7

    :goto_1
    if-ge v6, v10, :cond_1

    aget-object v0, v1, v6

    .line 194
    .local v0, "child":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isHidden()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 195
    invoke-static {v0}, Lcom/miui/gallery/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    move-result v4

    .line 196
    .local v4, "deleted":Z
    and-int/2addr v5, v4

    .line 197
    const-string v11, "DeleteDataUtil"

    const-string v12, "delete %s result %s"

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-static {v11, v12, v13, v14}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 193
    .end local v4    # "deleted":Z
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 190
    .end local v0    # "child":Ljava/io/File;
    :cond_1
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto :goto_0

    .line 203
    .end local v1    # "children":[Ljava/io/File;
    .end local v2    # "cloudFolder":Ljava/lang/String;
    :cond_2
    return v5
.end method

.method private static deletePreferences()Z
    .locals 2

    .prologue
    .line 126
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/IntentUtil;->removeAllShortCutForBabyAlbums(Landroid/content/Context;)V

    .line 129
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sRemoveCloudSettings()V

    .line 130
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences;->sRemoveCloudSettings()V

    .line 131
    invoke-static {}, Lcom/miui/gallery/preference/ThumbnailPreference;->clear()Z

    .line 133
    const-string v0, "DeleteDataUtil"

    const-string v1, "removed cloud settings."

    invoke-static {v0, v1}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {}, Lcom/miui/gallery/cloud/CloudAlbumSortUtil;->sRemoveCloudAlbumSortByFactor()V

    .line 138
    const/4 v0, 0x1

    return v0
.end method

.method private static deleteSyncedFile(Landroid/content/Context;)Z
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v1, 0x64

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 207
    const/4 v0, 0x4

    new-array v9, v0, [Landroid/net/Uri;

    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    aput-object v0, v9, v11

    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->OWNER_SUB_UBIFOCUS_URI:Landroid/net/Uri;

    aput-object v0, v9, v10

    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_IMAGE_URI:Landroid/net/Uri;

    aput-object v0, v9, v12

    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_SUB_UBIFOCUS_URI:Landroid/net/Uri;

    aput-object v0, v9, v13

    .line 214
    .local v9, "uris":[Landroid/net/Uri;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 215
    .local v6, "deletingFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    new-array v8, v1, [Ljava/io/File;

    .line 217
    .local v8, "tmp":[Ljava/io/File;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, v9

    if-ge v7, v0, :cond_0

    .line 218
    aget-object v0, v9, v7

    new-array v1, v13, [Ljava/lang/String;

    const-string v2, "microthumbfile"

    aput-object v2, v1, v11

    const-string/jumbo v2, "thumbnailFile"

    aput-object v2, v1, v10

    const-string v2, "localFile"

    aput-object v2, v1, v12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serverStatus = \'custom\' AND ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/cloud/CloudTableUtils;->sItemIsNotGroup:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/miui/gallery/util/DeleteDataUtil$2;

    invoke-direct {v5, v6, v8}, Lcom/miui/gallery/util/DeleteDataUtil$2;-><init>(Ljava/util/ArrayList;[Ljava/io/File;)V

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/util/GalleryUtils;->safeQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/GalleryUtils$QueryHandler;)Ljava/lang/Object;

    .line 217
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 259
    :cond_0
    return v10
.end method

.method private static resetCloudControlData()Z
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 142
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->getInstance()Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->clearCloudCache()V

    .line 143
    invoke-static {}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCloudControlTables()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v5, v3

    .local v0, "deleteRows":I
    .local v1, "tableName":Ljava/lang/String;
    .local v2, "uri":Landroid/net/Uri;
    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v1, v6, v5

    .line 144
    sget-object v8, Lcom/miui/gallery/cloud/GalleryCloudUtils;->BASE_URI:Landroid/net/Uri;

    .end local v0    # "deleteRows":I
    .end local v2    # "uri":Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 145
    .restart local v2    # "uri":Landroid/net/Uri;
    invoke-static {v2, v12, v12}, Lcom/miui/gallery/util/GalleryUtils;->safeDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 146
    .restart local v0    # "deleteRows":I
    const-string v8, "DeleteDataUtil"

    const-string v9, "clean %s finished, deleted rows=%d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v2, v10, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v4

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const/4 v8, -0x1

    if-ne v0, v8, :cond_0

    .line 151
    :goto_1
    return v3

    .line 143
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    .line 151
    goto :goto_1
.end method

.method private static resetCloudDataBase()Z
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 164
    invoke-static {}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCloudTables()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v5, v3

    .local v0, "deleteRows":I
    .local v1, "tableName":Ljava/lang/String;
    .local v2, "uri":Landroid/net/Uri;
    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v1, v6, v5

    .line 165
    sget-object v8, Lcom/miui/gallery/cloud/GalleryCloudUtils;->BASE_URI:Landroid/net/Uri;

    .end local v0    # "deleteRows":I
    .end local v2    # "uri":Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 166
    .restart local v2    # "uri":Landroid/net/Uri;
    invoke-static {v2, v12, v12}, Lcom/miui/gallery/util/GalleryUtils;->safeDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 167
    .restart local v0    # "deleteRows":I
    const-string v8, "DeleteDataUtil"

    const-string v9, "clean %s finished, deleted rows=%d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v2, v10, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v4

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const/4 v8, -0x1

    if-ne v0, v8, :cond_0

    .line 183
    :goto_1
    return v3

    .line 164
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 173
    :cond_1
    new-instance v3, Lcom/miui/gallery/util/DeleteDataUtil$1;

    invoke-direct {v3}, Lcom/miui/gallery/util/DeleteDataUtil$1;-><init>()V

    invoke-static {v3}, Lcom/miui/gallery/cloud/CloudUtils;->addRecordsForCameraAndScreenshots(Lcom/miui/gallery/cloud/CloudUtils$Insertable;)V

    move v3, v4

    .line 183
    goto :goto_1
.end method

.method private static resetFavoritesData()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 154
    sget-object v3, Lcom/miui/gallery/provider/GalleryContract$Favorites;->URI:Landroid/net/Uri;

    invoke-static {v3, v4, v4}, Lcom/miui/gallery/util/GalleryUtils;->safeDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 155
    .local v0, "deleteRows":I
    const-string v3, "DeleteDataUtil"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "clean favorites finished, deleted rows=%d"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private static resetMediaRemarkInfo()Z
    .locals 1

    .prologue
    .line 160
    invoke-static {}, Lcom/miui/gallery/provider/cloudmanager/MediaRemarkManager;->onAccountDelete()Z

    move-result v0

    return v0
.end method
