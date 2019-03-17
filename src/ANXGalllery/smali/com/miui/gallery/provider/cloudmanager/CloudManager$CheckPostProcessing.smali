.class Lcom/miui/gallery/provider/cloudmanager/CloudManager$CheckPostProcessing;
.super Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;
.source "CloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cloudmanager/CloudManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckPostProcessing"
.end annotation


# instance fields
.field private mFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 972
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 973
    iput-object p2, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CheckPostProcessing;->mFilePath:Ljava/lang/String;

    .line 974
    return-void
.end method


# virtual methods
.method protected execute(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;

    .prologue
    .line 1003
    const-wide/16 v0, -0x66

    return-wide v0
.end method

.method protected prepare(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v2, 0x0

    .line 978
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CheckPostProcessing;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 979
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CheckPostProcessing;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CheckPostProcessing;->mFilePath:Ljava/lang/String;

    .line 980
    invoke-static {v3}, Lcom/miui/gallery/util/FileUtils;->getParentFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 979
    invoke-static {v0, v3}, Lcom/miui/gallery/util/StorageUtils;->getRelativePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 982
    .local v8, "relativePath":Ljava/lang/String;
    const-string v0, "DCIM/Camera"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 983
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CheckPostProcessing;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gallery/util/MediaStoreUtils;->getMediaStoreId(Ljava/lang/String;)J

    move-result-wide v6

    .line 984
    .local v6, "mediaStoreId":J
    const-wide/16 v4, 0x0

    cmp-long v0, v6, v4

    if-lez v0, :cond_0

    .line 985
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CheckPostProcessing;->mContext:Landroid/content/Context;

    invoke-static {v0, v6, v7}, Lcom/miui/gallery/photosapi/PhotosOemApi;->getQueryProcessingUri(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v1

    .line 986
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CheckPostProcessing;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 990
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "mediaStoreId":J
    .end local v8    # "relativePath":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".CheckPostProcessing{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CheckPostProcessing;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected verify(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 995
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CheckPostProcessing;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CheckPostProcessing;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 996
    :cond_0
    const-wide/16 v0, -0x1

    .line 998
    :goto_0
    return-wide v0

    :cond_1
    const-wide/16 v0, -0x6f

    goto :goto_0
.end method
