.class Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;
.super Ljava/lang/Object;
.source "MediaManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cache/MediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitializeTask"
.end annotation


# instance fields
.field private mDBHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field final synthetic this$0:Lcom/miui/gallery/provider/cache/MediaManager;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/provider/cache/MediaManager;Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 0
    .param p2, "DBHelper"    # Landroid/database/sqlite/SQLiteOpenHelper;

    .prologue
    .line 607
    iput-object p1, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 608
    iput-object p2, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->mDBHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 609
    return-void
.end method

.method private getLoadSortBy()Ljava/lang/String;
    .locals 6

    .prologue
    .line 753
    invoke-static {}, Lcom/miui/gallery/provider/MediaSortDateHelper;->getSortDateProvider()Lcom/miui/gallery/provider/MediaSortDateHelper$SortDateProvider;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/provider/MediaSortDateHelper$SortDate;->MODIFY_TIME:Lcom/miui/gallery/provider/MediaSortDateHelper$SortDate;

    invoke-interface {v1, v2}, Lcom/miui/gallery/provider/MediaSortDateHelper$SortDateProvider;->getAlbumIdsBySortDate(Lcom/miui/gallery/provider/MediaSortDateHelper$SortDate;)Ljava/util/List;

    move-result-object v0

    .line 754
    .local v0, "sortByModifyAlbumIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 755
    const-string v1, "mixedDateTime"

    .line 757
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "(case when %s in (%s) then %s else %s end)"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "localGroupId"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, ","

    .line 758
    invoke-static {v5, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "dateModified"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "mixedDateTime"

    aput-object v5, v3, v4

    .line 757
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private loadFullPart(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 688
    const-string v0, ".provider.cache.MediaManager"

    const-string/jumbo v1, "start load second part"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 690
    .local v10, "begin":J
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 692
    .local v13, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/provider/cache/MediaItem;>;"
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-static {v0}, Lcom/miui/gallery/provider/cache/MediaManager;->access$1000(Lcom/miui/gallery/provider/cache/MediaManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 693
    const-string v3, "(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\')) AND serverType IN (1,2)"

    .line 694
    .local v3, "selection":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->getLoadSortBy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DESC LIMIT -1 OFFSET "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 700
    .local v7, "orderBy":Ljava/lang/String;
    :goto_0
    const-string v1, "cloud"

    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    iget-object v0, v0, Lcom/miui/gallery/provider/cache/MediaManager;->mGenerator:Lcom/miui/gallery/provider/cache/CacheItem$Generator;

    .line 702
    invoke-interface {v0}, Lcom/miui/gallery/provider/cache/CacheItem$Generator;->getProjection()[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p1

    .line 700
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 709
    .local v12, "cursor":Landroid/database/Cursor;
    if-nez v12, :cond_1

    .line 729
    :goto_1
    return-void

    .line 696
    .end local v3    # "selection":Ljava/lang/String;
    .end local v7    # "orderBy":Ljava/lang/String;
    .end local v12    # "cursor":Landroid/database/Cursor;
    :cond_0
    const-string v0, "(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\')) AND serverType IN (1,2) AND _id NOT IN (%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-static {v4}, Lcom/miui/gallery/provider/cache/MediaManager;->access$1000(Lcom/miui/gallery/provider/cache/MediaManager;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 697
    .restart local v3    # "selection":Ljava/lang/String;
    invoke-direct {p0}, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->getLoadSortBy()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "orderBy":Ljava/lang/String;
    goto :goto_0

    .line 714
    .restart local v12    # "cursor":Landroid/database/Cursor;
    :cond_1
    const/16 v0, 0x1000

    :try_start_0
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 715
    const/4 v9, 0x0

    .line 716
    .local v9, "count":I
    :cond_2
    :goto_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 717
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    iget-object v0, v0, Lcom/miui/gallery/provider/cache/MediaManager;->mGenerator:Lcom/miui/gallery/provider/cache/CacheItem$Generator;

    invoke-interface {v0, v12}, Lcom/miui/gallery/provider/cache/CacheItem$Generator;->from(Landroid/database/Cursor;)Lcom/miui/gallery/provider/cache/CacheItem;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    add-int/lit8 v9, v9, 0x1

    .line 719
    const/16 v0, 0x1000

    if-eq v9, v0, :cond_3

    invoke-interface {v12}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 720
    :cond_3
    const/4 v9, 0x0

    .line 721
    invoke-direct {p0, v13}, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->publishResult(Ljava/util/List;)V

    .line 722
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 726
    .end local v9    # "count":I
    :catchall_0
    move-exception v0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v9    # "count":I
    :cond_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 728
    const-string v0, ".provider.cache.MediaManager"

    const-string v1, "load second part cost: %d. current position = %d"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v12}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v2, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private loadMinimumPart(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 18
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 646
    const-string v2, ".provider.cache.MediaManager"

    const-string v3, "read first part"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 648
    .local v16, "start":J
    const/4 v11, 0x0

    .line 652
    .local v11, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-static {v2}, Lcom/miui/gallery/provider/cache/MediaManager;->access$1000(Lcom/miui/gallery/provider/cache/MediaManager;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v5, "(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\')) AND serverType IN (1,2)"

    .line 653
    .local v5, "selection":Ljava/lang/String;
    :goto_0
    const-string v3, "cloud"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    iget-object v2, v2, Lcom/miui/gallery/provider/cache/MediaManager;->mGenerator:Lcom/miui/gallery/provider/cache/CacheItem$Generator;

    .line 655
    invoke-interface {v2}, Lcom/miui/gallery/provider/cache/CacheItem$Generator;->getProjection()[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 658
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->getLoadSortBy()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " DESC"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v2, 0x80

    .line 659
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v2, p1

    .line 653
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 671
    if-nez v11, :cond_0

    .line 672
    const-string v2, ".provider.cache.MediaManager"

    const-string v3, "fill provider failed with a null cursor"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    :cond_0
    :try_start_1
    new-instance v13, Ljava/util/ArrayList;

    const/16 v2, 0x40

    invoke-direct {v13, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 677
    .local v13, "items":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/cache/MediaItem;>;"
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 678
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    iget-object v2, v2, Lcom/miui/gallery/provider/cache/MediaManager;->mGenerator:Lcom/miui/gallery/provider/cache/CacheItem$Generator;

    invoke-interface {v2, v11}, Lcom/miui/gallery/provider/cache/CacheItem$Generator;->from(Landroid/database/Cursor;)Lcom/miui/gallery/provider/cache/CacheItem;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 683
    .end local v13    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/cache/MediaItem;>;"
    :catchall_0
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    .line 652
    .end local v5    # "selection":Ljava/lang/String;
    :cond_1
    :try_start_2
    const-string v2, "(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\')) AND serverType IN (1,2) AND _id IN (%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-static {v6}, Lcom/miui/gallery/provider/cache/MediaManager;->access$1000(Lcom/miui/gallery/provider/cache/MediaManager;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v5

    goto :goto_0

    .line 660
    :catch_0
    move-exception v12

    .line 661
    .local v12, "e":Landroid/database/sqlite/SQLiteException;
    invoke-static {}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->generatorCommonParams()Ljava/util/Map;

    move-result-object v14

    .line 662
    .local v14, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "dbversion"

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v14, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    const-string v2, "exception"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v14, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    const-string v2, "db_helper"

    const-string v3, "db_mediamanager_load"

    invoke-static {v2, v3, v14}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 666
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/miui/gallery/util/DebugUtil;->exportDB(Z)V

    .line 667
    invoke-static {}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance()Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/provider/GalleryDBHelper;->deleteDatabase()Z

    .line 668
    throw v12

    .line 680
    .end local v12    # "e":Landroid/database/sqlite/SQLiteException;
    .end local v14    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "selection":Ljava/lang/String;
    .restart local v13    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/cache/MediaItem;>;"
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->publishResult(Ljava/util/List;)V

    .line 681
    const-string v2, ".provider.cache.MediaManager"

    const-string v3, "load %d item for the first time, costs %dms"

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v16

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v2, v3, v4, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 683
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 685
    return-void
.end method

.method private lockedLoadMinimumPart(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 631
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-static {v0}, Lcom/miui/gallery/provider/cache/MediaManager;->access$700(Lcom/miui/gallery/provider/cache/MediaManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 633
    :try_start_0
    const-string v0, ".provider.cache.MediaManager"

    const-string v2, "read albums"

    invoke-static {v0, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-static {v0}, Lcom/miui/gallery/provider/cache/MediaManager;->access$800(Lcom/miui/gallery/provider/cache/MediaManager;)Lcom/miui/gallery/provider/cache/AlbumDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/provider/cache/AlbumDelegate;->load(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 635
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-static {v0}, Lcom/miui/gallery/provider/cache/MediaManager;->access$900(Lcom/miui/gallery/provider/cache/MediaManager;)Lcom/miui/gallery/provider/cache/FavoritesDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/provider/cache/FavoritesDelegate;->load(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 636
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$HomePage;->getHomePageImageIds()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/gallery/provider/cache/MediaManager;->access$1002(Lcom/miui/gallery/provider/cache/MediaManager;Ljava/lang/String;)Ljava/lang/String;

    .line 637
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->loadMinimumPart(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    :try_start_1
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/miui/gallery/provider/cache/MediaManager;->access$1102(Lcom/miui/gallery/provider/cache/MediaManager;Z)Z

    .line 640
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-static {v0}, Lcom/miui/gallery/provider/cache/MediaManager;->access$700(Lcom/miui/gallery/provider/cache/MediaManager;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 642
    monitor-exit v1

    .line 643
    return-void

    .line 639
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/miui/gallery/provider/cache/MediaManager;->access$1102(Lcom/miui/gallery/provider/cache/MediaManager;Z)Z

    .line 640
    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-static {v2}, Lcom/miui/gallery/provider/cache/MediaManager;->access$700(Lcom/miui/gallery/provider/cache/MediaManager;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    throw v0

    .line 642
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method private notifyProgressUpdate()V
    .locals 4

    .prologue
    .line 741
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-static {v1}, Lcom/miui/gallery/provider/cache/MediaManager;->access$600(Lcom/miui/gallery/provider/cache/MediaManager;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 742
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-static {v1}, Lcom/miui/gallery/provider/cache/MediaManager;->access$600(Lcom/miui/gallery/provider/cache/MediaManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 743
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-static {v1}, Lcom/miui/gallery/provider/cache/MediaManager;->access$600(Lcom/miui/gallery/provider/cache/MediaManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeListener;

    .line 744
    .local v0, "listener":Lcom/miui/gallery/provider/cache/MediaManager$InitializeListener;
    if-eqz v0, :cond_0

    .line 745
    invoke-interface {v0}, Lcom/miui/gallery/provider/cache/MediaManager$InitializeListener;->onProgressUpdate()V

    goto :goto_0

    .line 749
    .end local v0    # "listener":Lcom/miui/gallery/provider/cache/MediaManager$InitializeListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 750
    return-void
.end method

.method private publishResult(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/provider/cache/MediaItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 732
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/cache/MediaItem;>;"
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    iget-object v2, v1, Lcom/miui/gallery/provider/cache/MediaManager;->mModifyLock:Ljava/lang/Object;

    monitor-enter v2

    .line 733
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/cache/MediaItem;

    .line 734
    .local v0, "item":Lcom/miui/gallery/provider/cache/MediaItem;
    iget-object v3, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    iget-object v3, v3, Lcom/miui/gallery/provider/cache/MediaManager;->mCache:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 737
    .end local v0    # "item":Lcom/miui/gallery/provider/cache/MediaItem;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 736
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->notifyProgressUpdate()V

    .line 737
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 738
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 613
    const-string v1, ".provider.cache.MediaManager"

    const-string v2, "acquire initialize lock"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    :try_start_0
    const-string v1, ".provider.cache.MediaManager"

    const-string/jumbo v2, "start initialize"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->mDBHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 617
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v0}, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->lockedLoadMinimumPart(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 618
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 619
    invoke-direct {p0, v0}, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->loadFullPart(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 620
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/miui/gallery/provider/cache/MediaManager;->access$302(Lcom/miui/gallery/provider/cache/MediaManager;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 622
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-static {v1, v3}, Lcom/miui/gallery/provider/cache/MediaManager;->access$402(Lcom/miui/gallery/provider/cache/MediaManager;Z)Z

    .line 623
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-static {v1}, Lcom/miui/gallery/provider/cache/MediaManager;->access$500(Lcom/miui/gallery/provider/cache/MediaManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 624
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-static {v1}, Lcom/miui/gallery/provider/cache/MediaManager;->access$600(Lcom/miui/gallery/provider/cache/MediaManager;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 625
    :try_start_1
    iget-object v1, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-static {v1}, Lcom/miui/gallery/provider/cache/MediaManager;->access$600(Lcom/miui/gallery/provider/cache/MediaManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 626
    monitor-exit v2

    .line 628
    return-void

    .line 626
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 622
    .end local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-static {v2, v3}, Lcom/miui/gallery/provider/cache/MediaManager;->access$402(Lcom/miui/gallery/provider/cache/MediaManager;Z)Z

    .line 623
    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-static {v2}, Lcom/miui/gallery/provider/cache/MediaManager;->access$500(Lcom/miui/gallery/provider/cache/MediaManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 624
    iget-object v2, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-static {v2}, Lcom/miui/gallery/provider/cache/MediaManager;->access$600(Lcom/miui/gallery/provider/cache/MediaManager;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 625
    :try_start_2
    iget-object v3, p0, Lcom/miui/gallery/provider/cache/MediaManager$InitializeTask;->this$0:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-static {v3}, Lcom/miui/gallery/provider/cache/MediaManager;->access$600(Lcom/miui/gallery/provider/cache/MediaManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 626
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    :catchall_2
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1
.end method
