.class abstract Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;
.super Ljava/lang/Object;
.source "CloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cloudmanager/CloudManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "CursorTask"
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mCursor:Landroid/database/Cursor;

.field private mDirtyBulk:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 837
    .local p2, "dirtyBulk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 838
    iput-object p1, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;->mContext:Landroid/content/Context;

    .line 839
    iput-object p2, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;->mDirtyBulk:Ljava/util/ArrayList;

    .line 840
    return-void
.end method

.method private release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 876
    iput-object v1, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;->mContext:Landroid/content/Context;

    .line 877
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 880
    :cond_0
    iput-object v1, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;->mCursor:Landroid/database/Cursor;

    .line 881
    return-void
.end method


# virtual methods
.method protected abstract execute(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J
.end method

.method public getDirtyBulk()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 884
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;->mDirtyBulk:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected final markAsDirty(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 888
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;->mDirtyBulk:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 889
    return-void
.end method

.method protected abstract prepare(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
.end method

.method public final run(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;

    .prologue
    .line 860
    const-string v4, "CloudManager"

    const-string v5, "%s is running"

    invoke-virtual {p0}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 861
    invoke-virtual {p0, p1}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;->prepare(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;->mCursor:Landroid/database/Cursor;

    .line 863
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;->verify(Landroid/database/sqlite/SQLiteDatabase;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 864
    .local v2, "validation":J
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 870
    const-string v4, "CloudManager"

    const-string v5, "%s finish"

    invoke-virtual {p0}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 871
    invoke-direct {p0}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;->release()V

    .end local v2    # "validation":J
    :goto_0
    return-wide v2

    .line 867
    .restart local v2    # "validation":J
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;->execute(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 870
    .local v0, "result":J
    const-string v4, "CloudManager"

    const-string v5, "%s finish"

    invoke-virtual {p0}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 871
    invoke-direct {p0}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;->release()V

    move-wide v2, v0

    goto :goto_0

    .line 870
    .end local v0    # "result":J
    .end local v2    # "validation":J
    :catchall_0
    move-exception v4

    const-string v5, "CloudManager"

    const-string v6, "%s finish"

    invoke-virtual {p0}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 871
    invoke-direct {p0}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;->release()V

    throw v4
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method protected verify(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 845
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 846
    const-string v0, "CloudManager"

    const-string v1, "cursor for %s is null, abort"

    invoke-virtual {p0}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 847
    const-wide/16 v0, -0x65

    .line 854
    :goto_0
    return-wide v0

    .line 850
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 851
    const-string v0, "CloudManager"

    const-string v1, "cursor for %s has nothing, abort"

    invoke-virtual {p0}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 852
    const-wide/16 v0, -0x66

    goto :goto_0

    .line 854
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method
