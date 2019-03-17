.class Lcom/miui/gallery/scanner/MediaScanner$ScannerDirectoryClient;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/scanner/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScannerDirectoryClient"
.end annotation


# instance fields
.field private mFileClient:Lcom/miui/gallery/scanner/MediaScanner$ScannerFileClient;

.field private mJobContext:Lcom/miui/gallery/threadpool/ThreadPool$JobContext;


# direct methods
.method constructor <init>(Lcom/miui/gallery/scanner/MediaScanner$ScannerFileClient;Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)V
    .locals 0
    .param p1, "client"    # Lcom/miui/gallery/scanner/MediaScanner$ScannerFileClient;
    .param p2, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 1281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1282
    iput-object p1, p0, Lcom/miui/gallery/scanner/MediaScanner$ScannerDirectoryClient;->mFileClient:Lcom/miui/gallery/scanner/MediaScanner$ScannerFileClient;

    .line 1283
    iput-object p2, p0, Lcom/miui/gallery/scanner/MediaScanner$ScannerDirectoryClient;->mJobContext:Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .line 1284
    return-void
.end method

.method private doScan(Landroid/content/Context;Ljava/lang/String;Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;[Ljava/io/File;J)Ljava/util/ArrayList;
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "entry"    # Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;
    .param p4, "files"    # [Ljava/io/File;
    .param p5, "startTimeMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;",
            "[",
            "Ljava/io/File;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1339
    if-nez p3, :cond_0

    .line 1340
    invoke-static/range {p1 .. p2}, Lcom/miui/gallery/scanner/MediaScanner;->access$400(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;

    move-result-object p3

    .line 1342
    :cond_0
    if-eqz p3, :cond_2

    move-object/from16 v0, p3

    iget-boolean v3, v0, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->isOnlyLinkFolder:Z

    if-eqz v3, :cond_2

    .line 1343
    const/4 v2, 0x0

    .line 1381
    :cond_1
    :goto_0
    return-object v2

    .line 1345
    :cond_2
    if-eqz p3, :cond_4

    move-object/from16 v0, p3

    iget-boolean v3, v0, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->isModified:Z

    if-eqz v3, :cond_4

    invoke-static/range {p3 .. p3}, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->shouldScan(Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v12, 0x1

    .line 1346
    .local v12, "shouldScanFolder":Z
    :goto_1
    if-eqz v12, :cond_3

    .line 1347
    const-string v3, "MediaScanner"

    const-string v4, "do scan folder %s"

    move-object/from16 v0, p2

    invoke-static {v3, v4, v0}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1349
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1350
    .local v2, "childFolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    const/4 v11, 0x0

    .line 1351
    .local v11, "hasScanFail":Z
    move-object/from16 v0, p4

    array-length v4, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_8

    aget-object v10, p4, v3

    .line 1352
    .local v10, "file":Ljava/io/File;
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/scanner/MediaScanner$ScannerDirectoryClient;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1353
    const/4 v2, 0x0

    goto :goto_0

    .line 1345
    .end local v2    # "childFolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .end local v10    # "file":Ljava/io/File;
    .end local v11    # "hasScanFail":Z
    .end local v12    # "shouldScanFolder":Z
    :cond_4
    const/4 v12, 0x0

    goto :goto_1

    .line 1355
    .restart local v2    # "childFolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .restart local v10    # "file":Ljava/io/File;
    .restart local v11    # "hasScanFail":Z
    .restart local v12    # "shouldScanFolder":Z
    :cond_5
    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1356
    if-eqz v12, :cond_6

    .line 1358
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 1359
    .local v14, "start":J
    const-wide/16 v6, -0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/scanner/MediaScanner$ScannerDirectoryClient;->mFileClient:Lcom/miui/gallery/scanner/MediaScanner$ScannerFileClient;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v5, v0, v10, v1}, Lcom/miui/gallery/scanner/MediaScanner$ScannerFileClient;->scanFile(Landroid/content/Context;Ljava/io/File;Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;)J

    move-result-wide v16

    cmp-long v5, v6, v16

    if-nez v5, :cond_6

    .line 1360
    const-string v5, "MediaScanner"

    const-string v6, "scan %s fail"

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1361
    const/4 v11, 0x1

    .line 1351
    .end local v14    # "start":J
    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1366
    :catch_0
    move-exception v9

    .line 1367
    .local v9, "e":Ljava/lang/Exception;
    const-string v5, "MediaScanner"

    const-string v6, "scan file %s exception %s"

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7, v9}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 1371
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_7
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1374
    .end local v10    # "file":Ljava/io/File;
    :cond_8
    if-eqz v12, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/scanner/MediaScanner$ScannerDirectoryClient;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_1

    if-nez v11, :cond_1

    .line 1375
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/miui/gallery/scanner/MediaScanner;->access$300(Landroid/content/Context;Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;)V

    .line 1377
    sget-boolean v3, Lcom/miui/os/Rom;->IS_DEV:Z

    if-eqz v3, :cond_1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p5

    move-object/from16 v8, p3

    .line 1378
    invoke-direct/range {v3 .. v8}, Lcom/miui/gallery/scanner/MediaScanner$ScannerDirectoryClient;->recordScanCost(Landroid/content/Context;Ljava/lang/String;JLcom/miui/gallery/scanner/MediaScanner$AlbumEntry;)V

    goto/16 :goto_0
.end method

.method private isCancelled()Z
    .locals 1

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/miui/gallery/scanner/MediaScanner$ScannerDirectoryClient;->mJobContext:Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/scanner/MediaScanner$ScannerDirectoryClient;->mJobContext:Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    invoke-interface {v0}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recordScanCost(Landroid/content/Context;Ljava/lang/String;JLcom/miui/gallery/scanner/MediaScanner$AlbumEntry;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "startTimeMillis"    # J
    .param p5, "entry"    # Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;

    .prologue
    .line 1385
    const/4 v2, 0x0

    .line 1387
    .local v2, "serverId":Ljava/lang/Long;
    :try_start_0
    iget-object v3, p5, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->mServerID:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1392
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 1393
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 1394
    :cond_0
    invoke-static {p1, p2}, Lcom/miui/gallery/util/StorageUtils;->getRelativePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1395
    .local v1, "relativePath":Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1396
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "wait_for_scan_cost(s)"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p5, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->mDateModified:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1397
    const-string v3, "scan_cost(ms)"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, p3

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1398
    const-string v3, "media_scanner"

    const-string v4, "scan_directory_%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    .line 1400
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1398
    invoke-static {v3, v4, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1404
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "relativePath":Ljava/lang/String;
    :cond_1
    return-void

    .line 1388
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public scanFolder(Landroid/content/Context;Ljava/io/File;Z)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "folder"    # Ljava/io/File;
    .param p3, "recursiveScan"    # Z

    .prologue
    .line 1291
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1292
    .local v6, "start":J
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->isHidden()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1293
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 1294
    .local v3, "path":Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/miui/gallery/util/StorageUtils;->getRelativePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1295
    .local v10, "relativePath":Ljava/lang/String;
    invoke-static {v10}, Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper;->isOnlyLinkFileFolder(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1336
    .end local v3    # "path":Ljava/lang/String;
    .end local v10    # "relativePath":Ljava/lang/String;
    :cond_0
    return-void

    .line 1298
    .restart local v3    # "path":Ljava/lang/String;
    .restart local v10    # "relativePath":Ljava/lang/String;
    :cond_1
    invoke-static {p1, v3}, Lcom/miui/gallery/scanner/MediaScanner;->access$200(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;

    move-result-object v4

    .line 1300
    .local v4, "entry":Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;
    if-eqz v4, :cond_2

    iget-boolean v1, v4, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->isModified:Z

    if-eqz v1, :cond_4

    invoke-static {v4}, Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;->shouldScan(Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    const/4 v11, 0x1

    .line 1301
    .local v11, "shouldScanFolder":Z
    :goto_0
    if-nez v11, :cond_3

    if-eqz p3, :cond_0

    .line 1303
    :cond_3
    iget-object v1, p0, Lcom/miui/gallery/scanner/MediaScanner$ScannerDirectoryClient;->mJobContext:Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    invoke-static {v1}, Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper;->getFileFilter(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper$MediaFileFilter;

    move-result-object v9

    .line 1304
    .local v9, "filter":Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper$MediaFileFilter;
    invoke-virtual {p2, v9}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    .line 1305
    .local v5, "files":[Ljava/io/File;
    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/miui/gallery/scanner/MediaScanner$ScannerDirectoryClient;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1306
    invoke-virtual {v9}, Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper$MediaFileFilter;->hasMediaFile()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1308
    invoke-static {}, Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper;->getFileComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v5, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1309
    invoke-direct {p0}, Lcom/miui/gallery/scanner/MediaScanner$ScannerDirectoryClient;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, p0

    move-object v2, p1

    .line 1312
    invoke-direct/range {v1 .. v7}, Lcom/miui/gallery/scanner/MediaScanner$ScannerDirectoryClient;->doScan(Landroid/content/Context;Ljava/lang/String;Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;[Ljava/io/File;J)Ljava/util/ArrayList;

    move-result-object v8

    .line 1313
    .local v8, "childFolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    if-eqz p3, :cond_0

    if-eqz v8, :cond_0

    .line 1314
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 1315
    .local v0, "child":Ljava/io/File;
    invoke-direct {p0}, Lcom/miui/gallery/scanner/MediaScanner$ScannerDirectoryClient;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1318
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v2}, Lcom/miui/gallery/scanner/MediaScanner$ScannerDirectoryClient;->scanFolder(Landroid/content/Context;Ljava/io/File;Z)V

    goto :goto_1

    .line 1300
    .end local v0    # "child":Ljava/io/File;
    .end local v5    # "files":[Ljava/io/File;
    .end local v8    # "childFolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .end local v9    # "filter":Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper$MediaFileFilter;
    .end local v11    # "shouldScanFolder":Z
    :cond_4
    const/4 v11, 0x0

    goto :goto_0

    .line 1322
    .restart local v5    # "files":[Ljava/io/File;
    .restart local v9    # "filter":Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper$MediaFileFilter;
    .restart local v11    # "shouldScanFolder":Z
    :cond_5
    if-eqz v4, :cond_6

    .line 1323
    invoke-static {p1, v4}, Lcom/miui/gallery/scanner/MediaScanner;->access$300(Landroid/content/Context;Lcom/miui/gallery/scanner/MediaScanner$AlbumEntry;)V

    .line 1325
    :cond_6
    if-eqz p3, :cond_0

    .line 1326
    array-length v2, v5

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_0

    aget-object v0, v5, v1

    .line 1327
    .restart local v0    # "child":Ljava/io/File;
    invoke-direct {p0}, Lcom/miui/gallery/scanner/MediaScanner$ScannerDirectoryClient;->isCancelled()Z

    move-result v12

    if-nez v12, :cond_0

    .line 1330
    const/4 v12, 0x1

    invoke-virtual {p0, p1, v0, v12}, Lcom/miui/gallery/scanner/MediaScanner$ScannerDirectoryClient;->scanFolder(Landroid/content/Context;Ljava/io/File;Z)V

    .line 1326
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
