.class public Lcom/miui/gallery/ui/AlbumDetailFragment;
.super Lcom/miui/gallery/ui/AlbumDetailFragmentBase;
.source "AlbumDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/AlbumDetailFragment$OnSortByClickListener;,
        Lcom/miui/gallery/ui/AlbumDetailFragment$AlbumDetailLoaderCallback;
    }
.end annotation


# instance fields
.field private mAlbumDetailSimpleAdapter:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;

.field private mAlbumDetailTimelineAdapter:Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;

.field private mCurrentSortBy:Lcom/miui/gallery/widget/SortByHeader$SortBy;

.field private mDrawer:Lcom/miui/gallery/widget/ScrollableViewDrawer;

.field private mMenuStatusManager:Lcom/miui/gallery/ui/MenuStatusManager;

.field private mNeedConfirmPassWord:Z

.field private mOnAlbumRenamedListener:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$OnAlbumOperationDoneListener;

.field private mOnSortByClickListener:Lcom/miui/gallery/ui/AlbumDetailFragment$OnSortByClickListener;

.field private mSortByHeader:Lcom/miui/gallery/widget/SortByHeader;

.field private mSortByHeaderPaddingTop:I

.field private mSortOrder:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;-><init>()V

    .line 48
    const-string v0, " DESC "

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mSortOrder:Ljava/lang/String;

    .line 49
    sget-object v0, Lcom/miui/gallery/widget/SortByHeader$SortBy;->NONE:Lcom/miui/gallery/widget/SortByHeader$SortBy;

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mCurrentSortBy:Lcom/miui/gallery/widget/SortByHeader$SortBy;

    .line 515
    new-instance v0, Lcom/miui/gallery/ui/AlbumDetailFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/AlbumDetailFragment$2;-><init>(Lcom/miui/gallery/ui/AlbumDetailFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mOnAlbumRenamedListener:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$OnAlbumOperationDoneListener;

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/AlbumDetailFragment;Landroid/content/CursorLoader;Lcom/miui/gallery/widget/SortByHeader$SortBy;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumDetailFragment;
    .param p1, "x1"    # Landroid/content/CursorLoader;
    .param p2, "x2"    # Lcom/miui/gallery/widget/SortByHeader$SortBy;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/AlbumDetailFragment;->configLoader(Landroid/content/CursorLoader;Lcom/miui/gallery/widget/SortByHeader$SortBy;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/AlbumDetailFragment;)Lcom/miui/gallery/widget/SortByHeader$SortBy;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumDetailFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mCurrentSortBy:Lcom/miui/gallery/widget/SortByHeader$SortBy;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/AlbumDetailFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumDetailFragment;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumDetailFragment;->getSortByIndicatorResource()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/ui/AlbumDetailFragment;)Lcom/miui/gallery/widget/SortByHeader;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumDetailFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mSortByHeader:Lcom/miui/gallery/widget/SortByHeader;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/ui/AlbumDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumDetailFragment;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumDetailFragment;->updateActionBarTitle()V

    return-void
.end method

.method private configLoader(Landroid/content/CursorLoader;Lcom/miui/gallery/widget/SortByHeader$SortBy;)V
    .locals 1
    .param p1, "cursorLoader"    # Landroid/content/CursorLoader;
    .param p2, "sortBy"    # Lcom/miui/gallery/widget/SortByHeader$SortBy;

    .prologue
    .line 390
    invoke-virtual {p0, p2}, Lcom/miui/gallery/ui/AlbumDetailFragment;->getUri(Lcom/miui/gallery/widget/SortByHeader$SortBy;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 391
    sget-object v0, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragment;->getSelection()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragment;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    .line 394
    invoke-direct {p0, p2}, Lcom/miui/gallery/ui/AlbumDetailFragment;->configOrderBy(Lcom/miui/gallery/widget/SortByHeader$SortBy;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 395
    return-void
.end method

.method private configOrderBy(Lcom/miui/gallery/widget/SortByHeader$SortBy;)Ljava/lang/String;
    .locals 3
    .param p1, "sortBy"    # Lcom/miui/gallery/widget/SortByHeader$SortBy;

    .prologue
    .line 416
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/AlbumDetailFragment;->getSortByString(Lcom/miui/gallery/widget/SortByHeader$SortBy;)Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, "orderBy":Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mCurrentSortBy:Lcom/miui/gallery/widget/SortByHeader$SortBy;

    if-ne v1, p1, :cond_1

    .line 419
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mSortOrder:Ljava/lang/String;

    const-string v2, " DESC "

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " ASC "

    :goto_0
    iput-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mSortOrder:Ljava/lang/String;

    .line 428
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mSortOrder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 429
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumDetailFragment;->onSortByChanged()V

    .line 430
    return-object v0

    .line 419
    :cond_0
    const-string v1, " DESC "

    goto :goto_0

    .line 421
    :cond_1
    sget-object v1, Lcom/miui/gallery/widget/SortByHeader$SortBy;->DATE:Lcom/miui/gallery/widget/SortByHeader$SortBy;

    if-ne p1, v1, :cond_2

    .line 422
    const-string v1, " DESC "

    iput-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mSortOrder:Ljava/lang/String;

    .line 426
    :goto_2
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mCurrentSortBy:Lcom/miui/gallery/widget/SortByHeader$SortBy;

    goto :goto_1

    .line 424
    :cond_2
    const-string v1, " ASC "

    iput-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mSortOrder:Ljava/lang/String;

    goto :goto_2
.end method

.method private doChangeShowInPhotosTab(Z)V
    .locals 4
    .param p1, "showInPhotosTab"    # Z

    .prologue
    .line 471
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-wide v2, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mAlbumId:J

    invoke-static {v0, v2, v3, p1}, Lcom/miui/gallery/util/MediaAndAlbumOperations;->doChangeShowInPhotosTab(Landroid/content/Context;JZ)V

    .line 472
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mMenuStatusManager:Lcom/miui/gallery/ui/MenuStatusManager;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/MenuStatusManager;->onShowInPhotosTabStatusChanged(Z)V

    .line 473
    return-void
.end method

.method private doRename()V
    .locals 5

    .prologue
    .line 445
    iget-wide v2, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mAlbumId:J

    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mAlbumName:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mOnAlbumRenamedListener:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$OnAlbumOperationDoneListener;

    .line 446
    invoke-static {v2, v3, v1, v4}, Lcom/miui/gallery/ui/AlbumRenameDialogFragment;->newInstance(JLjava/lang/String;Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$OnAlbumOperationDoneListener;)Lcom/miui/gallery/ui/AlbumRenameDialogFragment;

    move-result-object v0

    .line 447
    .local v0, "albumRenameDialogFragment":Lcom/miui/gallery/ui/AlbumRenameDialogFragment;
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "AlbumRenameDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/ui/AlbumRenameDialogFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 448
    return-void
.end method

.method private getSortByIndicatorResource()I
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mSortOrder:Ljava/lang/String;

    const-string v1, " ASC "

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f02027c

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f020279

    goto :goto_0
.end method

.method private getSortByString(Lcom/miui/gallery/widget/SortByHeader$SortBy;)Ljava/lang/String;
    .locals 2
    .param p1, "sortBy"    # Lcom/miui/gallery/widget/SortByHeader$SortBy;

    .prologue
    .line 434
    sget-object v0, Lcom/miui/gallery/ui/AlbumDetailFragment$3;->$SwitchMap$com$miui$gallery$widget$SortByHeader$SortBy:[I

    invoke-virtual {p1}, Lcom/miui/gallery/widget/SortByHeader$SortBy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 440
    const-string v0, "alias_sort_time"

    :goto_0
    return-object v0

    .line 436
    :pswitch_0
    const-string/jumbo v0, "title"

    goto :goto_0

    .line 438
    :pswitch_1
    const-string/jumbo v0, "size"

    goto :goto_0

    .line 434
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isNeedConfirmPassWord()Z
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragment;->isSecretAlbum()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mNeedConfirmPassWord:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragment;->isInPhotoPage()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSortByChanged()V
    .locals 3

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragment;->getAdapter()Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mCurrentSortBy:Lcom/miui/gallery/widget/SortByHeader$SortBy;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->setCurrentSortBy(Lcom/miui/gallery/widget/SortByHeader$SortBy;)V

    .line 401
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mCurrentSortBy:Lcom/miui/gallery/widget/SortByHeader$SortBy;

    sget-object v2, Lcom/miui/gallery/widget/SortByHeader$SortBy;->DATE:Lcom/miui/gallery/widget/SortByHeader$SortBy;

    if-ne v1, v2, :cond_0

    .line 402
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mSortByHeader:Lcom/miui/gallery/widget/SortByHeader;

    iget v2, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mSortByHeaderPaddingTop:I

    invoke-direct {p0, v1, v2}, Lcom/miui/gallery/ui/AlbumDetailFragment;->setViewPaddingTop(Landroid/view/View;I)V

    .line 403
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mDrawer:Lcom/miui/gallery/widget/ScrollableViewDrawer;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/miui/gallery/ui/AlbumDetailFragment;->setViewPaddingTop(Landroid/view/View;I)V

    .line 409
    :goto_0
    return-void

    .line 405
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 406
    .local v0, "topDivider":I
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mSortByHeader:Lcom/miui/gallery/widget/SortByHeader;

    iget v2, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mSortByHeaderPaddingTop:I

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lcom/miui/gallery/ui/AlbumDetailFragment;->setViewPaddingTop(Landroid/view/View;I)V

    .line 407
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mDrawer:Lcom/miui/gallery/widget/ScrollableViewDrawer;

    invoke-direct {p0, v1, v0}, Lcom/miui/gallery/ui/AlbumDetailFragment;->setViewPaddingTop(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private setViewPaddingTop(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "top"    # I

    .prologue
    .line 412
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 413
    return-void
.end method

.method private showOptionsMenu()Z
    .locals 1

    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragment;->isVirtualAlbum()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mMenuStatusManager:Lcom/miui/gallery/ui/MenuStatusManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/MenuStatusManager;->isUnWriteable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sortByChangeable()Z
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragment;->isDailyAlbum()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateActionBarTitle()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 94
    return-void
.end method


# virtual methods
.method protected doChangeAutoUpload(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 457
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->doChangeAutoUpload(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mMenuStatusManager:Lcom/miui/gallery/ui/MenuStatusManager;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/MenuStatusManager;->onAutoUploadStatusChanged(Z)V

    .line 459
    const/4 v0, 0x1

    .line 461
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected doChangeShowInOtherAlbums(Z)V
    .locals 1
    .param p1, "showInOtherAlbums"    # Z

    .prologue
    .line 466
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->doChangeShowInOtherAlbums(Z)V

    .line 467
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mMenuStatusManager:Lcom/miui/gallery/ui/MenuStatusManager;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/MenuStatusManager;->onShowInOtherAlbumsStatusChanged(Z)V

    .line 468
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->finish()V

    .line 159
    :cond_0
    return-void
.end method

.method protected getAdapter()Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mCurrentSortBy:Lcom/miui/gallery/widget/SortByHeader$SortBy;

    sget-object v1, Lcom/miui/gallery/widget/SortByHeader$SortBy;->DATE:Lcom/miui/gallery/widget/SortByHeader$SortBy;

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragment;->isDailyAlbum()Z

    move-result v0

    if-nez v0, :cond_5

    .line 233
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mAlbumDetailTimelineAdapter:Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;

    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v0, v1}, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mAlbumDetailTimelineAdapter:Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;

    .line 235
    iget-boolean v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mIsOtherShareAlbum:Z

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mAlbumDetailTimelineAdapter:Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;

    sget-object v1, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;->OTHER_SHARE:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;->setAlbumType(Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;)V

    .line 247
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mAlbumDetailTimelineAdapter:Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;

    .line 263
    :goto_1
    return-object v0

    .line 237
    :cond_1
    iget-boolean v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mIsScreenshotAlbum:Z

    if-eqz v0, :cond_2

    .line 238
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mAlbumDetailTimelineAdapter:Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;

    sget-object v1, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;->SCREENSHOT:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;->setAlbumType(Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;)V

    goto :goto_0

    .line 239
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragment;->isSecretAlbum()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 240
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mAlbumDetailTimelineAdapter:Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;

    sget-object v1, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;->SECRET:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;->setAlbumType(Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;)V

    goto :goto_0

    .line 241
    :cond_3
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragment;->isPanoAlbum()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 242
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mAlbumDetailTimelineAdapter:Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;

    sget-object v1, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;->PANO:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;->setAlbumType(Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;)V

    goto :goto_0

    .line 243
    :cond_4
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragment;->isFavoritesAlbum()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mAlbumDetailTimelineAdapter:Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;

    sget-object v1, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;->FAVORITES:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;->setAlbumType(Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;)V

    goto :goto_0

    .line 249
    :cond_5
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mAlbumDetailSimpleAdapter:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;

    if-nez v0, :cond_6

    .line 250
    new-instance v0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;

    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v0, v1}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mAlbumDetailSimpleAdapter:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;

    .line 251
    iget-boolean v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mIsOtherShareAlbum:Z

    if-eqz v0, :cond_7

    .line 252
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mAlbumDetailSimpleAdapter:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;

    sget-object v1, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;->OTHER_SHARE:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->setAlbumType(Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;)V

    .line 263
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mAlbumDetailSimpleAdapter:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;

    goto :goto_1

    .line 253
    :cond_7
    iget-boolean v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mIsScreenshotAlbum:Z

    if-eqz v0, :cond_8

    .line 254
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mAlbumDetailSimpleAdapter:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;

    sget-object v1, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;->SCREENSHOT:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->setAlbumType(Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;)V

    goto :goto_2

    .line 255
    :cond_8
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragment;->isSecretAlbum()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 256
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mAlbumDetailSimpleAdapter:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;

    sget-object v1, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;->SECRET:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->setAlbumType(Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;)V

    goto :goto_2

    .line 257
    :cond_9
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragment;->isPanoAlbum()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 258
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mAlbumDetailSimpleAdapter:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;

    sget-object v1, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;->PANO:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->setAlbumType(Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;)V

    goto :goto_2

    .line 259
    :cond_a
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragment;->isFavoritesAlbum()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 260
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mAlbumDetailSimpleAdapter:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;

    sget-object v1, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;->FAVORITES:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->setAlbumType(Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;)V

    goto :goto_2
.end method

.method protected getCreatorIdByPosition(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragment;->getAdapter()Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getCreatorId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCurrentSortOrder()Ljava/lang/String;
    .locals 2

    .prologue
    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mCurrentSortBy:Lcom/miui/gallery/widget/SortByHeader$SortBy;

    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/AlbumDetailFragment;->getSortByString(Lcom/miui/gallery/widget/SortByHeader$SortBy;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mSortOrder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLayoutSource()I
    .locals 1

    .prologue
    .line 269
    const v0, 0x7f040009

    return v0
.end method

.method protected getLoaderCallback()Landroid/app/LoaderManager$LoaderCallbacks;
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mAlbumDetailLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    if-nez v0, :cond_0

    .line 280
    new-instance v0, Lcom/miui/gallery/ui/AlbumDetailFragment$AlbumDetailLoaderCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/ui/AlbumDetailFragment$AlbumDetailLoaderCallback;-><init>(Lcom/miui/gallery/ui/AlbumDetailFragment;Lcom/miui/gallery/ui/AlbumDetailFragment$1;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mAlbumDetailLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mAlbumDetailLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    return-object v0
.end method

.method protected getMediaIdByPosition(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragment;->getAdapter()Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragment;->isSecretAlbum()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    const-string v0, "album_secret"

    .line 188
    :goto_0
    return-object v0

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragment;->isFavoritesAlbum()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    const-string v0, "album_favorites"

    goto :goto_0

    .line 188
    :cond_1
    const-string v0, "album_detail"

    goto :goto_0
.end method

.method protected getViewAdapter()Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;
    .locals 2

    .prologue
    .line 222
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mAlbumDetailGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-virtual {v1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 223
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;

    if-eqz v1, :cond_0

    .line 224
    check-cast v0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;

    .line 226
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :goto_0
    return-object v0

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_0
    invoke-super {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->getViewAdapter()Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;

    move-result-object v0

    goto :goto_0
.end method

.method protected needEnableAutoUpload()Z
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mMenuStatusManager:Lcom/miui/gallery/ui/MenuStatusManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/MenuStatusManager;->canEnableAutoUpload()Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 99
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumDetailFragment;->showOptionsMenu()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/activity/BaseActivity;->setImmersionMenuEnabled(Z)V

    .line 101
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragment;->isSecretAlbum()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 105
    :cond_0
    if-eqz p1, :cond_1

    .line 106
    const-string v0, "album_detail_sort_by"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/widget/SortByHeader$SortBy;

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mCurrentSortBy:Lcom/miui/gallery/widget/SortByHeader$SortBy;

    .line 107
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumDetailFragment;->sortByChangeable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "album_detail_drawer_state"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mDrawer:Lcom/miui/gallery/widget/ScrollableViewDrawer;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->openDrawer()V

    .line 111
    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 115
    const/16 v0, 0x1b

    if-ne p1, v0, :cond_1

    .line 116
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragment;->finish()V

    .line 124
    :goto_0
    return-void

    .line 119
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mNeedConfirmPassWord:Z

    goto :goto_0

    .line 123
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 477
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragment;->isSecretAlbum()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Secret;->isFirstAddSecret()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 478
    invoke-static {v1}, Lcom/miui/gallery/preference/GalleryPreferences$Secret;->setIsFirstAddSecret(Z)V

    .line 480
    new-instance v0, Lcom/miui/gallery/ui/SecretTipDialogFragment;

    invoke-direct {v0}, Lcom/miui/gallery/ui/SecretTipDialogFragment;-><init>()V

    .line 481
    .local v0, "dialogFragment":Lcom/miui/gallery/ui/SecretTipDialogFragment;
    new-instance v1, Lcom/miui/gallery/ui/AlbumDetailFragment$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/AlbumDetailFragment$1;-><init>(Lcom/miui/gallery/ui/AlbumDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/SecretTipDialogFragment;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 487
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "SecretTip"

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/ui/SecretTipDialogFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 488
    const/4 v1, 0x1

    .line 490
    .end local v0    # "dialogFragment":Lcom/miui/gallery/ui/SecretTipDialogFragment;
    :cond_0
    return v1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 287
    const/high16 v0, 0x7f130000

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 288
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 529
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mAlbumDetailSimpleAdapter:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mAlbumDetailSimpleAdapter:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mAlbumDetailTimelineAdapter:Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;

    if-eqz v0, :cond_1

    .line 533
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mAlbumDetailTimelineAdapter:Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 535
    :cond_1
    invoke-super {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->onDestroy()V

    .line 536
    return-void
.end method

.method protected onEnterActionMode()V
    .locals 4

    .prologue
    .line 163
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mMenuStatusManager:Lcom/miui/gallery/ui/MenuStatusManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/MenuStatusManager;->canShowInPhotosTab()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/ui/ImageSelectionTipFragment;->showImageSelectionTipDialogIfNecessary(Landroid/app/Activity;)V

    .line 166
    :cond_0
    const-string v0, "best_image"

    const-string v1, "best_image_count"

    .line 167
    invoke-static {}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->getInstance()Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->getBestImageCount(Z)I

    move-result v2

    int-to-long v2, v2

    .line 166
    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 168
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    .line 64
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v9

    .line 66
    .local v9, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/miui/gallery/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 67
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Lcom/miui/gallery/ui/MenuStatusManager;

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const-string v3, "album_server_id"

    .line 68
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "attributes"

    const-wide/16 v6, 0x0

    .line 69
    invoke-virtual {v0, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v6, "album_unwriteable"

    .line 70
    invoke-virtual {v0, v6, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 71
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragment;->isOthersShareAlbum()Z

    move-result v7

    const-string v8, "album_local_path"

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Lcom/miui/gallery/ui/MenuStatusManager;-><init>(Landroid/content/Context;Ljava/lang/String;JZZLjava/lang/String;)V

    iput-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mMenuStatusManager:Lcom/miui/gallery/ui/MenuStatusManager;

    .line 73
    new-instance v1, Lcom/miui/gallery/ui/AlbumDetailFragment$OnSortByClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/ui/AlbumDetailFragment$OnSortByClickListener;-><init>(Lcom/miui/gallery/ui/AlbumDetailFragment;Lcom/miui/gallery/ui/AlbumDetailFragment$1;)V

    iput-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mOnSortByClickListener:Lcom/miui/gallery/ui/AlbumDetailFragment$OnSortByClickListener;

    .line 74
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mAlbumName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumDetailFragment;->updateActionBarTitle()V

    .line 77
    :cond_0
    const v1, 0x7f12008b

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/widget/ScrollableViewDrawer;

    iput-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mDrawer:Lcom/miui/gallery/widget/ScrollableViewDrawer;

    .line 78
    const v1, 0x7f12008c

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/widget/SortByHeader;

    iput-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mSortByHeader:Lcom/miui/gallery/widget/SortByHeader;

    .line 79
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mSortByHeader:Lcom/miui/gallery/widget/SortByHeader;

    invoke-virtual {v1}, Lcom/miui/gallery/widget/SortByHeader;->getPaddingTop()I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mSortByHeaderPaddingTop:I

    .line 80
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mSortByHeader:Lcom/miui/gallery/widget/SortByHeader;

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mOnSortByClickListener:Lcom/miui/gallery/ui/AlbumDetailFragment$OnSortByClickListener;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/SortByHeader;->setOnSortByClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumDetailFragment;->sortByChangeable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mDrawer:Lcom/miui/gallery/widget/ScrollableViewDrawer;

    invoke-virtual {v1, v10}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->setDragEnabled(Z)V

    .line 85
    :cond_1
    return-object v9
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 322
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 357
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 324
    :sswitch_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragment;->removeFromOtherAlbums()V

    .line 325
    const-string v1, "album_detail"

    const-string/jumbo v2, "show_in_others_disable"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 328
    :sswitch_1
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragment;->moveToOtherAlbums()V

    .line 329
    const-string v1, "album_detail"

    const-string/jumbo v2, "show_in_others_enable"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 332
    :sswitch_2
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragment;->enableAutoUpload()V

    .line 333
    const-string v1, "album_detail"

    const-string v2, "auto_upload_enable"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 336
    :sswitch_3
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragment;->disableAutoUpload()V

    .line 337
    const-string v1, "album_detail"

    const-string v2, "auto_upload_disable"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 340
    :sswitch_4
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/AlbumDetailFragment;->doChangeShowInPhotosTab(Z)V

    .line 341
    const-string v1, "album_detail"

    const-string/jumbo v2, "show_in_home_enable"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 344
    :sswitch_5
    const-string v1, "album_detail"

    const-string/jumbo v2, "show_in_home_disable"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/AlbumDetailFragment;->doChangeShowInPhotosTab(Z)V

    goto :goto_0

    .line 348
    :sswitch_6
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragment;->onBackPressed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragment;->finish()V

    goto :goto_0

    .line 353
    :sswitch_7
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumDetailFragment;->doRename()V

    .line 354
    const-string v1, "album"

    const-string v2, "rename_album"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 322
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_6
        0x7f1202e6 -> :sswitch_0
        0x7f1202e7 -> :sswitch_1
        0x7f1202e8 -> :sswitch_4
        0x7f1202e9 -> :sswitch_5
        0x7f1202ea -> :sswitch_2
        0x7f1202eb -> :sswitch_3
        0x7f1202ed -> :sswitch_7
    .end sparse-switch
.end method

.method protected onPhotoPageDestroy(Landroid/content/Intent;)V
    .locals 1
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 144
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->onPhotoPageDestroy(Landroid/content/Intent;)V

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mNeedConfirmPassWord:Z

    .line 146
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 12
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v11, 0x0

    .line 292
    const v10, 0x7f1202e5

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 293
    .local v0, "addPhotosItem":Landroid/view/MenuItem;
    const v10, 0x7f1202e6

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 294
    .local v6, "removeFromOtherAlbumsItem":Landroid/view/MenuItem;
    const v10, 0x7f1202e7

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 295
    .local v4, "moveToOtherAlbumsItem":Landroid/view/MenuItem;
    const v10, 0x7f1202ea

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 296
    .local v2, "enableAutoUploadItem":Landroid/view/MenuItem;
    const v10, 0x7f1202eb

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 297
    .local v1, "disableAutoUploadItem":Landroid/view/MenuItem;
    const v10, 0x7f1202e8

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    .line 298
    .local v9, "showInPhotosTabItem":Landroid/view/MenuItem;
    const v10, 0x7f1202e9

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 299
    .local v5, "notShowInPhotosTabItem":Landroid/view/MenuItem;
    const v10, 0x7f1202ec

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    .line 300
    .local v8, "shareItem":Landroid/view/MenuItem;
    const v10, 0x7f1202ed

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 302
    .local v7, "renameItem":Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/miui/gallery/util/SyncUtil;->isGalleryCloudSyncable(Landroid/content/Context;)Z

    move-result v3

    .line 303
    .local v3, "isGalleryCloudSyncable":Z
    if-eqz v3, :cond_0

    .line 304
    iget-object v10, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mMenuStatusManager:Lcom/miui/gallery/ui/MenuStatusManager;

    invoke-virtual {v10}, Lcom/miui/gallery/ui/MenuStatusManager;->canEnableAutoUpload()Z

    move-result v10

    invoke-interface {v2, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 305
    iget-object v10, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mMenuStatusManager:Lcom/miui/gallery/ui/MenuStatusManager;

    invoke-virtual {v10}, Lcom/miui/gallery/ui/MenuStatusManager;->canDisableAutoUpload()Z

    move-result v10

    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 311
    :goto_0
    iget-object v10, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mMenuStatusManager:Lcom/miui/gallery/ui/MenuStatusManager;

    invoke-virtual {v10}, Lcom/miui/gallery/ui/MenuStatusManager;->canDisableShowInOtherAlbums()Z

    move-result v10

    invoke-interface {v6, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 312
    iget-object v10, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mMenuStatusManager:Lcom/miui/gallery/ui/MenuStatusManager;

    invoke-virtual {v10}, Lcom/miui/gallery/ui/MenuStatusManager;->canEnableShowInOtherAlbums()Z

    move-result v10

    invoke-interface {v4, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 313
    iget-object v10, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mMenuStatusManager:Lcom/miui/gallery/ui/MenuStatusManager;

    invoke-virtual {v10}, Lcom/miui/gallery/ui/MenuStatusManager;->canAddPhotos()Z

    move-result v10

    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 314
    iget-object v10, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mMenuStatusManager:Lcom/miui/gallery/ui/MenuStatusManager;

    invoke-virtual {v10}, Lcom/miui/gallery/ui/MenuStatusManager;->canEnableShowInPhotosTab()Z

    move-result v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 315
    iget-object v10, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mMenuStatusManager:Lcom/miui/gallery/ui/MenuStatusManager;

    invoke-virtual {v10}, Lcom/miui/gallery/ui/MenuStatusManager;->canDisableShowInPhotosTab()Z

    move-result v10

    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 316
    iget-object v10, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mMenuStatusManager:Lcom/miui/gallery/ui/MenuStatusManager;

    invoke-virtual {v10}, Lcom/miui/gallery/ui/MenuStatusManager;->canShare()Z

    move-result v10

    invoke-interface {v8, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 317
    iget-object v10, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mMenuStatusManager:Lcom/miui/gallery/ui/MenuStatusManager;

    invoke-virtual {v10}, Lcom/miui/gallery/ui/MenuStatusManager;->canRename()Z

    move-result v10

    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 318
    return-void

    .line 308
    :cond_0
    invoke-interface {v2, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 309
    invoke-interface {v1, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->onResume()V

    .line 133
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumDetailFragment;->isNeedConfirmPassWord()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mNeedConfirmPassWord:Z

    .line 136
    const/16 v0, 0x1b

    invoke-static {p0, v0}, Lcom/miui/privacy/LockSettingsHelper;->startAuthenticatePasswordActivity(Landroid/app/Fragment;I)V

    .line 140
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 172
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 173
    const-string v0, "album_detail_sort_by"

    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mCurrentSortBy:Lcom/miui/gallery/widget/SortByHeader$SortBy;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 174
    const-string v0, "album_detail_drawer_state"

    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mDrawer:Lcom/miui/gallery/widget/ScrollableViewDrawer;

    invoke-virtual {v1}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->isDrawerOpen()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 175
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->onStop()V

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/AlbumDetailFragment;->mNeedConfirmPassWord:Z

    .line 152
    return-void
.end method
