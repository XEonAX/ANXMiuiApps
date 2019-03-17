.class Lcom/miui/gallery/provider/cache/SearchIconManager$PeopleCoverIconLoader;
.super Ljava/lang/Object;
.source "SearchIconManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cache/SearchIconManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PeopleCoverIconLoader"
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 325
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "microthumbfile"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "thumbnailFile"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "localFile"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "sha1"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "exifOrientation"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "faceXScale"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "faceYScale"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "faceWScale"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "faceHScale"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/provider/cache/SearchIconManager$PeopleCoverIconLoader;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Landroid/net/Uri;Landroid/content/ContentResolver;)Lcom/miui/gallery/provider/cache/SearchIconItem;
    .locals 1
    .param p0, "x0"    # Landroid/net/Uri;
    .param p1, "x1"    # Landroid/content/ContentResolver;

    .prologue
    .line 324
    invoke-static {p0, p1}, Lcom/miui/gallery/provider/cache/SearchIconManager$PeopleCoverIconLoader;->queryIcon(Landroid/net/Uri;Landroid/content/ContentResolver;)Lcom/miui/gallery/provider/cache/SearchIconItem;

    move-result-object v0

    return-object v0
.end method

.method private static queryIcon(Landroid/net/Uri;Landroid/content/ContentResolver;)Lcom/miui/gallery/provider/cache/SearchIconItem;
    .locals 13
    .param p0, "iconUri"    # Landroid/net/Uri;
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v8, 0x0

    .line 349
    const-string v0, "serverId"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 350
    .local v12, "serverId":Ljava/lang/String;
    const-string v0, "id"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 351
    .local v9, "id":Ljava/lang/String;
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->PEOPLE_COVER_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v11

    .line 352
    .local v11, "queryUriBuilder":Landroid/net/Uri$Builder;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 353
    const-string v0, "serverId"

    invoke-virtual {v11, v0, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 361
    :goto_0
    const/4 v6, 0x0

    .line 362
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 364
    .local v8, "iconItem":Lcom/miui/gallery/provider/cache/SearchIconItem;
    :try_start_0
    invoke-virtual {v11}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/provider/cache/SearchIconManager$PeopleCoverIconLoader;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 365
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 366
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 367
    .local v10, "localPath":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 370
    :cond_0
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    const/4 v0, 0x1

    .line 372
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 374
    :cond_1
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 375
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/StorageUtils;->getPriorMicroThumbnailPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 377
    :cond_2
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-interface {v6}, Landroid/database/Cursor;->getNotificationUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {p0, v10, v0, v1, v2}, Lcom/miui/gallery/provider/cache/SearchIconManager;->access$100(Landroid/net/Uri;Ljava/lang/String;JLandroid/net/Uri;)Lcom/miui/gallery/provider/cache/SearchIconItem;

    move-result-object v8

    .line 378
    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/miui/gallery/provider/cache/SearchIconItem;->decodeRegionOrientation:I

    .line 379
    const/4 v0, 0x6

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v8, Lcom/miui/gallery/provider/cache/SearchIconItem;->decodeRegionX:Ljava/lang/Float;

    .line 380
    const/4 v0, 0x7

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v8, Lcom/miui/gallery/provider/cache/SearchIconItem;->decodeRegionY:Ljava/lang/Float;

    .line 381
    const/16 v0, 0x8

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v8, Lcom/miui/gallery/provider/cache/SearchIconItem;->decodeRegionW:Ljava/lang/Float;

    .line 382
    const/16 v0, 0x9

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v8, Lcom/miui/gallery/provider/cache/SearchIconItem;->decodeRegionH:Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    .end local v10    # "localPath":Ljava/lang/String;
    :cond_3
    if-eqz v6, :cond_4

    .line 388
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 391
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "iconItem":Lcom/miui/gallery/provider/cache/SearchIconItem;
    :cond_4
    :goto_1
    return-object v8

    .line 354
    :cond_5
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 355
    const-string v0, "_id"

    invoke-virtual {v11, v0, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    goto/16 :goto_0

    .line 357
    :cond_6
    const-string v0, ".searchProvider.SearchIconManager"

    const-string v1, "No valid id found for uri %s"

    invoke-static {v0, v1, p0}, Lcom/miui/gallery/search/utils/SearchLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 384
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "iconItem":Lcom/miui/gallery/provider/cache/SearchIconItem;
    :catch_0
    move-exception v7

    .line 385
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, ".searchProvider.SearchIconManager"

    const-string v1, "Error occurred while query icon uri %s, %s"

    invoke-static {v0, v1, p0, v7}, Lcom/miui/gallery/search/utils/SearchLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 387
    if-eqz v6, :cond_4

    .line 388
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 387
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_7

    .line 388
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method
