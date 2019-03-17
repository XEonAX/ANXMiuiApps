.class public abstract Lcom/miui/gallery/ui/BaseAlbumPageFragment;
.super Lcom/miui/gallery/ui/BaseFragment;
.source "BaseAlbumPageFragment.java"


# instance fields
.field protected mAlbumConvertCallback:Lcom/miui/gallery/loader/CursorConvertCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/loader/CursorConvertCallback",
            "<",
            "Lcom/miui/gallery/model/AlbumList;",
            ">;"
        }
    .end annotation
.end field

.field protected mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageAdapter;

.field private mCompleteListener:Lcom/miui/gallery/ui/DeletionTask$OnDeletionCompleteListener;

.field protected mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

.field protected mSelectedAlbum:Lcom/miui/gallery/model/Album;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/miui/gallery/ui/BaseFragment;-><init>()V

    .line 58
    new-instance v0, Lcom/miui/gallery/loader/AlbumConvertCallback;

    invoke-direct {v0}, Lcom/miui/gallery/loader/AlbumConvertCallback;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mAlbumConvertCallback:Lcom/miui/gallery/loader/CursorConvertCallback;

    .line 359
    new-instance v0, Lcom/miui/gallery/ui/BaseAlbumPageFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment$2;-><init>(Lcom/miui/gallery/ui/BaseAlbumPageFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mCompleteListener:Lcom/miui/gallery/ui/DeletionTask$OnDeletionCompleteListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/BaseAlbumPageFragment;)Lcom/miui/gallery/ui/DeletionTask$OnDeletionCompleteListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/BaseAlbumPageFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mCompleteListener:Lcom/miui/gallery/ui/DeletionTask$OnDeletionCompleteListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/BaseAlbumPageFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/BaseAlbumPageFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->doChangeShowInOtherAlbums(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/BaseAlbumPageFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/BaseAlbumPageFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->onEnableAutoUpload(Z)V

    return-void
.end method

.method private doChangeShowInOtherAlbums(Z)V
    .locals 4
    .param p1, "showInOtherAlbums"    # Z

    .prologue
    .line 475
    .line 476
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/Album;

    invoke-virtual {v1}, Lcom/miui/gallery/model/Album;->getId()J

    move-result-wide v2

    .line 475
    invoke-static {v0, v2, v3, p1}, Lcom/miui/gallery/util/MediaAndAlbumOperations;->doChangeShowInOtherAlbums(Landroid/content/Context;JZ)V

    .line 478
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz p1, :cond_0

    const v0, 0x7f0c0499

    :goto_0
    invoke-static {v1, v0}, Lcom/miui/gallery/util/ToastUtils;->makeTextLong(Landroid/content/Context;I)V

    .line 481
    return-void

    .line 478
    :cond_0
    const v0, 0x7f0c0498

    goto :goto_0
.end method

.method private doChangeShowInPhotosTab(Z)V
    .locals 4
    .param p1, "showInPhotosTab"    # Z

    .prologue
    .line 469
    .line 470
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/Album;

    invoke-virtual {v1}, Lcom/miui/gallery/model/Album;->getId()J

    move-result-wide v2

    .line 469
    invoke-static {v0, v2, v3, p1}, Lcom/miui/gallery/util/MediaAndAlbumOperations;->doChangeShowInPhotosTab(Landroid/content/Context;JZ)V

    .line 472
    return-void
.end method

.method private doDelete(Ljava/lang/String;)V
    .locals 14
    .param p1, "albumName"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 311
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/Album;

    invoke-virtual {v0}, Lcom/miui/gallery/model/Album;->getCount()I

    move-result v9

    .line 313
    .local v9, "itemCount":I
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/SyncUtil;->existXiaomiAccount(Landroid/content/Context;)Z

    move-result v8

    .line 314
    .local v8, "existXiaomiAccount":Z
    if-eqz v8, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageAdapter;

    iget-object v1, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/Album;

    .line 316
    invoke-virtual {v1}, Lcom/miui/gallery/model/Album;->getAttributes()J

    move-result-wide v1

    iget-object v3, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/Album;

    invoke-virtual {v3}, Lcom/miui/gallery/model/Album;->getServerId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/Album;

    .line 317
    invoke-virtual {v4}, Lcom/miui/gallery/model/Album;->getId()J

    move-result-wide v4

    .line 315
    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->isAutoUploadedAlbum(JLjava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$LocalMode;->isOnlyShowLocalPhoto()Z

    move-result v0

    if-eqz v0, :cond_1

    move v6, v11

    .line 320
    .local v6, "addDeleteCloudOption":Z
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c014b

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    if-eqz v8, :cond_2

    if-nez v6, :cond_2

    const v0, 0x7f0c014e

    .line 323
    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v3, v12

    aput-object p1, v3, v11

    const/4 v4, 0x2

    if-lez v9, :cond_3

    .line 325
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0e000a

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v0, v5, v9, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    aput-object v0, v3, v4

    .line 320
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 328
    .local v10, "msg":Ljava/lang/String;
    new-instance v7, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v7, v0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 329
    .local v7, "builder":Lmiui/app/AlertDialog$Builder;
    if-eqz v6, :cond_0

    .line 330
    const v0, 0x7f0c014f

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v12, v0}, Lmiui/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    .line 332
    :cond_0
    const v0, 0x7f0c0149

    invoke-virtual {v7, v0}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    .line 333
    invoke-virtual {v0, v10}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/miui/gallery/ui/BaseAlbumPageFragment$1;

    invoke-direct {v2, p0, v6}, Lcom/miui/gallery/ui/BaseAlbumPageFragment$1;-><init>(Lcom/miui/gallery/ui/BaseAlbumPageFragment;Z)V

    .line 334
    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    .line 355
    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    .line 356
    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    .line 357
    return-void

    .end local v6    # "addDeleteCloudOption":Z
    .end local v7    # "builder":Lmiui/app/AlertDialog$Builder;
    .end local v10    # "msg":Ljava/lang/String;
    :cond_1
    move v6, v12

    .line 318
    goto :goto_0

    .line 323
    .restart local v6    # "addDeleteCloudOption":Z
    :cond_2
    const-string v0, ""

    goto :goto_1

    .line 325
    :cond_3
    const-string v0, ""

    goto :goto_2
.end method

.method private doForceTop(Z)V
    .locals 3
    .param p1, "forceTop"    # Z

    .prologue
    .line 295
    iget-object v2, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/Album;

    invoke-virtual {v2}, Lcom/miui/gallery/model/Album;->getId()J

    move-result-wide v0

    .line 296
    .local v0, "albumId":J
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0, v1, p1}, Lcom/miui/gallery/util/MediaAndAlbumOperations;->doForceTop(Landroid/content/Context;JZ)V

    .line 297
    return-void
