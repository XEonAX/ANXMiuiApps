.class Lcom/miui/gallery/provider/cache/SearchIconManager$LocalImageIconLoader;
.super Ljava/lang/Object;
.source "SearchIconManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cache/SearchIconManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalImageIconLoader"
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 225
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "alias_clear_thumbnail"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "sha1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/provider/cache/SearchIconManager$LocalImageIconLoader;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method static queryIcon(Landroid/net/Uri;Landroid/content/ContentResolver;)Lcom/miui/gallery/provider/cache/SearchIconItem;
    .locals 14
    .param p0, "iconUri"    # Landroid/net/Uri;
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 235
    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Media;->URI_ALL:Landroid/net/Uri;

    .line 236
    .local v1, "queryUri":Landroid/net/Uri;
    const-string v0, "serverId"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 237
    .local v11, "serverId":Ljava/lang/String;
    const-string v0, "id"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 239
    .local v10, "id":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 240
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s=%s"

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "serverId"

    aput-object v5, v4, v12

    aput-object v11, v4, v13

    invoke-static {v0, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 248
    .local v3, "selection":Ljava/lang/String;
    :goto_0
    const/4 v6, 0x0

    .line 249
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 251
    .local v9, "iconItem":Lcom/miui/gallery/provider/cache/SearchIconItem;
    :try_start_0
    sget-object v2, Lcom/miui/gallery/provider/cache/SearchIconManager$LocalImageIconLoader;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 252
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 254
    .local v8, "filePath":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/StorageUtils;->getPriorMicroThumbnailPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 257
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-interface {v6}, Landroid/database/Cursor;->getNotificationUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v8, v4, v5, v0}, Lcom/miui/gallery/provider/cache/SearchIconManager;->access$100(Landroid/net/Uri;Ljava/lang/String;JLandroid/net/Uri;)Lcom/miui/gallery/provider/cache/SearchIconItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 262
    .end local v8    # "filePath":Ljava/lang/String;
    :cond_1
    if-eqz v6, :cond_2

    .line 263
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 267
    .end local v3    # "selection":Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v9    # "iconItem":Lcom/miui/gallery/provider/cache/SearchIconItem;
    :cond_2
    :goto_1
    return-object v9

    .line 241
    :cond_3
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 242
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s=%s"

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "_id"

    aput-object v5, v4, v12

    aput-object v10, v4, v13

    invoke-static {v0, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "selection":Ljava/lang/String;
    goto :goto_0

    .line 244
    .end local v3    # "selection":Ljava/lang/String;
    :cond_4
    const-string v0, ".searchProvider.SearchIconManager"

    const-string v2, "No valid id found for icon uri: %s"

    invoke-static {v0, v2, p0}, Lcom/miui/gallery/search/utils/SearchLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 259
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "iconItem":Lcom/miui/gallery/provider/cache/SearchIconItem;
    :catch_0
    move-exception v7

    .line 260
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, ".searchProvider.SearchIconManager"

    const-string v2, "Error occurred while query icon uri %s, %s"

    invoke-static {v0, v2, p0, v7}, Lcom/miui/gallery/search/utils/SearchLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    if-eqz v6, :cond_2

    .line 263
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 262
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 263
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method
