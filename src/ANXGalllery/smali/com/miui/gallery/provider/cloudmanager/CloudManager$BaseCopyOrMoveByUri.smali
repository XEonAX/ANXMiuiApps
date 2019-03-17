.class abstract Lcom/miui/gallery/provider/cloudmanager/CloudManager$BaseCopyOrMoveByUri;
.super Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;
.source "CloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cloudmanager/CloudManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BaseCopyOrMoveByUri"
.end annotation


# instance fields
.field protected mAlbumId:J

.field protected mTarPath:Ljava/lang/String;

.field protected mUri:Landroid/net/Uri;


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
    .line 1018
    .local p2, "diryBulk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1019
    iput-object p3, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$BaseCopyOrMoveByUri;->mUri:Landroid/net/Uri;

    .line 1020
    iput-wide p4, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$BaseCopyOrMoveByUri;->mAlbumId:J

    .line 1021
    return-void
.end method


# virtual methods
.method protected prepare(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v2, 0x0

    .line 1025
    const-string v0, "content"

    iget-object v1, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$BaseCopyOrMoveByUri;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1026
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$BaseCopyOrMoveByUri;->mUri:Landroid/net/Uri;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v1, v3

    new-instance v5, Lcom/miui/gallery/provider/cloudmanager/CloudManager$BaseCopyOrMoveByUri$1;

    invoke-direct {v5, p0}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$BaseCopyOrMoveByUri$1;-><init>(Lcom/miui/gallery/provider/cloudmanager/CloudManager$BaseCopyOrMoveByUri;)V

    move-object v3, v2

    move-object v4, v2

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/util/GalleryUtils;->safeQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/GalleryUtils$QueryHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$BaseCopyOrMoveByUri;->mTarPath:Ljava/lang/String;

    .line 1039
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$BaseCopyOrMoveByUri;->mTarPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1040
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$BaseCopyOrMoveByUri;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$BaseCopyOrMoveByUri;->mTarPath:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->queryCloudItemByFilePath(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1042
    :cond_1
    return-object v2

    .line 1036
    :cond_2
    const-string v0, "file"

    iget-object v1, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$BaseCopyOrMoveByUri;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$BaseCopyOrMoveByUri;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$BaseCopyOrMoveByUri;->mTarPath:Ljava/lang/String;

    goto :goto_0
.end method

.method protected verify(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const-wide/16 v2, -0x6f

    .line 1047
    iget-object v4, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$BaseCopyOrMoveByUri;->mTarPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1048
    const-wide/16 v2, -0x64

    .line 1051
    :cond_0
    :goto_0
    return-wide v2

    .line 1050
    :cond_1
    new-instance v4, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CheckPostProcessing;

    iget-object v5, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$BaseCopyOrMoveByUri;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$BaseCopyOrMoveByUri;->mTarPath:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CheckPostProcessing;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CheckPostProcessing;->run(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J

    move-result-wide v0

    .line 1051
    .local v0, "result":J
    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/16 v2, -0x1

    goto :goto_0
.end method
