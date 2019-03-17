.class Lcom/miui/gallery/provider/cloudmanager/FileHandleTask;
.super Lcom/miui/gallery/provider/cloudmanager/OwnerShareSeparatorTask;
.source "FileHandleTask.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;[J)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ids"    # [J

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/miui/gallery/provider/cloudmanager/OwnerShareSeparatorTask;-><init>(Landroid/content/Context;Ljava/util/ArrayList;[J)V

    .line 14
    return-void
.end method


# virtual methods
.method protected executeOwner(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;[J)[J
    .locals 3
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
    .line 19
    .local p3, "data":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;, "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData<Ljava/lang/Long;>;"
    new-instance v0, Lcom/miui/gallery/provider/cloudmanager/OwnerFileHandleTask;

    invoke-virtual {p0}, Lcom/miui/gallery/provider/cloudmanager/FileHandleTask;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/gallery/provider/cloudmanager/FileHandleTask;->getDirtyBulk()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v1, v2, p4}, Lcom/miui/gallery/provider/cloudmanager/OwnerFileHandleTask;-><init>(Landroid/content/Context;Ljava/util/ArrayList;[J)V

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/OwnerFileHandleTask;->run(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)[J

    move-result-object v0

    return-object v0
.end method

.method protected executeSharer(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;[J)[J
    .locals 3
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
    .line 25
    .local p3, "data":Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData;, "Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchOperationData<Ljava/lang/Long;>;"
    new-instance v0, Lcom/miui/gallery/provider/cloudmanager/SharerFileHandleTask;

    invoke-virtual {p0}, Lcom/miui/gallery/provider/cloudmanager/FileHandleTask;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/gallery/provider/cloudmanager/FileHandleTask;->getDirtyBulk()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v1, v2, p4}, Lcom/miui/gallery/provider/cloudmanager/SharerFileHandleTask;-><init>(Landroid/content/Context;Ljava/util/ArrayList;[J)V

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/SharerFileHandleTask;->run(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)[J

    move-result-object v0

    return-object v0
.end method
