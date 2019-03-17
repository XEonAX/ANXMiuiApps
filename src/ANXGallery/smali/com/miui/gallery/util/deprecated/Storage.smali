.class public Lcom/miui/gallery/util/deprecated/Storage;
.super Ljava/lang/Object;
.source "Storage.java"


# direct methods
.method public static getAllSdCardAvatarFilePath()[Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 91
    invoke-static {}, Lcom/miui/gallery/util/StaticContext;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "/MIUI/Gallery/cloud/.avatar"

    .line 90
    invoke-static {v0, v1}, Lcom/miui/gallery/util/StorageUtils;->getPathsInExternalStorage(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCloudThumbnailFilePath()[Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 97
    invoke-static {}, Lcom/miui/gallery/util/StaticContext;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "/MIUI/Gallery/cloud/.thumbnailFile"

    .line 96
    invoke-static {v0, v1}, Lcom/miui/gallery/util/StorageUtils;->getPathsInExternalStorage(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCloudThumbnailModifiedTimeMapFilePath()[Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 103
    invoke-static {}, Lcom/miui/gallery/util/StaticContext;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "/MIUI/Gallery/cloud/.thumbnaillastmodifiedtime"

    .line 102
    invoke-static {v0, v1}, Lcom/miui/gallery/util/StorageUtils;->getPathsInExternalStorage(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCloudWaitUploadFilePath()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    invoke-static {}, Lcom/miui/gallery/util/StaticContext;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "/MIUI/Gallery/cloud/.waitUpload"

    .line 107
    invoke-static {v0, v1}, Lcom/miui/gallery/util/StorageUtils;->getPathsInExternalStorage(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalSDCardRoot()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 43
    invoke-static {}, Lcom/miui/gallery/util/BaseBuildUtil;->isUUIDSDCard()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 45
    invoke-static {}, Lcom/android/internal/storage/StorageManager;->getInstance()Lcom/android/internal/storage/StorageManager;

    move-result-object v6

    invoke-static {}, Lcom/miui/gallery/util/StaticContext;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/storage/StorageManager;->getStorageInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 46
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/storage/StorageInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/storage/StorageInfo;

    .line 47
    .local v1, "info":Lcom/android/internal/storage/StorageInfo;
    invoke-virtual {v1}, Lcom/android/internal/storage/StorageInfo;->isMounted()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/storage/StorageInfo;->isSd()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 48
    invoke-virtual {v1}, Lcom/android/internal/storage/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 73
    .end local v1    # "info":Lcom/android/internal/storage/StorageInfo;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/storage/StorageInfo;>;"
    .local v3, "method":Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    return-object v5

    .line 52
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_2
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Storage;->isMocha()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 54
    :try_start_0
    const-class v6, Lmiui/os/Environment;

    const-string v7, "getSecondaryStorageDirectory"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 55
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_1

    .line 56
    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 57
    .local v4, "o":Ljava/lang/Object;
    instance-of v6, v4, Ljava/io/File;

    if-eqz v6, :cond_1

    .line 58
    check-cast v4, Ljava/io/File;

    .end local v4    # "o":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v6, "Storage"

    invoke-static {v6, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 63
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v6, "Storage"

    invoke-static {v6, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 65
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v6, "Storage"

    invoke-static {v6, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 70
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_3
    const-string v5, "SECONDARY_STORAGE"

    invoke-static {v5}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static getMainSDCardCloudThumbnailFilePath()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 114
    const-string v0, "/MIUI/Gallery/cloud/.thumbnailFile"

    invoke-static {v0}, Lcom/miui/gallery/util/StorageUtils;->getPathInPriorStorage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPrimaryStorageRoot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lmiui/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isMocha()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 85
    const-string v0, "mocha"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static startsWithFilePath([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "filePaths"    # [Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 118
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "lowerCaseFilePath":Ljava/lang/String;
    array-length v4, p0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, p0, v3

    .line 120
    .local v1, "onePath":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 121
    const/4 v2, 0x1

    .line 124
    .end local v1    # "onePath":Ljava/lang/String;
    :cond_0
    return v2

    .line 119
    .restart local v1    # "onePath":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
