.class Lcom/miui/gallery/provider/cloudmanager/DupDelete;
.super Lcom/miui/gallery/provider/cloudmanager/DupMedia;
.source "DupDelete.java"


# instance fields
.field private mDeleteReason:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;[JII)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "ids"    # [J
    .param p4, "dupType"    # I
    .param p5, "deleteReason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;[JII)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p2, "dirtyBulk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/gallery/provider/cloudmanager/DupMedia;-><init>(Landroid/content/Context;Ljava/util/ArrayList;[JI)V

    .line 20
    iput p5, p0, Lcom/miui/gallery/provider/cloudmanager/DupDelete;->mDeleteReason:I

    .line 21
    return-void
.end method


# virtual methods
.method protected executeDupItems(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;[J)[J
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;
    .param p3, "dupIds"    # [J

    .prologue
    .line 37
    new-instance v0, Lcom/miui/gallery/provider/cloudmanager/DeleteOwner;

    invoke-virtual {p0}, Lcom/miui/gallery/provider/cloudmanager/DupDelete;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/gallery/provider/cloudmanager/DupDelete;->getDirtyBulk()Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/miui/gallery/provider/cloudmanager/DupDelete;->mDeleteReason:I

    invoke-direct {v0, v1, v2, p3, v3}, Lcom/miui/gallery/provider/cloudmanager/DeleteOwner;-><init>(Landroid/content/Context;Ljava/util/ArrayList;[JI)V

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/DeleteOwner;->run(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)[J

    move-result-object v0

    return-object v0
.end method

.method protected verifyBatchItem(Landroid/database/Cursor;)J
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const-wide/16 v0, -0x64

    .line 25
    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 26
    const-string v2, "CloudManager.DupDelete"

    const-string v3, "Album can\'t be deleted here, use DeleteAlbum instead"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :goto_0
    return-wide v0

    .line 28
    :cond_0
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/miui/gallery/provider/ShareMediaManager;->isOtherShareMediaId(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 29
    const-string v2, "CloudManager.DupDelete"

    const-string v3, "Share medias can\'t be deleted here, use DeleteSharer instead"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 32
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method
