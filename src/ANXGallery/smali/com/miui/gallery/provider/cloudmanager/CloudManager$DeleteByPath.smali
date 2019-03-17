.class Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteByPath;
.super Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;
.source "CloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cloudmanager/CloudManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeleteByPath"
.end annotation


# instance fields
.field private mDeleteIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteOptions:I

.field private mDeleteReason:I

.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ILjava/util/ArrayList;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "deleteOptions"    # I
    .param p6, "deleteReason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1835
    .local p2, "dirtyBulk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p5, "deleteIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1836
    iput-object p3, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteByPath;->mPath:Ljava/lang/String;

    .line 1837
    iput p4, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteByPath;->mDeleteOptions:I

    .line 1838
    iput-object p5, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteByPath;->mDeleteIds:Ljava/util/ArrayList;

    .line 1839
    iput p6, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteByPath;->mDeleteReason:I

    .line 1840
    return-void
.end method


# virtual methods
.method protected execute(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J
    .locals 13
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;

    .prologue
    const/4 v4, 0x1

    const/4 v12, 0x0

    .line 1854
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteByPath;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteByPath;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1855
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteByPath;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1856
    .local v10, "id":J
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-lez v0, :cond_1

    .line 1857
    sget-object v0, Lcom/miui/gallery/util/MediaFileUtils$FileType;->NORMAL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    new-array v1, v4, [Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteByPath;->mPath:Ljava/lang/String;

    aput-object v2, v1, v12

    invoke-static {v0, v1}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/lang/String;)I

    .line 1858
    new-instance v0, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;

    iget v1, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteByPath;->mDeleteReason:I

    iget-object v2, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteByPath;->mPath:Ljava/lang/String;

    const-string v3, "DeleteByPath"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/gallery/util/deleterecorder/DeleteRecorder;->record(Lcom/miui/gallery/util/deleterecorder/DeleteRecord;)I

    .line 1859
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteByPath;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteByPath;->getDirtyBulk()Ljava/util/ArrayList;

    move-result-object v3

    new-array v4, v4, [J

    aput-wide v10, v4, v12

    iget v5, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteByPath;->mDeleteOptions:I

    iget-object v6, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteByPath;->mDeleteIds:Ljava/util/ArrayList;

    iget v7, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteByPath;->mDeleteReason:I

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v7}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->access$600(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;[JILjava/util/ArrayList;I)[J

    move-result-object v9

    .line 1861
    .local v9, "deleteResult":[J
    array-length v0, v9

    if-lez v0, :cond_0

    aget-wide v0, v9, v12

    .line 1866
    .end local v9    # "deleteResult":[J
    .end local v10    # "id":J
    :goto_0
    return-wide v0

    .line 1861
    .restart local v9    # "deleteResult":[J
    .restart local v10    # "id":J
    :cond_0
    const-wide/16 v0, -0x65

    goto :goto_0

    .line 1864
    .end local v9    # "deleteResult":[J
    .end local v10    # "id":J
    :cond_1
    sget-object v0, Lcom/miui/gallery/util/MediaFileUtils$FileType;->NORMAL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    new-array v1, v4, [Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteByPath;->mPath:Ljava/lang/String;

    aput-object v2, v1, v12

    invoke-static {v0, v1}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/lang/String;)I

    move-result v8

    .line 1865
    .local v8, "deleteFileResult":I
    new-instance v0, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;

    iget v1, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteByPath;->mDeleteReason:I

    iget-object v2, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteByPath;->mPath:Ljava/lang/String;

    const-string v3, "DeleteByPath"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/gallery/util/deleterecorder/DeleteRecorder;->record(Lcom/miui/gallery/util/deleterecorder/DeleteRecord;)I

    .line 1866
    int-to-long v0, v8

    goto :goto_0
.end method

.method protected prepare(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1849
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteByPath;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteByPath;->mPath:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->queryCloudItemByFilePath(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1871
    const-string v0, "%s{%s}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "DeleteByPath"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteByPath;->mPath:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected verify(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1844
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteByPath;->mPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x64

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method
