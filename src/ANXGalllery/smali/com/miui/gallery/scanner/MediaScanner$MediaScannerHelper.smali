.class Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/scanner/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaScannerHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper$FileComparator;,
        Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper$MediaFileFilter;
    }
.end annotation


# static fields
.field private static sAlbumPatternMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/util/regex/Pattern;",
            "Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;",
            ">;"
        }
    .end annotation
.end field

.field private static sFileComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static sHideAlbumPatterns:[Ljava/util/regex/Pattern;

.field private static sNonHiddenPathPrefixList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSyncLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1442
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper;->sSyncLock:Ljava/lang/Object;

    return-void
.end method

.method private static getAlbumPatternMap()Landroid/util/ArrayMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/util/regex/Pattern;",
            "Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1486
    sget-object v5, Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper;->sSyncLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1487
    :try_start_0
    sget-object v4, Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper;->sAlbumPatternMap:Landroid/util/ArrayMap;

    if-nez v4, :cond_1

    .line 1488
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    sput-object v4, Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper;->sAlbumPatternMap:Landroid/util/ArrayMap;

    .line 1489
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getAlbumPatterns()Ljava/util/List;

    move-result-object v0

    .line 1490
    .local v0, "albumPatterns":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$AlbumPattern;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 1491
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$AlbumPattern;

    .line 1492
    .local v2, "pattern":Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$AlbumPattern;
    invoke-virtual {v2}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$AlbumPattern;->getPattern()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v2}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$AlbumPattern;->getAttributes()Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1494
    :try_start_1
    invoke-virtual {v2}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$AlbumPattern;->getPattern()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 1495
    .local v3, "regexPattern":Ljava/util/regex/Pattern;
    sget-object v6, Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper;->sAlbumPatternMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$AlbumPattern;->getAttributes()Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1496
    .end local v3    # "regexPattern":Ljava/util/regex/Pattern;
    :catch_0
    move-exception v1

    .line 1497
    .local v1, "e":Ljava/util/regex/PatternSyntaxException;
    :try_start_2
    const-string v6, "MediaScanner"

    const-string v7, "Invalid album regex pattern: %s"

    invoke-virtual {v1}, Ljava/util/regex/PatternSyntaxException;->getPattern()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1504
    .end local v1    # "e":Ljava/util/regex/PatternSyntaxException;
    .end local v2    # "pattern":Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$AlbumPattern;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 1503
    :cond_1
    :try_start_3
    sget-object v4, Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper;->sAlbumPatternMap:Landroid/util/ArrayMap;

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v4
.end method

