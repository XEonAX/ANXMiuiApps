.class public Lcom/miui/gallery/preference/GalleryPreferences$FileDownload;
.super Ljava/lang/Object;
.source "GalleryPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/preference/GalleryPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileDownload"
.end annotation


# direct methods
.method public static clampConnTimeout(I)I
    .locals 2
    .param p0, "timeout"    # I

    .prologue
    .line 1059
    const/16 v0, 0x1388

    const/16 v1, 0x7530

    invoke-static {p0, v0, v1}, Lcom/miui/gallery/util/MiscUtil;->clamp(III)I

    move-result v0

    return v0
.end method

.method public static getConnTimeout(Lcom/miui/gallery/sdk/download/DownloadType;)I
    .locals 2
    .param p0, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 1049
    invoke-static {p0}, Lcom/miui/gallery/preference/GalleryPreferences$FileDownload;->getConnTimeoutKey(Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/MemoryPreferenceHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getConnTimeoutKey(Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;
    .locals 5
    .param p0, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 1045
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "file_download_conn_timeout_%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/miui/gallery/sdk/download/DownloadType;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setConnTimeout(Lcom/miui/gallery/sdk/download/DownloadType;I)Z
    .locals 2
    .param p0, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p1, "timeout"    # I

    .prologue
    .line 1053
    invoke-static {p1}, Lcom/miui/gallery/preference/GalleryPreferences$FileDownload;->clampConnTimeout(I)I

    move-result v0

    .line 1054
    .local v0, "validTimeout":I
    invoke-static {p0}, Lcom/miui/gallery/preference/GalleryPreferences$FileDownload;->getConnTimeoutKey(Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/gallery/preference/MemoryPreferenceHelper;->putInt(Ljava/lang/String;I)V

    .line 1055
    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
