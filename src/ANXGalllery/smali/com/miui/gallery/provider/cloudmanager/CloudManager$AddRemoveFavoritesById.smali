.class Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddRemoveFavoritesById;
.super Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddRemoveFavoritesBySha1;
.source "CloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cloudmanager/CloudManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AddRemoveFavoritesById"
.end annotation


# instance fields
.field private mId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;IJ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "operationType"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;IJ)V"
        }
    .end annotation

    .prologue
    .line 2863
    .local p2, "dirtyBulk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddRemoveFavoritesBySha1;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;)V

    .line 2864
    iput-wide p4, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddRemoveFavoritesById;->mId:J

    .line 2865
    return-void
.end method


# virtual methods
.method protected prepare(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v10, 0x0

    .line 2869
    const/4 v8, 0x0

    .line 2871
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "cloud"

    sget-object v2, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-wide v6, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddRemoveFavoritesById;->mId:J

    .line 2873
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    .line 2871
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2875
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2876
    const/16 v0, 0x9

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddRemoveFavoritesById;->mSha1:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2883
    invoke-static {v8}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 2885
    invoke-super {p0, p1}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddRemoveFavoritesBySha1;->prepare(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2883
    :cond_0
    invoke-static {v8}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    move-object v0, v10

    goto :goto_0

    .line 2880
    :catch_0
    move-exception v9

    .line 2883
    .local v9, "ex":Ljava/lang/Exception;
    invoke-static {v8}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    move-object v0, v10

    goto :goto_0

    .end local v9    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-static {v8}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 2890
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s favorites by id: [%d]"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddRemoveFavoritesById;->mOperationType:I

    if-ne v0, v6, :cond_0

    const-string v0, "Add to"

    :goto_0
    aput-object v0, v3, v4

    iget-wide v4, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$AddRemoveFavoritesById;->mId:J

    .line 2893
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v6

    .line 2890
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "Remove from"

    goto :goto_0
.end method
