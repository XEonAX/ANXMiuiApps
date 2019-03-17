.class Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupDeleteFile;
.super Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupMedia;
.source "CloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cloudmanager/CloudManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DupDeleteFile"
.end annotation


# instance fields
.field private mDeleteReason:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;JII)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "mediaId"    # J
    .param p5, "dupType"    # I
    .param p6, "deleteReason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;JII)V"
        }
    .end annotation

    .prologue
    .line 1363
    .local p2, "dirtyBulk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct/range {p0 .. p5}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupMedia;-><init>(Landroid/content/Context;Ljava/util/ArrayList;JI)V

    .line 1364
    iput p6, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupDeleteFile;->mDeleteReason:I

    .line 1365
    return-void
.end method


# virtual methods
.method protected execute(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;

    .prologue
    .line 1369
    const/4 v0, 0x0

    .line 1372
    .local v0, "count":I
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupDeleteFile;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1373
    .local v4, "media":J
    new-instance v1, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteFile;

    iget-object v2, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupDeleteFile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupDeleteFile;->getDirtyBulk()Ljava/util/ArrayList;

    move-result-object v3

    iget v6, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupDeleteFile;->mDeleteReason:I

    invoke-direct/range {v1 .. v6}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteFile;-><init>(Landroid/content/Context;Ljava/util/ArrayList;JI)V

    .line 1374
    .local v1, "task":Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;
    invoke-virtual {v1, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;->run(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J

    move-result-wide v8

    .line 1375
    .local v8, "result":J
    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-lez v2, :cond_1

    .line 1376
    add-int/lit8 v0, v0, 0x1

    .line 1378
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupDeleteFile;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1379
    const-string v2, "CloudManager"

    const-string v3, "DUPLICATED DELETE FILE FINISH: %d items"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v3, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1380
    int-to-long v2, v0

    return-wide v2
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1385
    const-string v0, "DupDeleteFile{%d}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DupDeleteFile;->mMediaId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
