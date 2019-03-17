.class Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;
.super Ljava/lang/Object;
.source "JumpDialogFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/JumpDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumJumpHelper"
.end annotation


# instance fields
.field private mAlbumCursor:Landroid/database/Cursor;

.field private mAlbumsCursorHelper:Lcom/miui/gallery/util/AlbumsCursorHelper;

.field private mFragment:Landroid/app/Fragment;

.field private mHandleIntentCallback:Lcom/miui/gallery/ui/JumpDialogFragment$HandleIntentCallback;

.field private mShareAlbumCursor:Landroid/database/Cursor;

.field private mShareAlbumsCursorHelper:Lcom/miui/gallery/util/ShareAlbumsCursorHelper;

.field private mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/miui/gallery/ui/JumpDialogFragment;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/JumpDialogFragment;Landroid/app/Fragment;)V
    .locals 0
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->this$0:Lcom/miui/gallery/ui/JumpDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p2, p0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mFragment:Landroid/app/Fragment;

    .line 232
    return-void
.end method

.method private createJumpIntent()Landroid/content/Intent;
    .locals 18

    .prologue
    .line 335
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v15

    if-gtz v15, :cond_1

    .line 336
    const/4 v7, 0x0

    .line 386
    :cond_0
    :goto_0
    return-object v7

    .line 337
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mAlbumsCursorHelper:Lcom/miui/gallery/util/AlbumsCursorHelper;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/miui/gallery/util/AlbumsCursorHelper;->getAlbumId(I)J

    move-result-wide v2

    .line 338
    .local v2, "albumId":J
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->getShortCutIntent(J)Landroid/content/Intent;

    move-result-object v7

    .line 340
    .local v7, "intent":Landroid/content/Intent;
    if-nez v7, :cond_0

    .line 341
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mAlbumsCursorHelper:Lcom/miui/gallery/util/AlbumsCursorHelper;

    invoke-virtual {v15, v2, v3}, Lcom/miui/gallery/util/AlbumsCursorHelper;->getAttributes(J)J

    move-result-wide v8

    .line 342
    .local v8, "attributes":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mAlbumsCursorHelper:Lcom/miui/gallery/util/AlbumsCursorHelper;

    invoke-virtual {v15, v2, v3}, Lcom/miui/gallery/util/AlbumsCursorHelper;->getServerId(J)Ljava/lang/String;

    move-result-object v14

    .line 343
    .local v14, "serverId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mAlbumsCursorHelper:Lcom/miui/gallery/util/AlbumsCursorHelper;

    invoke-virtual {v15, v2, v3}, Lcom/miui/gallery/util/AlbumsCursorHelper;->getAlbumName(J)Ljava/lang/String;

    move-result-object v5

    .line 344
    .local v5, "albumName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mAlbumsCursorHelper:Lcom/miui/gallery/util/AlbumsCursorHelper;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/miui/gallery/util/AlbumsCursorHelper;->getAlbumLocalPath(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v4

    .line 346
    .local v4, "albumLocalPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mAlbumsCursorHelper:Lcom/miui/gallery/util/AlbumsCursorHelper;

    invoke-virtual {v15, v2, v3}, Lcom/miui/gallery/util/AlbumsCursorHelper;->isBabyAlbum(J)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 347
    new-instance v7, Landroid/content/Intent;

    .end local v7    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v15}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const-class v16, Lcom/miui/gallery/activity/facebaby/BabyAlbumDetailActivity;

    move-object/from16 v0, v16

    invoke-direct {v7, v15, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 348
    .restart local v7    # "intent":Landroid/content/Intent;
    const-string v15, "people_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mAlbumsCursorHelper:Lcom/miui/gallery/util/AlbumsCursorHelper;

    move-object/from16 v16, v0

    .line 349
    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/util/AlbumsCursorHelper;->getBabyAlbumPeopleId(J)Ljava/lang/String;

    move-result-object v16

    .line 348
    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    const-string v15, "baby_info"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mAlbumsCursorHelper:Lcom/miui/gallery/util/AlbumsCursorHelper;

    move-object/from16 v16, v0

    .line 351
    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/util/AlbumsCursorHelper;->getBabyInfo(J)Ljava/lang/String;

    move-result-object v16

    .line 350
    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    const-string/jumbo v15, "thumbnail_info_of_baby"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mAlbumsCursorHelper:Lcom/miui/gallery/util/AlbumsCursorHelper;

    move-object/from16 v16, v0

    .line 353
    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/util/AlbumsCursorHelper;->getThumbnailInfoOfBaby(J)Ljava/lang/String;

    move-result-object v16

    .line 352
    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    const-string v15, "baby_sharer_info"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mAlbumsCursorHelper:Lcom/miui/gallery/util/AlbumsCursorHelper;

    move-object/from16 v16, v0

    .line 355
    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/util/AlbumsCursorHelper;->getBabySharerInfo(J)Ljava/lang/String;

    move-result-object v16

    .line 354
    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    :goto_1
    const-wide/16 v16, 0x2

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 361
    .local v13, "isScreenshotAlbum":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mAlbumsCursorHelper:Lcom/miui/gallery/util/AlbumsCursorHelper;

    invoke-virtual {v15, v2, v3}, Lcom/miui/gallery/util/AlbumsCursorHelper;->isOtherShareAlbum(J)Z

    move-result v11

    .line 362
    .local v11, "isOtherShareAlbum":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mShareAlbumsCursorHelper:Lcom/miui/gallery/util/ShareAlbumsCursorHelper;

    invoke-virtual {v15, v2, v3}, Lcom/miui/gallery/util/ShareAlbumsCursorHelper;->isOwnerShareAlbum(J)Z

    move-result v12

    .line 363
    .local v12, "isOwnerShareAlbum":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mAlbumsCursorHelper:Lcom/miui/gallery/util/AlbumsCursorHelper;

    invoke-virtual {v15, v2, v3}, Lcom/miui/gallery/util/AlbumsCursorHelper;->isLocalAlbum(J)Z

    move-result v10

    .line 365
    .local v10, "isLocalAlbum":Z
    const-string v15, "other_share_album"

    invoke-virtual {v7, v15, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 366
    const-string v15, "owner_share_album"

    invoke-virtual {v7, v15, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 367
    const-string v15, "is_local_album"

    invoke-virtual {v7, v15, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 368
    const-string v15, "screenshot_album"

    invoke-virtual {v7, v15, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 369
    const-string v15, "pano_album"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/AlbumsCursorHelper;->isPanoAlbum(J)Z

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 370
    const-string v15, "album_id"

    invoke-virtual {v7, v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 372
    const-string v15, "album_name"

    invoke-virtual {v7, v15, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    const-string v15, "album_unwriteable"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mAlbumsCursorHelper:Lcom/miui/gallery/util/AlbumsCursorHelper;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/util/AlbumsCursorHelper;->albumUnwriteable(J)Z

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 374
    if-eqz v13, :cond_2

    .line 375
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mUri:Landroid/net/Uri;

    const-string v16, "screenshotAppName"

    invoke-virtual/range {v15 .. v16}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 376
    .local v6, "appName":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 377
    const-string v15, "screenshot_app_name"

    invoke-virtual {v7, v15, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    const-string v15, "album_name"

    invoke-virtual {v7, v15, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    const-string v15, "album_unwriteable"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 382
    .end local v6    # "appName":Ljava/lang/String;
    :cond_2
    const-string v15, "album_server_id"

    invoke-virtual {v7, v15, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    const-string v15, "attributes"

    invoke-virtual {v7, v15, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 384
    const-string v15, "album_local_path"

    invoke-virtual {v7, v15, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 357
    .end local v10    # "isLocalAlbum":Z
    .end local v11    # "isOtherShareAlbum":Z
    .end local v12    # "isOwnerShareAlbum":Z
    .end local v13    # "isScreenshotAlbum":Z
    :cond_3
    new-instance v7, Landroid/content/Intent;

    .end local v7    # "intent":Landroid/content/Intent;
    const-string v15, "com.miui.gallery.action.VIEW_ALBUM_DETAIL"

    invoke-direct {v7, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v7    # "intent":Landroid/content/Intent;
    goto/16 :goto_1
.end method

.method private getShortCutIntent(J)Landroid/content/Intent;
    .locals 5
    .param p1, "albumId"    # J

    .prologue
    .line 390
    invoke-static {p1, p2}, Lcom/miui/gallery/util/AlbumsCursorHelper;->isFaceAlbum(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.gallery.action.VIEW_PEOPLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 402
    :goto_0
    return-object v0

    .line 392
    :cond_0
    invoke-static {p1, p2}, Lcom/miui/gallery/util/AlbumsCursorHelper;->isRecentAlbum(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 393
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 394
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$RecentAlbum;->VIEW_PAGE_URI:Landroid/net/Uri;

    .line 395
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "source"

    const-string v3, "album_page"

    .line 396
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 397
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 394
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 399
    iget-object v1, p0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 402
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 9
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 258
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v2, p0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 259
    .local v0, "loader":Landroid/content/CursorLoader;
    packed-switch p1, :pswitch_data_0

    .line 282
    :goto_0
    return-object v0

    .line 261
    :pswitch_0
    sget-object v2, Lcom/miui/gallery/provider/GalleryContract$Album;->URI_ALL_EXCEPT_DELETED:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 262
    sget-object v2, Lcom/miui/gallery/util/AlbumsCursorHelper;->ALL_ALBUMS_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 264
    const-string v2, "id"

    const-wide/16 v4, -0x1

    invoke-virtual {p2, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 265
    const-string v2, "%s=%s"

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "_id"

    aput-object v4, v3, v6

    const-string v4, "id"

    .line 266
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    .line 265
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "selection":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    goto :goto_0

    .line 268
    .end local v1    # "selection":Ljava/lang/String;
    :cond_0
    const-string v2, "%s=\'%s\'"

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "serverId"

    aput-object v4, v3, v6

    const-string v4, "serverId"

    .line 269
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 268
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "selection":Ljava/lang/String;
    goto :goto_1

    .line 275
    .end local v1    # "selection":Ljava/lang/String;
    :pswitch_1
    sget-object v2, Lcom/miui/gallery/provider/GalleryContract$Album;->URI_SHARE_ALL:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 276
    sget-object v2, Lcom/miui/gallery/util/ShareAlbumsCursorHelper;->SHARED_ALBUM_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 277
    const-string v2, "%s>0 AND %s=%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "count"

    aput-object v4, v3, v6

    const-string v4, "_id"

    aput-object v4, v3, v7

    const-string v4, "id"

    .line 278
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    .line 277
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    goto :goto_0

    .line 259
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 6
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    const v5, 0x7f0c0039

    .line 287
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 314
    .end local p2    # "data":Ljava/lang/Object;
    :goto_0
    return-void

    .line 289
    .restart local p2    # "data":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "data":Ljava/lang/Object;
    iput-object p2, p0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mAlbumCursor:Landroid/database/Cursor;

    .line 290
    new-instance v2, Lcom/miui/gallery/util/AlbumsCursorHelper;

    iget-object v3, p0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/gallery/util/AlbumsCursorHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mAlbumsCursorHelper:Lcom/miui/gallery/util/AlbumsCursorHelper;

    .line 291
    iget-object v2, p0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mAlbumsCursorHelper:Lcom/miui/gallery/util/AlbumsCursorHelper;

    iget-object v3, p0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mAlbumCursor:Landroid/database/Cursor;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/util/AlbumsCursorHelper;->setAlbumsData(Landroid/database/Cursor;)V

    .line 292
    iget-object v2, p0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 294
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "id"

    iget-object v3, p0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mAlbumsCursorHelper:Lcom/miui/gallery/util/AlbumsCursorHelper;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/miui/gallery/util/AlbumsCursorHelper;->getAlbumId(I)J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 295
    iget-object v2, p0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 297
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mHandleIntentCallback:Lcom/miui/gallery/ui/JumpDialogFragment$HandleIntentCallback;

    iget-object v3, p0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mFragment:Landroid/app/Fragment;

    .line 298
    invoke-virtual {v4, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 297
    invoke-interface {v2, v3, v4}, Lcom/miui/gallery/ui/JumpDialogFragment$HandleIntentCallback;->onJumpFailed(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 302
    .restart local p2    # "data":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "data":Ljava/lang/Object;
    iput-object p2, p0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mShareAlbumCursor:Landroid/database/Cursor;

    .line 303
    new-instance v2, Lcom/miui/gallery/util/ShareAlbumsCursorHelper;

    invoke-direct {v2}, Lcom/miui/gallery/util/ShareAlbumsCursorHelper;-><init>()V

    iput-object v2, p0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mShareAlbumsCursorHelper:Lcom/miui/gallery/util/ShareAlbumsCursorHelper;

    .line 304
    iget-object v2, p0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mShareAlbumsCursorHelper:Lcom/miui/gallery/util/ShareAlbumsCursorHelper;

    iget-object v3, p0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mShareAlbumCursor:Landroid/database/Cursor;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/util/ShareAlbumsCursorHelper;->setSharedAlbums(Landroid/database/Cursor;)V

    .line 305
    invoke-direct {p0}, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->createJumpIntent()Landroid/content/Intent;

    move-result-object v1

    .line 306
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 307
    iget-object v2, p0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mHandleIntentCallback:Lcom/miui/gallery/ui/JumpDialogFragment$HandleIntentCallback;

    invoke-interface {v2, v1}, Lcom/miui/gallery/ui/JumpDialogFragment$HandleIntentCallback;->onHandleIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 309
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mHandleIntentCallback:Lcom/miui/gallery/ui/JumpDialogFragment$HandleIntentCallback;

    iget-object v3, p0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mFragment:Landroid/app/Fragment;

    .line 310
    invoke-virtual {v4, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 309
    invoke-interface {v2, v3, v4}, Lcom/miui/gallery/ui/JumpDialogFragment$HandleIntentCallback;->onJumpFailed(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .param p1, "loader"    # Landroid/content/Loader;

    .prologue
    const/4 v1, 0x0

    .line 318
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 320
    :pswitch_0
    iput-object v1, p0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mAlbumsCursorHelper:Lcom/miui/gallery/util/AlbumsCursorHelper;

    .line 321
    iget-object v0, p0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mAlbumCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 326
    :pswitch_1
    iput-object v1, p0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mShareAlbumsCursorHelper:Lcom/miui/gallery/util/ShareAlbumsCursorHelper;

    .line 327
    iget-object v0, p0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mShareAlbumCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mShareAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 318
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startLoading(Lcom/miui/gallery/ui/JumpDialogFragment$HandleIntentCallback;Landroid/net/Uri;)V
    .locals 9
    .param p1, "callback"    # Lcom/miui/gallery/ui/JumpDialogFragment$HandleIntentCallback;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 235
    iput-object p2, p0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mUri:Landroid/net/Uri;

    .line 236
    iget-object v6, p0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mUri:Landroid/net/Uri;

    const-string v7, "serverId"

    invoke-virtual {v6, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 237
    .local v3, "albumServerId":Ljava/lang/String;
    iget-object v6, p0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mUri:Landroid/net/Uri;

    const-string v7, "id"

    invoke-virtual {v6, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 238
    .local v2, "albumIdString":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 240
    .local v0, "albumId":J
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gez v6, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 241
    iget-object v6, p0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mFragment:Landroid/app/Fragment;

    const v8, 0x7f0c0039

    invoke-virtual {v7, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v6, v7}, Lcom/miui/gallery/ui/JumpDialogFragment$HandleIntentCallback;->onJumpFailed(Landroid/content/Context;Ljava/lang/String;)V

    .line 254
    :goto_1
    return-void

    .line 238
    .end local v0    # "albumId":J
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 244
    .restart local v0    # "albumId":J
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->getShortCutIntent(J)Landroid/content/Intent;

    move-result-object v5

    .line 245
    .local v5, "intent":Landroid/content/Intent;
    if-eqz v5, :cond_2

    .line 246
    invoke-interface {p1, v5}, Lcom/miui/gallery/ui/JumpDialogFragment$HandleIntentCallback;->onHandleIntent(Landroid/content/Intent;)V

    goto :goto_1

    .line 248
    :cond_2
    iput-object p1, p0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mHandleIntentCallback:Lcom/miui/gallery/ui/JumpDialogFragment$HandleIntentCallback;

    .line 249
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 250
    .local v4, "bundle":Landroid/os/Bundle;
    const-string v6, "serverId"

    invoke-virtual {v4, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v6, "id"

    invoke-virtual {v4, v6, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 252
    iget-object v6, p0, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7, v4, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_1
.end method
