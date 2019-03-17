.class Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupCopy;
.super Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupMedia;
.source "CloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cloudmanager/CloudManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DupCopy"
.end annotation


# instance fields
.field protected mAlbumId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;JJI)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "album"    # J
    .param p5, "mediaId"    # J
    .param p7, "dupType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;JJI)V"
        }
    .end annotation

    .prologue
    .line 1567
    .local p2, "dirtyBulk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p5

    move v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupMedia;-><init>(Landroid/content/Context;Ljava/util/ArrayList;JI)V

    .line 1568
    iput-wide p3, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupCopy;->mAlbumId:J

    .line 1569
    const-string v0, "CloudManager"

    const-string v1, "DupCopy albumId %d mediaId %d"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1570
    return-void
.end method


# virtual methods
.method protected execute(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;

    .prologue
    .line 1576
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupCopy;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1577
    .local v4, "mediaId":J
    new-instance v1, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Copy;

    iget-object v2, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupCopy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupCopy;->getDirtyBulk()Ljava/util/ArrayList;

    move-result-object v3

    iget-wide v6, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupCopy;->mAlbumId:J

    invoke-direct/range {v1 .. v7}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Copy;-><init>(Landroid/content/Context;Ljava/util/ArrayList;JJ)V

    .line 1578
    .local v1, "task":Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;
    invoke-virtual {v1, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;->run(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J

    move-result-wide v8

    .line 1579
    .local v8, "newId":J
    const-wide/16 v2, 0x0

    cmp-long v0, v8, v2

    if-gtz v0, :cond_1

    const-wide/16 v2, -0x67

    cmp-long v0, v8, v2

    if-eqz v0, :cond_1

    const-wide/16 v2, -0x68

    cmp-long v0, v8, v2

    if-nez v0, :cond_2

    .line 1585
    :cond_1
    :goto_0
    const-string v0, "CloudManager"

    const-string v2, "DUPLICATED COPY FINISH: id(%d)"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1586
    return-wide v8

    .line 1584
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupCopy;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1591
    const-string v0, "DupCopy{%d, %d}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupCopy;->mMediaId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupCopy;->mAlbumId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
