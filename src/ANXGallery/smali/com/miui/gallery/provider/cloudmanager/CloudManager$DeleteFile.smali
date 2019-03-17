.class Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteFile;
.super Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;
.source "CloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cloudmanager/CloudManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeleteFile"
.end annotation


# instance fields
.field private mDeleteReason:I

.field private mId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;JI)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "id"    # J
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
    .line 1745
    .local p2, "dirtyBulk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1746
    iput-wide p3, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteFile;->mId:J

    .line 1747
    iput p5, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteFile;->mDeleteReason:I

    .line 1748
    return-void
.end method

.method private deleteAlbumFile(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;I)I
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;
    .param p3, "deleteReason"    # I

    .prologue
    .line 1787
    const/4 v8, 0x0

    .line 1789
    .local v8, "count":I
    const/4 v9, 0x0

    .line 1791
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "cloud"

    sget-object v2, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->PROJECTION:[Ljava/lang/String;

    const-string v3, "localGroupId=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-wide v6, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteFile;->mId:J

    .line 1792
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    .line 1791
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 1793
    .end local v9    # "cursor":Landroid/database/Cursor;
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_1

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1795
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteFile;->deleteMediaFile(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Landroid/database/Cursor;JI)I

    move-result v0

    add-int/2addr v8, v0

    .line 1796
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 1799
    :cond_1
    invoke-static {v3}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 1802
    return v8

    .line 1799
    .end local v3    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    move-object v3, v9

    .end local v9    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-static {v3}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method private deleteMediaFile(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Landroid/database/Cursor;JI)I
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "id"    # J
    .param p6, "deleteReason"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1807
    iget-object v2, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteFile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p3, p4, p5, p6}, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;->from(Landroid/content/ContentResolver;Landroid/database/Cursor;JI)Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteFile;->mContext:Landroid/content/Context;

    .line 1808
    invoke-virtual {v2, v3, v6}, Lcom/miui/gallery/provider/cloudmanager/MediaFileHandleJob;->doDelete(Landroid/content/Context;Z)V

    .line 1810
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1811
    .local v1, "values":Landroid/content/ContentValues;
    const/4 v2, 0x4

    invoke-interface {p3, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1812
    const-string v2, "localFlag"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1813
    const-string v2, "_id=?"

    new-array v3, v5, [Ljava/lang/String;

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p2, v2, v3}, Lcom/miui/gallery/provider/cache/MediaManager;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    .line 1819
    :goto_0
    const-string v2, "cloud"

    const-string v3, "_id = ? "

    new-array v4, v5, [Ljava/lang/String;

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1820
    .local v0, "count":I
    const-string v2, "CloudManager"

    const-string v3, "clear thumb and origin path"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1821
    return v0

    .line 1815
    .end local v0    # "count":I
    :cond_0
    const-string/jumbo v2, "thumbnailFile"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1816
    const-string v2, "localFile"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1817
    const-string v2, "_id=?"

    new-array v3, v5, [Ljava/lang/String;

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p2, v2, v3, v1}, Lcom/miui/gallery/provider/cache/MediaManager;->update(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)I

    goto :goto_0
.end method


# virtual methods
.method protected execute(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;

    .prologue
    .line 1772
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteFile;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 1773
    const-string v0, "CloudManager"

    const-string v1, "DELETING ALBUM FILE:"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1774
    iget v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteFile;->mDeleteReason:I

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteFile;->deleteAlbumFile(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;I)I

    move-result v0

    int-to-long v0, v0

    .line 1777
    :goto_0
    return-wide v0

    .line 1776
    :cond_0
    const-string v0, "CloudManager"

    const-string v1, "DELETING MEDIA FILE"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1777
    iget-object v3, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteFile;->mCursor:Landroid/database/Cursor;

    iget-wide v4, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteFile;->mId:J

    iget v6, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteFile;->mDeleteReason:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteFile;->deleteMediaFile(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Landroid/database/Cursor;JI)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method protected prepare(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v5, 0x0

    .line 1752
    const-string v1, "cloud"

    sget-object v2, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->PROJECTION:[Ljava/lang/String;

    const-string v3, "_id = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-wide v6, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteFile;->mId:J

    .line 1753
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    .line 1752
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1783
    const-string v0, "DeleteFile{%d}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteFile;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected verify(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const-wide/16 v2, -0x1

    .line 1759
    invoke-super {p0, p1}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;->verify(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    .line 1760
    .local v0, "result":J
    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1767
    .end local v0    # "result":J
    :goto_0
    return-wide v0

    .line 1763
    .restart local v0    # "result":J
    :cond_0
    iget-object v4, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteFile;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x4

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->access$000(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1764
    const-string v2, "CloudManager"

    const-string/jumbo v3, "system album can\'t be deleted"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1765
    const-wide/16 v0, -0x66

    goto :goto_0

    :cond_1
    move-wide v0, v2

    .line 1767
    goto :goto_0
.end method