.end method

.method private doHideOrUnhide(Z)V
    .locals 3
    .param p1, "hide"    # Z

    .prologue
    .line 300
    iget-object v2, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/Album;

    invoke-virtual {v2}, Lcom/miui/gallery/model/Album;->getId()J

    move-result-wide v0

    .line 301
    .local v0, "albumId":J
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0, v1, p1}, Lcom/miui/gallery/util/MediaAndAlbumOperations;->doHideOrUnhide(Landroid/content/Context;JZ)V

    .line 302
    return-void
.end method

.method private doRename()V
    .locals 5

    .prologue
    .line 305
    iget-object v1, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/Album;

    .line 306
    invoke-virtual {v1}, Lcom/miui/gallery/model/Album;->getId()J

    move-result-wide v2

    iget-object v1, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/Album;

    invoke-virtual {v1}, Lcom/miui/gallery/model/Album;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Lcom/miui/gallery/ui/AlbumRenameDialogFragment;->newInstance(JLjava/lang/String;Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$OnAlbumOperationDoneListener;)Lcom/miui/gallery/ui/AlbumRenameDialogFragment;

    move-result-object v0

    .line 307
    .local v0, "albumRenameDialogFragment":Lcom/miui/gallery/ui/AlbumRenameDialogFragment;
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "AlbumRenameDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/ui/AlbumRenameDialogFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method private isManualRenameRestricted(Ljava/lang/String;)Z
    .locals 3
    .param p1, "localPath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 288
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 291
    :cond_0
    :goto_0
    return v1

    .line 290
    :cond_1
    invoke-static {p1}, Lcom/miui/gallery/util/StorageUtils;->ensureCommonRelativePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getAlbumByPath(Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;

    move-result-object v0

    .line 291
    .local v0, "album":Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;->getAttributes()Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;->getAttributes()Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;->isManualRenameRestricted()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private moveToOtherAlbums()V
    .locals 7

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c02b3

    const v2, 0x7f0c0315

    const v3, 0x104000a

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/miui/gallery/ui/BaseAlbumPageFragment$4;

    invoke-direct {v5, p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment$4;-><init>(Lcom/miui/gallery/ui/BaseAlbumPageFragment;)V

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/DialogUtil;->showInfoDialog(Landroid/content/Context;IIIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    .line 401
    return-void
.end method

.method private onEnableAutoUpload(Z)V
    .locals 4
    .param p1, "sharePending"    # Z

    .prologue
    .line 418
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 419
    .local v0, "data":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    .line 420
    const-string v1, "check_login_and_sync"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 424
    :goto_0
    const-string v1, "cloud_guide_source"

    sget-object v2, Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;->AUTOBACKUP:Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 425
    const-string v1, "autobackup_album_id"

    iget-object v2, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/Album;

    invoke-virtual {v2}, Lcom/miui/gallery/model/Album;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 426
    invoke-static {p0, v0}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->checkLoginAndSyncState(Landroid/app/Fragment;Landroid/os/Bundle;)V

    .line 427
    return-void

    .line 422
    :cond_0
    const-string v1, "check_login_and_sync"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private removeFromOtherAlbums()V
    .locals 7

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c040c

    const v2, 0x7f0c031b

    const v3, 0x104000a

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/miui/gallery/ui/BaseAlbumPageFragment$3;

    invoke-direct {v5, p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment$3;-><init>(Lcom/miui/gallery/ui/BaseAlbumPageFragment;)V

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/DialogUtil;->showInfoDialog(Landroid/content/Context;IIIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    .line 387
    return-void
.end method

.method private showAlbumShareInfo()V
    .locals 7

    .prologue
    .line 484
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageAdapter;

    iget-object v1, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/Album;

    .line 485
    invoke-virtual {v1}, Lcom/miui/gallery/model/Album;->getAttributes()J

    move-result-wide v1

    iget-object v3, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/Album;

    invoke-virtual {v3}, Lcom/miui/gallery/model/Album;->getServerId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/Album;

    .line 486
    invoke-virtual {v4}, Lcom/miui/gallery/model/Album;->getId()J

    move-result-wide v4

    .line 484
    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->isAutoUploadedAlbum(JLjava/lang/String;J)Z

    move-result v6

    .line 488
    .local v6, "isAutoUploadedAlbum":Z
    if-nez v6, :cond_0

    .line 490
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 491
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0076

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 492
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0075

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 493
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x1040000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 494
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/miui/gallery/ui/BaseAlbumPageFragment$7;

    invoke-direct {v5, p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment$7;-><init>(Lcom/miui/gallery/ui/BaseAlbumPageFragment;)V

    .line 489
    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/ui/ConfirmDialog;->showConfirmDialog(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;)V

    .line 509
    :goto_0
    return-void

    .line 507
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->share()V

    goto :goto_0
.end method

.method private statAlbumOperation(Lcom/miui/gallery/model/Album;Ljava/lang/String;)V
    .locals 3
    .param p1, "entity"    # Lcom/miui/gallery/model/Album;
    .param p2, "operation"    # Ljava/lang/String;

    .prologue
    .line 217
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 218
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "path"

    invoke-virtual {p1}, Lcom/miui/gallery/model/Album;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v1, "album"

    invoke-static {v1, p2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 220
    return-void
.end method


# virtual methods
.method protected disableAutoUpload()V
    .locals 7

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0160

    const v2, 0x7f0c0161

    const v3, 0x104000a

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/miui/gallery/ui/BaseAlbumPageFragment$6;

    invoke-direct {v5, p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment$6;-><init>(Lcom/miui/gallery/ui/BaseAlbumPageFragment;)V

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/DialogUtil;->showInfoDialog(Landroid/content/Context;IIIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    .line 441
    return-void
.end method

.method protected doChangeAutoUpload(Z)Z
    .locals 8
    .param p1, "enable"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 444
    if-nez p1, :cond_1

    iget-object v5, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageAdapter;

    iget-object v6, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/Album;

    invoke-virtual {v6}, Lcom/miui/gallery/model/Album;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->isShareAlbum(J)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 445
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0c0490

    invoke-static {v4, v5}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 465
    :cond_0
    :goto_0
    return v1

    .line 449
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/account/AccountHelper;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 450
    .local v0, "account":Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 451
    if-eqz p1, :cond_2

    const-string v5, "com.miui.gallery.cloud.provider"

    invoke-static {v0, v5}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 452
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/miui/gallery/util/SyncUtil;->setSyncAutomatically(Landroid/content/Context;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 455
    iget-object v1, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageAdapter;

    invoke-virtual {v1}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->updateGalleryCloudSyncableState()V

    .line 458
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/Album;

    invoke-virtual {v1}, Lcom/miui/gallery/model/Album;->getId()J

    move-result-wide v2

    .line 459
    .local v2, "albumId":J
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2, v3, p1}, Lcom/miui/gallery/util/MediaAndAlbumOperations;->doChangeAutoUpload(Landroid/content/Context;JZ)V

    .line 460
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz p1, :cond_3

    const v1, 0x7f0c0079

    :goto_1
    invoke-static {v5, v1}, Lcom/miui/gallery/util/ToastUtils;->makeTextLong(Landroid/content/Context;I)V

    move v1, v4

    .line 463
    goto :goto_0

    .line 460
    :cond_3
    const v1, 0x7f0c0078

    goto :goto_1
.end method

.method protected enableAutoUpload()V
    .locals 7

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0182

    const v2, 0x7f0c0183

    const v3, 0x104000a

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/miui/gallery/ui/BaseAlbumPageFragment$5;

    invoke-direct {v5, p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment$5;-><init>(Lcom/miui/gallery/ui/BaseAlbumPageFragment;)V

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/DialogUtil;->showInfoDialog(Landroid/content/Context;IIIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    .line 415
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 62
    if-ne p2, v3, :cond_0

    .line 63
    packed-switch p1, :pswitch_data_0

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 65
    :pswitch_0
    iget-object v1, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/Album;

    if-nez v1, :cond_1

    .line 66
    const-string v1, "BaseAlbumPageFragment"

    const-string v2, "The selected album entity is null!"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_1
    const-string v1, "check_login_and_sync"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 70
    .local v0, "checkFor":I
    if-ne v0, v2, :cond_2

    .line 71
    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->doChangeAutoUpload(Z)Z

    goto :goto_0

    .line 72
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 73
    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->doChangeAutoUpload(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->share()V

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_0
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 224
    if-nez p1, :cond_0

    .line 284
    :goto_0
    return v0

    .line 228
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 238
    :sswitch_0
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/Album;

    invoke-virtual {v0}, Lcom/miui/gallery/model/Album;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->doDelete(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/Album;

    const-string v2, "delete_album"

    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->statAlbumOperation(Lcom/miui/gallery/model/Album;Ljava/lang/String;)V

    :goto_1
    move v0, v1

    .line 284
    goto :goto_0

    .line 230
    :sswitch_1
    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->doForceTop(Z)V

    .line 231
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/Album;

    const-string v2, "force_top"

    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->statAlbumOperation(Lcom/miui/gallery/model/Album;Ljava/lang/String;)V

    goto :goto_1

    .line 234
    :sswitch_2
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->doForceTop(Z)V

    .line 235
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/Album;

    const-string/jumbo v2, "unforce_top"

    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->statAlbumOperation(Lcom/miui/gallery/model/Album;Ljava/lang/String;)V

    goto :goto_1

    .line 242
    :sswitch_3
    invoke-direct {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->doRename()V

    .line 243
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/Album;

    const-string v2, "rename_album"

    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->statAlbumOperation(Lcom/miui/gallery/model/Album;Ljava/lang/String;)V

    goto :goto_1

    .line 246
    :sswitch_4
    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->doHideOrUnhide(Z)V

    .line 247
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/Album;

    const-string v2, "hide_album"

    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->statAlbumOperation(Lcom/miui/gallery/model/Album;Ljava/lang/String;)V

    goto :goto_1

    .line 250
    :sswitch_5
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->doHideOrUnhide(Z)V

    .line 251
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/Album;

    const-string/jumbo v2, "unhide_album"

    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->statAlbumOperation(Lcom/miui/gallery/model/Album;Ljava/lang/String;)V

    goto :goto_1

    .line 254
    :sswitch_6
    invoke-direct {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->showAlbumShareInfo()V

    .line 255
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/Album;

    const-string/jumbo v2, "share_album"

    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->statAlbumOperation(Lcom/miui/gallery/model/Album;Ljava/lang/String;)V

    goto :goto_1

    .line 258
    :sswitch_7
    invoke-direct {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->removeFromOtherAlbums()V

    .line 259
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/Album;

    const-string/jumbo v2, "show_in_others_disable"

    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->statAlbumOperation(Lcom/miui/gallery/model/Album;Ljava/lang/String;)V

    goto :goto_1

    .line 262
    :sswitch_8
    invoke-direct {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->moveToOtherAlbums()V

    .line 263
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/Album;

    const-string/jumbo v2, "show_in_others_enable"

    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->statAlbumOperation(Lcom/miui/gallery/model/Album;Ljava/lang/String;)V

    goto :goto_1

    .line 266
    :sswitch_9
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->enableAutoUpload()V

    .line 267
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/Album;

    const-string v2, "auto_upload_enable"

    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->statAlbumOperation(Lcom/miui/gallery/model/Album;Ljava/lang/String;)V

    goto :goto_1

    .line 270
    :sswitch_a
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->disableAutoUpload()V

    .line 271
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/Album;

    const-string v2, "auto_upload_disable"

    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->statAlbumOperation(Lcom/miui/gallery/model/Album;Ljava/lang/String;)V

    goto :goto_1

    .line 274
    :sswitch_b
    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->doChangeShowInPhotosTab(Z)V

    .line 275
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/Album;

    const-string/jumbo v2, "show_in_home_enable"

    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->statAlbumOperation(Lcom/miui/gallery/model/Album;Ljava/lang/String;)V

    goto :goto_1

    .line 278
    :sswitch_c
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->doChangeShowInPhotosTab(Z)V

    .line 279
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/Album;

    const-string/jumbo v2, "show_in_home_disable"

    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->statAlbumOperation(Lcom/miui/gallery/model/Album;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 228
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f12026b -> :sswitch_0
        0x7f1202ee -> :sswitch_1
        0x7f1202ef -> :sswitch_2
        0x7f1202f0 -> :sswitch_4
        0x7f1202f1 -> :sswitch_5
        0x7f1202f2 -> :sswitch_6
        0x7f1202f3 -> :sswitch_3
        0x7f1202f4 -> :sswitch_7
        0x7f1202f5 -> :sswitch_8
        0x7f1202f6 -> :sswitch_b
        0x7f1202f7 -> :sswitch_c
        0x7f1202f8 -> :sswitch_9
        0x7f1202f9 -> :sswitch_a
    .end sparse-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 101
    if-nez p3, :cond_0

    .line 106
    :goto_0
    return-void

    :cond_0
    move-object v0, p3

    .line 104
    check-cast v0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView$RecyclerContextMenuInfo;

    .line 105
    .local v0, "info":Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView$RecyclerContextMenuInfo;
    iget v1, v0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView$RecyclerContextMenuInfo;->position:I

    invoke-virtual {p0, p1, v1}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->setContextMenuItems(Landroid/view/ContextMenu;I)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseFragment;->onStart()V

    .line 85
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->updateGalleryCloudSyncableState()V

    .line 86
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 89
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseFragment;->onStop()V

    .line 94
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->unregisterForContextMenu(Landroid/view/View;)V

    .line 97
    :cond_0
    return-void
.end method

.method protected setContextMenuItems(Landroid/view/ContextMenu;I)V
    .locals 20
    .param p1, "contextMenu"    # Landroid/view/ContextMenu;
    .param p2, "position"    # I

    .prologue
    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->getItem(I)Lcom/miui/gallery/model/Album;

    move-result-object v8

    .line 110
    .local v8, "entity":Lcom/miui/gallery/model/Album;
    if-nez v8, :cond_1

    .line 111
    const-string v18, "BaseAlbumPageFragment"

    const-string v19, "album entity should not be null!!!"

    invoke-static/range {v18 .. v19}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-virtual {v8}, Lcom/miui/gallery/model/Album;->getAlbumType()Lcom/miui/gallery/model/Album$AlbumType;

    move-result-object v18

    sget-object v19, Lcom/miui/gallery/model/Album$AlbumType;->OTHER_ALBUMS:Lcom/miui/gallery/model/Album$AlbumType;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 117
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/Album;

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/miui/gallery/activity/BaseActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v18

    const v19, 0x7f130001

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/Album;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/miui/gallery/model/Album;->getAlbumName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 123
    const v18, 0x7f1202ee

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    .line 124
    .local v9, "forceTopItem":Landroid/view/MenuItem;
    const v18, 0x7f1202ef

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v16

    .line 125
    .local v16, "unforceTopItem":Landroid/view/MenuItem;
    const v18, 0x7f12026b

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 126
    .local v3, "deleteItem":Landroid/view/MenuItem;
    const v18, 0x7f1202f2

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    .line 127
    .local v15, "shareItem":Landroid/view/MenuItem;
    const v18, 0x7f1202f4

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    .line 128
    .local v13, "removeFromOtherAlbumsItem":Landroid/view/MenuItem;
    const v18, 0x7f1202f5

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    .line 129
    .local v12, "moveToOtherAlbumsItem":Landroid/view/MenuItem;
    const v18, 0x7f1202f8

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 130
    .local v6, "enableAutoUploadItem":Landroid/view/MenuItem;
    const v18, 0x7f1202f9

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 131
    .local v4, "disableAutoUploadItem":Landroid/view/MenuItem;
    const v18, 0x7f1202f6

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 132
    .local v7, "enablePhotosTabItem":Landroid/view/MenuItem;
    const v18, 0x7f1202f7

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 133
    .local v5, "disablePhotosTabItem":Landroid/view/MenuItem;
    const v18, 0x7f1202f0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    .line 134
    .local v10, "hideItem":Landroid/view/MenuItem;
    const v18, 0x7f1202f1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v17

    .line 135
    .local v17, "unhideItem":Landroid/view/MenuItem;
    const v18, 0x7f1202f3

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    .line 138
    .local v14, "renameItem":Landroid/view/MenuItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->isForceTypeTime(I)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 139
    const/16 v18, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 144
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/miui/gallery/util/SyncUtil;->isGalleryCloudSyncable(Landroid/content/Context;)Z

    move-result v11

    .line 145
    .local v11, "isGalleryCloudSyncable":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->isSystemAlbum(I)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->isScreenshotsAlbum(I)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 147
    if-eqz v11, :cond_2

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->isAutoUploadedAlbum(I)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 149
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 155
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->isShowedPhotosTabAlbum(I)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 156
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 141
    .end local v11    # "isGalleryCloudSyncable":Z
    :cond_3
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 151
    .restart local v11    # "isGalleryCloudSyncable":Z
    :cond_4
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 158
    :cond_5
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 161
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->isOtherShareAlbum(I)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 162
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->supportShare()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 163
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 166
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->isHiddenAlbum(I)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 167
    const/16 v18, 0x1

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 169
    :cond_8
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 172
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->albumUnwriteable(I)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->isHiddenAlbum(I)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 174
    const/16 v18, 0x1

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 176
    :cond_a
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 179
    :cond_b
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 180
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->supportShare()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 181
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 183
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->isBabyAlbum(I)Z

    move-result v18

    if-nez v18, :cond_e

    .line 184
    if-eqz v11, :cond_d

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->isAutoUploadedAlbum(I)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 186
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 192
    :cond_d
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->isHiddenAlbum(I)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 193
    const/16 v18, 0x1

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 198
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/Album;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/miui/gallery/model/Album;->getLocalPath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->isManualRenameRestricted(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_11

    const/16 v18, 0x1

    :goto_5
    move/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 201
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->isOtherAlbum(I)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 202
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 207
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->isShowedPhotosTabAlbum(I)Z

    move-result v18

    if-eqz v18, :cond_13

    .line 208
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 188
    :cond_f
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 195
    :cond_10
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4

    .line 198
    :cond_11
    const/16 v18, 0x0

    goto :goto_5

    .line 204
    :cond_12
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_6

    .line 210
    :cond_13
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method protected share()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 512
    iget-object v5, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/Album;

    invoke-virtual {v5}, Lcom/miui/gallery/model/Album;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/miui/gallery/provider/ShareAlbumManager;->isOtherShareAlbumId(J)Z

    move-result v3

    .line 513
    .local v3, "isOtherShareAlbum":Z
    iget-object v5, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/Album;

    invoke-virtual {v5}, Lcom/miui/gallery/model/Album;->getId()J

    move-result-wide v0

    .line 514
    .local v0, "albumId":J
    if-eqz v3, :cond_0

    .line 515
    invoke-static {v0, v1}, Lcom/miui/gallery/provider/ShareAlbumManager;->getOriginalAlbumId(J)J

    move-result-wide v0

    .line 517
    :cond_0
    iget-object v5, p0, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->mSelectedAlbum:Lcom/miui/gallery/model/Album;

    invoke-virtual {v5}, Lcom/miui/gallery/model/Album;->getBabyInfo()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v2, 0x1

    .line 519
    .local v2, "isBabyAlbum":Z
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Lcom/miui/gallery/share/Path;

    invoke-direct {v6, v0, v1, v3, v2}, Lcom/miui/gallery/share/Path;-><init>(JZZ)V

    if-eqz v3, :cond_1

    const/4 v4, 0x6

    .line 518
    :cond_1
    invoke-static {v5, v6, v4}, Lcom/miui/gallery/share/UIHelper;->showAlbumShareInfo(Landroid/app/Activity;Lcom/miui/gallery/share/Path;I)V

    .line 522
    return-void

    .end local v2    # "isBabyAlbum":Z
    :cond_2
    move v2, v4

    .line 517
    goto :goto_0
.end method
