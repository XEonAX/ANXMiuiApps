.class Lcom/miui/gallery/provider/cloudmanager/Delete;
.super Lcom/miui/gallery/provider/cloudmanager/OwnerShareSeparatorTask;
.source "Delete.java"


# instance fields
.field private mDeleteReason:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;[JI)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "ids"    # [J
    .param p4, "deleteReason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;[JI)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p2, "dirtyBulk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/provider/cloudmanager/OwnerShareSeparatorTask;-><init>(Landroid/content/Context;Ljava/util/ArrayList;[J)V

    .line 20
    iput p4, p0, Lcom/miui/gallery/provider/cloudmanager/Delete;->mDeleteReason:I

    .line 21
    return-void
.end method


# virtual methods
.method protected executeOwner(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;[J)[J
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;
    .param p4, "ownerMediaIds"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/miui/gallery/provider/cache/MediaManager;",
            "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData",
            "<",
            "Ljava/lang/Long;",
            ">;[J)[J"
        }
    .end annotation

    .prologue
    .line 26
    .local p3, "data":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;, "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData<Ljava/lang/Long;>;"
    new-instance v0, Lcom/miui/gallery/provider/cloudmanager/DeleteOwner;

    invoke-virtual {p0}, Lcom/miui/gallery/provider/cloudmanager/Delete;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/gallery/provider/cloudmanager/Delete;->getDirtyBulk()Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/miui/gallery/provider/cloudmanager/Delete;->mDeleteReason:I

    invoke-direct {v0, v1, v2, p4, v3}, Lcom/miui/gallery/provider/cloudmanager/DeleteOwner;-><init>(Landroid/content/Context;Ljava/util/ArrayList;[JI)V

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/DeleteOwner;->run(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)[J

    move-result-object v0

    return-object v0
.end method

.method protected executeSharer(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;[J)[J
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;
    .param p4, "shareMediaIds"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/miui/gallery/provider/cache/MediaManager;",
            "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData",
            "<",
            "Ljava/lang/Long;",
            ">;[J)[J"
        }
    .end annotation

    .prologue
    .line 32
    .local p3, "data":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;, "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData<Ljava/lang/Long;>;"
    new-instance v0, Lcom/miui/gallery/provider/cloudmanager/DeleteShare;

    invoke-virtual {p0}, Lcom/miui/gallery/provider/cloudmanager/Delete;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/gallery/provider/cloudmanager/Delete;->getDirtyBulk()Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/miui/gallery/provider/cloudmanager/Delete;->mDeleteReason:I

    invoke-direct {v0, v1, v2, p4, v3}, Lcom/miui/gallery/provider/cloudmanager/DeleteShare;-><init>(Landroid/content/Context;Ljava/util/ArrayList;[JI)V

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/DeleteShare;->run(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)[J

    move-result-object v0

    return-object v0
.end method
