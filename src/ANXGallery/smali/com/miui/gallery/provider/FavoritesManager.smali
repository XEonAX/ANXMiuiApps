.class public Lcom/miui/gallery/provider/FavoritesManager;
.super Ljava/lang/Object;
.source "FavoritesManager.java"


# static fields
.field private static final PROJECTION:[Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const-string v0, "FavoritesManager"

    sput-object v0, Lcom/miui/gallery/provider/FavoritesManager;->TAG:Ljava/lang/String;

    .line 21
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "sha1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "localGroupId"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/provider/FavoritesManager;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private static queryCloudItemByPath(Landroid/content/Context;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "strictMode"    # Z

    .prologue
    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 49
    const/4 v10, 0x0

    .line 50
    .local v10, "exifSha1":Ljava/lang/String;
    invoke-static {p1}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 52
    :try_start_0
    invoke-static {p1}, Lcom/miui/gallery/util/ExifUtil;->getUserCommentData(Ljava/lang/String;)Lcom/miui/gallery/util/ExifUtil$UserCommentData;

    move-result-object v8

    .line 53
    .local v8, "data":Lcom/miui/gallery/util/ExifUtil$UserCommentData;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/miui/gallery/util/ExifUtil$UserCommentData;->getSha1()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 60
    :goto_0
    invoke-static {p1}, Lcom/miui/gallery/util/FileUtils;->getParentFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/gallery/util/StorageUtils;->getRelativePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 61
    .local v6, "albumPath":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    sget-object v0, Lcom/miui/gallery/provider/FavoritesManager;->TAG:Ljava/lang/String;

    const-string v1, "Could\'t get album path for %s"

    invoke-static {v0, v1, p1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    const/4 v7, 0x0

    .line 97
    .end local v6    # "albumPath":Ljava/lang/String;
    .end local v8    # "data":Lcom/miui/gallery/util/ExifUtil$UserCommentData;
    .end local v10    # "exifSha1":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v7

    .line 53
    .restart local v8    # "data":Lcom/miui/gallery/util/ExifUtil$UserCommentData;
    .restart local v10    # "exifSha1":Ljava/lang/String;
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 54
    .end local v8    # "data":Lcom/miui/gallery/util/ExifUtil$UserCommentData;
    :catch_0
    move-exception v9

    .line 55
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "StorageItem"

    const-string v1, "exif exifSha1 read fail %s"

    invoke-static {v0, v1, v9}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    const/4 v7, 0x0

    goto :goto_1

    .line 65
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v6    # "albumPath":Ljava/lang/String;
    .restart local v8    # "data":Lcom/miui/gallery/util/ExifUtil$UserCommentData;
    :cond_2
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/gallery/provider/FavoritesManager;->PROJECTION:[Ljava/lang/String;

    const-string v3, "fileName LIKE ? AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\')) AND localGroupId IN (SELECT _id FROM cloud WHERE localFile LIKE ?)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 69
    invoke-static {p1}, Lcom/miui/gallery/util/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x1

    aput-object v6, v4, v5

    const/4 v5, 0x0

    .line 67
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 71
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz p2, :cond_0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 75
    .local v12, "size":J
    invoke-static {p1}, Lcom/miui/gallery/util/FileUtils;->getFileSize(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v12, v0

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lcom/miui/gallery/provider/FavoritesManager;->TAG:Ljava/lang/String;

    const-string v1, "file size not equals, can not favorite: %s"

    invoke-static {v0, v1, p1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    invoke-static {v7}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 78
    const/4 v7, 0x0

    goto :goto_1

    .line 84
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v12    # "size":J
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/gallery/provider/FavoritesManager;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "sha1 = ? AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\')) AND localGroupId IN (SELECT _id FROM cloud WHERE localFile LIKE ?)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    const/4 v5, 0x1

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    goto :goto_1

    .line 91
    .end local v6    # "albumPath":Ljava/lang/String;
    .end local v8    # "data":Lcom/miui/gallery/util/ExifUtil$UserCommentData;
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/gallery/provider/FavoritesManager;->PROJECTION:[Ljava/lang/String;

    const-string v3, "(localFile LIKE ? or thumbnailFile LIKE ?) AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\'))"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    goto/16 :goto_1

    .line 97
    .end local v10    # "exifSha1":Ljava/lang/String;
    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_1
.end method

.method public static queryFavoriteInfoByFilePath(Ljava/lang/String;Z)Lcom/miui/gallery/model/FavoriteInfo;
    .locals 13
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "strictMode"    # Z

    .prologue
    .line 112
    new-instance v9, Lcom/miui/gallery/model/FavoriteInfo;

    invoke-direct {v9}, Lcom/miui/gallery/model/FavoriteInfo;-><init>()V

    .line 113
    .local v9, "info":Lcom/miui/gallery/model/FavoriteInfo;
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 114
    .local v0, "context":Landroid/content/Context;
    const/4 v7, 0x0

    .line 116
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0, p0, p1}, Lcom/miui/gallery/provider/FavoritesManager;->queryCloudItemByPath(Landroid/content/Context;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v7

    .line 117
    :goto_0
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, -0x3e8

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    const/4 v11, 0x1

    .line 120
    .local v11, "isSecret":Z
    :goto_1
    if-nez v11, :cond_3

    const/4 v1, 0x1

    :goto_2
    invoke-virtual {v9, v1}, Lcom/miui/gallery/model/FavoriteInfo;->setFavoriteUsable(Z)V

    .line 124
    invoke-virtual {v9}, Lcom/miui/gallery/model/FavoriteInfo;->isFavoriteUsable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 126
    .local v12, "sha1":Ljava/lang/String;
    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Favorites;->URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "isFavorite"

    aput-object v4, v2, v3

    const-string/jumbo v3, "sha1 = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v12, v4, v5

    const/4 v5, 0x0

    new-instance v6, Lcom/miui/gallery/provider/FavoritesManager$1;

    invoke-direct {v6}, Lcom/miui/gallery/provider/FavoritesManager$1;-><init>()V

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 140
    .local v10, "isFavorite":Ljava/lang/Integer;
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v1, 0x1

    :goto_3
    invoke-virtual {v9, v1}, Lcom/miui/gallery/model/FavoriteInfo;->setFavorite(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    .end local v10    # "isFavorite":Ljava/lang/Integer;
    .end local v11    # "isSecret":Z
    .end local v12    # "sha1":Ljava/lang/String;
    :cond_0
    invoke-static {v7}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 148
    :goto_4
    return-object v9

    .line 116
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 119
    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    .line 120
    .restart local v11    # "isSecret":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 140
    .restart local v10    # "isFavorite":Ljava/lang/Integer;
    .restart local v12    # "sha1":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    .line 143
    .end local v10    # "isFavorite":Ljava/lang/Integer;
    .end local v11    # "isSecret":Z
    .end local v12    # "sha1":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 144
    .local v8, "ex":Ljava/lang/Exception;
    :try_start_1
    sget-object v1, Lcom/miui/gallery/provider/FavoritesManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v8}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    invoke-static {v7}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_4

    .end local v8    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-static {v7}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v1
.end method
