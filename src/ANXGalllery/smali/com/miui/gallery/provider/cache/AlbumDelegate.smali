.class public Lcom/miui/gallery/provider/cache/AlbumDelegate;
.super Ljava/lang/Object;
.source "AlbumDelegate.java"


# static fields
.field private static final INITIALIZATION_LOCK:Ljava/lang/Object;

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAttributes:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialized:Z

.field private mSortDate:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Lcom/miui/gallery/provider/MediaSortDateHelper$SortDate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/gallery/provider/cache/AlbumDelegate;->INITIALIZATION_LOCK:Ljava/lang/Object;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "attributes"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "localFile"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/provider/cache/AlbumDelegate;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/provider/cache/AlbumDelegate;->mInitialized:Z

    .line 34
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/cache/AlbumDelegate;->mAttributes:Landroid/support/v4/util/LongSparseArray;

    .line 35
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/cache/AlbumDelegate;->mSortDate:Landroid/support/v4/util/LongSparseArray;

    .line 39
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/AlbumDelegate;->mAttributes:Landroid/support/v4/util/LongSparseArray;

    const-wide/16 v2, -0x3e8

    const-wide/16 v4, 0x1

    .line 40
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 39
    invoke-virtual {v0, v2, v3, v1}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 41
    return-void
.end method


# virtual methods
.method public delete(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 124
    const-string v0, ".provider.cache.AlbumDelegate"

    const-string v1, "delete album[%d] attributes"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/AlbumDelegate;->mAttributes:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LongSparseArray;->delete(J)V

    .line 126
    return-void
.end method

.method public getSortDate(J)Lcom/miui/gallery/provider/MediaSortDateHelper$SortDate;
    .locals 3
    .param p1, "albumId"    # J

    .prologue
    .line 110
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/AlbumDelegate;->mSortDate:Landroid/support/v4/util/LongSparseArray;

    invoke-static {}, Lcom/miui/gallery/provider/MediaSortDateHelper;->getSortDateProvider()Lcom/miui/gallery/provider/MediaSortDateHelper$SortDateProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/provider/MediaSortDateHelper$SortDateProvider;->getDefaultSortDate()Lcom/miui/gallery/provider/MediaSortDateHelper$SortDate;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/MediaSortDateHelper$SortDate;

    return-object v0
.end method

.method public insert(JJ)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "attributes"    # J

    .prologue
    .line 119
    const-string v0, ".provider.cache.AlbumDelegate"

    const-string v1, "insert album[%d] attributes"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/AlbumDelegate;->mAttributes:Landroid/support/v4/util/LongSparseArray;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 121
    return-void
.end method

.method public isAutoUpload(J)Z
    .locals 7
    .param p1, "id"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 60
    iget-object v2, p0, Lcom/miui/gallery/provider/cache/AlbumDelegate;->mAttributes:Landroid/support/v4/util/LongSparseArray;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Landroid/support/v4/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 61
    .local v0, "attr":J
    const-wide/16 v2, 0x1

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isHidden(J)Z
    .locals 7
    .param p1, "id"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 54
    iget-object v2, p0, Lcom/miui/gallery/provider/cache/AlbumDelegate;->mAttributes:Landroid/support/v4/util/LongSparseArray;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Landroid/support/v4/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 55
    .local v0, "attr":J
    const-wide/16 v2, 0x10

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 56
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$HiddenAlbum;->isShowHiddenAlbum()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isShowInHomePage(J)Z
    .locals 11
    .param p1, "id"    # J

    .prologue
    const-wide/16 v6, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v8, 0x0

    .line 44
    iget-object v2, p0, Lcom/miui/gallery/provider/cache/AlbumDelegate;->mAttributes:Landroid/support/v4/util/LongSparseArray;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, p1, p2, v5}, Landroid/support/v4/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 45
    .local v0, "attr":J
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$HiddenAlbum;->isShowHiddenAlbum()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 46
    and-long/2addr v6, v0

    cmp-long v2, v6, v8

    if-eqz v2, :cond_0

    move v2, v3

    .line 48
    :goto_0
    return v2

    :cond_0
    move v2, v4

    .line 46
    goto :goto_0

    .line 48
    :cond_1
    and-long/2addr v6, v0

    cmp-long v2, v6, v8

    if-eqz v2, :cond_2

    const-wide/16 v6, 0x10

    and-long/2addr v6, v0

    cmp-long v2, v6, v8

    if-nez v2, :cond_2

    :goto_1
    move v2, v3

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1
.end method

