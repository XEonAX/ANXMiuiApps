.class Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddRemoveFavoritesByPath;
.super Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddRemoveFavoritesBySha1;
.source "CloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cloudmanager/CloudManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AddRemoveFavoritesByPath"
.end annotation


# instance fields
.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "operationType"    # I
    .param p4, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2818
    .local p2, "dirtyBulk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddRemoveFavoritesBySha1;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;)V

    .line 2819
    iput-object p4, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddRemoveFavoritesByPath;->mPath:Ljava/lang/String;

    .line 2820
    return-void
.end method


# virtual methods
.method protected prepare(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 2824
    const/4 v0, 0x0

    .line 2826
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v7, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddRemoveFavoritesByPath;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddRemoveFavoritesByPath;->mPath:Ljava/lang/String;

    invoke-static {v7, p1, v8}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->queryCloudItemByFilePath(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2827
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2828
    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "is_thumbnail"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2829
    .local v2, "isThumbnail":Z
    :goto_0
    if-nez v2, :cond_1

    .line 2830
    const/4 v6, 0x2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 2831
    .local v4, "size":J
    iget-object v6, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddRemoveFavoritesByPath;->mPath:Ljava/lang/String;

    invoke-static {v6}, Lcom/miui/gallery/util/FileUtils;->getFileSize(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-eqz v6, :cond_1

    .line 2832
    const-string v6, "CloudManager"

    const-string v7, "file size not equals, can not favorite: %s"

    iget-object v8, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddRemoveFavoritesByPath;->mPath:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2844
    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 2846
    .end local v2    # "isThumbnail":Z
    .end local v4    # "size":J
    :goto_1
    return-object v3

    :cond_0
    move v2, v6

    .line 2828
    goto :goto_0

    .line 2836
    .restart local v2    # "isThumbnail":Z
    :cond_1
    const/4 v6, 0x1

    :try_start_1
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddRemoveFavoritesByPath;->mSha1:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2844
    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 2846
    invoke-super {p0, p1}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddRemoveFavoritesBySha1;->prepare(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_1

    .line 2844
    .end local v2    # "isThumbnail":Z
    :cond_2
    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .line 2840
    :catch_0
    move-exception v1

    .line 2841
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "CloudManager"

    invoke-static {v6, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2844
    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2851
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s favorites by path: %s"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddRemoveFavoritesByPath;->mOperationType:I

    if-ne v0, v5, :cond_0

    const-string v0, "Add to"

    :goto_0
    aput-object v0, v3, v4

    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddRemoveFavoritesByPath;->mPath:Ljava/lang/String;

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "Remove from"

    goto :goto_0
.end method
