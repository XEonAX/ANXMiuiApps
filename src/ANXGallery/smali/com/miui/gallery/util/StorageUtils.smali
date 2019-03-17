.class public Lcom/miui/gallery/util/StorageUtils;
.super Ljava/lang/Object;
.source "StorageUtils.java"


# static fields
.field public static final KEY_FOR_EMPTY_RELATIVE_PATH:Ljava/lang/String;

.field private static sPrimaryStoragePath:Ljava/lang/String;

.field private static sSecondaryStoragePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    const-string v0, "GallerySDCardRoot"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/util/StorageUtils;->KEY_FOR_EMPTY_RELATIVE_PATH:Ljava/lang/String;

    return-void
.end method

.method public static canWrite(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "absoluteFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 372
    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/miui/gallery/util/StorageUtils;->isAbsolutePath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 376
    :cond_0
    :goto_0
    return v0

    .line 375
    :cond_1
    invoke-static {p1}, Lcom/miui/gallery/util/BaseDocumentProviderUtils;->needUseDocumentProvider(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 376
    invoke-static {p0}, Lcom/miui/gallery/util/BaseDocumentProviderUtils;->needRequestExternalSDCardPermission(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static canWriteThroughFileSystem(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "absoluteFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 707
    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/miui/gallery/util/StorageUtils;->isAbsolutePath(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 731
    :cond_0
    :goto_0
    return v5

    .line 710
    :cond_1
    invoke-static {p0, p1}, Lcom/miui/gallery/util/StorageUtils;->getVolumePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 711
    .local v4, "volumePath":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 714
    new-instance v3, Ljava/io/File;

    const-string v7, ".fe_tmp"

    invoke-direct {v3, v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    .local v3, "testFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 717
    .local v1, "outputStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v7, 0x1

    invoke-direct {v2, v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    .end local v1    # "outputStream":Ljava/io/FileOutputStream;
    .local v2, "outputStream":Ljava/io/FileOutputStream;
    invoke-static {v2}, Lcom/miui/gallery/util/BaseMiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 723
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 725
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_1
    move v5, v6

    .line 728
    goto :goto_0

    .line 726
    :catch_0
    move-exception v0

    .line 727
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "StorageUtils"

    const-string v7, "Failed to delete test file [%s], %s"

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 719
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "outputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 720
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "StorageUtils"

    const-string v7, "Cannot write to file volume [%s], %s"

    invoke-static {v6, v7, v4, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 722
    invoke-static {v1}, Lcom/miui/gallery/util/BaseMiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 723
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 725
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 726
    :catch_2
    move-exception v0

    .line 727
    const-string v6, "StorageUtils"

    const-string v7, "Failed to delete test file [%s], %s"

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 722
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-static {v1}, Lcom/miui/gallery/util/BaseMiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 723
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 725
    :try_start_4
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 728
    :cond_3
    :goto_2
    throw v5

    .line 726
    :catch_3
    move-exception v0

    .line 727
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v6, "StorageUtils"

    const-string v7, "Failed to delete test file [%s], %s"

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public static ensureCommonRelativePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "relativePath"    # Ljava/lang/String;

    .prologue
    .line 623
    sget-object v0, Lcom/miui/gallery/util/StorageUtils;->KEY_FOR_EMPTY_RELATIVE_PATH:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 624
    const-string p0, ""

    .line 626
    .end local p0    # "relativePath":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "relativePath":Ljava/lang/String;
    :cond_1
    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0
.end method

.method public static getAbsolutePath(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "relativePath"    # Ljava/lang/String;

    .prologue
    .line 642
    invoke-static {p1}, Lcom/miui/gallery/util/StorageUtils;->isAbsolutePath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 643
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 648
    :goto_0
    return-object v0

    .line 645
    :cond_0
    if-nez p0, :cond_1

    .line 646
    const/4 v0, 0x0

    goto :goto_0

    .line 648
    :cond_1
    invoke-static {p1}, Lcom/miui/gallery/util/StorageUtils;->ensureCommonRelativePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/gallery/util/StorageUtils;->getPathsInExternalStorage(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getAvailableBytes(Ljava/lang/String;)J
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 687
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 689
    :try_start_0
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 690
    .local v1, "statFs":Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBytes()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 695
    .end local v1    # "statFs":Landroid/os/StatFs;
    :goto_0
    return-wide v2

    .line 691
    :catch_0
    move-exception v0

    .line 692
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "StorageUtils"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Failed to get available bytes [%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public static getCacheDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 560
    const-string v0, "MIUI/Gallery/cloud/.cache"

    invoke-static {v0}, Lcom/miui/gallery/util/StorageUtils;->getPathInPrimaryStorage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCreativeDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    const-string v0, "DCIM/Creative"

    invoke-static {v0}, Lcom/miui/gallery/util/StorageUtils;->getSafePathInPriorStorageForUnadapted(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFilePathUnder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "rootFolder"    # Ljava/lang/String;
    .param p1, "relativePath"    # Ljava/lang/String;

    .prologue
    .line 662
    if-nez p0, :cond_0

    .line 663
    const/4 v0, 0x0

    .line 665
    .end local p1    # "relativePath":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local p1    # "relativePath":Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    .end local p1    # "relativePath":Ljava/lang/String;
    :cond_1
    invoke-static {p0, p1}, Lcom/miui/gallery/util/BaseFileUtils;->concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMicroThumbnailDirectories(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 518
    const-string v0, "MIUI/Gallery/cloud/.microthumbnailFile"

    invoke-static {p0, v0}, Lcom/miui/gallery/util/StorageUtils;->getPathsInExternalStorage(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMicroThumbnailTempDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 526
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getPriorMicroThumbnailDirectory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMountedVolumePaths(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 406
    invoke-static {p0}, Lcom/miui/gallery/util/StorageUtils;->getVolumes(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 407
    .local v2, "volumes":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/storage/StorageInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 408
    .local v0, "mountedVolumes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/storage/StorageInfo;

    .line 409
    .local v1, "volume":Lcom/android/internal/storage/StorageInfo;
    invoke-virtual {v1}, Lcom/android/internal/storage/StorageInfo;->isMounted()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/storage/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 410
    invoke-virtual {v1}, Lcom/android/internal/storage/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 413
    .end local v1    # "volume":Lcom/android/internal/storage/StorageInfo;
    :cond_1
    return-object v0
.end method

.method public static getNetworkCacheDirectory()Ljava/io/File;
    .locals 3

    .prologue
    .line 567
    const/4 v0, 0x0

    .line 568
    .local v0, "cache":Ljava/io/File;
    const-string v1, "mounted"

    invoke-static {}, Lmiui/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 569
    new-instance v0, Ljava/io/File;

    .end local v0    # "cache":Ljava/io/File;
    invoke-static {}, Lcom/miui/gallery/util/StaticContext;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "request"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 571
    .restart local v0    # "cache":Ljava/io/File;
    :cond_0
    if-nez v0, :cond_1

    .line 572
    new-instance v0, Ljava/io/File;

    .end local v0    # "cache":Ljava/io/File;
    invoke-static {}, Lcom/miui/gallery/util/StaticContext;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "request"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 574
    .restart local v0    # "cache":Ljava/io/File;
    :cond_1
    return-object v0
.end method

.method public static getOriginTempDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 551
    const-string v0, "MIUI/Gallery/cloud/.cache/.downloadFile"

    invoke-static {v0}, Lcom/miui/gallery/util/StorageUtils;->getSafePathInPriorStorageForUnadapted(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPathForDisplay(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 477
    if-eqz p0, :cond_6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 479
    invoke-static {p0}, Lcom/miui/gallery/util/StorageUtils;->getVolumes(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 480
    .local v2, "volumes":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/storage/StorageInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/storage/StorageInfo;

    .line 481
    .local v1, "volume":Lcom/android/internal/storage/StorageInfo;
    invoke-virtual {v1}, Lcom/android/internal/storage/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/miui/gallery/util/BaseFileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 482
    invoke-virtual {v1}, Lcom/android/internal/storage/StorageInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, "description":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/internal/storage/StorageInfo;->isPrimary()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 484
    sget v3, Lcom/miui/gallery/base/R$string;->storage_description_primary:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 492
    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 493
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    .line 494
    invoke-virtual {v1}, Lcom/android/internal/storage/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 493
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 500
    .end local v0    # "description":Ljava/lang/String;
    .end local v1    # "volume":Lcom/android/internal/storage/StorageInfo;
    .end local v2    # "volumes":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/storage/StorageInfo;>;"
    .end local p1    # "filePath":Ljava/lang/String;
    :cond_2
    :goto_1
    return-object p1

    .line 485
    .restart local v0    # "description":Ljava/lang/String;
    .restart local v1    # "volume":Lcom/android/internal/storage/StorageInfo;
    .restart local v2    # "volumes":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/storage/StorageInfo;>;"
    .restart local p1    # "filePath":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/storage/StorageInfo;->isSd()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 486
    sget v3, Lcom/miui/gallery/base/R$string;->storage_description_sdcard:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 487
    :cond_4
    invoke-virtual {v1}, Lcom/android/internal/storage/StorageInfo;->isXspace()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 488
    sget v3, Lcom/miui/gallery/base/R$string;->storage_description_xspace:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 489
    :cond_5
    invoke-virtual {v1}, Lcom/android/internal/storage/StorageInfo;->isUsb()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 490
    sget v3, Lcom/miui/gallery/base/R$string;->storage_description_usb:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 500
    .end local v0    # "description":Ljava/lang/String;
    .end local v1    # "volume":Lcom/android/internal/storage/StorageInfo;
    .end local v2    # "volumes":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/storage/StorageInfo;>;"
    :cond_6
    if-nez p1, :cond_2

    const-string p1, ""

    goto :goto_1
.end method

.method public static getPathInPrimaryStorage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "relativePath"    # Ljava/lang/String;

    .prologue
    .line 299
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getPrimaryStoragePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/miui/gallery/util/StorageUtils;->getFilePathUnder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPathInPriorStorage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "relativePath"    # Ljava/lang/String;

    .prologue
    .line 176
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getPriorStoragePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/miui/gallery/util/StorageUtils;->ensureCommonRelativePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/StorageUtils;->getFilePathUnder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPathInSecondaryStorage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "relativePath"    # Ljava/lang/String;

    .prologue
    .line 340
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getSecondaryStoragePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/miui/gallery/util/StorageUtils;->getFilePathUnder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPathsInExternalStorage(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "relativePath"    # Ljava/lang/String;

    .prologue
    .line 421
    if-nez p0, :cond_1

    .line 422
    const/4 v2, 0x0

    .line 430
    :cond_0
    return-object v2

    .line 424
    :cond_1
    invoke-static {p0}, Lcom/miui/gallery/util/StorageUtils;->getMountedVolumePaths(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 425
    .local v1, "mountedVolumes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 426
    .local v3, "size":I
    new-array v2, v3, [Ljava/lang/String;

    .line 427
    .local v2, "paths":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 428
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, p1}, Lcom/miui/gallery/util/StorageUtils;->getFilePathUnder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getPrimaryStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    sget-object v0, Lcom/miui/gallery/util/StorageUtils;->sPrimaryStoragePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Storage;->getPrimaryStorageRoot()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/util/StorageUtils;->sPrimaryStoragePath:Ljava/lang/String;

    .line 273
    :cond_0
    sget-object v0, Lcom/miui/gallery/util/StorageUtils;->sPrimaryStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method public static getPriorMicroThumbnailDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 511
    const-string v0, "MIUI/Gallery/cloud/.microthumbnailFile"

    invoke-static {v0}, Lcom/miui/gallery/util/StorageUtils;->getSafePathInPriorStorage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPriorMicroThumbnailPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 533
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getPriorMicroThumbnailDirectory()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/miui/gallery/util/StorageUtils;->getFilePathUnder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPriorStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    invoke-static {}, Lcom/miui/gallery/util/StaticContext;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/StorageUtils;->isUsingSecondaryStorage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getSecondaryStoragePath()Ljava/lang/String;

    move-result-object v0

    .line 167
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getPrimaryStoragePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getRelativePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "absolutePath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 593
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move-object p1, v4

    .line 615
    .end local p1    # "absolutePath":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p1

    .line 596
    .restart local p1    # "absolutePath":Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Lcom/miui/gallery/util/StorageUtils;->isAbsolutePath(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 599
    invoke-static {p0}, Lcom/miui/gallery/util/StorageUtils;->getMountedVolumePaths(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 600
    .local v3, "volumePath":Ljava/lang/String;
    invoke-static {v3, p1}, Lcom/miui/gallery/util/BaseFileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 601
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 602
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 603
    .local v1, "relativePath":Ljava/lang/String;
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v2, 0x1

    .line 604
    .local v2, "start":I
    :goto_1
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 605
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 606
    .local v0, "end":I
    :goto_2
    if-ge v2, v0, :cond_6

    .line 607
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 603
    .end local v0    # "end":I
    .end local v2    # "start":I
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 605
    .restart local v2    # "start":I
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_2

    .line 612
    .end local v1    # "relativePath":Ljava/lang/String;
    .end local v2    # "start":I
    :cond_6
    sget-object p1, Lcom/miui/gallery/util/StorageUtils;->KEY_FOR_EMPTY_RELATIVE_PATH:Ljava/lang/String;

    goto :goto_0

    .end local v3    # "volumePath":Ljava/lang/String;
    :cond_7
    move-object p1, v4

    .line 615
    goto :goto_0
.end method

.method public static getSafePathInPriorStorage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "relativePath"    # Ljava/lang/String;

    .prologue
    .line 212
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getSafePriorStoragePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/miui/gallery/util/StorageUtils;->getFilePathUnder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSafePathInPriorStorageForUnadapted(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "relativePath"    # Ljava/lang/String;

    .prologue
    .line 253
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 254
    invoke-static {p0}, Lcom/miui/gallery/util/StorageUtils;->getPathInPrimaryStorage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/miui/gallery/util/StorageUtils;->getPathInPriorStorage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSafePriorStoragePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 196
    invoke-static {}, Lcom/miui/gallery/util/StaticContext;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 197
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/miui/gallery/util/StorageUtils;->isUsingSecondaryStorage(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    invoke-static {v0}, Lcom/miui/gallery/util/BaseDocumentProviderUtils;->needRequestExternalSDCardPermission(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 199
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getSecondaryStoragePath()Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "secondaryStorage":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 204
    .end local v1    # "secondaryStorage":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getPrimaryStoragePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSecondaryStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    sget-object v0, Lcom/miui/gallery/util/StorageUtils;->sSecondaryStoragePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Storage;->getExternalSDCardRoot()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/util/StorageUtils;->sSecondaryStoragePath:Ljava/lang/String;

    .line 318
    :cond_0
    sget-object v0, Lcom/miui/gallery/util/StorageUtils;->sSecondaryStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method public static getThumbnailTempDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 542
    const-string v0, "MIUI/Gallery/cloud/.cache/.downloadThumbnail"

    invoke-static {v0}, Lcom/miui/gallery/util/StorageUtils;->getSafePathInPriorStorageForUnadapted(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTotalBytes(Ljava/lang/String;)J
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 672
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 674
    :try_start_0
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 675
    .local v1, "statFs":Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getTotalBytes()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 680
    .end local v1    # "statFs":Landroid/os/StatFs;
    :goto_0
    return-wide v2

    .line 676
    :catch_0
    move-exception v0

    .line 677
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "StorageUtils"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Failed to get total bytes [%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public static getVolumePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "absolutePath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 437
    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/miui/gallery/util/StorageUtils;->isAbsolutePath(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 445
    :goto_0
    return-object v0

    .line 440
    :cond_1
    invoke-static {p0}, Lcom/miui/gallery/util/StorageUtils;->getMountedVolumePaths(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 441
    .local v0, "externalVolumePath":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/miui/gallery/util/BaseFileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .end local v0    # "externalVolumePath":Ljava/lang/String;
    :cond_3
    move-object v0, v1

    .line 445
    goto :goto_0
.end method

.method static getVolumes(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/storage/StorageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 397
    invoke-static {}, Lcom/android/internal/storage/StorageManager;->getInstance()Lcom/android/internal/storage/StorageManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/internal/storage/StorageManager;->getStorageInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 398
    .local v1, "volumes":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/storage/StorageInfo;>;"
    invoke-static {p0}, Lcom/miui/gallery/util/StorageUtils;->getXSpaceStorageInfo(Landroid/content/Context;)Lcom/android/internal/storage/StorageInfo;

    move-result-object v0

    .line 399
    .local v0, "info":Lcom/android/internal/storage/StorageInfo;
    if-eqz v0, :cond_0

    .line 400
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    :cond_0
    return-object v1
.end method

.method private static getXSpaceStorageInfo(Landroid/content/Context;)Lcom/android/internal/storage/StorageInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 738
    invoke-static {p0}, Lcom/miui/xspace/XSpaceHelper;->isXSpaceEnable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 739
    invoke-static {}, Lcom/miui/xspace/XSpaceHelper;->getXSpacePath()Ljava/io/File;

    move-result-object v0

    .line 740
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 741
    new-instance v1, Lcom/android/internal/storage/StorageInfo;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/storage/StorageInfo;-><init>(Ljava/lang/String;)V

    .line 742
    .local v1, "info":Lcom/android/internal/storage/StorageInfo;
    invoke-virtual {v1, v3}, Lcom/android/internal/storage/StorageInfo;->setXspace(Z)V

    .line 743
    invoke-virtual {v1, v3}, Lcom/android/internal/storage/StorageInfo;->setMounted(Z)V

    .line 747
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "info":Lcom/android/internal/storage/StorageInfo;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static hasExternalSDCard(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 347
    invoke-static {}, Lcom/android/internal/storage/StorageManager;->getInstance()Lcom/android/internal/storage/StorageManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/internal/storage/StorageManager;->getStorageInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 348
    .local v1, "volumes":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/storage/StorageInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/storage/StorageInfo;

    .line 349
    .local v0, "volume":Lcom/android/internal/storage/StorageInfo;
    invoke-virtual {v0}, Lcom/android/internal/storage/StorageInfo;->isMounted()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/storage/StorageInfo;->isSd()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 350
    const/4 v2, 0x1

    .line 353
    .end local v0    # "volume":Lcom/android/internal/storage/StorageInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isAbsolutePath(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 751
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isExternalSDCardPriorStorage()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 222
    invoke-static {}, Lcom/miui/gallery/util/StaticContext;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 223
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 224
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    const-class v5, Lcom/miui/gallery/util/PriorityStorageBroadcastReceiver;

    invoke-direct {v1, v0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 225
    .local v1, "name":Landroid/content/ComponentName;
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v3

    .line 226
    .local v3, "state":I
    if-nez v3, :cond_1

    .line 228
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/miui/gallery/base/R$bool;->priority_storage:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 230
    :cond_0
    :goto_0
    return v4

    :cond_1
    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static isInExternalStorage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "absolutePath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 455
    invoke-static {p1}, Lcom/miui/gallery/util/StorageUtils;->isAbsolutePath(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 463
    :cond_0
    :goto_0
    return v1

    .line 458
    :cond_1
    invoke-static {p0}, Lcom/miui/gallery/util/StorageUtils;->getMountedVolumePaths(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 459
    .local v0, "volumePaths":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/miui/gallery/util/BaseFileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 460
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isInPrimaryStorage(Ljava/lang/String;)Z
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 291
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getPrimaryStoragePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/miui/gallery/util/BaseFileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInSecondaryStorage(Ljava/lang/String;)Z
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 325
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 332
    :cond_0
    :goto_0
    return v1

    .line 328
    :cond_1
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getSecondaryStoragePath()Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "secondaryStoragePath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 332
    invoke-static {v0, p0}, Lcom/miui/gallery/util/BaseFileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isPrimaryStorageWritable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 280
    invoke-static {}, Lmiui/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "state":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getPrimaryStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/miui/gallery/util/StorageUtils;->canWriteThroughFileSystem(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 284
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isUsingSecondaryStorage(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    invoke-static {p0}, Lcom/miui/gallery/util/StorageUtils;->hasExternalSDCard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->isExternalSDCardPriorStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setPriorStorage(Z)V
    .locals 5
    .param p0, "externalSDCard"    # Z

    .prologue
    const/4 v4, 0x1

    .line 241
    invoke-static {}, Lcom/miui/gallery/util/StaticContext;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 242
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 243
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    const-class v3, Lcom/miui/gallery/util/PriorityStorageBroadcastReceiver;

    invoke-direct {v1, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 244
    .local v1, "name":Landroid/content/ComponentName;
    if-eqz p0, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v2, v1, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 246
    return-void

    .line 244
    :cond_0
    const/4 v3, 0x2

    goto :goto_0
.end method