.method public load(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 19
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 65
    sget-object v18, Lcom/miui/gallery/provider/cache/AlbumDelegate;->INITIALIZATION_LOCK:Ljava/lang/Object;

    monitor-enter v18

    .line 66
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v16

    .line 67
    .local v16, "start":J
    const/4 v10, 0x0

    .line 69
    .local v10, "album":Landroid/database/Cursor;
    :try_start_1
    const-string v3, "cloud"

    sget-object v4, Lcom/miui/gallery/provider/cache/AlbumDelegate;->PROJECTION:[Ljava/lang/String;

    const-string v5, "(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\')) AND (serverType=0)"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v10

    .line 86
    if-eqz v10, :cond_3

    .line 87
    :try_start_2
    invoke-static {}, Lcom/miui/gallery/provider/MediaSortDateHelper;->getSortDateProvider()Lcom/miui/gallery/provider/MediaSortDateHelper$SortDateProvider;

    move-result-object v15

    .line 88
    .local v15, "sortDateProvider":Lcom/miui/gallery/provider/MediaSortDateHelper$SortDateProvider;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    .line 89
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 90
    .local v12, "albumId":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/provider/cache/AlbumDelegate;->mAttributes:Landroid/support/v4/util/LongSparseArray;

    const/4 v3, 0x1

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v12, v13, v3}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 91
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/provider/cache/AlbumDelegate;->mSortDate:Landroid/support/v4/util/LongSparseArray;

    const/4 v3, 0x2

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v3}, Lcom/miui/gallery/provider/MediaSortDateHelper$SortDateProvider;->getSortDateByAlbumPath(Ljava/lang/String;)Lcom/miui/gallery/provider/MediaSortDateHelper$SortDate;

    move-result-object v3

    invoke-virtual {v2, v12, v13, v3}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 88
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 99
    .end local v12    # "albumId":J
    .end local v15    # "sortDateProvider":Lcom/miui/gallery/provider/MediaSortDateHelper$SortDateProvider;
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_0

    .line 100
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v2

    .line 105
    .end local v10    # "album":Landroid/database/Cursor;
    .end local v16    # "start":J
    :catchall_1
    move-exception v2

    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 74
    .restart local v10    # "album":Landroid/database/Cursor;
    .restart local v16    # "start":J
    :catch_0
    move-exception v11

    .line 75
    .local v11, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_4
    invoke-static {}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->generatorCommonParams()Ljava/util/Map;

    move-result-object v14

    .line 76
    .local v14, "recordParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "dbversion"

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v14, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v2, "exception"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v14, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v2, "db_helper"

    const-string v3, "db_mediamanager_load"

    invoke-static {v2, v3, v14}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 80
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/miui/gallery/util/DebugUtil;->exportDB(Z)V

    .line 81
    invoke-static {}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance()Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/provider/GalleryDBHelper;->deleteDatabase()Z

    .line 82
    throw v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 94
    .end local v11    # "e":Landroid/database/sqlite/SQLiteException;
    .end local v14    # "recordParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v15    # "sortDateProvider":Lcom/miui/gallery/provider/MediaSortDateHelper$SortDateProvider;
    :cond_1
    :try_start_5
    const-string v2, ".provider.cache.AlbumDelegate"

    const-string v3, "loaded %d albums from cursor[%d]"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/provider/cache/AlbumDelegate;->mAttributes:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 99
    .end local v15    # "sortDateProvider":Lcom/miui/gallery/provider/MediaSortDateHelper$SortDateProvider;
    :goto_1
    if-eqz v10, :cond_2

    .line 100
    :try_start_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 103
    :cond_2
    const-string v2, ".provider.cache.AlbumDelegate"

    const-string v3, "load attributes cost: %s"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v16

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/miui/gallery/provider/cache/AlbumDelegate;->mInitialized:Z

    .line 105
    monitor-exit v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 106
    return-void

    .line 96
    :cond_3
    :try_start_7
    const-string v2, ".provider.cache.AlbumDelegate"

    const-string v3, "fill provider failed with a null cursor"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1
.end method

.method public queryAttributes(J)Ljava/lang/Long;
    .locals 5
    .param p1, "id"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 129
    iget-boolean v0, p0, Lcom/miui/gallery/provider/cache/AlbumDelegate;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/AlbumDelegate;->mAttributes:Landroid/support/v4/util/LongSparseArray;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 134
    :goto_0
    return-object v0

    .line 132
    :cond_0
    const-string v0, ".provider.cache.AlbumDelegate"

    const-string v1, "not initialized, wait"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    sget-object v1, Lcom/miui/gallery/provider/cache/AlbumDelegate;->INITIALIZATION_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/AlbumDelegate;->mAttributes:Landroid/support/v4/util/LongSparseArray;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p1, p2, v2}, Landroid/support/v4/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    monitor-exit v1

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public update(JJ)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "attributes"    # J

    .prologue
    .line 114
    const-string v0, ".provider.cache.AlbumDelegate"

    const-string/jumbo v1, "update album[%d] attributes"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/AlbumDelegate;->mAttributes:Landroid/support/v4/util/LongSparseArray;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 116
    return-void
.end method
