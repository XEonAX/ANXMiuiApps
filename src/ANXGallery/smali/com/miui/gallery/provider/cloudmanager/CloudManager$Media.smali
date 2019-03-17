.class abstract Lcom/miui/gallery/provider/cloudmanager/CloudManager$Media;
.super Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;
.source "CloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cloudmanager/CloudManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Media"
.end annotation


# instance fields
.field protected mAlbumId:J

.field protected mMediaId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;JJ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "mediaId"    # J
    .param p5, "albumId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 1149
    .local p2, "dirtyBulk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1150
    iput-wide p3, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Media;->mMediaId:J

    .line 1151
    iput-wide p5, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Media;->mAlbumId:J

    .line 1152
    return-void
.end method


# virtual methods
.method protected prepare(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v4, 0x1

    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 1156
    const-string v0, "CloudManager"

    const-string v1, "%s prepare"

    invoke-virtual {p0}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Media;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1157
    iget-wide v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Media;->mMediaId:J

    invoke-static {v0, v1}, Lcom/miui/gallery/provider/ShareMediaManager;->isOtherShareMediaId(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1158
    iget-wide v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Media;->mMediaId:J

    invoke-static {v0, v1}, Lcom/miui/gallery/provider/ShareMediaManager;->getOriginalMediaId(J)J

    move-result-wide v8

    .line 1159
    .local v8, "orginId":J
    const-string/jumbo v1, "shareImage"

    sget-object v2, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    .line 1160
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    .line 1159
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1163
    .end local v8    # "orginId":J
    :goto_0
    return-object v0

    :cond_0
    const-string v1, "cloud"

    sget-object v2, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    iget-wide v6, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Media;->mMediaId:J

    .line 1164
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    .line 1163
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method protected verify(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 14
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const-wide/16 v12, -0x1

    const/4 v9, 0x0

    .line 1171
    const-string v0, "CloudManager"

    const-string v1, "%s verify"

    invoke-virtual {p0}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Media;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1172
    invoke-super {p0, p1}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;->verify(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v10

    .line 1173
    .local v10, "result":J
    cmp-long v0, v10, v12

    if-eqz v0, :cond_0

    move-wide v0, v10

    .line 1189
    :goto_0
    return-wide v0

    .line 1176
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Media;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1177
    new-instance v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CheckPostProcessing;

    iget-object v1, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Media;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Media;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x7

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CheckPostProcessing;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v9}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CheckPostProcessing;->run(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J

    move-result-wide v10

    .line 1178
    const-wide/16 v0, -0x6f

    cmp-long v0, v10, v0

    if-nez v0, :cond_1

    move-wide v0, v10

    .line 1179
    goto :goto_0

    .line 1183
    :cond_1
    new-instance v1, Lcom/miui/gallery/provider/cloudmanager/CloudManager$MediaConflict;

    iget-object v2, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Media;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Media;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x6

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Media;->mAlbumId:J

    iget-wide v6, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Media;->mMediaId:J

    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Media;->mCursor:Landroid/database/Cursor;

    const/16 v8, 0x9

    .line 1184
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$MediaConflict;-><init>(Landroid/content/Context;Ljava/lang/String;JJLjava/lang/String;)V

    .line 1185
    invoke-virtual {v1, p1, v9}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$MediaConflict;->run(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J

    move-result-wide v10

    .line 1186
    const-wide/16 v0, -0x66

    cmp-long v0, v10, v0

    if-nez v0, :cond_2

    move-wide v0, v12

    .line 1187
    goto :goto_0

    :cond_2
    move-wide v0, v10

    .line 1189
    goto :goto_0
.end method
