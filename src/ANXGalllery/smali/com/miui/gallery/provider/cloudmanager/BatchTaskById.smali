.class abstract Lcom/miui/gallery/provider/cloudmanager/BatchTaskById;
.super Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask;
.source "BatchTaskById.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field protected mIds:[J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;[J)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "ids"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;[J)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "dirtyBulk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 25
    invoke-static {p3}, Lcom/miui/gallery/util/Numbers;->ensurePositive([J)V

    .line 26
    iput-object p3, p0, Lcom/miui/gallery/provider/cloudmanager/BatchTaskById;->mIds:[J

    .line 27
    return-void
.end method


# virtual methods
.method protected bindBatchCursorIndexes(Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "data":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;, "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData<Ljava/lang/Long;>;"
    iget-object v3, p1, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->cursor:Landroid/database/Cursor;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->cursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-gtz v3, :cond_1

    .line 81
    :cond_0
    return-void

    .line 68
    :cond_1
    iget-object v0, p1, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->cursor:Landroid/database/Cursor;

    .line 69
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 70
    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 72
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 73
    .local v4, "key":J
    iget-object v3, p1, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->keyItemDataMap:Landroid/util/ArrayMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;

    .line 74
    .local v2, "itemData":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;
    if-nez v2, :cond_2

    .line 69
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    :cond_2
    iput v1, v2, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;->cursorIndex:I

    .line 79
    invoke-virtual {p0, v0}, Lcom/miui/gallery/provider/cloudmanager/BatchTaskById;->verifyBatchItem(Landroid/database/Cursor;)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;->result:J

    goto :goto_1
.end method

.method protected describeBundle(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 85
    if-eqz p1, :cond_0

    const-string v0, "ids"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const-string v0, "%s:[%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "ids"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, ","

    const-string v4, "ids"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/gallery/util/StringUtils;->join(Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getBatchBundle(IILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1, "fromIndex"    # I
    .param p2, "count"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 40
    const-string v0, "ids"

    iget-object v1, p0, Lcom/miui/gallery/provider/cloudmanager/BatchTaskById;->mIds:[J

    add-int v2, p1, p2

    invoke-static {v1, p1, v2}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 41
    return-object p3
.end method

.method protected getBatchExecuteKeys(Landroid/os/Bundle;)[Ljava/lang/Long;
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 46
    const-string v3, "ids"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    .line 47
    .local v1, "ids":[J
    array-length v3, v1

    new-array v2, v3, [Ljava/lang/Long;

    .line 48
    .local v2, "keys":[Ljava/lang/Long;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 49
    aget-wide v4, v1, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_0
    return-object v2
.end method

.method protected bridge synthetic getBatchExecuteKeys(Landroid/os/Bundle;)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/miui/gallery/provider/cloudmanager/BatchTaskById;->getBatchExecuteKeys(Landroid/os/Bundle;)[Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected getTotalCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/BatchTaskById;->mIds:[J

    array-length v0, v0

    return v0
.end method

.method protected verifyBatch(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Landroid/os/Bundle;Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/miui/gallery/provider/cache/MediaManager;",
            "Landroid/os/Bundle;",
            "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p4, "data":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;, "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData<Ljava/lang/Long;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask;->verifyBatch(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Landroid/os/Bundle;Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;)V

    .line 57
    invoke-virtual {p4}, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->isAllInvalid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    const-wide/16 v0, -0x66

    invoke-virtual {p4, v0, v1}, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;->fillResult(J)V

    .line 60
    invoke-virtual {p0, p4}, Lcom/miui/gallery/provider/cloudmanager/BatchTaskById;->bindBatchCursorIndexes(Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;)V

    .line 62
    :cond_0
    return-void
.end method

.method protected verifyBatchItem(Landroid/database/Cursor;)J
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 30
    const-wide/16 v0, -0x1

    return-wide v0
.end method
