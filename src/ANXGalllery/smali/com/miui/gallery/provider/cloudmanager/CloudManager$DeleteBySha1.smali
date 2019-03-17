.class Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteBySha1;
.super Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;
.source "CloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cloudmanager/CloudManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeleteBySha1"
.end annotation


# instance fields
.field private mDeleteReason:I

.field private mKeepDup:Z

.field private mSha1:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZI)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "sha1"    # Ljava/lang/String;
    .param p4, "keepDup"    # Z
    .param p5, "deleteReason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "ZI)V"
        }
    .end annotation

    .prologue
    .line 1924
    .local p2, "dirtyBulk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1925
    iput-object p3, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteBySha1;->mSha1:Ljava/lang/String;

    .line 1926
    iput-boolean p4, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteBySha1;->mKeepDup:Z

    .line 1927
    iput p5, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteBySha1;->mDeleteReason:I

    .line 1928
    return-void
.end method


# virtual methods
.method protected execute(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;

    .prologue
    const/4 v1, 0x1

    .line 1942
    const/4 v6, 0x0

    .line 1943
    .local v6, "count":I
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteBySha1;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteBySha1;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteBySha1;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-le v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteBySha1;->mKeepDup:Z

    if-nez v0, :cond_2

    .line 1944
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteBySha1;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v4, v0, [J

    .line 1945
    .local v4, "ids":[J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteBySha1;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 1946
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteBySha1;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1947
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteBySha1;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    aput-wide v0, v4, v7

    .line 1945
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1949
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteBySha1;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteBySha1;->getDirtyBulk()Ljava/util/ArrayList;

    move-result-object v3

    iget v5, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteBySha1;->mDeleteReason:I

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->access$500(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;[JI)[J

    move-result-object v8

    .line 1950
    .local v8, "results":[J
    invoke-static {v8}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->getValidCount([J)I

    move-result v6

    .line 1952
    .end local v4    # "ids":[J
    .end local v7    # "i":I
    .end local v8    # "results":[J
    :cond_2
    int-to-long v0, v6

    return-wide v0
.end method

.method protected prepare(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1932
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteBySha1;->mSha1:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1937
    :goto_0
    return-object v5

    .line 1936
    :cond_0
    const-string/jumbo v3, "sha1=? AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\'))"

    .line 1937
    .local v3, "sqlWhere":Ljava/lang/String;
    const-string v1, "cloud"

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    new-array v4, v4, [Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteBySha1;->mSha1:Ljava/lang/String;

    aput-object v0, v4, v6

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1957
    const-string v0, "DeleteBySha1{%s}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteBySha1;->mSha1:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
