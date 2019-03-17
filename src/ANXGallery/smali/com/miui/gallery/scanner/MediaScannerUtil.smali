.class public Lcom/miui/gallery/scanner/MediaScannerUtil;
.super Ljava/lang/Object;
.source "MediaScannerUtil.java"


# static fields
.field private static final FIND_NEW_MEDIA_PROJECTION:[Ljava/lang/String;

.field private static final FIND_NEW_PROJECTION:[Ljava/lang/String;

.field private static final FIND_OLD_PROJECTION:[Ljava/lang/String;

.field private static mDirectoryComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "localFile"

    aput-object v1, v0, v2

    sput-object v0, Lcom/miui/gallery/scanner/MediaScannerUtil;->FIND_OLD_PROJECTION:[Ljava/lang/String;

    .line 52
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v2

    sput-object v0, Lcom/miui/gallery/scanner/MediaScannerUtil;->FIND_NEW_PROJECTION:[Ljava/lang/String;

    .line 76
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/gallery/scanner/MediaScannerUtil;->FIND_NEW_MEDIA_PROJECTION:[Ljava/lang/String;

    .line 89
    new-instance v0, Lcom/miui/gallery/scanner/MediaScannerUtil$1;

    invoke-direct {v0}, Lcom/miui/gallery/scanner/MediaScannerUtil$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/scanner/MediaScannerUtil;->mDirectoryComparator:Ljava/util/Comparator;

    return-void
.end method

.method private static addRelativePathsToScanList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "relativePaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "scanList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "bucketIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 108
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 109
    .local v3, "relativePath":Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/miui/gallery/util/StorageUtils;->getAbsolutePath(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "absolutePaths":[Ljava/lang/String;
    array-length v7, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v0, v1, v5

    .line 111
    .local v0, "absolutePath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    .local v4, "tempFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 113
    invoke-static {v0}, Lcom/miui/gallery/util/FileUtils;->getBucketID(Ljava/lang/String;)I

    move-result v2

    .line 114
    .local v2, "bucketId":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 115
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .end local v2    # "bucketId":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 122
    .end local v0    # "absolutePath":Ljava/lang/String;
    .end local v1    # "absolutePaths":[Ljava/lang/String;
    .end local v3    # "relativePath":Ljava/lang/String;
    .end local v4    # "tempFile":Ljava/io/File;
    :cond_2
    return-void
.end method

.method private static checkStoragePermission(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 413
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Lcom/miui/gallery/permission/core/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 414
    const-string v0, "MediaScannerUtil"

    const-string v1, "Can\'t access external storage, relate permission is ungranted"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const/4 v0, 0x0

    .line 417
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static cleanup(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 394
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/miui/gallery/scanner/MediaScannerUtil;->checkStoragePermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/gallery/scanner/MediaScannerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "key_trigger_full_cleanup"

    const/4 v2, 0x1

    .line 397
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 395
    invoke-static {p0, v0}, Lcom/miui/gallery/util/BackgroundServiceHelper;->startForegroundServiceIfNeed(Landroid/content/Context;Landroid/content/Intent;)V

    .line 400
    :cond_0
    return-void
.end method

.method public static cleanupByAlbumId(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "priority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 403
    .local p2, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/miui/gallery/scanner/MediaScannerUtil;->checkStoragePermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/gallery/scanner/MediaScannerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "cleanup_by_album_ids"

    .line 406
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_scan_priority"

    .line 407
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 404
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 410
    :cond_0
    return-void
.end method

.method private static recordScannerException(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 7
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 384
    invoke-static {}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->generatorCommonParams()Ljava/util/Map;

    move-result-object v0

    .line 385
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "method"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const-string v1, "media_scanner"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "scanner_%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 388
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 386
    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 391
    return-void
.end method

.method private static scanAbsolutePaths(Landroid/content/Context;Ljava/util/ArrayList;IZ)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "priority"    # I
    .param p3, "cancelRunning"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    sget-object v1, Lcom/miui/gallery/scanner/MediaScannerUtil;->mDirectoryComparator:Ljava/util/Comparator;

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 127
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "cacheKey":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/util/GalleryDataCache;->getInstance()Lcom/miui/gallery/util/GalleryDataCache;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/miui/gallery/util/GalleryDataCache;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/gallery/scanner/MediaScannerService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "scan_folder_paths"

    .line 131
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "key_scan_priority"

    .line 132
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "key_cancel_running"

    .line 133
    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "key_bulk_notify"

    const/4 v3, 0x1

    .line 134
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 129
    invoke-static {p0, v1}, Lcom/miui/gallery/util/BackgroundServiceHelper;->startForegroundServiceIfNeed(Landroid/content/Context;Landroid/content/Intent;)V

    .line 137
    .end local v0    # "cacheKey":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static scanAllAlbumDirectories(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "priority"    # I

    .prologue
    .line 232
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/miui/gallery/scanner/MediaScannerUtil;->scanAllAlbumDirectories(Landroid/content/Context;IZ)V

    .line 233
    return-void
.end method

.method public static scanAllAlbumDirectories(Landroid/content/Context;IZ)V
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "priority"    # I
    .param p2, "cancelRunning"    # Z

    .prologue
    .line 141
    if-eqz p0, :cond_3

    invoke-static/range {p0 .. p0}, Lcom/miui/gallery/scanner/MediaScannerUtil;->checkStoragePermission(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 143
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v15, "bucketIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v20, "scanList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "DCIM/Camera"

    aput-object v6, v4, v5

    invoke-static {v4}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v16

    .line 148
    .local v16, "camera":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2, v15}, Lcom/miui/gallery/scanner/MediaScannerUtil;->addRelativePathsToScanList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 151
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getAlbumsInWhiteList()Ljava/util/ArrayList;

    move-result-object v22

    .line 152
    .local v22, "whitelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2, v15}, Lcom/miui/gallery/scanner/MediaScannerUtil;->addRelativePathsToScanList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 155
    sget-object v5, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    sget-object v6, Lcom/miui/gallery/scanner/MediaScannerUtil;->FIND_OLD_PROJECTION:[Ljava/lang/String;

    const-string v7, "serverType=0"

    const/4 v8, 0x0

    const-string v9, "dateModified DESC"

    new-instance v10, Lcom/miui/gallery/scanner/MediaScannerUtil$2;

    invoke-direct {v10}, Lcom/miui/gallery/scanner/MediaScannerUtil$2;-><init>()V

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v10}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 170
    .local v17, "existAlbums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2, v15}, Lcom/miui/gallery/scanner/MediaScannerUtil;->addRelativePathsToScanList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 172
    const-string v7, "0=0) AND GROUP BY (bucket_id) ORDER BY (date_modified"

    .line 173
    .local v7, "findNewImagesWhere":Ljava/lang/String;
    const-string v11, "0=0) AND GROUP BY (bucket_id) ORDER BY (date_modified"

    .line 175
    .local v11, "findNewVideoWhere":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 176
    const-string v4, ","

    invoke-static {v4, v15}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v21

    .line 177
    .local v21, "whereArgs":Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "0=0) AND bucket_id NOT IN (%s) GROUP BY (bucket_id) ORDER BY (date_modified"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v21, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 178
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "0=0) AND bucket_id NOT IN (%s) GROUP BY (bucket_id) ORDER BY (date_modified"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v21, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 182
    .end local v21    # "whereArgs":Ljava/lang/String;
    :cond_0
    const-string v4, "external"

    .line 184
    invoke-static {v4}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/miui/gallery/scanner/MediaScannerUtil;->FIND_NEW_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v10, Lcom/miui/gallery/scanner/MediaScannerUtil$3;

    invoke-direct {v10}, Lcom/miui/gallery/scanner/MediaScannerUtil$3;-><init>()V

    move-object/from16 v4, p0

    .line 183
    invoke-static/range {v4 .. v10}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    .line 201
    .local v18, "externalImages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "external"

    .line 203
    invoke-static {v4}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    sget-object v10, Lcom/miui/gallery/scanner/MediaScannerUtil;->FIND_NEW_PROJECTION:[Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    new-instance v14, Lcom/miui/gallery/scanner/MediaScannerUtil$4;

    invoke-direct {v14}, Lcom/miui/gallery/scanner/MediaScannerUtil$4;-><init>()V

    move-object/from16 v8, p0

    .line 202
    invoke-static/range {v8 .. v14}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    .line 220
    .local v19, "externalVideo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {v18 .. v18}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 221
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 223
    :cond_1
    invoke-static/range {v19 .. v19}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 224
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 226
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/scanner/MediaScannerUtil;->scanAbsolutePaths(Landroid/content/Context;Ljava/util/ArrayList;IZ)V

    .line 228
    .end local v7    # "findNewImagesWhere":Ljava/lang/String;
    .end local v11    # "findNewVideoWhere":Ljava/lang/String;
    .end local v15    # "bucketIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v16    # "camera":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17    # "existAlbums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18    # "externalImages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19    # "externalVideo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v20    # "scanList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v22    # "whitelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    return-void
.end method

.method public static scanDirectories(Landroid/content/Context;Ljava/util/ArrayList;IZ)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "priority"    # I
    .param p3, "bulkNotify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/miui/gallery/scanner/MediaScannerUtil;->scanDirectories(Landroid/content/Context;Ljava/util/ArrayList;IZZ)V

    .line 237
    return-void
.end method

.method public static scanDirectories(Landroid/content/Context;Ljava/util/ArrayList;IZZ)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "priority"    # I
    .param p3, "bulkNotify"    # Z
    .param p4, "recursiveScan"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;IZZ)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/miui/gallery/scanner/MediaScannerUtil;->checkStoragePermission(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "cacheKey":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/util/GalleryDataCache;->getInstance()Lcom/miui/gallery/util/GalleryDataCache;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/miui/gallery/util/GalleryDataCache;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 243
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/gallery/scanner/MediaScannerService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "scan_folder_paths"

    .line 245
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "key_scan_priority"

    .line 246
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "key_bulk_notify"

    .line 247
    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "key_recursive_scan"

    .line 248
    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 243
    invoke-static {p0, v1}, Lcom/miui/gallery/util/BackgroundServiceHelper;->startForegroundServiceIfNeed(Landroid/content/Context;Landroid/content/Intent;)V

    .line 251
    .end local v0    # "cacheKey":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static scanDirectory(Landroid/content/Context;Ljava/lang/String;IZZ)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "priority"    # I
    .param p3, "bulkNotify"    # Z
    .param p4, "recursiveScan"    # Z

    .prologue
    .line 254
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/miui/gallery/scanner/MediaScannerUtil;->checkStoragePermission(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v0, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-static {p0, v0, p2, p3, p4}, Lcom/miui/gallery/scanner/MediaScannerUtil;->scanDirectories(Landroid/content/Context;Ljava/util/ArrayList;IZZ)V

    .line 259
    .end local v0    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public static scanMediaProvider(Landroid/content/Context;)V
    .locals 20
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 290
    if-nez p0, :cond_1

    .line 291
    const-string v2, "MediaScannerUtil"

    const-string v3, "Context should not be null"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/miui/gallery/scanner/MediaScannerUtil;->checkStoragePermission(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$MediaScanner;->getLastImagesScanTime()J

    move-result-wide v14

    .line 301
    .local v14, "lastImagesScanTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 302
    .local v18, "taskStartTime":J
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "0=0) AND date_added >= %s / 1000  ORDER BY date_added DESC  LIMIT (2000"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 303
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 302
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 305
    .local v5, "findNewMediaWhere":Ljava/lang/String;
    const-string v2, "external"

    .line 306
    invoke-static {v2}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/miui/gallery/scanner/MediaScannerUtil;->FIND_NEW_MEDIA_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Lcom/miui/gallery/scanner/MediaScannerUtil$5;

    invoke-direct {v8}, Lcom/miui/gallery/scanner/MediaScannerUtil$5;-><init>()V

    move-object/from16 v2, p0

    .line 305
    invoke-static/range {v2 .. v8}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/ArrayMap;

    .line 321
    .local v12, "externalImages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 323
    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 324
    .local v10, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    .line 325
    .local v9, "cacheKey":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/util/GalleryDataCache;->getInstance()Lcom/miui/gallery/util/GalleryDataCache;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Lcom/miui/gallery/util/GalleryDataCache;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 326
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/miui/gallery/scanner/MediaScannerService;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "scan_files_path"

    .line 328
    invoke-virtual {v2, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "key_scan_priority"

    const/4 v4, 0x2

    .line 329
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "key_scan_type"

    const/4 v4, 0x1

    .line 330
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "key_task_start_time"

    .line 331
    move-wide/from16 v0, v18

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    .line 326
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/miui/gallery/util/BackgroundServiceHelper;->startForegroundServiceIfNeed(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 341
    .end local v9    # "cacheKey":Ljava/lang/String;
    .end local v10    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$MediaScanner;->getLastVideosScanTime()J

    move-result-wide v16

    .line 342
    .local v16, "lastVideosScanTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 343
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "0=0) AND date_added >= %s / 1000  ORDER BY date_added DESC  LIMIT (2000"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 344
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 343
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 346
    const-string v2, "external"

    .line 347
    invoke-static {v2}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/miui/gallery/scanner/MediaScannerUtil;->FIND_NEW_MEDIA_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Lcom/miui/gallery/scanner/MediaScannerUtil$6;

    invoke-direct {v8}, Lcom/miui/gallery/scanner/MediaScannerUtil$6;-><init>()V

    move-object/from16 v2, p0

    .line 346
    invoke-static/range {v2 .. v8}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/ArrayMap;

    .line 362
    .local v13, "externalVideos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 364
    :try_start_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 365
    .restart local v10    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    .line 366
    .restart local v9    # "cacheKey":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/util/GalleryDataCache;->getInstance()Lcom/miui/gallery/util/GalleryDataCache;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Lcom/miui/gallery/util/GalleryDataCache;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 367
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/miui/gallery/scanner/MediaScannerService;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "scan_files_path"

    .line 369
    invoke-virtual {v2, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "key_scan_priority"

    const/4 v4, 0x2

    .line 370
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "key_scan_type"

    const/4 v4, 0x2

    .line 371
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "key_task_start_time"

    .line 372
    move-wide/from16 v0, v18

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    .line 367
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/miui/gallery/util/BackgroundServiceHelper;->startForegroundServiceIfNeed(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 374
    .end local v9    # "cacheKey":Ljava/lang/String;
    .end local v10    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v11

    .line 375
    .local v11, "e":Ljava/lang/Exception;
    invoke-static/range {v18 .. v19}, Lcom/miui/gallery/preference/GalleryPreferences$MediaScanner;->setLastVideosScanTime(J)V

    .line 377
    const-string v2, "MediaScannerUtil"

    invoke-static {v2, v11}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 378
    const-string v2, "scanMediaProvider"

    invoke-static {v2, v11}, Lcom/miui/gallery/scanner/MediaScannerUtil;->recordScannerException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 333
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v13    # "externalVideos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v16    # "lastVideosScanTime":J
    :catch_1
    move-exception v11

    .line 334
    .restart local v11    # "e":Ljava/lang/Exception;
    invoke-static/range {v18 .. v19}, Lcom/miui/gallery/preference/GalleryPreferences$MediaScanner;->setLastImagesScanTime(J)V

    .line 336
    const-string v2, "MediaScannerUtil"

    invoke-static {v2, v11}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 337
    const-string v2, "scanMediaProvider"

    invoke-static {v2, v11}, Lcom/miui/gallery/scanner/MediaScannerUtil;->recordScannerException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_1
.end method

.method public static scanSingleFile(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "priority"    # I

    .prologue
    .line 262
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/miui/gallery/scanner/MediaScannerUtil;->scanSingleFile(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 263
    return-void
.end method

.method public static scanSingleFile(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "priority"    # I
    .param p3, "forceScan"    # Z

    .prologue
    .line 266
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/miui/gallery/scanner/MediaScannerUtil;->checkStoragePermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/gallery/scanner/MediaScannerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "scan_file_path"

    .line 269
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_scan_priority"

    .line 270
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_force_scan"

    .line 271
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 267
    invoke-static {p0, v0}, Lcom/miui/gallery/util/BackgroundServiceHelper;->startForegroundServiceIfNeed(Landroid/content/Context;Landroid/content/Intent;)V

    .line 274
    :cond_0
    return-void
.end method

.method public static scanVolume(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "volume"    # Ljava/lang/String;

    .prologue
    .line 277
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/miui/gallery/scanner/MediaScannerUtil;->checkStoragePermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/gallery/scanner/MediaScannerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "scan_volume"

    .line 280
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 278
    invoke-static {p0, v0}, Lcom/miui/gallery/util/BackgroundServiceHelper;->startForegroundServiceIfNeed(Landroid/content/Context;Landroid/content/Intent;)V

    .line 283
    :cond_0
    return-void
.end method
