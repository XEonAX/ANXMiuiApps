.class Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddRemoveFavoritesBySha1;
.super Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;
.source "CloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cloudmanager/CloudManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AddRemoveFavoritesBySha1"
.end annotation


# instance fields
.field protected mOperationType:I

.field protected mSha1:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "operationType"    # I
    .param p4, "sha1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2903
    .local p2, "dirtyBulk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 2904
    iput p3, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddRemoveFavoritesBySha1;->mOperationType:I

    .line 2905
    iput-object p4, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddRemoveFavoritesBySha1;->mSha1:Ljava/lang/String;

    .line 2906
    return-void
.end method


# virtual methods
.method protected execute(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J
    .locals 17
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;

    .prologue
    .line 2938
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 2939
    .local v14, "dateFavorite":J
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 2940
    .local v16, "values":Landroid/content/ContentValues;
    const-string v2, "dateFavorite"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2941
    const-string v3, "isFavorite"

    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddRemoveFavoritesBySha1;->mOperationType:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    const/4 v2, 0x1

    .line 2943
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2941
    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2948
    const/4 v12, 0x0

    .line 2950
    .local v12, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v3, "favorites"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const-string/jumbo v5, "sha1 = ?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddRemoveFavoritesBySha1;->mSha1:Ljava/lang/String;

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 2955
    if-eqz v12, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 2956
    const-string v2, "favorites"

    const-string/jumbo v3, "sha1 = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddRemoveFavoritesBySha1;->mSha1:Ljava/lang/String;

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    int-to-long v10, v2

    .line 2965
    .local v10, "count":J
    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-lez v2, :cond_0

    .line 2966
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddRemoveFavoritesBySha1;->mOperationType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 2967
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddRemoveFavoritesBySha1;->mSha1:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/miui/gallery/provider/cache/MediaManager;->insertToFavorites(Ljava/lang/String;)V

    .line 2972
    :goto_2
    const/4 v2, -0x1

    invoke-static {v2}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->transformToEditedColumnsElement(I)Ljava/lang/String;

    move-result-object v13

    .line 2975
    .local v13, "editedColumnsElement":Ljava/lang/String;
    const-string/jumbo v2, "update %s set %s=coalesce(replace(%s, \'%s\', \'\') || \'%s\', \'%s\') where %s=\'%s\'"

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "cloud"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "editedColumns"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "editedColumns"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object v13, v3, v4

    const/4 v4, 0x4

    aput-object v13, v3, v4

    const/4 v4, 0x5

    aput-object v13, v3, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "sha1"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddRemoveFavoritesBySha1;->mSha1:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 2976
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2975
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2987
    .end local v13    # "editedColumnsElement":Ljava/lang/String;
    :cond_0
    invoke-static {v12}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 2990
    return-wide v10

    .line 2941
    .end local v10    # "count":J
    .end local v12    # "cursor":Landroid/database/Cursor;
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2961
    .restart local v12    # "cursor":Landroid/database/Cursor;
    :cond_2
    :try_start_1
    const-string/jumbo v2, "sha1"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddRemoveFavoritesBySha1;->mSha1:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2962
    const-string/jumbo v2, "source"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2963
    const-string v2, "favorites"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v10

    .restart local v10    # "count":J
    goto :goto_1

    .line 2969
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddRemoveFavoritesBySha1;->mSha1:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/miui/gallery/provider/cache/MediaManager;->removeFromFavorites(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 2987
    .end local v10    # "count":J
    :catchall_0
    move-exception v2

    invoke-static {v12}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v2
.end method

.method protected prepare(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v5, 0x0

    .line 2910
    const-string v1, "cloud"

    sget-object v2, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "sha1 = ? AND serverType IN (1,2) AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\')) AND (localGroupId!=-1000)"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddRemoveFavoritesBySha1;->mSha1:Ljava/lang/String;

    aput-object v6, v4, v0

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2995
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s favorites by sha1: %s"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddRemoveFavoritesBySha1;->mOperationType:I

    if-ne v0, v5, :cond_0

    const-string v0, "Add to"

    :goto_0
    aput-object v0, v3, v4

    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddRemoveFavoritesBySha1;->mSha1:Ljava/lang/String;

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "Remove from"

    goto :goto_0
.end method

.method protected verify(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const-wide/16 v4, -0x1

    const-wide/16 v2, -0x6f

    .line 2923
    invoke-super {p0, p1}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;->verify(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    .line 2924
    .local v0, "result":J
    cmp-long v6, v0, v4

    if-eqz v6, :cond_1

    move-wide v2, v0

    .line 2933
    :cond_0
    :goto_0
    return-wide v2

    .line 2927
    :cond_1
    iget-object v6, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddRemoveFavoritesBySha1;->mCursor:Landroid/database/Cursor;

    const/4 v7, 0x4

    invoke-interface {v6, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2928
    new-instance v6, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CheckPostProcessing;

    iget-object v7, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddRemoveFavoritesBySha1;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddRemoveFavoritesBySha1;->mCursor:Landroid/database/Cursor;

    const/4 v9, 0x7

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CheckPostProcessing;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CheckPostProcessing;->run(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J

    move-result-wide v0

    .line 2929
    cmp-long v6, v0, v2

    if-eqz v6, :cond_0

    :cond_2
    move-wide v2, v4

    .line 2933
    goto :goto_0
.end method
