.class Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteAlbum;
.super Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;
.source "CloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cloudmanager/CloudManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeleteAlbum"
.end annotation


# instance fields
.field private mAlbumId:J

.field private mDeleteReason:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;JI)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "albumId"    # J
    .param p5, "deleteReason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;JI)V"
        }
    .end annotation

    .prologue
    .line 1601
    .local p2, "dirtyBulk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1602
    iput-wide p3, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteAlbum;->mAlbumId:J

    .line 1603
    iput p5, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteAlbum;->mDeleteReason:I

    .line 1604
    return-void
.end method

.method private deleteItem(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;JLandroid/database/Cursor;)I
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;
    .param p4, "id"    # J
    .param p6, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1716
    const/4 v2, 0x4

    invoke-interface {p6, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1717
    const-string v2, "DeleteAlbum"

    const-string v3, "DELETE ITEM: no server id found, update to invalid record: %d"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1718
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1719
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "localFlag"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1720
    const-string v2, "cloud"

    const-string v3, "_id = ? "

    new-array v4, v7, [Ljava/lang/String;

    .line 1721
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 1720
    invoke-virtual {p2, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1729
    .local v0, "count":I
    :goto_0
    const-string v2, "_id = ? "

    new-array v3, v7, [Ljava/lang/String;

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p3, v2, v3}, Lcom/miui/gallery/provider/cache/MediaManager;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    .line 1730
    const-string v2, "DeleteAlbum"

    const-string v3, "DELETE ITEM FINISH: deleted %d item"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1732
    if-lez v0, :cond_0

    .line 1733
    invoke-virtual {p0, p4, p5}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteAlbum;->markAsDirty(J)V

    .line 1735
    :cond_0
    return v0

    .line 1723
    .end local v0    # "count":I
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_1
    const-string v2, "DeleteAlbum"

    const-string v3, "DELETE ITEM: server id found, mark delete %d"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1724
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1725
    .restart local v1    # "values":Landroid/content/ContentValues;
    const-string v2, "localFlag"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1726
    const-string v2, "cloud"

    const-string v3, "_id = ? "

    new-array v4, v7, [Ljava/lang/String;

    .line 1727
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 1726
    invoke-virtual {p2, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "count":I
    goto :goto_0
.end method

.method private deleteMediaInAlbum(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;J)I
    .locals 21
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;
    .param p3, "id"    # J

    .prologue
    .line 1645
    const-string v4, "DeleteAlbum"

    const-string v5, "deleting media in album(%d)"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1647
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1648
    .local v14, "deleteRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/util/deleterecorder/DeleteRecord;>;"
    const/4 v12, 0x0

    .line 1649
    .local v12, "count":I
    const-string v5, "cloud"

    sget-object v6, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->PROJECTION:[Ljava/lang/String;

    const-string v7, "localGroupId=? AND serverId IS NULL"

    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 1651
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p1

    .line 1649
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1655
    .local v15, "local":Landroid/database/Cursor;
    if-eqz v15, :cond_3

    .line 1656
    :cond_0
    :goto_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1657
    const/4 v4, 0x0

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 1658
    .local v18, "tmpId":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteAlbum;->markAsDirty(J)V

    .line 1659
    move-object/from16 v0, p0

    iget v4, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteAlbum;->mDeleteReason:I

    const-string v5, "DeleteAlbum"

    invoke-static {v4, v15, v5}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->createDeleteRecord(ILandroid/database/Cursor;Ljava/lang/String;)Lcom/miui/gallery/util/deleterecorder/DeleteRecord;

    move-result-object v13

    .line 1660
    .local v13, "deleteRecord":Lcom/miui/gallery/util/deleterecorder/DeleteRecord;
    if-eqz v13, :cond_0

    .line 1661
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1664
    .end local v13    # "deleteRecord":Lcom/miui/gallery/util/deleterecorder/DeleteRecord;
    .end local v18    # "tmpId":J
    :cond_1
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1666
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 1667
    .local v17, "values":Landroid/content/ContentValues;
    const-string v4, "localFlag"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1668
    const-string v4, "cloud"

    const-string v5, "localGroupId=? AND serverId IS NULL"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 1671
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 1668
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v12, v4

    .line 1672
    const-string v4, "DeleteAlbum"

    const-string v5, "marked local media in album(%d)"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1677
    .end local v17    # "values":Landroid/content/ContentValues;
    :goto_1
    const-string v5, "cloud"

    sget-object v6, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->PROJECTION:[Ljava/lang/String;

    const-string v7, "(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\')) AND localGroupId = ? "

    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 1680
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p1

    .line 1677
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1683
    .local v16, "synced":Landroid/database/Cursor;
    if-eqz v16, :cond_6

    .line 1684
    :cond_2
    :goto_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1685
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 1686
    .restart local v18    # "tmpId":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteAlbum;->markAsDirty(J)V

    .line 1687
    move-object/from16 v0, p0

    iget v4, v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteAlbum;->mDeleteReason:I

    const-string v5, "DeleteAlbum"

    move-object/from16 v0, v16

    invoke-static {v4, v0, v5}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->createDeleteRecord(ILandroid/database/Cursor;Ljava/lang/String;)Lcom/miui/gallery/util/deleterecorder/DeleteRecord;

    move-result-object v13

    .line 1688
    .restart local v13    # "deleteRecord":Lcom/miui/gallery/util/deleterecorder/DeleteRecord;
    if-eqz v13, :cond_2

    .line 1689
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1674
    .end local v13    # "deleteRecord":Lcom/miui/gallery/util/deleterecorder/DeleteRecord;
    .end local v16    # "synced":Landroid/database/Cursor;
    .end local v18    # "tmpId":J
    :cond_3
    const-string v4, "DeleteAlbum"

    const-string v5, "delete local media in album(%d) returns a null cursor"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 1692
    .restart local v16    # "synced":Landroid/database/Cursor;
    :cond_4
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1694
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 1695
    .restart local v17    # "values":Landroid/content/ContentValues;
    const-string v4, "localFlag"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1696
    const-string v4, "cloud"

    const-string v5, "(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\')) AND localGroupId = ? "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 1699
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 1696
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v12, v4

    .line 1700
    const-string v4, "DeleteAlbum"

    const-string v5, "marked cloud media in album(%d)"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1705
    .end local v17    # "values":Landroid/content/ContentValues;
    :goto_3
    const-string v4, "localGroupId = ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Lcom/miui/gallery/provider/cache/MediaManager;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    .line 1706
    const-string v4, "DeleteAlbum"

    const-string v5, "DELETING items from album(%d), count: %d"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1707
    invoke-static {v14}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1708
    invoke-static {v14}, Lcom/miui/gallery/util/deleterecorder/DeleteRecorder;->record(Ljava/util/Collection;)I

    .line 1710
    :cond_5
    return v12

    .line 1702
    :cond_6
    const-string v4, "DeleteAlbum"

    const-string v5, "delete synced media in album(%d) returns a null cursor"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3
.end method


# virtual methods
.method protected execute(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;

    .prologue
    .line 1632
    const-string v0, "DeleteAlbum"

    const-string v1, "DELETING ALBUM:"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    iget-wide v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteAlbum;->mAlbumId:J

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteAlbum;->deleteMediaInAlbum(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;J)I

    move-result v0

    int-to-long v8, v0

    .line 1634
    .local v8, "count":J
    iget-object v1, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteAlbum;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteAlbum;->mAlbumId:J

    iget-object v6, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteAlbum;->mCursor:Landroid/database/Cursor;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteAlbum;->deleteItem(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;JLandroid/database/Cursor;)I

    move-result v0

    int-to-long v10, v0

    .line 1635
    .local v10, "resultCode":J
    iget-wide v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteAlbum;->mAlbumId:J

    invoke-virtual {p2, v0, v1}, Lcom/miui/gallery/provider/cache/MediaManager;->deleteAttributes(J)V

    .line 1636
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-gez v0, :cond_0

    .end local v10    # "resultCode":J
    :goto_0
    return-wide v10

    .restart local v10    # "resultCode":J
    :cond_0
    move-wide v10, v8

    goto :goto_0
.end method

.method protected prepare(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v5, 0x0

    .line 1608
    const-string v1, "cloud"

    sget-object v2, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->PROJECTION:[Ljava/lang/String;

    const-string v3, "_id = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-wide v6, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteAlbum;->mAlbumId:J

    .line 1609
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    .line 1608
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1641
    const-string v0, "%s{%d}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "DeleteAlbum"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteAlbum;->mAlbumId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected verify(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const-wide/16 v4, -0x1

    const-wide/16 v2, -0x64

    .line 1615
    invoke-super {p0, p1}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;->verify(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    .line 1616
    .local v0, "result":J
    cmp-long v6, v0, v4

    if-eqz v6, :cond_0

    .line 1627
    .end local v0    # "result":J
    :goto_0
    return-wide v0

    .line 1619
    .restart local v0    # "result":J
    :cond_0
    iget-object v6, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteAlbum;->mCursor:Landroid/database/Cursor;

    const/4 v7, 0x5

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_1

    .line 1620
    const-string v4, "DeleteAlbum"

    const-string v5, "Image or video can\'t be deleted here"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v2

    .line 1621
    goto :goto_0

    .line 1623
    :cond_1
    iget-object v6, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteAlbum;->mCursor:Landroid/database/Cursor;

    const/4 v7, 0x4

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->access$000(J)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1624
    const-string v4, "DeleteAlbum"

    const-string/jumbo v5, "system album can\'t be deleted"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v2

    .line 1625
    goto :goto_0

    :cond_2
    move-wide v0, v4

    .line 1627
    goto :goto_0
.end method
