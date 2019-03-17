.class Lcom/miui/gallery/provider/cloudmanager/CloudManager$CopyByUri;
.super Lcom/miui/gallery/provider/cloudmanager/CloudManager$BaseCopyOrMoveByUri;
.source "CloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cloudmanager/CloudManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CopyByUri"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/net/Uri;J)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "albumId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/net/Uri;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 1061
    .local p2, "diryBulk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct/range {p0 .. p5}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$BaseCopyOrMoveByUri;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/net/Uri;J)V

    .line 1062
    return-void
.end method


# virtual methods
.method protected execute(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;

    .prologue
    const-wide/16 v2, 0x0

    .line 1066
    const-wide/16 v4, 0x0

    .line 1067
    .local v4, "id":J
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CopyByUri;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CopyByUri;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1068
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CopyByUri;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1070
    :cond_0
    cmp-long v0, v4, v2

    if-lez v0, :cond_1

    .line 1071
    new-instance v1, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Copy;

    iget-object v2, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CopyByUri;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CopyByUri;->getDirtyBulk()Ljava/util/ArrayList;

    move-result-object v3

    iget-wide v6, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CopyByUri;->mAlbumId:J

    invoke-direct/range {v1 .. v7}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Copy;-><init>(Landroid/content/Context;Ljava/util/ArrayList;JJ)V

    invoke-virtual {v1, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$Copy;->run(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J

    move-result-wide v0

    .line 1086
    :goto_0
    return-wide v0

    .line 1073
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CopyByUri;->mContext:Landroid/content/Context;

    .line 1074
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v6, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;

    new-instance v7, Ljava/io/File;

    iget-object v1, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CopyByUri;->mTarPath:Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-wide v8, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CopyByUri;->mAlbumId:J

    const/4 v10, -0x2

    const/4 v11, 0x1

    invoke-direct/range {v6 .. v11}, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;-><init>(Ljava/io/File;JIZ)V

    .line 1073
    invoke-static {v0, v6}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->saveToCloudDB(Landroid/content/Context;Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;)J

    move-result-wide v4

    .line 1079
    cmp-long v0, v4, v2

    if-lez v0, :cond_2

    .line 1080
    invoke-virtual {p0, v4, v5}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CopyByUri;->markAsDirty(J)V

    move-wide v0, v4

    .line 1081
    goto :goto_0

    .line 1083
    :cond_2
    const-wide/16 v0, -0x2

    cmp-long v0, v4, v0

    if-nez v0, :cond_3

    .line 1084
    const-wide/16 v0, -0x67

    goto :goto_0

    .line 1086
    :cond_3
    const-wide/16 v0, -0x65

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1093
    const-string v0, "CopyByUri{%s, %d}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CopyByUri;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CopyByUri;->mAlbumId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
