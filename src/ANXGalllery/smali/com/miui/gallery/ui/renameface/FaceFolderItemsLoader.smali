.class Lcom/miui/gallery/ui/renameface/FaceFolderItemsLoader;
.super Lcom/miui/gallery/ui/renameface/FolderItemsLoader;
.source "FaceAlbumHandlerBase.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/miui/gallery/ui/renameface/FolderItemsLoader$LoaderUpdatedItems;[J)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/miui/gallery/ui/renameface/FolderItemsLoader$LoaderUpdatedItems;
    .param p4, "selectedFolders"    # [J

    .prologue
    .line 309
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/ui/renameface/FolderItemsLoader;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/miui/gallery/ui/renameface/FolderItemsLoader$LoaderUpdatedItems;[JZ)V

    .line 310
    return-void
.end method


# virtual methods
.method protected refreshCloudFolderItems()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/model/DisplayFolderItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .local v9, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/model/DisplayFolderItem;>;"
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/FaceFolderItemsLoader;->mActivityRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    .line 316
    .local v6, "activity":Landroid/app/Activity;
    if-eqz v6, :cond_1

    .line 317
    const/4 v7, 0x0

    .line 319
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->PERSONS_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/gallery/util/face/PeopleCursorHelper;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 323
    :cond_0
    :goto_0
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 324
    invoke-static {v7}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getThumbnailPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v10

    .line 325
    .local v10, "thumbnail":Ljava/lang/String;
    invoke-static {v7}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getPeopleName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    .line 326
    .local v8, "name":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    invoke-static {v7}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getPeopleLocalId(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/renameface/FaceFolderItemsLoader;->isMediaSetCandidate(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    new-instance v0, Lcom/miui/gallery/ui/renameface/FaceDisplayFolderItem;

    .line 329
    invoke-static {v7}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getPeopleLocalId(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 330
    invoke-static {v7}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getFaceRegionRectF(Landroid/database/Cursor;)Lcom/miui/gallery/util/face/FaceRegionRectF;

    move-result-object v2

    invoke-direct {v0, v8, v10, v1, v2}, Lcom/miui/gallery/ui/renameface/FaceDisplayFolderItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/RectF;)V

    .line 328
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 333
    .end local v8    # "name":Ljava/lang/String;
    .end local v10    # "thumbnail":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 336
    if-eqz v7, :cond_1

    .line 337
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 341
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_1
    return-object v9

    .line 336
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :cond_2
    if-eqz v7, :cond_1

    .line 337
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 336
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 337
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method
