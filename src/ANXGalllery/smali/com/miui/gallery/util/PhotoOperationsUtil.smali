.class public Lcom/miui/gallery/util/PhotoOperationsUtil;
.super Ljava/lang/Object;
.source "PhotoOperationsUtil.java"


# direct methods
.method public static getImageSupportedOperations(Ljava/lang/String;Ljava/lang/String;DD)I
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D

    .prologue
    .line 29
    const v1, 0x56040c

    .line 34
    .local v1, "operation":I
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 36
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/miui/gallery/util/WallpaperUtils;->supported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    or-int/lit8 v1, v1, 0x20

    .line 40
    :cond_0
    sget-boolean v2, Lcom/miui/os/Rom;->IS_INTERNATIONAL:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/miui/os/Rom;->IS_MIUI:Z

    if-eqz v2, :cond_1

    .line 41
    or-int/lit16 v1, v1, 0x800

    .line 44
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0, p0}, Lcom/miui/gallery/util/StorageUtils;->isInExternalStorage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 45
    or-int/lit8 v1, v1, 0x1

    .line 47
    const-string v2, "image/gif"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 48
    invoke-static {v0, p0}, Lcom/miui/gallery/util/StorageUtils;->getRelativePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/cloud/DownloadPathHelper;->isShareFolderRelativePath(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 49
    or-int/lit16 v1, v1, 0x200

    .line 54
    :cond_2
    invoke-static {p1}, Lcom/miui/gallery/util/FileMimeUtil;->isGifFromMimeType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 55
    and-int/lit8 v1, v1, -0x21

    .line 56
    and-int/lit16 v1, v1, -0x801

    .line 59
    :cond_3
    invoke-static {p1}, Lcom/miui/gallery/util/BitmapUtils;->isSupportedByRegionDecoder(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 60
    or-int/lit8 v1, v1, 0x40

    .line 63
    :cond_4
    invoke-static {p1}, Lcom/miui/gallery/util/BitmapUtils;->isRotationSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 64
    or-int/lit8 v1, v1, 0x2

    .line 67
    :cond_5
    invoke-static {p2, p3, p4, p5}, Lcom/miui/gallery/data/LocationUtil;->isValidateCoordinate(DD)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 68
    or-int/lit8 v1, v1, 0x10

    .line 71
    :cond_6
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->isSecretAlbumFeatureOpen()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 72
    const/high16 v2, 0x800000

    or-int/2addr v1, v2

    .line 74
    :cond_7
    return v1
.end method

.method public static getVideoSupportedOperations(Ljava/lang/String;)I
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 17
    const v0, 0x100484

    .line 20
    .local v0, "operation":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/miui/gallery/util/StorageUtils;->isInExternalStorage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    or-int/lit8 v0, v0, 0x1

    .line 22
    or-int/lit16 v0, v0, 0x200

    .line 24
    :cond_0
    return v0
.end method

.method public static isSupportedOptions(II)Z
    .locals 1
    .param p0, "supports"    # I
    .param p1, "option"    # I

    .prologue
    .line 78
    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