.method public static getAttributesByPath(Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;
    .locals 5
    .param p0, "relativePath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1579
    if-eqz p0, :cond_0

    sget-object v2, Lcom/miui/gallery/util/StorageUtils;->KEY_FOR_EMPTY_RELATIVE_PATH:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v2, v3

    .line 1588
    :goto_0
    return-object v2

    .line 1580
    :cond_1
    invoke-static {}, Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper;->getAlbumPatternMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 1581
    .local v0, "albumPatternMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/util/regex/Pattern;Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;>;"
    if-eqz v0, :cond_3

    .line 1582
    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1583
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/regex/Pattern;Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1584
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;

    goto :goto_0

    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/regex/Pattern;Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;>;"
    :cond_3
    move-object v2, v3

    .line 1588
    goto :goto_0
.end method

.method public static getFileComparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1512
    sget-object v0, Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper;->sFileComparator:Ljava/util/Comparator;

    if-nez v0, :cond_0

    .line 1513
    new-instance v0, Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper$FileComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper$FileComparator;-><init>(Lcom/miui/gallery/scanner/MediaScanner$1;)V

    sput-object v0, Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper;->sFileComparator:Ljava/util/Comparator;

    .line 1515
    :cond_0
    sget-object v0, Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper;->sFileComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public static getFileFilter(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper$MediaFileFilter;
    .locals 1
    .param p0, "jobContext"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 1508
    new-instance v0, Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper$MediaFileFilter;

    invoke-direct {v0, p0}, Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper$MediaFileFilter;-><init>(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)V

    return-object v0
.end method

.method private static getHideAlbumPatterns()[Ljava/util/regex/Pattern;
    .locals 11

    .prologue
    .line 1462
    sget-object v7, Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper;->sSyncLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1463
    :try_start_0
    sget-object v6, Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper;->sHideAlbumPatterns:[Ljava/util/regex/Pattern;

    if-nez v6, :cond_0

    .line 1464
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getHiddenAlbums()Lcom/miui/gallery/cloudcontrol/strategies/HiddenAlbumsStrategy;

    move-result-object v1

    .line 1465
    .local v1, "hiddenAlbums":Lcom/miui/gallery/cloudcontrol/strategies/HiddenAlbumsStrategy;
    if-eqz v1, :cond_0

    .line 1466
    invoke-virtual {v1}, Lcom/miui/gallery/cloudcontrol/strategies/HiddenAlbumsStrategy;->getPatterns()Ljava/util/List;

    move-result-object v5

    .line 1467
    .local v5, "patterns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v5}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1468
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/util/regex/Pattern;

    sput-object v6, Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper;->sHideAlbumPatterns:[Ljava/util/regex/Pattern;

    .line 1469
    const/4 v2, 0x0

    .line 1470
    .local v2, "index":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v2

    .end local v2    # "index":I
    .local v3, "index":I
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1472
    .local v4, "pattern":Ljava/lang/String;
    :try_start_1
    sget-object v8, Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper;->sHideAlbumPatterns:[Ljava/util/regex/Pattern;
    :try_end_1
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    :try_start_2
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    aput-object v9, v8, v3
    :try_end_2
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    move v3, v2

    .line 1477
    .end local v2    # "index":I
    .restart local v3    # "index":I
    goto :goto_0

    .line 1473
    :catch_0
    move-exception v0

    .line 1474
    .local v0, "e":Ljava/util/regex/PatternSyntaxException;
    :goto_2
    :try_start_3
    const-string v8, "MediaScanner"

    const-string v9, "Invalid hide album regex pattern: %s"

    invoke-virtual {v0}, Ljava/util/regex/PatternSyntaxException;->getPattern()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1475
    sget-object v8, Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper;->sHideAlbumPatterns:[Ljava/util/regex/Pattern;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    const/4 v9, 0x0

    aput-object v9, v8, v3

    goto :goto_1

    .line 1482
    .end local v0    # "e":Ljava/util/regex/PatternSyntaxException;
    .end local v2    # "index":I
    .end local v4    # "pattern":Ljava/lang/String;
    .end local v5    # "patterns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 1481
    :cond_0
    :try_start_4
    sget-object v6, Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper;->sHideAlbumPatterns:[Ljava/util/regex/Pattern;

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v6

    .line 1473
    .restart local v2    # "index":I
    .restart local v4    # "pattern":Ljava/lang/String;
    .restart local v5    # "patterns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1
    move-exception v0

    move v3, v2

    .end local v2    # "index":I
    .restart local v3    # "index":I
    goto :goto_2
.end method

.method private static getNonHiddenPathPrefixList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1449
    sget-object v2, Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper;->sSyncLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1450
    :try_start_0
    sget-object v1, Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper;->sNonHiddenPathPrefixList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 1451
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper;->sNonHiddenPathPrefixList:Ljava/util/List;

    .line 1452
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getHiddenAlbums()Lcom/miui/gallery/cloudcontrol/strategies/HiddenAlbumsStrategy;

    move-result-object v0

    .line 1453
    .local v0, "hiddenAlbums":Lcom/miui/gallery/cloudcontrol/strategies/HiddenAlbumsStrategy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/HiddenAlbumsStrategy;->getNonHiddenPathPrefix()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1454
    sget-object v1, Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper;->sNonHiddenPathPrefixList:Ljava/util/List;

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/HiddenAlbumsStrategy;->getNonHiddenPathPrefix()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1457
    :cond_0
    sget-object v1, Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper;->sNonHiddenPathPrefixList:Ljava/util/List;

    monitor-exit v2

    return-object v1

    .line 1458
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isInBlackList(Ljava/lang/String;)Z
    .locals 12
    .param p0, "relativePath"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v10, -0x1

    const/4 v8, 0x0

    .line 1592
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    sget-object v9, Lcom/miui/gallery/util/StorageUtils;->KEY_FOR_EMPTY_RELATIVE_PATH:Ljava/lang/String;

    .line 1593
    invoke-virtual {v9, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_0
    move v7, v8

    .line 1634
    :cond_1
    :goto_0
    return v7

    .line 1597
    :cond_2
    move-object v4, p0

    .line 1599
    .local v4, "parentPath":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 1601
    .local v1, "index":I
    :cond_3
    invoke-virtual {v4, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1602
    invoke-static {v4}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getAlbumByPath(Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;

    move-result-object v0

    .line 1603
    .local v0, "album":Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;->getAttributes()Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;->getAttributes()Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;

    move-result-object v9

    invoke-virtual {v9}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;->isHide()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1607
    :cond_4
    sget-char v9, Ljava/io/File;->separatorChar:C

    invoke-virtual {v4, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ne v1, v10, :cond_3

    .line 1610
    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v10, :cond_5

    move v7, v8

    .line 1611
    goto :goto_0

    .line 1615
    :cond_5
    invoke-static {}, Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper;->getNonHiddenPathPrefixList()Ljava/util/List;

    move-result-object v3

    .line 1616
    .local v3, "nonHiddenPathPrefixList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v3}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1617
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1618
    .local v2, "nonHiddenPathPrefix":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    move v7, v8

    .line 1619
    goto :goto_0

    .line 1625
    .end local v2    # "nonHiddenPathPrefix":Ljava/lang/String;
    :cond_7
    invoke-static {}, Lcom/miui/gallery/scanner/MediaScanner$MediaScannerHelper;->getHideAlbumPatterns()[Ljava/util/regex/Pattern;

    move-result-object v6

    .line 1626
    .local v6, "patterns":[Ljava/util/regex/Pattern;
    if-eqz v6, :cond_9

    array-length v9, v6

    if-lez v9, :cond_9

    .line 1627
    array-length v10, v6

    move v9, v8

    :goto_1
    if-ge v9, v10, :cond_9

    aget-object v5, v6, v9

    .line 1628
    .local v5, "pattern":Ljava/util/regex/Pattern;
    if-eqz v5, :cond_8

    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1629
    invoke-static {p0}, Lcom/miui/gallery/scanner/MediaScanner;->access$600(Ljava/lang/String;)V

    goto :goto_0

    .line 1627
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .end local v5    # "pattern":Ljava/util/regex/Pattern;
    :cond_9
    move v7, v8

    .line 1634
    goto :goto_0
.end method

.method public static isOnlyLinkFileFolder(Ljava/lang/String;)Z
    .locals 1
    .param p0, "relativePath"    # Ljava/lang/String;

    .prologue
    .line 1638
    invoke-static {p0}, Lcom/miui/gallery/cloud/DownloadPathHelper;->isShareFolderRelativePath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
