.class public Lcom/miui/gallery/scanner/CloudMediaBulkDeleter;
.super Lcom/miui/gallery/scanner/MediaBulkDeleter;
.source "CloudMediaBulkDeleter.java"


# instance fields
.field private mIsNormal:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "columnName"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/scanner/MediaBulkDeleter;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/scanner/CloudMediaBulkDeleter;->mIsNormal:Z

    .line 18
    return-void
.end method

.method private recordMainSDCardUnwritable()V
    .locals 3

    .prologue
    .line 63
    const-string v0, "CloudMediaBulkDeleter"

    const-string v1, "Main SDCard is unwritable, skip cleanup"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v0, "media_scanner"

    const-string v1, "main_sdcard_unwritable"

    .line 67
    invoke-static {}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->generatorCommonParams()Ljava/util/Map;

    move-result-object v2

    .line 64
    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 69
    return-void
.end method

.method private recordStorageUnmounted()V
    .locals 3

    .prologue
    .line 54
    const-string v0, "CloudMediaBulkDeleter"

    const-string v1, "No external storage mounted, skip cleanup"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v0, "media_scanner"

    const-string v1, "no_external_storage_mounted"

    .line 58
    invoke-static {}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->generatorCommonParams()Ljava/util/Map;

    move-result-object v2

    .line 55
    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 60
    return-void
.end method


# virtual methods
.method public deleteForResult(Landroid/content/Context;J)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # J

    .prologue
    .line 24
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/scanner/MediaBulkDeleter;->delete(Landroid/content/Context;J)V

    .line 25
    iget-boolean v0, p0, Lcom/miui/gallery/scanner/CloudMediaBulkDeleter;->mIsNormal:Z

    return v0
.end method

.method public flush(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-static {p1}, Lcom/miui/gallery/util/StorageUtils;->getMountedVolumePaths(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v0

    .line 39
    .local v0, "hasExternalStorageMounted":Z
    invoke-static {p1}, Lcom/miui/gallery/util/StorageUtils;->isPrimaryStorageWritable(Landroid/content/Context;)Z

    move-result v1

    .line 40
    .local v1, "hasMainSDCard":Z
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 41
    invoke-super {p0, p1}, Lcom/miui/gallery/scanner/MediaBulkDeleter;->flush(Landroid/content/Context;)V

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miui/gallery/scanner/CloudMediaBulkDeleter;->mIsNormal:Z

    .line 44
    if-nez v0, :cond_2

    .line 45
    invoke-direct {p0}, Lcom/miui/gallery/scanner/CloudMediaBulkDeleter;->recordStorageUnmounted()V

    .line 47
    :cond_2
    if-nez v1, :cond_0

    .line 48
    invoke-direct {p0}, Lcom/miui/gallery/scanner/CloudMediaBulkDeleter;->recordMainSDCardUnwritable()V

    goto :goto_0
.end method

.method public flushForResult(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/miui/gallery/scanner/CloudMediaBulkDeleter;->flush(Landroid/content/Context;)V

    .line 33
    iget-boolean v0, p0, Lcom/miui/gallery/scanner/CloudMediaBulkDeleter;->mIsNormal:Z

    return v0
.end method
