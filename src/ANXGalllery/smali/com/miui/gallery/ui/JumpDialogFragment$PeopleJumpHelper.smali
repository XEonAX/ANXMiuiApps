.class Lcom/miui/gallery/ui/JumpDialogFragment$PeopleJumpHelper;
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
    name = "PeopleJumpHelper"
.end annotation


# instance fields
.field public final PROJECTION:[Ljava/lang/String;

.field private mFragment:Landroid/app/Fragment;

.field private mHandleIntentCallback:Lcom/miui/gallery/ui/JumpDialogFragment$HandleIntentCallback;

.field final synthetic this$0:Lcom/miui/gallery/ui/JumpDialogFragment;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/JumpDialogFragment;Landroid/app/Fragment;)V
    .locals 3
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/miui/gallery/ui/JumpDialogFragment$PeopleJumpHelper;->this$0:Lcom/miui/gallery/ui/JumpDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 492
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "peopleName"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "relationType"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "microthumbfile"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "thumbnailFile"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "localFile"

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

    const/16 v1, 0xa

    const-string v2, "serverId"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/miui/gallery/ui/JumpDialogFragment$PeopleJumpHelper;->PROJECTION:[Ljava/lang/String;

    .line 414
    iput-object p2, p0, Lcom/miui/gallery/ui/JumpDialogFragment$PeopleJumpHelper;->mFragment:Landroid/app/Fragment;

    .line 415
    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 426
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/miui/gallery/ui/JumpDialogFragment$PeopleJumpHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 427
    .local v0, "loader":Landroid/content/CursorLoader;
    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->PEOPLE_COVER_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "serverId"

    const-string v3, "serverId"

    .line 428
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 429
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 427
    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 430
    iget-object v1, p0, Lcom/miui/gallery/ui/JumpDialogFragment$PeopleJumpHelper;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 431
    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 17
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 436
    const/4 v4, 0x0

    .line 437
    .local v4, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_3

    move-object/from16 v2, p2

    .line 438
    check-cast v2, Landroid/database/Cursor;

    .line 440
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 441
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 442
    .local v1, "bundle":Landroid/os/Bundle;
    const/16 v10, 0xa

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 443
    .local v6, "peopleId":Ljava/lang/String;
    const/4 v10, 0x0

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 444
    .local v7, "peopleLocalId":Ljava/lang/String;
    const-string v10, "server_id_of_album"

    invoke-virtual {v1, v10, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const-string v10, "local_id_of_album"

    invoke-virtual {v1, v10, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const/4 v10, 0x1

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 449
    .local v8, "peopleName":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 450
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/miui/gallery/ui/JumpDialogFragment$PeopleJumpHelper;->mFragment:Landroid/app/Fragment;

    const v11, 0x7f0c0339

    invoke-virtual {v10, v11}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 452
    :cond_0
    const-string v10, "album_name"

    invoke-virtual {v1, v10, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v10, "relationType"

    const/4 v11, 0x2

    .line 454
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 453
    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 455
    const/4 v10, 0x4

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 456
    .local v9, "thumbnail":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 457
    const/4 v10, 0x3

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 459
    :cond_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 460
    const/4 v10, 0x5

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 462
    :cond_2
    const-string v10, "face_album_cover"

    invoke-virtual {v1, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const-string v10, "face_position_rect"

    new-instance v11, Landroid/graphics/RectF;

    const/4 v12, 0x6

    .line 465
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getFloat(I)F

    move-result v12

    const/4 v13, 0x7

    .line 466
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getFloat(I)F

    move-result v13

    const/4 v14, 0x6

    .line 467
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getFloat(I)F

    move-result v14

    const/16 v15, 0x8

    .line 468
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getFloat(I)F

    move-result v15

    add-float/2addr v14, v15

    const/4 v15, 0x7

    .line 469
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getFloat(I)F

    move-result v15

    const/16 v16, 0x9

    .line 470
    move/from16 v0, v16

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v16

    add-float v15, v15, v16

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 464
    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 471
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    .end local v4    # "intent":Landroid/content/Intent;
    .local v5, "intent":Landroid/content/Intent;
    :try_start_1
    invoke-virtual {v5, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 473
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/miui/gallery/ui/JumpDialogFragment$PeopleJumpHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v10}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-class v11, Lcom/miui/gallery/activity/facebaby/FacePageActivity;

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    .line 479
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "peopleId":Ljava/lang/String;
    .end local v7    # "peopleLocalId":Ljava/lang/String;
    .end local v8    # "peopleName":Ljava/lang/String;
    .end local v9    # "thumbnail":Ljava/lang/String;
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_0
    if-eqz v4, :cond_4

    .line 480
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/miui/gallery/ui/JumpDialogFragment$PeopleJumpHelper;->mHandleIntentCallback:Lcom/miui/gallery/ui/JumpDialogFragment$HandleIntentCallback;

    invoke-interface {v10, v4}, Lcom/miui/gallery/ui/JumpDialogFragment$HandleIntentCallback;->onHandleIntent(Landroid/content/Intent;)V

    .line 485
    :goto_1
    return-void

    .line 475
    .restart local v2    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v3

    .line 476
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 482
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/miui/gallery/ui/JumpDialogFragment$PeopleJumpHelper;->mHandleIntentCallback:Lcom/miui/gallery/ui/JumpDialogFragment$HandleIntentCallback;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/gallery/ui/JumpDialogFragment$PeopleJumpHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v11}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/gallery/ui/JumpDialogFragment$PeopleJumpHelper;->mFragment:Landroid/app/Fragment;

    const v13, 0x7f0c0335

    .line 483
    invoke-virtual {v12, v13}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 482
    invoke-interface {v10, v11, v12}, Lcom/miui/gallery/ui/JumpDialogFragment$HandleIntentCallback;->onJumpFailed(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 475
    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "cursor":Landroid/database/Cursor;
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v6    # "peopleId":Ljava/lang/String;
    .restart local v7    # "peopleLocalId":Ljava/lang/String;
    .restart local v8    # "peopleName":Ljava/lang/String;
    .restart local v9    # "thumbnail":Ljava/lang/String;
    :catch_1
    move-exception v3

    move-object v4, v5

    .end local v5    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    goto :goto_2
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;

    .prologue
    .line 490
    return-void
.end method

.method public startLoading(Lcom/miui/gallery/ui/JumpDialogFragment$HandleIntentCallback;Ljava/lang/String;)V
    .locals 3
    .param p1, "callback"    # Lcom/miui/gallery/ui/JumpDialogFragment$HandleIntentCallback;
    .param p2, "peopleServerId"    # Ljava/lang/String;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/miui/gallery/ui/JumpDialogFragment$PeopleJumpHelper;->mHandleIntentCallback:Lcom/miui/gallery/ui/JumpDialogFragment$HandleIntentCallback;

    .line 419
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 420
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "serverId"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-object v1, p0, Lcom/miui/gallery/ui/JumpDialogFragment$PeopleJumpHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 422
    return-void
.end method
