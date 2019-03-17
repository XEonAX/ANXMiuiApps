.class Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteCloudByPath;
.super Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;
.source "CloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cloudmanager/CloudManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeleteCloudByPath"
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

.field private mDeleteReason:I

.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "path"    # Ljava/lang/String;
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
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1882
    .local p2, "dirtyBulk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p4, "deleteIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1883
    iput-object p3, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteCloudByPath;->mPath:Ljava/lang/String;

    .line 1884
    iput-object p4, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteCloudByPath;->mDeleteIds:Ljava/util/ArrayList;

    .line 1885
    iput p5, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteCloudByPath;->mDeleteReason:I

    .line 1886
    return-void
.end method


# virtual methods
.method protected execute(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J
    .locals 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;

    .prologue
    const-wide/16 v0, 0x0

    const/4 v10, 0x0

    .line 1900
    iget-object v2, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteCloudByPath;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteCloudByPath;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1901
    iget-object v2, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteCloudByPath;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1902
    .local v8, "id":J
    cmp-long v2, v8, v0

    if-lez v2, :cond_0

    .line 1903
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteCloudByPath;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteCloudByPath;->getDirtyBulk()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v1, 0x1

    new-array v4, v1, [J

    aput-wide v8, v4, v10

    iget-object v5, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteCloudByPath;->mDeleteIds:Ljava/util/ArrayList;

    iget v6, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteCloudByPath;->mDeleteReason:I

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->access$700(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/util/ArrayList;[JLjava/util/ArrayList;I)[J

    move-result-object v7

    .line 1905
    .local v7, "deleteResult":[J
    array-length v0, v7

    if-lez v0, :cond_1

    aget-wide v0, v7, v10

    .line 1908
    .end local v7    # "deleteResult":[J
    .end local v8    # "id":J
    :cond_0
    :goto_0
    return-wide v0

    .line 1905
    .restart local v7    # "deleteResult":[J
    .restart local v8    # "id":J
    :cond_1
    const-wide/16 v0, -0x65

    goto :goto_0
.end method

.method protected prepare(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1895
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteCloudByPath;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteCloudByPath;->mPath:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->queryCloudItemByFilePath(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1913
    const-string v0, "DeleteCloudByPath{%s}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteCloudByPath;->mPath:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected verify(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1890
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$DeleteCloudByPath;->mPath:Ljava/lang/String;

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
