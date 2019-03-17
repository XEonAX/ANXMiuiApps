.class public Lcom/miui/gallery/util/OldCacheCleaner;
.super Ljava/lang/Object;
.source "OldCacheCleaner.java"


# direct methods
.method public static clean()V
    .locals 2

    .prologue
    .line 13
    const-string v0, "old_cache_cleaned"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    :goto_0
    return-void

    .line 16
    :cond_0
    const-string v0, "old_cache_cleaned"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 19
    invoke-static {}, Lcom/miui/gallery/util/OldCacheCleaner;->cleanThumbnailCache()V

    .line 20
    invoke-static {}, Lcom/miui/gallery/util/OldCacheCleaner;->cleanBlobCache()V

    .line 21
    invoke-static {}, Lcom/miui/gallery/util/OldCacheCleaner;->cleanTempFiles()V

    goto :goto_0
.end method

.method private static cleanBlobCache()V
    .locals 12

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 35
    const/4 v5, 0x6

    new-array v3, v5, [Ljava/lang/String;

    const-string v5, "imgcache"

    aput-object v5, v3, v6

    const-string v5, "rev_geocoding"

    aput-object v5, v3, v8

    const-string v5, "bookmark"

    aput-object v5, v3, v9

    const/4 v5, 0x3

    const-string v7, "avatar"

    aput-object v7, v3, v5

    const/4 v5, 0x4

    const-string v7, "internal_img_cache"

    aput-object v7, v3, v5

    const/4 v5, 0x5

    const-string v7, "cover"

    aput-object v7, v3, v5

    .line 43
    .local v3, "cacheFileNames":[Ljava/lang/String;
    new-array v1, v9, [Ljava/io/File;

    .line 44
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    aput-object v5, v1, v6

    .line 45
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v5

    aput-object v5, v1, v8

    .line 47
    .local v1, "cacheDirs":[Ljava/io/File;
    array-length v8, v1

    move v7, v6

    :goto_0
    if-ge v7, v8, :cond_1

    aget-object v0, v1, v7

    .line 48
    .local v0, "cacheDir":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 49
    array-length v9, v3

    move v5, v6

    :goto_1
    if-ge v5, v9, :cond_0

    aget-object v2, v3, v5

    .line 50
    .local v2, "cacheFileName":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, "path":Ljava/lang/String;
    invoke-static {v4}, Lcom/miui/gallery/util/uil/BlobCache;->deleteFiles(Ljava/lang/String;)V

    .line 49
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 47
    .end local v2    # "cacheFileName":Ljava/lang/String;
    .end local v4    # "path":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_0

    .line 55
    .end local v0    # "cacheDir":Ljava/io/File;
    :cond_1
    return-void
.end method

.method private static cleanTempFiles()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Storage;->getAllSdCardAvatarFilePath()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    .local v0, "avatarPath":Ljava/lang/String;
    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1

    .line 59
    sget-object v5, Lcom/miui/gallery/util/MediaFileUtils$FileType;->TEMP:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    aput-object v0, v6, v2

    invoke-static {v5, v6}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/lang/String;)I

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    :cond_0
    return-void
.end method

.method private static cleanThumbnailCache()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 25
    const-string v0, ".cache/Gallery"

    .line 27
    .local v0, "THUMB_CACHE_FOLDER":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "MIUI"

    .line 26
    invoke-static {v3, v5}, Lcom/miui/gallery/util/StorageUtils;->getPathsInExternalStorage(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 28
    .local v2, "miuiFilePaths":[Ljava/lang/String;
    array-length v5, v2

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, v2, v3

    .line 29
    .local v1, "miuiFilePath":Ljava/lang/String;
    sget-object v6, Lcom/miui/gallery/util/MediaFileUtils$FileType;->TEMP:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".cache/Gallery"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v6, v7}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/lang/String;)I

    .line 28
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 32
    .end local v1    # "miuiFilePath":Ljava/lang/String;
    :cond_0
    return-void
.end method
