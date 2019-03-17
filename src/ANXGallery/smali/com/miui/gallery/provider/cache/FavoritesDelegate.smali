.class public Lcom/miui/gallery/provider/cache/FavoritesDelegate;
.super Ljava/lang/Object;
.source "FavoritesDelegate.java"


# static fields
.field private static final INITIALIZATION_LOCK:Ljava/lang/Object;

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mSha1Set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/gallery/provider/cache/FavoritesDelegate;->INITIALIZATION_LOCK:Ljava/lang/Object;

    .line 25
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "sha1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/provider/cache/FavoritesDelegate;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Lcom/google/common/collect/Sets;->newConcurrentHashSet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/provider/cache/FavoritesDelegate;->mSha1Set:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public insertToFavorites(Ljava/lang/String;)V
    .locals 2
    .param p1, "sha1"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    const-string v0, ".provider.cache.FavoritesDelegate"

    const-string v1, "insert sha1 [%s]"

    invoke-static {v0, v1, p1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/FavoritesDelegate;->mSha1Set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public isFavorite(Ljava/lang/String;)Z
    .locals 1
    .param p1, "sha1"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/FavoritesDelegate;->mSha1Set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public load(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 33
    sget-object v11, Lcom/miui/gallery/provider/cache/FavoritesDelegate;->INITIALIZATION_LOCK:Ljava/lang/Object;

    monitor-enter v11

    .line 34
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v12

    .line 37
    .local v12, "start":J
    :try_start_1
    const-string v1, "favorites"

    sget-object v2, Lcom/miui/gallery/provider/cache/FavoritesDelegate;->PROJECTION:[Ljava/lang/String;

    const-string v3, "(isFavorite NOT NULL  AND isFavorite > 0) AND source = ? AND sha1 NOT NULL"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 42
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    .line 37
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    .line 56
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 57
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/FavoritesDelegate;->mSha1Set:Ljava/util/Set;

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_0

    .line 66
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 70
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v12    # "start":J
    :catchall_1
    move-exception v0

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 44
    .restart local v12    # "start":J
    :catch_0
    move-exception v9

    .line 45
    .local v9, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_4
    invoke-static {}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->generatorCommonParams()Ljava/util/Map;

    move-result-object v10

    .line 46
    .local v10, "recordParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "dbversion"

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v0, "exception"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v0, "db_helper"

    const-string v1, "db_mediamanager_load"

    invoke-static {v0, v1, v10}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 50
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/gallery/util/DebugUtil;->exportDB(Z)V

    .line 51
    invoke-static {}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance()Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->deleteDatabase()Z

    .line 52
    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 60
    .end local v9    # "e":Landroid/database/sqlite/SQLiteException;
    .end local v10    # "recordParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    :try_start_5
    const-string v0, ".provider.cache.FavoritesDelegate"

    const-string v1, "loaded %d favorite sha1 from cursor [%d]"

    iget-object v2, p0, Lcom/miui/gallery/provider/cache/FavoritesDelegate;->mSha1Set:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 65
    :goto_1
    if-eqz v8, :cond_2

    .line 66
    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 69
    :cond_2
    const-string v0, ".provider.cache.FavoritesDelegate"

    const-string v1, "load favorite sha1 costs [%d]"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v12

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 71
    return-void

    .line 62
    :cond_3
    :try_start_7
    const-string v0, ".provider.cache.FavoritesDelegate"

    const-string v1, "fill provider failed with a null cursor"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1
.end method

.method public removeFromFavorites(Ljava/lang/String;)V
    .locals 2
    .param p1, "sha1"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    const-string v0, ".provider.cache.FavoritesDelegate"

    const-string v1, "remove sha1 [%s]"

    invoke-static {v0, v1, p1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/miui/gallery/provider/cache/FavoritesDelegate;->mSha1Set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
