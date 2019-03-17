.class Lcom/miui/gallery/provider/cloudmanager/CloudManager$RenameAlbum;
.super Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;
.source "CloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cloudmanager/CloudManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RenameAlbum"
.end annotation


# instance fields
.field private mAlbumId:J

.field private mNewName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;JLjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "albumId"    # J
    .param p5, "newName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2104
    .local p2, "dirtyBulk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 2105
    iput-wide p3, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RenameAlbum;->mAlbumId:J

    .line 2106
    iput-object p5, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RenameAlbum;->mNewName:Ljava/lang/String;

    .line 2107
    return-void
.end method

.method private getConflictAlbumCursor(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v5, 0x0

    .line 2169
    const-string v1, "cloud"

    sget-object v2, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->PROJECTION:[Ljava/lang/String;

    const-string v3, "fileName=? COLLATE NOCASE  AND (serverType=0) AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\'))"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RenameAlbum;->mNewName:Ljava/lang/String;

    aput-object v6, v4, v0

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected execute(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;

    .prologue
    .line 2149
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2150
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "fileName"

    iget-object v4, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RenameAlbum;->mNewName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2151
    iget-object v3, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RenameAlbum;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 2152
    .local v0, "localFlag":I
    if-nez v0, :cond_0

    .line 2153
    const-string v3, "localFlag"

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2155
    :cond_0
    const-string v3, "cloud"

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-wide v8, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RenameAlbum;->mAlbumId:J

    .line 2158
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 2155
    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 2160
    .local v1, "ret":I
    const-string v3, "CloudManager"

    const-string v4, "Album(id: %d) rename finished."

    iget-wide v6, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RenameAlbum;->mAlbumId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2161
    if-lez v1, :cond_1

    .line 2162
    iget-wide v4, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RenameAlbum;->mAlbumId:J

    .line 2164
    :goto_0
    return-wide v4

    :cond_1
    const-wide/16 v4, -0x65

    goto :goto_0
.end method

.method getConflictAlbumId(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2183
    const/4 v0, 0x0

    .line 2185
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RenameAlbum;->getConflictAlbumCursor(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    .line 2186
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2187
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 2192
    if-eqz v0, :cond_0

    .line 2193
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-wide v2

    .line 2190
    :cond_1
    const-wide/16 v2, -0x66

    .line 2192
    if-eqz v0, :cond_0

    .line 2193
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2192
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 2193
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method protected prepare(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v5, 0x0

    .line 2111
    const-string v1, "cloud"

    sget-object v2, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?  AND (serverType=0) AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\'))"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-wide v6, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RenameAlbum;->mAlbumId:J

    .line 2115
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    .line 2111
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 2200
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "RenameAlbum{id: %d}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RenameAlbum;->mAlbumId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected verify(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const-wide/16 v6, -0x1

    const-wide/16 v4, -0x65

    .line 2121
    invoke-super {p0, p1}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;->verify(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v2

    .line 2122
    .local v2, "result":J
    cmp-long v8, v2, v6

    if-eqz v8, :cond_1

    .line 2142
    .end local v2    # "result":J
    :cond_0
    :goto_0
    return-wide v2

    .line 2125
    .restart local v2    # "result":J
    :cond_1
    const/4 v0, 0x0

    .line 2127
    .local v0, "conflict":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$RenameAlbum;->getConflictAlbumCursor(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    .line 2128
    if-nez v0, :cond_3

    .line 2129
    const-string v6, "CloudManager"

    const-string v7, "cursor is null, verify failed."

    invoke-static {v6, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2141
    if-eqz v0, :cond_2

    .line 2142
    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    :cond_2
    move-wide v2, v4

    goto :goto_0

    .line 2131
    :cond_3
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2132
    const-string v6, "CloudManager"

    const-string v7, "Album name already exists."

    invoke-static {v6, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2133
    const-wide/16 v2, -0x67

    .line 2141
    .end local v2    # "result":J
    if-eqz v0, :cond_0

    .line 2142
    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 2141
    .restart local v2    # "result":J
    :cond_4
    if-eqz v0, :cond_5

    .line 2142
    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    :cond_5
    move-wide v2, v6

    goto :goto_0

    .line 2137
    :catch_0
    move-exception v1

    .line 2138
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "CloudManager"

    invoke-static {v6, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2141
    if-eqz v0, :cond_6

    .line 2142
    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    :cond_6
    move-wide v2, v4

    goto :goto_0

    .line 2141
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_7

    .line 2142
    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    :cond_7
    throw v4
.end method
