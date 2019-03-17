.class public Lcom/miui/gallery/sdk/download/util/DownloadUtil;
.super Ljava/lang/Object;
.source "DownloadUtil.java"


# static fields
.field private static final DOWNLOAD_FILE_PRIORITY:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->DOWNLOAD_FILE_PRIORITY:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x9
        0xa
        0xb
    .end array-data
.end method

.method public static canDownloadStatus(Lcom/miui/gallery/data/DBImage;)Z
    .locals 2
    .param p0, "dbImage"    # Lcom/miui/gallery/data/DBImage;

    .prologue
    .line 483
    if-eqz p0, :cond_0

    const-string v0, "custom"

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getServerStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getLocalFlag()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkAndReturnValidFilePathForType(Lcom/miui/gallery/data/DBImage;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;
    .locals 3
    .param p0, "dbImage"    # Lcom/miui/gallery/data/DBImage;
    .param p1, "downloadType"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 133
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 134
    :cond_0
    const/4 v0, 0x0

    .line 143
    :goto_0
    return-object v0

    .line 136
    :cond_1
    invoke-static {p1}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->isMicro(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    invoke-static {p0, p1}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->checkAndReturnValidMicroFilePath(Lcom/miui/gallery/data/DBImage;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 139
    :cond_2
    invoke-static {p1}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->isThumbnail(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 140
    invoke-static {p0, p1}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->checkAndReturnValidThumbnailFilePath(Lcom/miui/gallery/data/DBImage;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 142
    :cond_3
    invoke-static {p1}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->isOrigin(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 143
    invoke-static {p0, p1}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->checkAndReturnValidOriginalFilePath(Lcom/miui/gallery/data/DBImage;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 145
    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad checktype, checktype="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkAndReturnValidMicroFilePath(Lcom/miui/gallery/data/DBImage;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;
    .locals 5
    .param p0, "dbImage"    # Lcom/miui/gallery/data/DBImage;
    .param p1, "downloadType"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    const/4 v2, 0x0

    .line 340
    const/4 v1, 0x0

    .line 341
    .local v1, "verifiedPath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getMicroThumbnailFile()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 342
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getMicroThumbnailFile()Ljava/lang/String;

    move-result-object v1

    .line 350
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 351
    const/4 v0, 0x1

    .line 352
    .local v0, "succeeded":Z
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getMicroThumbnailFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 355
    const-string v3, "microthumbfile"

    invoke-static {p0, v3, v1}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->updateImageColumnValue(Lcom/miui/gallery/data/DBImage;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 356
    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {p0, v1}, Lcom/miui/gallery/data/DBImage;->setMicroThumbFile(Ljava/lang/String;)V

    .line 360
    :cond_0
    if-eqz v0, :cond_2

    .line 362
    .end local v0    # "succeeded":Z
    .end local v1    # "verifiedPath":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 346
    .restart local v1    # "verifiedPath":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/util/StorageUtils;->getMicroThumbnailDirectories(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    .line 347
    invoke-static {p0, p1}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->getDownloadFileName(Lcom/miui/gallery/data/DBImage;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v4

    .line 345
    invoke-static {v3, v4}, Lcom/miui/gallery/cloud/DownloadPathHelper;->getFilePathForRead([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .restart local v0    # "succeeded":Z
    :cond_2
    move-object v1, v2

    .line 360
    goto :goto_1

    .end local v0    # "succeeded":Z
    :cond_3
    move-object v1, v2

    .line 362
    goto :goto_1
.end method

.method public static checkAndReturnValidOriginalFilePath(Lcom/miui/gallery/data/DBImage;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;
    .locals 5
    .param p0, "dbImage"    # Lcom/miui/gallery/data/DBImage;
    .param p1, "downloadType"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    const/4 v2, 0x0

    .line 277
    const/4 v1, 0x0

    .line 278
    .local v1, "verifiedPath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getLocalFile()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 279
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getLocalFile()Ljava/lang/String;

    move-result-object v1

    .line 287
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 288
    const/4 v0, 0x1

    .line 289
    .local v0, "succeeded":Z
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->isSecretItem()Z

    move-result v3

    if-nez v3, :cond_0

    .line 291
    invoke-static {v1, p0}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->isOriginalFileValid(Ljava/lang/String;Lcom/miui/gallery/data/DBImage;)Z

    move-result v0

    .line 294
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getLocalFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 297
    const-string v3, "localFile"

    invoke-static {p0, v3, v1}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->updateImageColumnValue(Lcom/miui/gallery/data/DBImage;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 298
    if-eqz v0, :cond_1

    .line 299
    invoke-virtual {p0, v1}, Lcom/miui/gallery/data/DBImage;->setLocalFile(Ljava/lang/String;)V

    .line 302
    :cond_1
    if-eqz v0, :cond_3

    .line 304
    .end local v0    # "succeeded":Z
    .end local v1    # "verifiedPath":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 283
    .restart local v1    # "verifiedPath":Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Lcom/miui/gallery/cloud/DownloadPathHelper;->getDownloadFolderRelativePath(Lcom/miui/gallery/data/DBImage;)Ljava/lang/String;

    move-result-object v3

    .line 284
    invoke-static {p0, p1}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->getDownloadFileName(Lcom/miui/gallery/data/DBImage;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v4

    .line 282
    invoke-static {v3, v4}, Lcom/miui/gallery/cloud/DownloadPathHelper;->getFilePathForRead(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .restart local v0    # "succeeded":Z
    :cond_3
    move-object v1, v2

    .line 302
    goto :goto_1

    .end local v0    # "succeeded":Z
    :cond_4
    move-object v1, v2

    .line 304
    goto :goto_1
.end method

.method public static checkAndReturnValidThumbnailFilePath(Lcom/miui/gallery/data/DBImage;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;
    .locals 5
    .param p0, "dbImage"    # Lcom/miui/gallery/data/DBImage;
    .param p1, "downloadType"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    const/4 v2, 0x0

    .line 308
    const/4 v1, 0x0

    .line 309
    .local v1, "verifiedPath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getThumbnailFile()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 310
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getThumbnailFile()Ljava/lang/String;

    move-result-object v1

    .line 318
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 319
    const/4 v0, 0x1

    .line 321
    .local v0, "succeeded":Z
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->isSecretItem()Z

    move-result v3

    if-nez v3, :cond_0

    .line 323
    invoke-static {v1, p0}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->isThumbnailFileValid(Ljava/lang/String;Lcom/miui/gallery/data/DBImage;)Z

    move-result v0

    .line 326
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getThumbnailFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 329
    const-string/jumbo v3, "thumbnailFile"

    invoke-static {p0, v3, v1}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->updateImageColumnValue(Lcom/miui/gallery/data/DBImage;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 330
    if-eqz v0, :cond_1

    .line 331
    invoke-virtual {p0, v1}, Lcom/miui/gallery/data/DBImage;->setThumbnailFile(Ljava/lang/String;)V

    .line 334
    :cond_1
    if-eqz v0, :cond_3

    .line 336
    .end local v0    # "succeeded":Z
    .end local v1    # "verifiedPath":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 314
    .restart local v1    # "verifiedPath":Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Lcom/miui/gallery/cloud/DownloadPathHelper;->getDownloadFolderRelativePath(Lcom/miui/gallery/data/DBImage;)Ljava/lang/String;

    move-result-object v3

    .line 315
    invoke-static {p0, p1}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->getDownloadFileName(Lcom/miui/gallery/data/DBImage;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v4

    .line 313
    invoke-static {v3, v4}, Lcom/miui/gallery/cloud/DownloadPathHelper;->getFilePathForRead(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .restart local v0    # "succeeded":Z
    :cond_3
    move-object v1, v2

    .line 334
    goto :goto_1

    .end local v0    # "succeeded":Z
    :cond_4
    move-object v1, v2

    .line 336
    goto :goto_1
.end method

.method public static checkCondition(Lcom/miui/gallery/sdk/download/assist/DownloadItem;)Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;
    .locals 4
    .param p0, "item"    # Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    .prologue
    const/4 v1, 0x0

    .line 493
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->canConnectNetwork()Z

    move-result v0

    if-nez v0, :cond_0

    .line 494
    new-instance v0, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    sget-object v2, Lcom/miui/gallery/error/core/ErrorCode;->NO_CTA_PERMISSION:Lcom/miui/gallery/error/core/ErrorCode;

    const-string v3, "no cta permission"

    invoke-direct {v0, v2, v3, v1}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;-><init>(Lcom/miui/gallery/error/core/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 511
    :goto_0
    return-object v0

    .line 496
    :cond_0
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 497
    new-instance v0, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    sget-object v2, Lcom/miui/gallery/error/core/ErrorCode;->NO_NETWORK:Lcom/miui/gallery/error/core/ErrorCode;

    const-string v3, "no network"

    invoke-direct {v0, v2, v3, v1}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;-><init>(Lcom/miui/gallery/error/core/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 499
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->isRequireWLAN()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isActiveNetworkMetered()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 500
    new-instance v0, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    sget-object v2, Lcom/miui/gallery/error/core/ErrorCode;->NO_WIFI_CONNECTED:Lcom/miui/gallery/error/core/ErrorCode;

    const-string v3, "no wifi"

    invoke-direct {v0, v2, v3, v1}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;-><init>(Lcom/miui/gallery/error/core/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 502
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->isRequirePower()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->getPowerCanSync()Z

    move-result v0

    if-nez v0, :cond_3

    .line 503
    new-instance v0, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    sget-object v2, Lcom/miui/gallery/error/core/ErrorCode;->POWER_LOW:Lcom/miui/gallery/error/core/ErrorCode;

    const-string v3, "power low"

    invoke-direct {v0, v2, v3, v1}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;-><init>(Lcom/miui/gallery/error/core/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 505
    :cond_3
    invoke-virtual {p0}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->isRequireCharging()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->getIsPlugged()Z

    move-result v0

    if-nez v0, :cond_4

    .line 506
    new-instance v0, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    sget-object v2, Lcom/miui/gallery/error/core/ErrorCode;->NO_CHARGING:Lcom/miui/gallery/error/core/ErrorCode;

    const-string v3, "not charging"

    invoke-direct {v0, v2, v3, v1}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;-><init>(Lcom/miui/gallery/error/core/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 508
    :cond_4
    invoke-virtual {p0}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->isRequireDeviceStorage()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->isDeviceStorageLow()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 509
    new-instance v0, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    sget-object v2, Lcom/miui/gallery/error/core/ErrorCode;->STORAGE_LOW:Lcom/miui/gallery/error/core/ErrorCode;

    const-string/jumbo v3, "storage low"

    invoke-direct {v0, v2, v3, v1}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;-><init>(Lcom/miui/gallery/error/core/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_5
    move-object v0, v1

    .line 511
    goto :goto_0
.end method

.method public static ensureDownloadFolder(Lcom/miui/gallery/data/DBImage;Lcom/miui/gallery/sdk/download/DownloadType;)Lcom/miui/gallery/error/core/ErrorCode;
    .locals 3
    .param p0, "dbImage"    # Lcom/miui/gallery/data/DBImage;
    .param p1, "downloadType"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 165
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 166
    :cond_0
    sget-object v2, Lcom/miui/gallery/error/core/ErrorCode;->UNKNOWN:Lcom/miui/gallery/error/core/ErrorCode;

    .line 170
    :goto_0
    return-object v2

    .line 168
    :cond_1
    invoke-static {p0, p1}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->getDownloadFolderPath(Lcom/miui/gallery/data/DBImage;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "folder":Ljava/lang/String;
    invoke-static {p1}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->isMicro(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->isSecretItem()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    .line 170
    .local v1, "shouldHide":Z
    :goto_1
    invoke-static {v0, v1}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->ensureFolder(Ljava/lang/String;Z)Lcom/miui/gallery/error/core/ErrorCode;

    move-result-object v2

    goto :goto_0

    .line 169
    .end local v1    # "shouldHide":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static ensureDownloadTempFolder(Lcom/miui/gallery/data/DBImage;Lcom/miui/gallery/sdk/download/DownloadType;)Lcom/miui/gallery/error/core/ErrorCode;
    .locals 2
    .param p0, "dbImage"    # Lcom/miui/gallery/data/DBImage;
    .param p1, "downloadType"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 218
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 219
    :cond_0
    sget-object v0, Lcom/miui/gallery/error/core/ErrorCode;->UNKNOWN:Lcom/miui/gallery/error/core/ErrorCode;

    .line 221
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->getDownloadTempFolderPath(Lcom/miui/gallery/data/DBImage;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->ensureFolder(Ljava/lang/String;Z)Lcom/miui/gallery/error/core/ErrorCode;

    move-result-object v0

    goto :goto_0
.end method

.method private static ensureFolder(Ljava/lang/String;Z)Lcom/miui/gallery/error/core/ErrorCode;
    .locals 2
    .param p0, "folderPath"    # Ljava/lang/String;
    .param p1, "hideFolder"    # Z

    .prologue
    .line 225
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    sget-object v0, Lcom/miui/gallery/error/core/ErrorCode;->UNKNOWN:Lcom/miui/gallery/error/core/ErrorCode;

    .line 238
    :goto_0
    return-object v0

    .line 228
    :cond_0
    invoke-static {p0, p1}, Lcom/miui/gallery/util/FileUtils;->createFolder(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    sget-object v0, Lcom/miui/gallery/error/core/ErrorCode;->NO_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    goto :goto_0

    .line 231
    :cond_1
    invoke-static {p0}, Lcom/miui/gallery/util/StorageUtils;->isInPrimaryStorage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 232
    sget-object v0, Lcom/miui/gallery/error/core/ErrorCode;->PRIMARY_STORAGE_WRITE_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    goto :goto_0

    .line 234
    :cond_2
    invoke-static {p0}, Lcom/miui/gallery/util/StorageUtils;->isInSecondaryStorage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 235
    sget-object v0, Lcom/miui/gallery/error/core/ErrorCode;->SECONDARY_STORAGE_WRITE_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    goto :goto_0

    .line 237
    :cond_3
    const-string v0, "DownloadUtil"

    const-string v1, "Failed to create folder under unknown volume %s"

    invoke-static {v0, v1, p0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 238
    sget-object v0, Lcom/miui/gallery/error/core/ErrorCode;->UNKNOWN:Lcom/miui/gallery/error/core/ErrorCode;

    goto :goto_0
.end method

.method public static generateKey(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 561
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 562
    :cond_0
    const/4 v0, 0x0

    .line 564
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {p1}, Lcom/miui/gallery/sdk/download/DownloadType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDownloadFileName(Lcom/miui/gallery/data/DBImage;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;
    .locals 3
    .param p0, "dbImage"    # Lcom/miui/gallery/data/DBImage;
    .param p1, "downloadType"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 258
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 259
    :cond_0
    const/4 v0, 0x0

    .line 271
    :goto_0
    return-object v0

    .line 261
    :cond_1
    invoke-static {p1}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->isMicro(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 262
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->isSecretItem()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getSha1ThumbnailSA()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 263
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getSha1Thumbnail()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 265
    :cond_3
    invoke-static {p1}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->isThumbnail(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 266
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->isSecretItem()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getSha1ThumbnailSA()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 267
    :cond_4
    invoke-static {p0}, Lcom/miui/gallery/cloud/DownloadPathHelper;->getThumbnailDownloadFileNameNotSecret(Lcom/miui/gallery/data/DBImage;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 269
    :cond_5
    invoke-static {p1}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->isOrigin(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 270
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->isSecretItem()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getEncodedFileName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 271
    :cond_6
    invoke-static {p0}, Lcom/miui/gallery/cloud/DownloadPathHelper;->getOriginDownloadFileNameNotSecret(Lcom/miui/gallery/data/DBImage;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 273
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad checktype, checktype="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDownloadFilePath(Lcom/miui/gallery/data/DBImage;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;
    .locals 8
    .param p0, "dbImage"    # Lcom/miui/gallery/data/DBImage;
    .param p1, "downloadType"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 190
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 191
    :cond_0
    const/4 v1, 0x0

    .line 214
    :cond_1
    :goto_0
    return-object v1

    .line 193
    :cond_2
    invoke-static {p0, p1}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->getDownloadFileName(Lcom/miui/gallery/data/DBImage;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "fileName":Ljava/lang/String;
    invoke-static {p1}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->isOrigin(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 195
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->isUbiFocus()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->isSubUbiFocus()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 197
    :cond_3
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getSubUbiIndex()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getSubUbiImageCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/miui/gallery/data/UbiIndexMapper;->cloudToLocal(II)I

    move-result v2

    .line 198
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getSubUbiImageCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 196
    invoke-static {v0, v2, v3}, Lcom/miui/gallery/data/LocalUbifocus;->createInnerFileName(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 200
    :cond_4
    invoke-static {p0, p1}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->getDownloadFolderPath(Lcom/miui/gallery/data/DBImage;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/miui/gallery/util/FileUtils;->concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "filePath":Ljava/lang/String;
    invoke-static {p1}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->isThumbnail(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {p1}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->isOrigin(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 203
    :cond_5
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1, p0}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->isOriginalFileValid(Ljava/lang/String;Lcom/miui/gallery/data/DBImage;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 204
    invoke-static {v1, p0}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->isThumbnailFileValid(Ljava/lang/String;Lcom/miui/gallery/data/DBImage;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 206
    const-string v2, "%s_%s.%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 207
    invoke-static {v0}, Lcom/miui/gallery/util/FileUtils;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 209
    invoke-static {v0}, Lcom/miui/gallery/util/FileUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 206
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-static {p0, p1}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->getDownloadFolderPath(Lcom/miui/gallery/data/DBImage;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/miui/gallery/util/FileUtils;->concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    const-string v2, "DownloadUtil"

    const-string v3, "There exist a file with same name that doesn\'t belong to image [%s], so we rename current to %s"

    invoke-static {v2, v3, p0, v0}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public static getDownloadFolderPath(Lcom/miui/gallery/data/DBImage;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;
    .locals 2
    .param p0, "dbImage"    # Lcom/miui/gallery/data/DBImage;
    .param p1, "downloadType"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    const/4 v0, 0x0

    .line 174
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-object v0

    .line 177
    :cond_1
    invoke-static {p1}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->isMicro(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 178
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getPriorMicroThumbnailDirectory()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 180
    :cond_2
    invoke-static {p1}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->isThumbnail(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p1}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->isOrigin(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    :cond_3
    invoke-static {p0}, Lcom/miui/gallery/cloud/DownloadPathHelper;->getDownloadFolderPath(Lcom/miui/gallery/data/DBImage;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDownloadTempFilePath(Lcom/miui/gallery/data/DBImage;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;
    .locals 3
    .param p0, "dbImage"    # Lcom/miui/gallery/data/DBImage;
    .param p1, "downloadType"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    const/4 v0, 0x0

    .line 149
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-object v0

    .line 152
    :cond_1
    invoke-static {p1}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->isMicro(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 153
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getMicroThumbnailTempDirectory()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/FileUtils;->concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 155
    :cond_2
    invoke-static {p1}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->isThumbnail(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 156
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getThumbnailTempDirectory()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getSha1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/FileUtils;->concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 158
    :cond_3
    invoke-static {p1}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->isOrigin(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getOriginTempDirectory()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getSha1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/FileUtils;->concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static getDownloadTempFolderPath(Lcom/miui/gallery/data/DBImage;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;
    .locals 2
    .param p0, "dbImage"    # Lcom/miui/gallery/data/DBImage;
    .param p1, "downloadType"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    const/4 v0, 0x0

    .line 242
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-object v0

    .line 245
    :cond_1
    invoke-static {p1}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->isMicro(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 246
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getMicroThumbnailTempDirectory()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 248
    :cond_2
    invoke-static {p1}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->isThumbnail(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 249
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getThumbnailTempDirectory()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 251
    :cond_3
    invoke-static {p1}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->isOrigin(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getOriginTempDirectory()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getStatCategory(Lcom/miui/gallery/sdk/download/assist/RequestItem;)Ljava/lang/String;
    .locals 5
    .param p0, "item"    # Lcom/miui/gallery/sdk/download/assist/RequestItem;

    .prologue
    .line 479
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "file_download_%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    invoke-virtual {v4}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/sdk/download/DownloadType;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isMicro(Lcom/miui/gallery/sdk/download/DownloadType;)Z
    .locals 1
    .param p0, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 118
    sget-object v0, Lcom/miui/gallery/sdk/download/DownloadType;->MICRO:Lcom/miui/gallery/sdk/download/DownloadType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotSyncedStatus(Lcom/miui/gallery/data/DBImage;)Z
    .locals 2
    .param p0, "dbImage"    # Lcom/miui/gallery/data/DBImage;

    .prologue
    .line 487
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getLocalFlag()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    .line 488
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getLocalFlag()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 489
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getLocalFlag()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOrigin(Lcom/miui/gallery/sdk/download/DownloadType;)Z
    .locals 1
    .param p0, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 126
    sget-object v0, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN:Lcom/miui/gallery/sdk/download/DownloadType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN_FORCE:Lcom/miui/gallery/sdk/download/DownloadType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN_BATCH:Lcom/miui/gallery/sdk/download/DownloadType;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOriginalFileValid(Ljava/lang/String;Lcom/miui/gallery/data/DBImage;)Z
    .locals 1
    .param p0, "originalFilePath"    # Ljava/lang/String;
    .param p1, "dbImage"    # Lcom/miui/gallery/data/DBImage;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->isOriginalFileValid(Ljava/lang/String;Lcom/miui/gallery/data/DBImage;Z)Z

    move-result v0

    return v0
.end method

.method public static isOriginalFileValid(Ljava/lang/String;Lcom/miui/gallery/data/DBImage;Z)Z
    .locals 12
    .param p0, "originalFilePath"    # Ljava/lang/String;
    .param p1, "dbImage"    # Lcom/miui/gallery/data/DBImage;
    .param p2, "report"    # Z

    .prologue
    .line 60
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 61
    const-string v5, "DownloadUtil"

    const-string v6, "Empty original file path for %s"

    invoke-static {v5, v6, p1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    const/4 v5, 0x0

    .line 102
    :goto_0
    return v5

    .line 65
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_2

    .line 67
    :cond_1
    const-string v5, "DownloadUtil"

    const-string v6, "File [%s] doesn\'t exist or is not a file %s"

    invoke-static {v5, v6, p0, p1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    const/4 v5, 0x0

    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 72
    .local v2, "fileSize":J
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getSize()J

    move-result-wide v6

    cmp-long v5, v2, v6

    if-gez v5, :cond_4

    .line 73
    const-string v5, "DownloadUtil"

    const-string v6, "File [%s] size [%d] is smaller than expected [%d] for image %s"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    .line 74
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getSize()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    aput-object p1, v7, v8

    .line 73
    invoke-static {v5, v6, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    if-eqz p2, :cond_3

    .line 77
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 78
    .local v4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "Params"

    const-string v6, "ServerId:%s, expectedSize:%d, realSize:%d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 79
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getServerId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getSize()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    .line 78
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v5, "file_download_%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "origin"

    aput-object v8, v6, v7

    .line 81
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "file_download_wrong_size"

    .line 80
    invoke-static {v5, v6, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 84
    .end local v4    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 87
    :cond_4
    invoke-static {v0}, Lcom/miui/gallery/util/FileUtils;->getSha1(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "fileSha1":Ljava/lang/String;
    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getSha1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 89
    :cond_5
    const-string v6, "DownloadUtil"

    const-string v7, "File [%s]\'s sha1 [%s] is different from [%s], %s"

    const/4 v5, 0x4

    new-array v8, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v8, v5

    const/4 v9, 0x1

    if-nez v1, :cond_7

    const-string v5, "null"

    :goto_1
    aput-object v5, v8, v9

    const/4 v5, 0x2

    .line 90
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getSha1()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    const/4 v5, 0x3

    aput-object p1, v8, v5

    .line 89
    invoke-static {v6, v7, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    if-eqz p2, :cond_6

    .line 93
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 94
    .restart local v4    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "Params"

    const-string v6, "ServerId:%s, expectedSha1:%s, realSha1:%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 95
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getServerId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getSha1()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object v1, v7, v8

    .line 94
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v5, "file_download_%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "origin"

    aput-object v8, v6, v7

    .line 97
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "file_download_wrong_sha1"

    .line 96
    invoke-static {v5, v6, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 100
    .end local v4    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_7
    move-object v5, v1

    .line 89
    goto :goto_1

    .line 102
    :cond_8
    const/4 v5, 0x1

    goto/16 :goto_0
.end method

.method public static isThumbnail(Lcom/miui/gallery/sdk/download/DownloadType;)Z
    .locals 1
    .param p0, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 122
    sget-object v0, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL:Lcom/miui/gallery/sdk/download/DownloadType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL_BATCH:Lcom/miui/gallery/sdk/download/DownloadType;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isThumbnailFileValid(Ljava/lang/String;Lcom/miui/gallery/data/DBImage;)Z
    .locals 2
    .param p0, "thumbnailFile"    # Ljava/lang/String;
    .param p1, "dbImage"    # Lcom/miui/gallery/data/DBImage;

    .prologue
    .line 111
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const/4 v0, 0x0

    .line 114
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getSha1()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/miui/gallery/util/ExifUtil;->getUserCommentSha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public static persistDownloadStatus(Lcom/miui/gallery/data/DBImage;I)V
    .locals 12
    .param p0, "dbCloud"    # Lcom/miui/gallery/data/DBImage;
    .param p1, "newStatus"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 401
    const-string v3, "DownloadUtil"

    const-string v4, "persistDownloadStatus id %s, status %d"

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 402
    const-string v2, "_id=?"

    .line 404
    .local v2, "where":Ljava/lang/String;
    if-ne p1, v11, :cond_0

    .line 405
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 406
    .local v0, "updateTimeValues":Landroid/content/ContentValues;
    const-string v3, "downloadFileTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 407
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getBaseUri()Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "(%s) AND (%s is null OR %s=%d)"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "_id=?"

    aput-object v8, v7, v10

    const-string v8, "downloadFileStatus"

    aput-object v8, v7, v11

    const/4 v8, 0x2

    const-string v9, "downloadFileStatus"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    .line 414
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 409
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v11, [Ljava/lang/String;

    .line 415
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    .line 407
    invoke-static {v3, v4, v0, v5, v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeUpdate(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 418
    .end local v0    # "updateTimeValues":Landroid/content/ContentValues;
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 419
    .local v1, "values":Landroid/content/ContentValues;
    const-string v3, "downloadFileStatus"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 420
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getBaseUri()Landroid/net/Uri;

    move-result-object v4

    const-string v5, "_id=?"

    new-array v6, v11, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v3, v4, v1, v5, v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeUpdate(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 421
    return-void
.end method

.method public static persistDownloadStatus(Lcom/miui/gallery/sdk/download/assist/RequestItem;)V
    .locals 4
    .param p0, "request"    # Lcom/miui/gallery/sdk/download/assist/RequestItem;

    .prologue
    .line 372
    iget-object v3, p0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDownloadItem:Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    invoke-virtual {v3}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getStatus()I

    move-result v2

    .line 373
    .local v2, "status":I
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/assist/RequestItem;->mDBItem:Lcom/miui/gallery/data/DBImage;

    .line 374
    .local v0, "dbCloud":Lcom/miui/gallery/data/DBImage;
    if-nez v0, :cond_0

    .line 395
    :goto_0
    return-void

    .line 377
    :cond_0
    const/4 v1, 0x0

    .line 378
    .local v1, "dbStatus":I
    packed-switch v2, :pswitch_data_0

    .line 394
    :goto_1
    invoke-static {v0, v1}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->persistDownloadStatus(Lcom/miui/gallery/data/DBImage;I)V

    goto :goto_0

    .line 380
    :pswitch_0
    const/4 v1, 0x1

    .line 381
    goto :goto_1

    .line 383
    :pswitch_1
    const/4 v1, 0x3

    .line 384
    goto :goto_1

    .line 386
    :pswitch_2
    const/4 v1, 0x2

    .line 387
    goto :goto_1

    .line 389
    :pswitch_3
    const/4 v1, 0x0

    .line 390
    goto :goto_1

    .line 378
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static resumeInterrupted()I
    .locals 19

    .prologue
    .line 430
    sget-object v7, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->DOWNLOAD_FILE_PRIORITY:[I

    array-length v0, v7

    move/from16 v17, v0

    const/4 v2, 0x0

    .local v15, "priority":I
    :goto_0
    move/from16 v0, v17

    if-ge v2, v0, :cond_1

    aget v15, v7, v2

    .line 431
    invoke-static {v15}, Lcom/miui/gallery/cloud/SyncConditionManager;->check(I)I

    move-result v18

    if-eqz v18, :cond_0

    .line 432
    const/4 v2, 0x0

    .line 475
    :goto_1
    return v2

    .line 430
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 435
    :cond_1
    const/4 v2, 0x2

    new-array v0, v2, [Landroid/net/Uri;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    sget-object v7, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    aput-object v7, v16, v2

    const/4 v2, 0x1

    sget-object v7, Lcom/miui/gallery/provider/GalleryContract$ShareImage;->SHARE_URI:Landroid/net/Uri;

    aput-object v7, v16, v2

    .line 440
    .local v16, "uris":[Landroid/net/Uri;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 442
    .local v13, "items":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/sdk/download/assist/DownloadItem;>;"
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v2

    const/4 v2, 0x1

    const-string v7, "serverType"

    aput-object v7, v4, v2

    .line 443
    .local v4, "PROJECTION":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 444
    .local v9, "INDEX_ID":I
    const/4 v10, 0x1

    .line 446
    .local v10, "INDEX_TYPE":I
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    const/4 v2, 0x0

    move/from16 v17, v2

    :goto_2
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    aget-object v3, v16, v17

    .line 447
    .local v3, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/miui/gallery/provider/GalleryContract$ShareImage;->SHARE_URI:Landroid/net/Uri;

    if-ne v3, v2, :cond_2

    const/4 v11, 0x1

    .line 448
    .local v11, "isShared":Z
    :goto_3
    new-instance v8, Lcom/miui/gallery/sdk/download/util/DownloadUtil$1;

    invoke-direct {v8, v11, v13}, Lcom/miui/gallery/sdk/download/util/DownloadUtil$1;-><init>(ZLjava/util/List;)V

    .line 463
    .local v8, "handler":Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;
    const-string v5, "(downloadFileStatus=? OR downloadFileStatus=?) AND (localFlag = 0 AND serverStatus = \'custom\')"

    .line 465
    .local v5, "selection":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x1

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 466
    .local v6, "selectionArgs":[Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    const-string v7, "downloadFileTime DESC"

    invoke-static/range {v2 .. v8}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    .line 446
    add-int/lit8 v2, v17, 0x1

    move/from16 v17, v2

    goto :goto_2

    .line 447
    .end local v5    # "selection":Ljava/lang/String;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v8    # "handler":Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;
    .end local v11    # "isShared":Z
    :cond_2
    const/4 v11, 0x0

    goto :goto_3

    .line 469
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_3
    new-instance v2, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;

    invoke-direct {v2}, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;-><init>()V

    const/4 v7, 0x1

    .line 470
    invoke-virtual {v2, v7}, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->setRequireWLAN(Z)Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->build()Lcom/miui/gallery/sdk/download/DownloadOptions;

    move-result-object v14

    .line 471
    .local v14, "options":Lcom/miui/gallery/sdk/download/DownloadOptions;
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    .line 472
    .local v12, "item":Lcom/miui/gallery/sdk/download/assist/DownloadItem;
    const-string v7, "DownloadUtil"

    const-string v17, "resume item %s"

    move-object/from16 v0, v17

    invoke-static {v7, v0, v12}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 473
    invoke-static {}, Lcom/miui/gallery/sdk/download/ImageDownloader;->getInstance()Lcom/miui/gallery/sdk/download/ImageDownloader;

    move-result-object v7

    invoke-virtual {v12}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getUri()Landroid/net/Uri;

    move-result-object v17

    invoke-virtual {v12}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1, v14}, Lcom/miui/gallery/sdk/download/ImageDownloader;->load(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/sdk/download/DownloadOptions;)V

    goto :goto_4

    .line 475
    .end local v12    # "item":Lcom/miui/gallery/sdk/download/assist/DownloadItem;
    :cond_4
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    goto/16 :goto_1
.end method

.method public static statDownloadError(Lcom/miui/gallery/sdk/download/assist/RequestItem;Ljava/lang/String;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V
    .locals 5
    .param p0, "item"    # Lcom/miui/gallery/sdk/download/assist/RequestItem;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "reason"    # Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    .prologue
    .line 515
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 516
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "status"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 518
    const-string/jumbo v2, "url"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    :cond_0
    const-string v2, "code"

    invoke-virtual {p2}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;->getCode()Lcom/miui/gallery/error/core/ErrorCode;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    const-string v2, "desc"

    invoke-virtual {p2}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;->getDesc()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    invoke-virtual {p2}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 523
    const-string/jumbo v2, "throwable"

    invoke-virtual {p2}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 525
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    .line 526
    const-string v2, "netInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    .end local v0    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_1
    invoke-static {p0}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->getStatCategory(Lcom/miui/gallery/sdk/download/assist/RequestItem;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "file_download_status"

    invoke-static {v2, v3, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 530
    return-void
.end method

.method public static statDownloadRetryTimes(Lcom/miui/gallery/sdk/download/assist/RequestItem;II)V
    .locals 7
    .param p0, "item"    # Lcom/miui/gallery/sdk/download/assist/RequestItem;
    .param p1, "times"    # I
    .param p2, "maxTimes"    # I

    .prologue
    .line 539
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "file_download_retry_times_%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, "event":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 541
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "times"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    invoke-static {p0}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->getStatCategory(Lcom/miui/gallery/sdk/download/assist/RequestItem;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 543
    return-void
.end method

.method public static statDownloadSuccess(Lcom/miui/gallery/sdk/download/assist/RequestItem;)V
    .locals 3
    .param p0, "item"    # Lcom/miui/gallery/sdk/download/assist/RequestItem;

    .prologue
    .line 533
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 534
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "status"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    invoke-static {p0}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->getStatCategory(Lcom/miui/gallery/sdk/download/assist/RequestItem;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "file_download_status"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 536
    return-void
.end method

.method private static updateImageColumnValue(Lcom/miui/gallery/data/DBImage;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "dbImage"    # Lcom/miui/gallery/data/DBImage;
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 366
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 367
    .local v0, "values":Landroid/content/ContentValues;
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getBaseUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/miui/gallery/cloud/CloudUtils;->updateToLocalDB(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v2

    if-lt v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
